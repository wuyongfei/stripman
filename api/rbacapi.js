const handler = require('../dao/rbachandler.js');
const { authenticateJWT, hasRoleOf } = require('./tokenhandler.js');

const logError = function logError(e) {
    let d = new Date();
    console.log(`[${d.toISOString()}] [${e.status}] - [${e.message}]`);
    console.log(e.stack);
};



module.exports.RBACApi = function RBACApi(app) {

    const tablename = "userroles";
    const rootPath = '/api/v1/' + tablename;
    const UsersByRolePath = rootPath + '/:roleid';
    const hasRolePath = rootPath + '/:userid/:roleid';

    // const handler = new DAOHandler(modelname);

    // this.handler.print();

    const paths = [rootPath, UsersByRolePath, hasRolePath];

    console.log('userroles', '--->', paths);

    /**
     * Get all users with the role
     */
    app.get(UsersByRolePath, hasRoleOf("admin"), function (req, res, next) {    // async

        try {
            var roleid = req.params.roleid;
            handler.getUsersByRoleId(roleid, function (error, result) {
                if (error) throw error;
                res.json(result);
            });
        }
        catch (e) {
            logError(e);
            res.status(500).send(e);
        }

    });

    app.get(hasRolePath, hasRoleOf("admin"), function (req, res, next) {    // async

        try {
            var userid = req.params.userid;
            var roleid = req.params.roleid;

            handler.hasRole(userid, roleid, function (error, result) {
                if (error) throw error;
                res.json(result);
            });
        }
        catch (e) {
            logError(e);
            res.status(500).send(e);
        }

    });

    /**
     * Add new data
     */
    app.post(rootPath, hasRoleOf("admin"), function (req, res, next) {    // async

        try {

            const item = req.body;
            console.log(item);

            handler.Assign(item, function (error, result) {
                if (error) throw error;
                res.json(result);
            });

        }
        catch (e) {
            logError(e);
            res.status(500).send(e.message);
        }

    });

    /**
     * update data
     */
    app.put(rootPath, hasRoleOf("admin"), function (req, res, next) {    // async

        try {

            const item = req.body;
            console.log(item);

            handler.Deassign(item, function (error, result) {
                if (error) throw error;
                res.json(result);
            });

        }
        catch (e) {
            logError(e);
            res.status(500).send(e.message);
        }

    });

};
