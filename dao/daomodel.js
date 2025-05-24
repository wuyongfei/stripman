// 所有数据库对象
const DAOModel = require('./model.json');

// 对象列表，含系统中所有要使用的对象
const ModelList = Object.keys(DAOModel);

/**
 * 通用数据模型操作方法
 *
 * @class DAOModelHandler
 */
class DAOModelHandler {
    /**
     * 给对象赋值
     *
     * @static
     * @param {string} which 在ModelList中定义
     * @param {object} obj 传入对象
     * @returns {object} 返回指定对象
     * @memberof DAOModelHandler
     */
    static getObject(which, obj) {
        if (ModelList.indexOf(which) === -1) {
            return undefined;
        }

        let newObj = Object.assign({}, DAOModel[which].model);

        Object
            .keys(newObj)
            .map(key => {
                if (obj.hasOwnProperty(key)) {
                    newObj[key] = obj[key];
                }
            });

        return newObj;
    }

    /**
     * 初始化Model对象
     *
     * @static
     * @param {string} which 在ModelList列表中的一个
     * @returns {object} 返回由which指定的Model的初始化对象
     * @memberof DAOModelHandler
    * */
    static initializeObject(which) {
        if (ModelList.indexOf(which) === -1) {
            return undefined;
        }

        return Object.assign({}, DAOModel[which].model);
    }

    /**
     * 返回SQL字段列表
     *
     * @static
     * @param {string} which 数据表名
     * @param {string} [prefix=''] 前缀
     * @returns {string[]} 字段名列表
     * @memberof DAOModelHandler
     */
    static getSQL(which, prefix = '') {

        if (ModelList.indexOf(which) === -1) {
            return undefined;
        }

        let s = Object.keys(DAOModel[which].model);
        if (prefix !== '') {
            s.map((key, i) => {
                s[i] = prefix + '.' + key;
            });
        }
        return s; // .join(', ');
    }

    /**
     * 返回一个对象，包含：tablename, idfield, model
     *
     * @static
     * @param {string} which Model名
     * @returns {object} 指定Model对象
     * @memberof DAOModelHandler
     */
    static getDef(which) {
        return DAOModel[which];
    }

    /**
     * 返回表名
     *
     * @static
     * @param {string} which  Model名
     * @returns {string} 表名
     * @memberof DAOModelHandler
     */
    static getTableName(which) {
        return DAOModel[which].tablename;
    }

    /**
     * ID字段名
     *
     * @static
     * @param {string} which Model名
     * @returns {string} ID字段名
     * @memberof DAOModelHandler
     */
    static getIDField(which) {
        return DAOModel[which].idfield;
    }

    /**
     * 返回数据库类型
     *
     * @static
     * @returns {object} RDBMS类型
     * @memberof DAOModelHandler
     */
    static getDBMSType() {
        return DBMSType;
    }

    /**
     * 返回分页查询，仅适合SQLserver版本2012以内的情况。如果是2012及以上，使用DAOHandler.getPaging即可
     *
     * @static
     * @param {integer} pageSize 每页记录数量
     * @param {integer} pageCount 第几页，从1开始
     * @param {string} query 字段列表
     * @param {string} tablename 表名，例如：tablename = "users INNNER JOIN userprofile ON (users.username =
        // userprofile.username)"
     * @param {string} idField 主键字段，例如：idField = 'users.id'
     * @returns {string} RAW SQL
     * @memberof DAOModelHandler
     */
    static getPagingRAWSQL2(pageSize, pageCount, query, tablename, idField) {

        // let query = this.getSQL().join(', '); let tablename = "users INNNER JOIN
        // userprofile ON (users.username = userprofile.username)"; let idField =
        // 'users.id';

        let offset = (pageCount - 1) * pageSize;

        return `SELECT ${query}
                    FROM ${tablename}
                    ORDER BY ${idField}
                    LIMIT ${pageSize} OFFSET ${offset} `;
    }

    /**
     * 返回分页查询，仅适合SQLserver版本2012以内的情况。如果是2012及以上，使用DAOHandler.getPaging即可
     *
     * @static
     * @param {string} which 数据模型名
     * @param {integer} pageSize 每页记录数量
     * @param {integer} pageCount 第几页，从1开始
     * @returns {string} RAW SQL
     * @memberof DAOModelHandler
     */
    static getPagingRAWSQL(which, pageSize, pageCount) {

        let query = this
            .getSQL(which)
            .join(', ');

        let tablename = this.getTableName(which);
        let idField = this.getIDField(which);

        let offset = (pageCount - 1) * pageSize;

        return `SELECT ${query}
                    FROM ${tablename}
                    ORDER BY ${idField}
                    LIMIT ${pageSize} OFFSET ${offset} `;
    }
}

module.exports = {
    DAOModel,
    ModelList,
    DAOModelHandler
};