require("dotenv").config();

module.exports = config = {
    base: {
        token_server_port: process.env.TOKEN_SERVER_PORT,       // = 4000
        admin_server_port: process.env.ADMIN_SERVER_PORT,       // = 8081
        mobile_server_port: process.env.MOBILE_PORT,            // = 8080
        react_port: process.env.REACT_PORT,                     // = 80
        access_token: process.env.ACCESS_TOKEN_SECRET,          // = 3e9af42de397cfc9387a06972c28c23a1ac7e9a60fb6dc1f05295bc6057baf500672d4a13db5d04ea84bbc4c5679164a7723f3d49f516bb73dc3df6e3b768c8e
        refresh_token: process.env.REFRESH_TOKEN_SECRET,        // = 56a6d157ad7d2ee09e480960ae857e528ae546d156f47433b1afad162311c45aa520697b65d13a5c72891f6145ab1f2675886fc124027dc95f86073dd8fe1462
        secret_key: process.env.SECRET_KEY,                     // = c828047d74ac3c1381c1de7769bf5472f8e6c8c2ef6b5a6a176eb920f93bc634
        tokenExpiresIn: "24h"
    },
    rfs_moble: {
        file: process.env.M_RFS_FILE,
        size: process.env.M_RFS_SIZE, // rotate every 10 MegaBytes written
        interval: process.env.M_RFS_INTERVAL, // rotate daily
        path: process.env.M_RFS_PATH
    },
    rfs_db: {
        file: process.env.RFS_FILE,
        size: process.env.RFS_SIZE, // rotate every 10 MegaBytes written
        interval: process.env.RFS_INTERVAL, // rotate daily
        path: process.env.RFS_PATH
    },
    db: {
        schema: process.env.DB_DATABASE,
        connOpts: {
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASSWORD,
            database: process.env.DB_DATABASE,
            port: process.env.DB_PORT
        },
        poolOpts: {
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASSWORD,
            database: process.env.DB_DATABASE,
            port: process.env.DB_PORT,
            waitForConnections: true,
            connectionLimit: process.env.DB_ConnectionLimit,
            queueLimit: 0
        }
    },
    sqlcolumnsByTable: "select table_name, column_name, ordinal_position, is_nullable, data_type, character_maximum_length, " +
        "character_octet_length, numeric_precision, numeric_scale, column_type, column_key, column_comment " +
        "from information_schema.columns " +
        "where table_schema = '" + process.env.DB_DATABASE + "' " +
        "and table_name = '{table_name}' order by ordinal_position;",
    sqlcolumns: "select table_name, column_name, ordinal_position, is_nullable, data_type, character_maximum_length, " +
        "character_octet_length, numeric_precision, numeric_scale, column_type, column_key, column_comment " +
        "from information_schema.columns " +
        "where table_schema = '" + process.env.DB_DATABASE + "' " +
        "and column_name not in ('createdby', 'createdate', 'updatedby', 'updatedate', 'deleted') " +
        "order by table_name, ordinal_position;",
    sqltable: "SELECT table_name, engine, version, table_type, table_comment FROM INFORMATION_SCHEMA.TABLES " +
        "WHERE table_schema = '" + process.env.DB_DATABASE + "';",
    mapping: {
        TABLE_NAME: "tn",
        COLUMN_NAME: "cn",
        ORDINAL_POSITION: "o",
        IS_NULLABLE: "nu",
        DATA_TYPE: "dt",
        CHARACTER_MAXIMUM_LENGTH: "ml",
        CHARACTER_OCTET_LENGTH: "ol",
        NUMERIC_PRECISION: "np",
        NUMERIC_SCALE: "ns",
        COLUMN_TYPE: "ct",
        COLUMN_KEY: "ck",
        COLUMN_COMMENT: "cc"
    },
    accountPolicy: {
        "defaultPassword": "12345678",
        "maxLength": 16,
        "minLength": 8,
        "maxRetries": 4,
        "lockTime": 30,
        "expiryDays": 120
    },
    admin: {
        "username": "admin",
        "fullname": "系统管理员",
        "email": "gavinn@caca.com.cn",
        "phone": "(010) 8235 5883",
        "mobile": "139 7128 5115",
        "employeeId": "HP008332",
        "WeChat": "gavinwechat",
        "WeChatID": "WixGavinWechat",
        "qq": "1111111"
    },
    rbac: {
        "initialized": true,
        "audit": {
            "auditing": true,
            "collection": "AUDIT",
            "catalog": "users"
        }
    }
};