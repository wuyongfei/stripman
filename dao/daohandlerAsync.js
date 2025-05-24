/**
 * @name DAOHandlerAsync
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

 const dbmodel = require('./model.json');
 const logging = require('../lib/logger.js');
 const { dbconfig, connection, queryAsync } = require('./dbconnection.js');
 
 const logger = logging.logger;
 
 /**
  * 通用数据库访问方法
  *
  * @class DAOHandlerAsync
  */
 class DAOHandlerAsync {
 
     constructor(modelname) {
 
         this.model = dbmodel[modelname];
         // this.pool = pool;
 
         this.sqlSelectAny = "SELECT ?? FROM ?? WHERE ?? = ?";
         this.sqlSelectAll = "SELECT ?? FROM ??";
         this.sqlSelectById = "SELECT ?? FROM ?? WHERE id = ?";
         this.sqlPaging = "SELECT ?? FROM ?? ORDER BY ?? LIMIT ? OFFSET ?";
 
         this.sqlDeleteById = "DELETE FROM ?? WHERE ?? = ?";
         this.sqlInsert = "INSERT INTO ?? SET ?";
 
         this.sqlUpdateAny = "UPDATE ?? SET ?? = ? WHERE ?? = ?";
         this.sqlUpdateObject = getSqlUpdateObject();
 
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
 
         return `UPDATE users SET ${ks} WHERE id = ?`;
     }
 
     /**
      * 返回当前（最后）状态对象
      *
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
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
      * @memberof DAOHandlerAsync
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
      * @memberof DAOHandlerAsync
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
      * @memberof DAOHandlerAsync
      */
     async get() {
         const fn = `get-${this.myname}`;
         logger.trace(fn, 'getAll');
 
         // console.log(this.columns, this.errorCodes, this.tablename);
 
 
     }
 
     /**
      * 获取记录数
      *
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
      */
     async getCount() {
         const fn = 'getCount-' + this.myname;
         logger.trace(fn, 'getCount');
     }
 
     /**
      * 读取指定记录
      *
      * @param {string} id 主键值；单个主键
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
      */
     async getById(id) {
         const fn = 'getById-' + this.myname;
         logger.trace(fn, id);
 
     }
 
     /**
      * 换页
      *
      * @param {integer} pageCount 第几页，从1开始
      * @param {integer} pageSize 每页记录数量
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
      */
     async getPaging(pageCount, pageSize) {
         const fn = 'getPaging-' + this.myname;
         logger.trace(fn, pageCount, pageSize);
 
     }
 
     /**
      * 添加一条记录
      *
      * @param {object} item 添加到数据表的数据对象
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
      */
     async add(item) {
         const fn = 'add-' + this.myname;
         logger.trace(fn, JSON.stringify(item));
     }
 
     /**
      * 修改记录
      *
      * @param {object} item 要修改的数据对象
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
     * */
     async update(item) {
         const fn = 'update-' + this.myname;
         logger.trace(fn, JSON.stringify(item));
     }
 
     /**
      * 删除指定记录
      *
      * @param {string} id 主键值
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
      */
     async remove(id) {
         const fn = 'remove-' + this.myname;
         logger.trace(fn, id);
     }
 
     /**
      * 执行RAW SQL语句
      *
      * @param {string} sql
      * @returns {object} 状态对象
      * @memberof DAOHandlerAsync
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
      * @memberof DAOHandlerAsync
      */
     async addAuditing(data, module) {
         const fn = 'addAuditing';
         logger.trace(fn, JSON.stringify(data));
 
     }
 
 }
 
 export { DAOHandlerAsync };