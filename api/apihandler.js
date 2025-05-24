const DAOHandler = require('../dao/daohandler.js');
const dbmodel = require('../dao/model.json');

const logError = function logError(e) {
    let d = new Date();
    console.log(`[${d.toISOString()}] [${e.status}] - [${e.message}]`);
    console.log(e.stack);
};

class ApiHandler {

    constructor(modelname, app) {
        this.model = dbmodel[modelname];
        this.modelname = modelname;
        this.tablename = this.model.tablename;
        this.idfield = this.model.idfield;
        this.rootPath = '/api/v1/' + this.tablename;
        this.idPath = this.rootPath + '/:' + this.idfield;
        this.pagingPath = this.rootPath + '/:pageCount/:pageSize';
        this.countPath = this.rootPath + '/count';

        this.app = app;
        this.handler = new DAOHandler(modelname);

        // this.handler.print();

        this.paths = [this.rootPath, this.idPath, this.pagingPath, this.countPath];
        // console.log(this.paths);
    }



    Router() {

        this.app.get(this.rootPath, async function (req, res, next) {    // async

            try {
                //this.handler.print();
                const handler = new DAOHandler(this.modelname);
                var rows = await handler.get();
                res.json(rows);
            }
            catch (e) {
                logError(e);
                res.status(500).send(e.message);
            }

        });

        this.app.get(this.idPath, async function (req, res, next) {    // async

            try {
                var id = req.params.id;
                // console.log(id);
                var row = await this.handler.getById();
                res.json(row);
            }
            catch (e) {
                logError(e);
                res.status(500).send(e);
            }

        });
    }
}


module.exports = ApiHandler;
