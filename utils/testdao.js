/*
var DAOHandler = require('../dao/daohandler.js');
// const { dbconfig, connection, queryAsync } = require('../dao/dbconnection.js');

const handler = new DAOHandler("users");
// handler.print();

handler.getById(41).then(rows=>{
    console.log(rows);
});     // ById(78);
*/

const { print, get, getById , getPaging} = require('../dao/daohandler2.js');
//console.log(get('users'));
//console.log(getById(111, "users"));

print("users");

/*
get("users", function (err, result) {
    if (err) {
        console.log(err);
    }

    console.log(result);
});

getById(111, "users", function (err, result) {
    if (err) {
        console.log(err);
    }

    console.log(result);
});
*/

getPaging(5, 7, "users", function (err, result) {
    if (err) {
        console.log(err);
    }

    console.log(result);
});
