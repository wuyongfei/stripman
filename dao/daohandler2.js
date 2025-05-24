/**
 * @name DAOHandler2
 * @author Gavin on 2022/1/26
 * @version 1.0.1
 *
 * @desc 数据访问
 *
 * 访问MySQL数据库
 *
 * @example 仅导出
 *
 */

const dbmodel = require('./model.json');
const logging = require('../lib/logger.js');
const { dbconfig, db } = require('./dbconnection.js');

const logger = logging.logger;

/*
const sql = {
    SelectAny: "SELECT ?? FROM ?? WHERE ?? = ?",
    SelectAll: "SELECT ?? FROM ??",
    SelectById: "SELECT ?? FROM ?? WHERE id = ?",
    Paging: "SELECT ?? FROM ?? ORDER BY ?? LIMIT ? OFFSET ?",
    DeleteById: "DELETE FROM ?? WHERE ?? = ?",
    Insert: "INSERT INTO ?? SET ?",
    UpdateAny: "UPDATE ?? SET ?? = ? WHERE ?? = ?",
    UpdateObject: (item, modelname) => {
        // @param {object} item 需要修改的数据
        // @param {String} modelname 数据表名
        // delete item.id;

        let keys = Object.keys(item);
        for (let i = 0; i < keys.length; i++) {
            keys[i] = keys[i] + " = ?";
        }

        let ks = keys.join(", ");

        return `UPDATE ${dbmodel[modelname].tablename} SET ${ks} WHERE id = ?`;
    },
    SelectCount: "SELECT COUNT(*) as itemamount FROM ??",
    SelectCountAny: "SELECT COUNT(*) as itemamount FROM ?? WHERE {condition}",
    columns: (modelname) => {
        // @param {String} modelname 数据表名
        return Object.keys(dbmodel[modelname].model);
    }
};
*/

/**
 * Create UPDATE statement
 * 
 * @param {Object} item2 
 * @param {String} tablename 
 * @returns 
 */
function CreateUpdate(item2, tablename) {

    let id = item2.id;
    let item = Object.assign({}, item2);

    if (item.hasOwnProperty("id")) delete item.id;
    if (item.hasOwnProperty("createdate")) delete item.createdate;
    if (item.hasOwnProperty("createdby")) delete item.createdby;
    if (item.hasOwnProperty("updatedate")) delete item.updatedate;

    let keys = Object.keys(item);
    for (let i = 0; i < keys.length; i++) {
        keys[i] = keys[i] + " = ?";
    }

    let ks = keys.join(", ");

    /*
    keys = Object.keys(item);
    for (let i = 0; i < keys.length; i++) {
        keys[i] = "item." + keys[i];
    }
    let ks3 ="[" + keys.join(", ") + ", id]";
    */

    return { sql: `UPDATE ${tablename} SET ${ks} WHERE id = ${id}`, values: Object.values(item) };
}

/**
 * Create INSERT statement
 * 
 * @param {Object} item2 
 * @param {String} tablename 
 * @returns 
 */
function CreateInsert(item2, tablename) {

    let item = Object.assign({}, item2);

    if (item.hasOwnProperty("id")) delete item.id;
    if (item.hasOwnProperty("createdate")) delete item.createdate;
    if (item.hasOwnProperty("updatedate")) delete item.updatedate;
    if (item.hasOwnProperty("updatedby")) delete item.updatedby;

    let keys = Object.keys(item);
    let ks = keys.join(", ");

    let ks2 = "?, ".repeat(keys.length - 1) + "?";

    /*
    for (let i = 0; i < keys.length; i++) {
        keys[i] = "item." + keys[i];
    }

    let ks3 ="[" + keys.join(", ") + "]";
    */
    // console.log("CreateInsert", keys, Object.values(item));
    return { sql: `INSERT INTO ${tablename} (${ks}) VALUES (${ks2})`, values: Object.values(item) };
}


