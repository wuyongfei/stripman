use `gict`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL COMMENT '用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '可用',
  `loggedOn` datetime DEFAULT NULL COMMENT '登录时间',
  `logggedoff` datetime DEFAULT NULL COMMENT '登出时间',
  `retries` smallint DEFAULT '0' COMMENT '登录失败次数',
  `mustchangepwd` tinyint(1) DEFAULT '0' COMMENT '需要修改密码=1，0=不需要修改密码',
  `locked` tinyint(1) DEFAULT '0' COMMENT '账号锁定=1；0=解锁',
  `unlocktime` datetime DEFAULT NULL COMMENT '解锁时间',
  `passwordexpiry` datetime DEFAULT NULL COMMENT '密码到期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
);

ALTER TABLE `users` COMMENT = '登录用户表';

UPDATE gict.users SET `passwordexpiry` = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 120 DAY)
WHERE `id` < 200;


select * from gict.users where `locked` is true;

