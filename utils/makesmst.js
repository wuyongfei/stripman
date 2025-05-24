const path = require('path');
const fs = require('fs');
// const jszip = require('jszip');

const { dbconfig, connection, queryAsync } = require('../dao/dbconnection.js');
const { formatedTimestamp } = require('../lib/helper.js');


const outFolder = "E:\\node\\jwt2\\temp";

let getColumns = async function (table) {

    var queries = [];
    var keys = Object.keys(config.mapping);

    try {
        let tablename = table.TABLE_NAME;
        let descr = table.TABLE_COMMENT;
        let sql = config.sqlcolumnsByTable.replace("{table_name}", tablename);
        // console.log(tablename, descr, sql);

        var result = await queryAsync(sql);
        // console.log('columns', result);

        var rows = JSON.parse(JSON.stringify(result));
        // console.log(rows);
        var cols = [];
        var upd_cols = [];
        var upd_vals = [];

        rows.forEach(row => {
            cols.push(`'${row.COLUMN_NAME}'`);
            upd_cols.push(`${row.COLUMN_NAME} = ?`);
            upd_vals.push(`model.${row.COLUMN_NAME}`);
        });

        let col_columns = cols.join(", ");
        let col_line = `var columns = [${col_columns}];`;
        queries.push(col_line);

        col_line = `var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, '${tablename}', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });`;
        queries.push(col_line);

        col_line = `var cmd = connection.query('INSERT INTO ${tablename} SET ?', ${tablename}.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });`;
        queries.push(col_line);

        col_line = `var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['${tablename}', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });`;
        queries.push(col_line);

        col_line = `
        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE ${tablename} SET ${upd_cols.join(", ")} WHERE id = ?', [${upd_vals.join(", ")}, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });`;
        queries.push(col_line);

        col_line = `var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = [${col_columns}];
        var inserts = [columns, '${tablename}', 'id', id];
        sql = mysql.format(sql, inserts);`;
        queries.push(col_line);

        // console.log(queries);
    } catch (err) {
        console.log(err);
    } finally {
        return queries.join("\n\n");
    }
};

let getData = async function getData() {

    try {

        let tablelist = [];

        var result = await queryAsync(config.sqltable);
        var tables = JSON.parse(JSON.stringify(result));

        // console.log(tables);
        await tables.forEach(table => {
            getColumns(table).then(lines => {
                // console.log(lines);
                // console.log(table);
                let v = `${dbconfig.database}_${table.TABLE_NAME}_query.js`;
                let outputFile = path.resolve(outFolder, v);

                fs.writeFileSync(outputFile, lines);

            });

        });

        // console.log(tablelist);

    } catch (ex) {
        console.log(ex);
        return "NA";
    } finally {
        connection.end();

    }

    return "OK";      //tablelist;
};

getData().then(result => {
    console.log(result);
});
