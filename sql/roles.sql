use `gict`;

CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role` varchar(64) NOT NULL COMMENT '角色',
  `descr` varchar(256) NOT NULL COMMENT '描述',
  `createdby` int DEFAULT NULL COMMENT '创建者/对应users表',
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ;

ALTER TABLE `roles` COMMENT = '角色表';

use `gict`;
insert into roles(role, descr, createdby) VALUES('admin', '系统管理员', 0);
insert into roles(role, descr, createdby) VALUES('management', '数据管理', 0);
insert into roles(role, descr, createdby) VALUES('customerservice', '客户服务中心', 0);

use `gict`;

CREATE TABLE `userroles` (
  `userid` int NOT NULL COMMENT '用户ID',
  `roleid` int NOT NULL COMMENT '角色ID',
  `createdby` int DEFAULT NULL COMMENT '创建者/对应users表',
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
   PRIMARY KEY (`userid`, `roleid`)
) ;

ALTER TABLE `userroles` COMMENT = '用户角色表';

INSERT gict.userroles (userid, roleid, createdby) VALUES (1, 1, 0 );
INSERT gict.userroles (userid, roleid, createdby) VALUES (2, 1, 0 );
INSERT gict.userroles (userid, roleid, createdby) VALUES (3, 1, 0 );
INSERT gict.userroles (userid, roleid, createdby) VALUES (4, 1, 0 );
INSERT gict.userroles (userid, roleid, createdby) VALUES (5, 1, 0 );

INSERT INTO gict.userroles (userid, roleid, createdby)
SELECT u.id, 2, 0 FROM gict.users u WHERE u.id > 5;

INSERT INTO gict.userroles (userid, roleid, createdby)
SELECT u.id, 3, 0 FROM gict.users u WHERE u.id > 99;

BEGIN
DECLARE startingRange INT DEFAULT 10;
   WHILE startingRange <= 5 DO
      INSERT gict.userroles (userid, roleid, createdby) VALUES (startingRange, 1, 0 );
      SET startingRange = startingRange + 1;
   END WHILE;
   
END;
