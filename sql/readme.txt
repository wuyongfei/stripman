1, 从model中删除createdate和updatedate，deleted

2, 修改时删除createdby - 这个字段仅使用一次

3，使用下面的语句：

  `createdby` int DEFAULT NULL COMMENT '创建者/对应users表',
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updatedby` int DEFAULT NULL COMMENT '修改者/对应users表',
  `updatedate` datetime NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  `deleted` tinyint(1) DEFAULT 0 NOT NULL COMMENT '删除标记',

4，导入数据

4.1 导入用户数据
  - 在 sql目录中 users_data.json 含有用户数据，在 workbench 中右击 users 表名，选择Table Data Import Wizard
  - 选择导入前先删除数据 (Select Destination - Truncate table before import)
  - 注意在mapping时(Configure Import Settings)，不要选择日期字段和 id。因为日期格式的问题，导入时会出错
  - 导入后执行以下语句：
UPDATE gict.users SET `passwordexpiry` = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 120 DAY)
WHERE `id` < 200;
* 200 可能需要根据情况修改。

4.2 导入roles
  同上。在 mapping 时不要选择 id 和日期字段。

4.3 导入 userroles

执行以下语句，前5个用户角色为admin (id = 1) ：
INSERT INTO gict.userroles (userid, roleid, createdby)
SELECT u.id, 1, 0 FROM gict.users u WHERE u.id < 6;

其他用户为 management （id = 2）：
INSERT INTO gict.userroles (userid, roleid, createdby)
SELECT u.id, 2, 0 FROM gict.users u WHERE u.id > 5;

id > 100 用户有 customerservice (id = 3)

INSERT INTO gict.userroles (userid, roleid, createdby)
SELECT u.id, 3, 0 FROM gict.users u WHERE u.id > 99;

上述语句可能需要调整（如果导入数据之前truncate table，可能id会从1开始编号，这样上述语句应该可以直接执行）。
