
const mysql = require("mysql2");
const dbconfig = require('../lib/configure.js').db;
const util = require('util');

var db = mysql.createConnection(dbconfig.connOpts);

db.connect(function (err) {
    if (err) throw err;
    console.log('Database is connected successfully !');
});

const queryAsync = util.promisify(db.query).bind(db);

/*
const createConnection = function createConnection(connExisting) {
    if (connExisting) return connExisting;
    return mysql.createConnection(dbconfig.connOpts);
};
*/

module.exports = { dbconfig, db, queryAsync };
