const path = require('path');
const fs = require('fs');
// const jszip = require('jszip');
const { dbconfig, db, queryAsync } = require('../dao/dbconnection.js');
const { formatedTimestamp } = require('../lib/helper.js');

// console.log(dbconfig);

const outFolder = "E:\\node\\jwt2\\temp";
const outputFile = path.resolve(outFolder, dbconfig.schema + formatedTimestamp() + ".json");

let UpdateObject = (item2, tablename) => {

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

    keys = Object.keys(item);
    for (let i = 0; i < keys.length; i++) {
        keys[i] = "item." + keys[i];
    }
    let ks3 ="[" + keys.join(", ") + ", id]";

    return { sql: `UPDATE ${tablename} SET ${ks} WHERE id = ?`, item: ks3 };
};

let InsertObject = (item2, tablename) => {

    let item = Object.assign({}, item2);

    if (item.hasOwnProperty("id")) delete item.id;
    if (item.hasOwnProperty("createdate")) delete item.createdate;
    if (item.hasOwnProperty("updatedate")) delete item.updatedate;
    if (item.hasOwnProperty("updatedby")) delete item.updatedby;

    let keys = Object.keys(item);
    let ks = keys.join(", ");

    let ks2 = "?, ".repeat(keys.length - 1) + "?";

    for (let i = 0; i < keys.length; i++) {
        keys[i] = "item." + keys[i];
    }

    let ks3 ="[" + keys.join(", ") + "]";

    return { sql: `INSERT INTO ${tablename} (${ks}) VALUES (${ks2})`, item: ks3 };
};

let getColumns = async function (table) {

    var tabledef = {};
    var keys = Object.keys(config.mapping);

    try {
        let tablename = table.TABLE_NAME;
        let descr = table.TABLE_COMMENT;
        let sql = config.sqlcolumnsByTable.replace("{table_name}", tablename);
        // console.log(tablename, descr, sql);

        tabledef.tablename = tablename;
        tabledef.description = descr;

        tabledef.auditing = false;
        tabledef.catalog = "system";

        let model = {};

        var result = await queryAsync(sql);
        // console.log('columns', result);

        var rows = JSON.parse(JSON.stringify(result));
        // console.log(rows);

        rows.forEach(row => {

            if (row.ORDINAL_POSITION === 1) {
                tabledef.idfield = row.COLUMN_NAME;
            }

            switch (row.DATA_TYPE) {
                case "varchar":
                    if (row.IS_NULLABLE === "YES") {
                        model[row.COLUMN_NAME] = null;
                    }
                    else {
                        model[row.COLUMN_NAME] = "";
                    }
                    break;
                case "int":
                    model[row.COLUMN_NAME] = 0;
                    break;
                case "datetime":
                    model[row.COLUMN_NAME] = null;
                    break;
                case "decimal":
                    model[row.COLUMN_NAME] = 0.0;
                    break;
                case "binary":
                    model[row.COLUMN_NAME] = false;
                    break;
                default:
                    model[row.COLUMN_NAME] = null;
                    break;
            }

        });

        tabledef.model = model;

        let selection = Object.keys(model).join(", ");

        tabledef.query = {
            SelectAny: `SELECT ${selection} FROM ${tablename} WHERE ?? = ?`,
            SelectAll: `SELECT ${selection} FROM ${tablename}`,
            SelectById: `SELECT ${selection} FROM ${tablename} WHERE id = ?`,
            Paging: `SELECT ${selection} FROM ${tablename} ORDER BY ?? LIMIT ? OFFSET ?`,
            DeleteById: `DELETE FROM ${tablename} WHERE id = ?`,
            Insert: `INSERT INTO ${tablename} SET ?`,
            // Insert2: InsertObject(model, tablename),
            // Update: UpdateObject(model, tablename),
            UpdateAny: `UPDATE ${tablename} SET ?? = ? WHERE ?? = ?`,
            SelectCount: `SELECT COUNT(*) as itemamount FROM ${tablename}`,
            SelectCountAny: `SELECT COUNT(*) as itemamount FROM ${tablename} WHERE {condition}`
        };

        // console.log(tablecolumns);
    } catch (err) {
        console.log(err);
    } finally {
        return tabledef;
    }
};

let getData = async function getData() {

    try {

        var tablelist = {};

        var result = await queryAsync(config.sqltable);
        var tables = JSON.parse(JSON.stringify(result));
        var i = 0;
        const len = tables.length;

        // console.log(tables);
        await tables.forEach(table => {
            getColumns(table).then(column => {
                // console.log(column);
                // console.log(table);
                tablelist[table.TABLE_NAME] = column;
                i++;
                // console.log(i, tablelist.length);

                if (i === len) {
                    fs.writeFileSync(outputFile, JSON.stringify(tablelist));
                }
            });

        });

        // console.log(tablelist);

    } catch (ex) {
        console.log(ex);
        return "NA";
    } finally {
        db.end();
    }

    return "OK";      //tablelist;
};

getData().then(result => {
    console.log(result);
});
