
const mysql = require('mysql2');
const dbconfig = require('../lib/configure.js').db;

const pool = mysql.createPool(dbconfig.poolOpts);

const createPool = function createPool(poolExisting){
    if (poolExisting) return poolExisting;
    return mysql.createPool(dbconfig.poolOpts);
};


module.exports = { dbconfig, pool, createPool };
