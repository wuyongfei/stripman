const path = require('path');
const fs = require('fs');
// const jszip = require('jszip');
const PizZip = require("pizzip");
const docxtemplater = require('docxtemplater');

const config = require('../lib/configure.js');
const { formatedTimestamp } = require('../lib/helper.js');

const {dbconfig, connection, queryAsync} = require('../dao/dbconnection.js');

const schema = dbconfig.database;
const dbType = "mysql";
const tempFolder = "E:\\node\\jwt2\\template";
const outFolder = "E:\\node\\jwt2\\temp";

const templateFile = path.resolve(tempFolder, "tabledef.docx");
const outputFile = path.resolve(outFolder, schema + formatedTimestamp() + ".docx");

const opts = {
    delimiters: {
        start: '{',
        end: '}'
    }
};

// console.log(db);


let getColumns = async function (table) {

    var tablecolumns = {};
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

        var cs = [];

        rows.forEach(row => {
            let r = {};
            keys.forEach(key => {
                r[config.mapping[key]] = row[key];
            });
            // console.log(r);
            cs.push(r);
        });

        tablecolumns.table = tablename;
        tablecolumns.desc = descr;
        tablecolumns.cs = cs;

        // console.log(tablecolumns);
    } catch (err) {
        console.log(err);
    } finally {
        return tablecolumns;
    }
};

let getData = async function getData() {

    try {

        var tablelist = [];

        var result = await queryAsync(config.sqltable);
        var tables = JSON.parse(JSON.stringify(result));
        var i = 0;
        const len = tables.length;

        // console.log(tables);
        await tables.forEach(table => {
            getColumns(table).then(column => {
                // console.log(column);
                tablelist.push(column);
                i++;
                // console.log(i, tablelist.length);

                if (i === len) {
                    CreateDocx(templateFile, opts, tablelist, outputFile).then((state) => {
                        console.log(state);
                    });
                }
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

async function CreateDocx(templateFile, docxConfig, data, outputFile) {

    let content = await fs.readFileSync(templateFile, 'binary');

    const zip = await new PizZip(content);        // const zip = jszip.loadAsync(content);      // await new jszip(content);

    let doc = await new docxtemplater()
        .loadZip(zip)
        .setOptions(docxConfig);

    //set the templateVariables
    await doc.setData({ tables: data });

    await doc.render();

    let buf = await doc
        .getZip()
        .generate({ type: 'nodebuffer' });

    // buf is a nodejs buffer, you can either write it to a file or do anything else
    // with it.
    await fs.writeFileSync(outputFile, buf);

    return outputFile;
}

getData(dbType).then(result => {
    console.log(result);
});
// console.log(state);

/*

 {
    TABLE_NAME: 'strips',
    COLUMN_NAME: 'createdate',
    ORDINAL_POSITION: 10,
    IS_NULLABLE: 'YES',
    DATA_TYPE: 'datetime',
    CHARACTER_MAXIMUM_LENGTH: null,
    CHARACTER_OCTET_LENGTH: null,
    NUMERIC_PRECISION: null,
    NUMERIC_SCALE: null,
    COLUMN_TYPE: 'datetime',
    COLUMN_KEY: '',
    COLUMN_COMMENT: '创建日期'
  }

  {
    TABLE_NAME: 'custcontrol',
    ENGINE: 'InnoDB',
    VERSION: 10,
    TABLE_TYPE: 'BASE TABLE',
    TABLE_COMMENT: '用于登录等管理的表'
  }

*/
