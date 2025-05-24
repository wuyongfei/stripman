const express = require("express");
const cors = require("cors");

const rfs = require("rotating-file-stream");
const bcrypt = require("bcrypt");
var path = require('path');
var morgan = require('morgan');

const { authenticateJWT } = require('./api/tokenhandler.js');

const app = express();

//middleware to read req.body.<params>
app.use(express.json());
app.use(cors());

const { terminate } = require('./lib/helper.js');
const config = require('./lib/configure.js');

const rfscfg = config.rfs_db;
// console.log(rfscfg);

const rfsstream = rfs.createStream(rfscfg.file, {
    size: rfscfg.size, // rotate every 10 MegaBytes written
    interval: rfscfg.interval, // rotate daily
    compress: "gzip", // compress rotated files
    path: path.join(__dirname, rfscfg.path)
});

// setup the logger
// log only 4xx and 5xx responses to console
app.use(morgan('dev', {
    skip: function (req, res) { return res.statusCode < 400; }
}));

// log all requests to file
app.use(morgan('common', { stream: rfsstream }));

app.use(authenticateJWT);

//const ApiHandler = require('./api/apihandler.js');
//let api = new ApiHandler("users", app);
//api.Router();
const { ApiByModel } = require('./api/apihandler2.js');
ApiByModel(app, "users");
ApiByModel(app, "roles");

const { RBACApi } = require('./api/rbacapi.js');
RBACApi(app);

const { MyApi } = require('./api/myapi.js');
MyApi(app);

const {Api2Unauth} = require('./api/api2handler.js');
Api2Unauth(app, "tutorials");
Api2Unauth(app, "users");
Api2Unauth(app, "roles");
// const generateAccessToken = require("./generateAccessToken");

// health
app.get('/_health', async (req, res) => {
    res.status(200).send('OK');
});

/*
const static_foler =  'web'; // 'build';       
app.use(express.static(path.join(__dirname, static_foler)));
const idx = path.join(__dirname, static_foler, "index.html");

app.get("/*", function (req, res) {
    console.log(idx);
    res.sendFile(idx);
});
*/

// handle all invalid URL
app.get('*', async function (req, res, next) {
    res.status(404).send(req.protocol + '://' + req.get('host') + req.originalUrl + " is invalid.");
});

const port = config.base.admin_server_port;

const server = app.listen(port, () => console.log(`Server Started on port ${port}...`));

// handle errors uncaught
const exitHandler = terminate(server, {
    coredump: false,
    timeout: 500
});

process.on('uncaughtException', exitHandler(1, 'Unexpected Error'));
process.on('unhandledRejection', exitHandler(1, 'Unhandled Promise'));
process.on('SIGTERM', exitHandler(0, 'SIGTERM'));
process.on('SIGINT', exitHandler(0, 'SIGINT'));
