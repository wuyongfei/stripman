/**
 * @name UserHandler
 * @author Gavin on 2022/1/26
 * @version 1.0.1
 *
 * @desc 数据访问
 *
 * 访问MySQL数据库
 *
 * @example 仅导出
 *
 */
const modelname = "users";
const dbmodel = require('./model.json').users;
const accountPolicy = require('../lib/configure.js').accountPolicy;
const logging = require('../lib/logger.js');
const { makeHash } = require('../lib/hash.js');
const { dbconfig, db } = require('./dbconnection.js');

const logger = logging.logger;

/**
 * Sign in
 * 
 * @param {string} username 用户名
 * @param {string} password 密码
 * @param {function} callback 回调函数
 */
function Login(username, password, callback) {

    logger.trace('Login - userhandler', username);

    let sql = dbmodel.query.SelectAll + " WHERE username = ? ";

    const encrypted = makeHash(password);
    console.log(encrypted);

    db.query(sql, [username], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        if (results.length === 0) {
            callback(null, { state: false, message: '用户账号不存在：' + username, data: null });
        }
        else {
            console.log(results[0]);

            if (encrypted !== results[0].password) {

                if (results[0].retries > accountPolicy.maxRetries) {
                    sql = `UPDATE users SET retries = 0, locked = 1, 
                    unlocktime = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL ${accountPolicy.lockTime} MINUTE) 
                    WHERE username = ?`;

                    db.query(sql, [username], function (error, result, fields) {
                        if (error) {
                            //throw error;
                            callback(error, { state: false, message: error.message, data: null });
                        }

                        callback(null,
                            { state: false, message: '超过最大重试次数，账号[' + username + ']被锁定' + accountPolicy.lockTime + '分钟', data: null });
                    });

                }
                else {
                    sql = "UPDATE users SET retries = retries + 1  WHERE username = ?";

                    db.query(sql, [username], function (error, result, fields) {
                        if (error) {
                            //throw error;
                            callback(error, { state: false, message: error.message, data: null });
                        }

                        callback(null, { state: false, message: '密码不正确，重试!', data: null });
                    });
                }
            }
            else {
                if (results[0].locked) {
                    callback(null, { state: false, message: '账号：' + username + '被锁定。请稍后重试！', data: null });
                }
                else {
                    if (!results[0].enabled) {
                        callback(null, { state: false, message: '账号：' + username + '被禁用。请联系管理员！', data: null });
                    }
                    else {
                        sql = "UPDATE users SET retries = 0, locked = 0, unlocktime = null, loggedOn = ? WHERE username = ?";

                        db.query(sql, [new Date(), username], function (error, result, fields) {
                            if (error) {
                                //throw error;
                                callback(error, { state: false, message: error.message, data: null });
                            }

                            let mustchangepwd = results[0].mustchangepwd;
                            let pexpiry = new Date(results[0].passwordexpiry);
                            let current = new Date();

                            mustchangepwd = mustchangepwd || (current > pexpiry);

                            let u = {
                                token: null,
                                id: results[0].id,
                                username: results[0].username,
                                mustchangepwd: results[0].mustchangepwd
                            };

                            sql = "SELECT role FROM roles WHERE id IN (SELECT roleid FROM userroles WHERE userid = ?)";
                            db.query(sql, [results[0].id], function (error, roles, fields) {
                                if (error) {
                                    //throw error;
                                    callback(error, { state: false, message: error.message, data: null });
                                }

                                let rolelist = [];
                                let noitems = roles.length;
                                let idx = 0;

                                for (idx = 0; idx < noitems; idx++) {
                                    rolelist.push(roles[idx].role);
                                }

                                u.roles = rolelist;
                                callback(null, { state: true, message: 'Login', data: u });

                            });
                        });

                    }

                }
            }

            // callback(null, { state: true });
        }
        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });
}
exports.Login = Login;

/**
 * Sign out
 * 
 * @param {integer} userid 用户ID
 * @param {function} callback 回调函数
 */
