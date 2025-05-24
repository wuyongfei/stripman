/**
 * @name DAOHandler
 * @author Gavin on 2022/1/26
 * @version 1.0.1
 *
 * @desc 数据访问鸡肋
 *
 * MySQL
 *
 * @example 仅导出
 *
 */

const mysql = require('mysql2/promise');
const dbmodel = require('./model.json');
const logging = require('../lib/logger.js');
// const { createPool } = require('./dbpool.js');
const { dbconfig, connection } = require('./dbconnection.js');

// ar connection = createConnection(null);
// var pool = createPool(null);

const logger = logging.logger;

/**
 * 通用数据库访问方法
 *
 * @class DAOHandler
 */
class DAOHandler {

    constructor(modelname) {

        this.model = dbmodel[modelname];
        this.myname = modelname;

        // this.connection = connection;
        // this.pool = pool;

        this.sqlSelectAny = "SELECT ?? FROM ?? WHERE ?? = ?";
        this.sqlSelectAll = "SELECT ?? FROM ??";
        this.sqlSelectById = "SELECT ?? FROM ?? WHERE id = ?";
        this.sqlPaging = "SELECT ?? FROM ?? ORDER BY ?? LIMIT ? OFFSET ?";

        this.sqlDeleteById = "DELETE FROM ?? WHERE ?? = ?";
        this.sqlInsert = "INSERT INTO ?? SET ?";

        this.sqlUpdateAny = "UPDATE ?? SET ?? = ? WHERE ?? = ?";
        this.sqlUpdateObject = this.getSqlUpdateObject();

        this.sqlSelectCount = "SELECT COUNT(*) as itemamount FROM ??";
        this.sqlSelectCountAny = "SELECT COUNT(*) as itemamount FROM ?? WHERE {condition}";

        this.columns = Object.keys(this.model.model);    // `[ ${Object.keys(this.model.model).join(", ")} ]`;

        // 状态对象
        this.result = {
            state: true,
            code: 0,
            module: null,
            data: null,
            message: null
        };

    }

    print() {
        console.log(this.model);

        console.log(this.sqlSelectAny);
        console.log(this.sqlSelectAll);
        console.log(this.sqlSelectById);
        console.log(this.sqlPaging);

        console.log(this.sqlDeleteById);
        console.log(this.sqlInsert);

        console.log(this.sqlUpdateAny);
        console.log(this.sqlUpdateObject);

        console.log(this.sqlSelectCount);
        console.log(this.sqlSelectCountAny);

        console.log(this.columns);

    }

    getSqlUpdateObject() {

        let m = Object.assign({}, this.model.model);
        delete m.id;

        let keys = Object.keys(m);
        for (let i = 0; i < keys.length; i++) {
            keys[i] = keys[i] + " = ?";
        }

        let ks = keys.join(", ");

        return `UPDATE ${this.model.tablename} SET ${ks} WHERE id = ?`;
    }

