const handler = require('../dao/userhandler.js');
const { sign, checkToken } = require('./tokenhandler.js');

const logError = function logError(e) {
    let d = new Date();
    console.log(`[${d.toISOString()}] [${e.status}] - [${e.message}]`);
    console.log(e.stack);
};

module.exports.MyApi = function MyApi(app) {


    let prefix = '/api/v1/my';
    let logoutPath = `${prefix}/logout`;
    // let myInfoPath = `${prefix}/userinfo`;
    let changePSWPath = `${prefix}/changepassword`;
    let loginPath = '/login';

    let paths = [logoutPath, changePSWPath, loginPath]; // myInfoPath
    console.log('my ---> ', paths);

    /**
     * Log in
     */
    app.post(loginPath, function (req, res, next) {    // async

        try {
            const { username, password } = req.body;
            // console.log(username, password);

            handler.Login(username, password, function (error, result) {
                if (error) {
                    res.status(500).send(result);
                }

                if (result.state) {
                    /*
                    let u = {
                        token: null,
                        id: results[0].id,
                        usernme: results[0].username,
                        mustchangepwd: results[0].mustchangepwd
                    };

                    callback(null, { state: true, message: 'Login', data: u });
                    */
                    let user = result.data;
                    // console.log(user);
                    let payload = { id: user.id, username: user.username, roles: user.roles };

                    sign(payload, (err, token) => {
                        if (err) {
                            res.status(500).send(err.message);
                        }

                        user.token = token;

                        res.send(user);

                    });
                }
                else {
                    res.json(result);
                }

            });
        }
        catch (e) {
            logError(e);
            res.status(500).send(e.message);
        }

    });

    /**
     * Change password
     */
    app.put(changePSWPath, function (req, res, next) {    // async

        try {
            const { oldpassword, newpassword } = req.body;
            const userid = req.user.id;

            handler.ChangePassword(id, oldpassword, newpassword, function (error, result) {
                if (error) {
                    res.status(500).send(result);
                }
                res.json(result);
            });
        }
        catch (e) {
            logError(e);
            res.status(500).send(e.message);
        }

    });

    /**
     * Log out
     */
    app.put(logoutPath, function (req, res, next) {    // async

        try {
            const userid = req.user.id;
            // var id = req.params.id;
            // console.log("logout", userid);

            handler.Logoff(userid, function (error, result) {
                if (error) {
                    res.status(500).send(result);
                }

                // console.log(result);
                req.user = undefined;
                res.status(204).send(result);

            });
        }
        catch (e) {
            logError(e);
            res.status(500).send(e.message);
        }

    });

};