function Logoff(userid, callback) {
    logger.trace('logoff - userhandler', userid);

    let sql = "UPDATE users SET retries = 0, locked = 0, unlocktime = null, loggedOff = ? WHERE id = ?";

    db.query(sql, [new Date(), userid], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        callback(null, { state: true, message: "Logoff", data: results.changedRows });
    });
}
exports.Logoff = Logoff;

/**
 * reset password
 * 
 * @param {integer} id user id
 * @param {function} callback 
 */
function ResetPassword(id, callback) {
    logger.trace('ResetPassword - userhandler', id);

    const encrypted = makeHash(accountPolicy.defaultPassword);

    let sql = `UPDATE users SET password = ?, mustchangepwd = 1, retries = 0, locked = 0, 
        unlocktime = null, passwordexpiry = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL ${accountPolicy.expiryDays} DAY) 
        WHERE id = ?`;

    db.query(sql, [encrypted, id], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        callback(null, { state: true, message: "ResetPassword", data: results.changedRows });
    });
}
exports.ResetPassword = ResetPassword;

/**
 * change password
 * 
 * @param {integer} id user id
 * @param {string} oldpass old password
 * @param {string} newpass new password
 * @param {function} callback 
 */
function ChangePassword(id, oldpass, newpass, callback) {
    logger.trace('ChangePassword - userhandler', id);

    let sql = dbmodel.query.SelectById;
    db.query(sql, [id], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        if (results.length === 0) {
            callback(null, { state: false, message: '用户账号不存在', data: null });
        }
        else {
            const encrypted_old = makeHash(oldpass);

            if (encrypted_old !== results[0].password) {
                callback(null, { state: false, message: '密码不匹配', data: null });
            }
            else {
                // update the password
                const encrypted_new = makeHash(newpass);
                let sql = `UPDATE users SET password = ?, passwordexpiry = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL ${accountPolicy.expiryDays} DAY) WHERE id = ?`;

                db.query(sql, [encrypted_new, id], function (error, result, fields) {
                    if (error) {
                        //throw error;
                        callback(error, { state: false, message: error.message, data: null });
                    }

                    callback(null, { state: true, message: "ChangePassword", data: result.changedRows });
                });

            }
        }
    });
}
exports.ChangePassword = ChangePassword;

/**
 * enable / disable an account
 * 
 * @param {integer} id user id
 * @param {boolean} enabled true/false
 * @param {function} callback 
 */
function EnableAccount(id, enabled, callback) {
    logger.trace('EnableAccount - userhandler', id, enabled);

    let v = 0;
    if (enabled) v = 1;

    let sql = `UPDATE users SET enabled= ${v}  WHERE id = ?`;

    db.query(sql, [id], function (error, result, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        callback(null, { state: true, message: "EnableAccount", data: result.changedRows });
    });

}
exports.EnableAccount = EnableAccount;

/**
 * unlock the account
 * 
 * @param {integer} id user id
 * @param {function} callback 
 */
function UnlockAccount(id, callback) {
    logger.trace('UnlockAccount - userhandler', id);

    let sql = "UPDATE users SET retries = 0, locked = 0, unlocktime = null WHERE id = ?";

    db.query(sql, [id], function (error, result, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        callback(null, { state: true, message: "UnlockAccount", data: result.changedRows });
    });
}
exports.UnlockAccount = UnlockAccount;

/**
 * 
 * @param {integer} userid id for the user
 * @param {function} callback 
 */
function GetRoles(userid, callback) {
    logger.trace('GetRoles - userhandler', userid);

    sql = "SELECT role FROM roles WHERE id IN (SELECT roleid FROM userroles WHERE userid = ?)";
    db.query(sql, [userid], function (error, roles, fields) {
        if (error) {
            //throw error;
            callback(error, { state: false, message: error.message, data: null });
        }

        let rolelist = [];
        let noitems = roles.length;
        let idx = 0;

        for (idx = 0; idx < noitems; idx++) {
            rolelist.push(roles[idx].role);
        }
        callback(null, { state: true, message: 'Login', data: rolelist });

    });
}

exports.GetRoles = GetRoles;
