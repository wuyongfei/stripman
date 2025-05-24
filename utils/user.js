const crypto = require('crypto');

const {db, queryAsync} = require('../dao/dbconnection.js');

const { faker } = require('@faker-js/faker');

const userdef = require('../dao/model.json').users;
// const config = require('../lib/configure.js');

const sqlSelectWhere = "SELECT ?? FROM ?? WHERE ?? = ?";
const sqlSelectAll = "SELECT ?? FROM ??";
const sqlSelectId = "SELECT ?? FROM ?? WHERE id = ?";
const sqlDeleteById = "DELETE FROM ?? WHERE ?? = ?";
const sqlInsert = "INSERT INTO ?? SET ?";
const sqlPaging = "SELECT ?? FROM ?? ORDER BY ?? LIMIT ? OFFSET ?";
const sqlUpdateAny = "UPDATE ?? SET ?? = ? WHERE ?? = ?";
const sqlUpdateObject = "UPDATE users SET username = ?, password = ?, enabled = ?, loggedOn = ?, logggedoff = ?, retries = ?, mustchangepwd = ?, locked = ?, vendorid = ? WHERE id = ?";
const columns = ['id', 'username', 'password', 'enabled', 'loggedOn', 'logggedoff', 'retries', 'mustchangepwd', 'locked', 'vendorid'];

const sqlSelectCount = "SELECT COUNT(*) as itemamount FROM ??";
const sqlSelectCountAny = "SELECT COUNT(*) as itemamount FROM ?? WHERE {condition}";

// const { async } = require('jshint/src/prod-params');

const password = crypto
    .createHash('md5')
    .update("12345678")
    .digest('hex');
/*

*/

async function Add(user) {
    var results = await queryAsync(sqlInsert, ['users', user]);
    // console.log(results);
    return results.insertId;
}

async function AddUsers() {

    let i = 0;
    const nousers = 100;
    let count = 0;

    for (i = 0; i < nousers; i++) {
        let user = Object.assign({}, userdef.model);
        user.username = faker.name.firstName().toLowerCase();      // findName(); // Rowan Nikolaus
        user.password = password;

        console.log(user);

        // AddUser(user);
        //Add(user).then((count) => {
        //    console.log(count);
        //});
        count += await Add(user);
    }

    return count;
}

function AddUser(user) {
    var cmd = db.query(sqlInsert, ['users', user], function (error, results, fields) {
        if (error) throw error;
        // Neat!
        console.log(results.insertId);
    });
}

function GetAllUsers() {
    var cmd = db.query(sqlSelectAll, [columns, 'users'], function (error, results, fields) {
        if (error) throw error;
        console.log(JSON.parse(JSON.stringify(results)));
    });
}

function GetUsersPaging(pageSize, pageCount) {

    let offset = (pageCount - 1) * pageSize;

    var cmd = db.query(sqlPaging, [columns, 'users', 'id', pageSize, offset], function (error, results, fields) {
        if (error) throw error;
        console.log(JSON.parse(JSON.stringify(results)));
    });
}


function GetUserById(id) {

    var cmd = db.query(sqlSelectId, [columns, 'users', id], function (error, results, fields) {
        if (error) throw error;
        console.log(results);
    });
}

function getCount() {
    var cmd = db.query(sqlSelectCount, 'users', function (error, results, fields) {
        if (error) throw error;
        console.log(results[0].itemamount);
    });
}

function getCountAny(condition) {

    var sqlcount = sqlSelectCountAny.replace("{condition}", condition);

    var cmd = db.query(sqlcount, 'users', function (error, results, fields) {
        if (error) throw error;
        console.log(results[0].itemamount);
    });
}

function GetUserById2(id) {
    let inserts = [columns, 'users', 'id', id];
    let sql = mysql.format(sqlSelectWhere, inserts);

    var cmd = db.query(sql, function (error, results, fields) {
        if (error) throw error;
        console.log(results);
    });
}

function DeleteById(id) {
    var cmd = db.query(sqlDeleteById, ['users', 'id', id], function (error, results, fields) {
        if (error) throw error;
        console.log('deleted ' + results.affectedRows + ' rows');
    });
}

function UpdateAny(whereName, whereValue, setName, setValue) {
    var cmd = db.query(sqlUpdateAny, ['users', setName, setValue, whereName, whereValue], function (error, results, fields) {
        if (error) throw error;
        console.log('changed ' + results.changedRows + ' rows');
    });
}

function UpdateById(id, setName, setValue) {
    var cmd = db.query(sqlUpdateAny, ['users', setName, setValue, 'id', id], function (error, results, fields) {
        if (error) throw error;
        console.log('changed ' + results.changedRows + ' rows');
    });
}

function UpdateObject(model) {
    var id = model.id;
    delete model.id;

    var cmd = db.query(sqlUpdateObject, [model.username, model.password, model.enabled, model.loggedOn, model.logggedoff, model.retris, model.mustchangepwd, model.locked, model.vendorid, id], function (error, results, fields) {
        if (error) throw error;
        console.log('changed ' + results.changedRows + ' rows');
    });
}

function UpdateObject2(model) {
    var id = model.id;

    delete model.id;

    var values = Object.values(model);
    values.push(id);

    var cmd = db.query(sqlUpdateObject, values, function (error, results, fields) {
        if (error) throw error;
        console.log('changed ' + results.changedRows + ' rows');
    });

}


try {

    AddUsers().then(count=>{
        console.log(count);

        getCount();

        getCountAny("id > 50");

        db.end();
    });


    /*
    var user = {
        id: 0,
        username: 'leanna',
        password: '25d55ad283aa400af464c76d713c07ad',
        enabled: true,
        loggedOn: null,
        logggedoff: null,
        retris: 0,
        mustchangepwd: false,
        locked: false,
        vendorid: 0
      };

      AddUser(user);

      */

    //for (let i = 0; i < 11; i++) {
    //    DeleteById(i);
    //}
    // GetUsersPaging(2, 2);
    // GetAllUsers();
    // GetUsersPaging(2, 4);

    // GetUserById(2);
    // GetUserById2(4);

    /*
    var user = {
        id: 27,
        username: 'tracey',
        password: '25d55ad283aa400af464c76d713c07ad',
        enabled: 1,
        loggedOn: new Date(),
        logggedoff: null,
        retris: 0,
        mustchangepwd: 0,
        locked: 0,
        vendorid: 0
    };

    UpdateObject(user);

    user = {
        id: 30,
        username: 'elise',
        password: '25d55ad283aa400af464c76d713c07ad',
        enabled: 1,
        loggedOn: new Date(),
        logggedoff: new Date(),
        retris: 4,
        mustchangepwd: 0,
        locked: 0,
        vendorid: 0
    };

    UpdateObject2(user);
    */
} catch (error) {
    console.log(error);
}
finally {
    // connection.end();
}