/**
 * @name RBACHandler
 * @author Gavin on 2022/2/6
 * @version 1.0.1
 *
 * @desc 数据访问
 *
 * 访问MySQL数据库
 *
 * @example 仅导出
 *
 */

const urmodel = require('./rbac.json').userroles;
const usermodel = require('./model.json').users;
const logging = require('../lib/logger.js');
const { dbconfig, db } = require('./dbconnection.js');

const logger = logging.logger;

/**
 * get all users in role
 * 
 * @param {integer} roleid unique role id
 * @param {function} callback 
 */
function getUsersByRoleId(roleid, callback) {

    let sql = usermodel.query.SelectAll +
        " WHERE id IN (SELECT userid FROM userroles WHERE roleid = ?)";

    logger.trace("getUsersByRoleId-userroles", roleid, sql);

    db.query(sql, [roleid], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.length === 0) {
            callback(null, []);
        }
        else {
            callback(null, JSON.parse(JSON.stringify(results)));
        }
        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });

}
exports.getUsersByRoleId = getUsersByRoleId;

/**
 * Assign user with role
 * 
 * @param {Object} item userroles object
 * @param {function} callback 
 */
function Assign(item, callback) {

    let sql = `INSERT INTO userroles (userid, roleid, createdby) VALUES (?, ?, ?)`;
    logger.trace('Assign-userroles', JSON.stringify(item), sql);

    db.query(sql, [item.userid, item.roleid, item.createdby], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.affectedRows === 0) {
            callback(null, { state: false });
        }
        else {
            callback(null, { state: true });
        }

    });

}
exports.Assign = Assign;

/**
 * Deassign a user
 * 
 * @param {Object} item userroles object
 * @param {function} callback 
 */
function Deassign(item, callback) {

    let sql = "DELETE FROM userroles WHERE userid = ? AND roleid = ?";
    logger.trace('Deassign-userroles', JSON.stringify(item), sql);

    db.query(sql, [item.userid, item.roleid], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.affectedRows === 0) {
            callback(null, { state: false });
        }
        else {
            callback(null, { state: true });
        }

    });

}
exports.Deassign = Deassign;

/**
 * Check if the user has the role
 * 
 * @param {integer} userid 
 * @param {integer} roleid 
 * @param {function} callback 
 */
function hasRole(userid, roleid, callback) {
    let sql = "SELECT userid FROM userroles WHERE userid = ? AND roleid = ?";

    logger.trace("hasRole-userroles", userid, roleid, sql);

    db.query(sql, [userid, roleid], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.length === 0) {
            callback(null, { state: false });
        }
        else {
            callback(null, { state: true });
        }
        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });

}
exports.hasRole = hasRole;