    /**
     * 返回当前（最后）状态对象
     *
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    getResult() {
        return this.result;
    }


    /**
     * 设置操作类型状态对象
     *
     * @param {string} oper 操作类型符号名
     * @param {object} data 数据对象
     * @param {string} module 模块名
     * @param {string} message 消息
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    OperationResult(oper, data, module, message) {

        this.result.state = (oper === 'success');
        this.result.code = OPERATIONCode[oper];
        this.result.module = module;
        this.result.data = data;
        this.result.message = message;

        return this.result;
    }

    /**
     * 设定状态类型状态对象
     *
     * @param {string} status 状态类型符号名
     * @param {object} data 数据对象
     * @param {string} module 模块名
     * @param {string} message 消息
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    StatusResult(status, data, module, message) {

        this.result.state = (status === 'SUCCESS');
        this.result.code = StatusCode[status];
        this.result.module = module;
        this.result.data = data;
        this.result.message = message;

        return this.result;
    }

    /**
     * 读取全部数据
     *
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    async get() {

        const fn = `get-${this.myname}`;
        logger.trace(fn, 'getAll');

        try {
            // console.log(this.columns, this.errorCodes, this.tablename);
            //connection = createConnection(connection);

            // console.log(typeof pool);
            //let sql = this.sqlSelectAll;
            //let cols = this.columns;
            //let tn = this.model.tablename;
            // console.log(sql, cols, tn);
            // cols.push(tn);

            const connection = await mysql.createConnection(dbconfig.connOpts);
            const [rows, fields] = await connection.query(this.sqlSelectAll, [this.columns, this.model.tablename]);
            return JSON.parse(JSON.stringify(rows));

            /*
            pool.getConnection(function (err, connection) {
                // Do something with the connection
                if (err) throw err;

                connection.query(sql, [cols, tn], function (error, results, fields) {
                    if (error) throw error;
                    // console.log(JSON.parse(JSON.stringify(results)));
                    return JSON.parse(JSON.stringify(results));
                });

                // Don't forget to release the connection when finished!
                pool.releaseConnection(connection);
            });
            */
        }
        catch (e) {
            throw e;
        }
        finally {
            // release connection
        }

        return [];
    }

    /**
     * 获取记录数
     *
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    getCount() {
        const fn = 'getCount-' + this.myname;
        logger.trace(fn, 'getCount');

        var cmd = connection.query(this.sqlSelectCount, [this.model.tablename], function (error, results, fields) {
            if (error) throw error;
            // console.log(results[0].itemamount);
            return results[0].itemamount;
        });
    }

    /**
     * 获取记录数
     *
     * @param {string} condition 
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    getCountAny(condition) {
        var sqlcount = this.sqlSelectCountAny.replace("{condition}", condition);

        var cmd = connection.query(sqlcount, [this.model.tablename], function (error, results, fields) {
            if (error) throw error;
            // console.log(results[0].itemamount);
            
            return results[0].itemamount;
        });
    }

    /**
     * 读取指定记录
     *
     * @param {string} id 主键值；单个主键
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    async getById(id) {
        const fn = 'getById-' + this.myname;
        logger.trace(fn, id);

        try {
            const connection = await mysql.createConnection(dbconfig.connOpts);
            const [rows, fields] = await connection.query(this.sqlSelectId, [this.columns, this.model.tablename, id]);
            //var cmd = pool.query(this.sqlSelectId, [this.columns, this.model.tablename, id], function (error, results, fields) {
            //    if (error) throw error;
            // console.log(results);
            //    return results[0];
            //});
            return rows[0];
        }
        catch (e) {
            throw e;
        }
        finally {
            // release connection
        }

        return {};
    }

    /**
     * 换页
     *
     * @param {integer} pageCount 第几页，从1开始
     * @param {integer} pageSize 每页记录数量
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    getPaging(pageCount, pageSize) {
        const fn = 'getPaging-' + this.myname;
        logger.trace(fn, pageCount, pageSize);

        let offset = (pageCount - 1) * pageSize;

        var cmd = connection.query(this.sqlPaging, [this.columns, this.model.tablename, 'id', pageSize, offset], function (error, results, fields) {
            if (error) throw error;
            console.log(JSON.parse(JSON.stringify(results)));
        });

    }

    /**
     * 添加一条记录
     *
     * @param {object} item 添加到数据表的数据对象
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    add(item) {
        const fn = 'add-' + this.myname;
        logger.trace(fn, JSON.stringify(item));

        var cmd = connection.query(this.sqlInsert, [this.model.tablename, item], function (error, results, fields) {
            if (error) throw error;
            // Neat!
            // console.log(results.insertId);
            return results.insertId;
        });

    }

    /**
     * 修改记录
     *
     * @param {object} item 要修改的数据对象
     * @returns {object} 状态对象
     * @memberof DAOHandler
    * */
    update(item) {
        const fn = 'update-' + this.myname;
        logger.trace(fn, JSON.stringify(item));

        var id = item.id;
        delete item.id;

        var values = Object.values(item);
        values.push(id);

        var cmd = connection.query(this.sqlUpdateObject, values, function (error, results, fields) {
            if (error) throw error;
            // console.log('changed ' + results.changedRows + ' rows');

            return results.changedRows;
        });


    }

    /**
     * update any single column by ID
     * 
     * @param {integer} id 
     * @param {string} setName 
     * @param {object} setValue 
     * @memberof DAOHandler
     */
    UpdateAnyById(id, setName, setValue) {
        var cmd = connection.query(this.sqlUpdateAny, [this.model.tablename, setName, setValue, 'id', id], function (error, results, fields) {
            if (error) throw error;
            //console.log('changed ' + results.changedRows + ' rows');

            return results.changedRows;
        });
    }

    /**
     * update single column by any condition
     * @param {string} whereName 
     * @param {object} whereValue 
     * @param {string} setName 
     * @param {object} setValue 
     * @memberof DAOHandler
     */
    UpdateAny(whereName, whereValue, setName, setValue) {
        var cmd = connection.query(this.sqlUpdateAny, [this.model.tablename, setName, setValue, whereName, whereValue], function (error, results, fields) {
            if (error) throw error;
            //console.log('changed ' + results.changedRows + ' rows');

            return results.changedRows;
        });
    }

    /**
     * 删除指定记录
     *
     * @param {string} id 主键值
     * @returns {int} number of records
     * @memberof DAOHandler
     */
    remove(id) {
        const fn = 'remove-' + this.myname;
        logger.trace(fn, id);

        var cmd = connection.query(this.sqlDeleteById, [this.model.tablename, 'id', id], function (error, results, fields) {
            if (error) throw error;
            // console.log('deleted ' + results.affectedRows + ' rows');
            return results.affectedRows;
        });

    }

    /**
     * 执行RAW SQL语句
     *
     * @param {string} sql
     * @returns {object} 状态对象
     * @memberof DAOHandler
     */
    async getRAW(sql) {
        const fn = 'getRAW-' + this.myname;
        logger.trace(fn, sql);
        return null;
    }

    /**
     * 审计
     *
     * @param {object} data 审计对象
     * @param {string} module 模块名
     * @returns VOID
     * @memberof DAOHandler
     */
    async addAuditing(data, module) {
        const fn = 'addAuditing';
        logger.trace(fn, JSON.stringify(data));

    }

}

module.exports = DAOHandler;
