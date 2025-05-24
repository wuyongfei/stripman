const path = require('path');
const fs = require('fs');
// const jszip = require('jszip');
const PizZip = require("pizzip");
const docxtemplater = require('docxtemplater');
const { dbconfig, connection, queryAsync } = require('../dao/dbconnection.js');

const config = require('../lib/configure.js');

const ignores = ["createdby", "createdate", "updatedby", "updatedate", "deleted"];

const { formatedTimestamp } = require('../lib/helper.js');

const schema = config.db.database;
const tempFolder = "E:\\node\\jwt2\\template";
const outFolder = "E:\\node\\jwt2\\temp";
const templateFile = path.resolve(tempFolder, "columndef.docx");
const outputFile = path.resolve(outFolder, schema + "_columns_" + formatedTimestamp() + ".docx");

const opts = {
    delimiters: {
        start: '{',
        end: '}'
    }
};


let getData = async function getData() {

    try {

        var result = await queryAsync(config.sqlcolumns);
        var rows = JSON.parse(JSON.stringify(result));
        // console.log(rows);
        result = await CreateDocx(templateFile, opts, rows, outputFile);
        console.log(result);

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
    await doc.setData({ cs: data });

    await doc.render();

    let buf = await doc
        .getZip()
        .generate({ type: 'nodebuffer' });

    // buf is a nodejs buffer, you can either write it to a file or do anything else
    // with it.
    await fs.writeFileSync(outputFile, buf);

    return outputFile;
}

getData().then(result => {
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
