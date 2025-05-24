const mock = require('../mock.json');
// console.log(mock);
const apiKeys = mock.apiKeys;
const matrix = mock.matrix;
const concentration = mock.concentration;

const prefix = '/api/';         // v1/:apikey/';

module.exports = function mapi(app) {
    // var _fn = logging.FuncName(arguments.callee.name);

    app.get(prefix + 'device/:deviceId', async function (req, res, next) {

        // Retrieve the tag from our URL path
        // var apikey = req.params.apikey;
        var deviceid = req.params.deviceId;

        // console.log(apikey, deviceid);

        //if (apiKeys.includes(apikey)) {

        if (matrix[deviceid] === undefined) {
            res.status(404).send("Device " + deviceid + " does not exist.");
        }
        else {
            res.json(matrix[deviceid]);
        }
        //}
        //else {
        //    res.status(404).send(" Invalid api key");
        //}

    });

    app.get(prefix + 'batch/concentration/:batchId', async function (req, res, next) {

        // Retrieve the tag from our URL path
        var apikey = req.params.apikey;
        var batchId = req.params.batchId;

        // console.log(apikey, batchId);

        //if (apiKeys.includes(apikey)) {
        let o;      // = null;
        concentration.forEach(conc => {
            if (conc.id === batchId) {
                //res.json(conc);
                o =Object.assign({}, conc);
            }
        });

        if (o === undefined) {
            res.status(404).send("Batch " + batchId + " does not exist.");
        }
        else {
            res.json(o);
        }

        //if (concentration[batchId] === undefined) {
        //    res.status(404).send("Batch " + batchId + " does not exist.");
        //}
        //else {
        //    res.json(concentration[batchId]);
        //}

        //}
        //else {
        //    res.status(404).send(" Invalid api key");
        //}

    });

    app.get (prefix + "batch", async function (req, res, next) {
        res.json(concentration);
    });

    app.get(prefix + 'batch/:batchId', async function (req, res, next) {

        // Retrieve the tag from our URL path
        var apikey = req.params.apikey;
        var batchId = req.params.batchId;

        console.log(apikey, batchId);

        if (apiKeys.includes(apikey)) {

            if (concentration[batchId] === undefined) {
                res.status(404).send("Batch " + batchId + " does not exist.");
            }
            else {
                res.json(concentration[deviceid]);
            }
        }
        else {
            res.status(404).send(" Invalid api key");
        }

    });

};