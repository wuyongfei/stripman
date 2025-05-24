const handler = require('../dao/daohandler2.js');
const dbmodel = require('../dao/model.json');

const logError = function logError(e) {
    let d = new Date();
    console.log(`[${d.toISOString()}] [${e.status}] - [${e.message}]`);
    console.log(e.stack);
};

module.exports.Api2Unauth = function Api2Unauth(app, modelname) {

    const model = dbmodel[modelname];
    // this.modelname = modelname;
    const tablename = model.tablename;
    const idfield = model.idfield;
    const rootPath = '/api2/v1/' + tablename;
    const idPath = rootPath + '/:' + idfield;
    const pagingPath = rootPath + '/:pageCount/:pageSize';
    const countPath = rootPath + '/count';

    // const handler = new DAOHandler(modelname);

    // this.handler.print();

    const paths = [rootPath, idPath, pagingPath, countPath];

    console.log(modelname, '--->', paths);

    /**
     * Get all records. If not found, return []
     */
    app.get(rootPath, function (req, res, next) {    // async

        try {
            //this.handler.print();
            // const handler = new DAOHandler(this.modelname);
            //var rows = await handler.get();
            handler.get(modelname, function (error, result) {
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
     * Get number of items in the table
     */
    app.get(countPath, function (req, res, next) {    // async

        try {
            //this.handler.print();
            // const handler = new DAOHandler(this.modelname);
            //var rows = await handler.get();
            handler.getCount(modelname, function (error, result) {
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
     * get one record by Id. If not found, return {}
     */
    app.get(idPath, function (req, res, next) {    // async

        try {
            var id = req.params.id;
            handler.getById(id, modelname, function (error, result) {
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
     * paging
     */
    app.get(pagingPath, function (req, res, next) {    // async

        try {

            var pageCount = parseInt(req.params.pageCount);
            var pageSize = parseInt(req.params.pageSize);

            handler.getPaging(pageCount, pageSize, modelname, function (error, result) {
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
     * Add new data
     */
    app.post(rootPath, function (req, res, next) {    // async

        try {

            const item = req.body;
            console.log(item);

            if (modelname === "users") {
                item.password = makeHash(item.password);
            }

            handler.add(item, modelname, function (error, result) {
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
    app.put(rootPath, function (req, res, next) {    // async

        try {

            const item = req.body;
            console.log(item);
            
            handler.update(item, modelname, function (error, result) {
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
     * Delete by Id
     */
    app.delete(idPath, function (req, res, next) {    // async

        try {

            var id = req.params.id;

            handler.remove(id, modelname, function (error, result) {
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
