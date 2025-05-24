const express = require("express");
const cors = require("cors");

const rfs = require("rotating-file-stream");
// const bcrypt = require("bcrypt");
// const mysql = require("mysql");
var path = require('path');
var morgan = require('morgan');

const app = express();

const {terminate} = require('./lib/helper.js');
const config = require('./lib/configure.js');

const rfscfg = config.rfs_moble;

const rfsstream = rfs.createStream(rfscfg.file, {
    size: rfscfg.size, // rotate every 10 MegaBytes written
    interval: rfscfg.interval, // rotate daily
    compress: "gzip", // compress rotated files
    path: path.join(__dirname, rfscfg.path)
});

// const apiKey = process.env.HMAC;

// const generateAccessToken = require("./generateAccessToken");

// const secret_key = process.env.SECRET_KEY;

/*

const db = mysql.createPool({
    connectionLimit: 100,
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_DATABASE,
    port: DB_PORT
});

db.getConnection((err, connection) => {
    if (err) throw (err);
    console.log("DB connected successful: " + connection.threadId);
});
*/


//middleware to read req.body.<params>
app.use(express.json());
app.use(cors());

// setup the logger

// log only 4xx and 5xx responses to console
app.use(morgan('dev', {
    skip: function (req, res) { return res.statusCode < 400 }
}));

// log all requests to file
app.use(morgan('common', { stream: rfsstream }));

const mapi = require('./api/mapi.js');

mapi(app);

// health
app.get('/_health', async (req, res) => {
    res.status(200).send('OK');
});

// handle all invalid URL
app.get('*', async function (req, res, next) {
    res.status(404).send(req.protocol + '://' + req.get('host') + req.originalUrl + " is invalid.");
});

// start express server
const port = config.base.mobile_server_port;
const server = app.listen(port, () => {
    console.log(`mobile Server running on ${port}...`);
});

// handle errors uncaught
const exitHandler = terminate(server, {
    coredump: false,
    timeout: 500
});

process.on('uncaughtException', exitHandler(1, 'Unexpected Error'));
process.on('unhandledRejection', exitHandler(1, 'Unhandled Promise'));
process.on('SIGTERM', exitHandler(0, 'SIGTERM'));
process.on('SIGINT', exitHandler(0, 'SIGINT'));