/**
 * 作为调试使用
 * 
 * @param {String} modelname 数据表名
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function print(modelname) {
    console.log(dbmodel[modelname].model);
    console.log(dbmodel[modelname].query);
}
exports.print = print;

/**
 * 读取全部数据 - 勿使用
 *
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function get(modelname, callback) {

    logger.trace(`get-${modelname}`, dbmodel[modelname].query.SelectAll);

    db.query(dbmodel[modelname].query.SelectAll, function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.length === 0) {
            callback(null, []);
        }
        else {
            callback(null, JSON.parse(JSON.stringify(results)));
        }
        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });

}
exports.get = get;

/**
 * 获取记录数/全部
 *
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function getCount(modelname, callback) {

    logger.trace('getCount-' + modelname, dbmodel[modelname].query.SelectCount);

    db.query(dbmodel[modelname].query.SelectCount, function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results[0].itemamount);

        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });
}
exports.getCount = getCount;

/**
 * 获取记录数，按条件
 *
 * @param {string} condition 
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function getCountAny(condition, modelname, callback) {

    var sqlcount = dbmodel[modelname].query.SelectCountAny.replace("{condition}", condition);
    logger.trace("getCountAny-" + modelname, sqlcount);

    db.query(sqlcount, function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results[0].itemamount);
    });
}
exports.getCountAny = getCountAny;

/**
 * 读取指定记录，By Id
 *
 * @param {string} id 主键值；单个主键
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function getById(id, modelname, callback) {

    logger.trace('getById-' + modelname, id, dbmodel[modelname].query.SelectById);

    db.query(dbmodel[modelname].query.SelectById, [id], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        if (results.length === 0) {
            callback(null, {});
        }
        else {
            callback(null, results[0]);
        }
        // return res.send({ error: false, data: JSON.parse(JSON.stringify(rows)), message: 'Fetch Successfully.' });
    });

}
exports.getById = getById;

/**
 * 换页
 *
 * @param {integer} pageCount 第几页，从1开始
 * @param {integer} pageSize 每页记录数量
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function getPaging(pageCount, pageSize, modelname, callback) {

    logger.trace('getPaging-' + modelname, pageCount, pageSize, dbmodel[modelname].query.Paging);

    let offset = (pageCount - 1) * pageSize;

    var cmd = db.query(dbmodel[modelname].query.Paging, ['id', pageSize, offset], function (error, results, fields) {
        if (error) {
            // console.log(cmd.query);
            callback(error, null);
        }

        if (results.length === 0) {
            callback(null, []);
        }
        else {
            callback(null, JSON.parse(JSON.stringify(results)));
        }
    });

}
exports.getPaging = getPaging;

/**
 * 添加一条记录
 *
 * @param {object} item 添加到数据表的数据对象
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 *
 */
function add(item, modelname, callback) {

    let oper = CreateInsert(item, dbmodel[modelname].tablename);
    logger.trace('add-' + modelname, JSON.stringify(item), oper.sql);       //, oper.values);

    db.query(oper.sql, oper.values, function (error, results, fields) {
        if (error) {
            //throw error;
            // console.log(db.sql);
            callback(error, null);
        }
        // console.log(db.sql);
        callback(null, results.insertId);
    });

}
exports.add = add;

/**
 * 修改记录
 *
 * @param {object} item 要修改的数据对象
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
* */
function update(item, modelname, callback) {

    //var id = item.id;
    //delete item.id;

    if (modelname === "users") delete item.password;

    let oper = CreateUpdate(item, dbmodel[modelname].tablename);

    // const sqlupdate = sql.UpdateObject(item, modelname);

    logger.trace('update-' + modelname, JSON.stringify(item), oper.sql);

    // var values = Object.values(item);
    // values.push(id);

    db.query(oper.sql, oper.values, function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results.changedRows);
    });

}
exports.update = update;

/**
 * update any single column by ID
 * 
 * @param {integer} id 
 * @param {string} setName 
 * @param {object} setValue 
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function UpdateAnyById(id, setName, setValue, modelname, callback) {

    logger.trace('UpdateAnyById-' + modelname, id, setName, setValue, dbmodel[modelname].query.UpdateAny);

    db.query(dbmodel[modelname].query.UpdateAny, [setName, setValue, 'id', id], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results.changedRows);
    });
}
exports.UpdateAnyById = UpdateAnyById;

/**
 * update single column by any condition
 * 
 * @param {string} whereName 
 * @param {object} whereValue 
 * @param {string} setName 
 * @param {object} setValue 
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function UpdateAny(whereName, whereValue, setName, setValue, modelname, callback) {

    logger.trace('UpdateAny-' + modelname, whereName, whereValue, setName, setValue, dbmodel[modelname].query.UpdateAny);

    db.query(dbmodel[modelname].query.UpdateAny, [setName, setValue, whereName, whereValue], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results.changedRows);
    });
}
exports.UpdateAny = UpdateAny;

/**
 * 删除指定记录
 *
 * @param {string} id 主键值
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function remove(id, modelname, callback) {

    logger.trace('remove-' + modelname, id, dbmodel[modelname].query.DeleteById);

    db.query(dbmodel[modelname].query.DeleteById, [id], function (error, results, fields) {
        if (error) {
            //throw error;
            callback(error, null);
        }

        callback(null, results.affectedRows);
    });

}
exports.remove = remove;

/**
 * 执行RAW SQL语句
 *
 * @param {string} sql
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function getRAW(sql, modelname, callback) {

    logger.trace('getRAW-' + modelname, sql);
    callback(null, []);
}
exports.getRAW = getRAW;

/**
 * 审计
 *
 * @param {object} data 审计对象
 * @param {string} module 模块名
 * @param {string} modelname 数据表名
 * @param {object} callback 回调函数
 * @returns {object} VOID
 * @memberof DAOHandler2
 */
function addAuditing(data, module, modelname, callback) {

    logger.trace('addAuditing-' + modelname, JSON.stringify(data), module);
    callback(null, {});
}

exports.addAuditing = addAuditing;
