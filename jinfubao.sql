# Host: localhost  (Version: 5.5.53)
# Date: 2017-02-20 16:44:34
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "jfb_admin"
#

CREATE TABLE `jfb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "jfb_admin"
#

INSERT INTO `jfb_admin` VALUES (1,'admin','yBlt6YH9a9JFWK85nMR-Y2X_itv0pHvD','$2y$13$LrK6CD2djnYEK8M2X7jC1eL.PQXtr11//cO.RjRTw0fCElVkcjc9O',NULL,NULL,'290559038@qq.com',10,1460820565,1460820565);

#
# Structure for table "jfb_auth_rule"
#

CREATE TABLE `jfb_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "jfb_auth_rule"
#


#
# Structure for table "jfb_auth_item"
#

CREATE TABLE `jfb_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `level` int(2) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `jfb_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `jfb_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "jfb_auth_item"
#

INSERT INTO `jfb_auth_item` VALUES ('/comment/index',2,'评论管理',NULL,NULL,1474265757,1474265757,1,2,NULL),('/post/index',2,'帖子管理',NULL,NULL,1474265605,1474265605,1,3,NULL),('/rbac',2,'系统设置',NULL,NULL,1467913682,1467913682,1,1,NULL),('/rbac/add-permission',2,'新增权限',NULL,NULL,1467972825,1467972825,3,NULL,NULL),('/rbac/add-role',2,'新增角色',NULL,NULL,1467979264,1467979264,3,NULL,NULL),('/rbac/assign',2,'分配权限',NULL,NULL,1467993966,1467993966,3,NULL,NULL),('/rbac/permission',2,'权限管理',NULL,NULL,1467915772,1467915772,2,NULL,NULL),('/rbac/role',2,'角色管理',NULL,NULL,1467915565,1467915565,2,NULL,NULL),('/site/main',2,'后台首页',NULL,NULL,1469261409,1469261409,1,11,NULL),('/staff/index',2,'员工管理',NULL,NULL,1468053145,1468053145,1,7,NULL),('/user',2,'用户中心',NULL,NULL,1469295424,1469295606,1,6,NULL),('/user/index',2,'用户管理',NULL,NULL,1469295563,1469295563,2,NULL,NULL),('/wechat',2,'微信公众号',NULL,NULL,1477996407,1477996407,1,NULL,NULL),('/wechat/index',2,'公众号验证',NULL,NULL,1477996429,1477996429,2,NULL,NULL),('测试角色',1,NULL,NULL,NULL,1467985121,1467985121,1,NULL,NULL),('舰桥',1,NULL,NULL,NULL,1467989719,1467989719,1,NULL,NULL);

#
# Structure for table "jfb_auth_item_child"
#

CREATE TABLE `jfb_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `jfb_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jfb_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "jfb_auth_item_child"
#

INSERT INTO `jfb_auth_item_child` VALUES ('/rbac','/rbac/permission'),('/rbac','/rbac/role'),('/rbac/permission','/rbac/add-permission'),('/rbac/role','/rbac/add-role'),('/rbac/role','/rbac/assign'),('/user','/user/index'),('/wechat','/wechat/index');

#
# Structure for table "jfb_auth_assignment"
#

CREATE TABLE `jfb_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `jfb_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "jfb_auth_assignment"
#


#
# Structure for table "jfb_migration"
#

CREATE TABLE `jfb_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "jfb_migration"
#

INSERT INTO `jfb_migration` VALUES ('m000000_000000_base',1487494410),('m130524_201442_init',1487494417),('m140506_102106_rbac_init',1487496497);

#
# Structure for table "jfb_user"
#

CREATE TABLE `jfb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` int(11) DEFAULT '0',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `email_public` int(1) DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weibo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weibo_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wechat_qrcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_qrcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callnumber` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identitycard` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regIp` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLoginIp` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `github_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';

#
# Data for table "jfb_user"
#

INSERT INTO `jfb_user` VALUES (1,'/img/a4.jpg','admint',NULL,NULL,'GO4elmkhpHMMuUqhxN5N0ovLcfszOAIK','$2y$13$tNYYyqhEHRkCHUoehjED4uW8QOUJxrUYHqFGeUrW6LGSN0FUKPR1u',NULL,'290559038@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1460820565,1460820565),(2,NULL,'admi',NULL,NULL,'OkymtSmWkexS1CkL133W40cMf_vCL-Yo','$2y$13$223Uf8yUOGcvziyl3oEzOOra8a0Gk7JWLevCRwrc0XYKqwya./ywK',NULL,'gufe198@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1464431986,1464452504),(13,'/img/a4.jpg','guoguo','火柴',NULL,'28LtUsSFubjJktqxKpn4xXTPvx_VrblQ','$2y$13$XwDtcX18IGkpOHghmUHNKuKAL44DJNM5xsUgpnASc69Z7t9zr6Gpi',NULL,'gufe198@163.com',1,'火柴工作室','上海','','','',NULL,NULL,'走的慢，但不后退',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'huaiguoguo',NULL,10,1468748317,1476526385),(14,NULL,'Match',NULL,0,'Ud9fWRRDwUU9afISwaj5IIzYnoVgzBlu','$2y$13$CigpGE4F.EfDgAtzPPPPB.5KdscG8IL6BIPwUdrOnK38DMrgFFu3y',NULL,'test@163.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1473405960,1473405960),(15,NULL,'岁帆',NULL,0,'6Gs5pHjAlzp_bAwCfHdXfDKDHtLYGxU3','$2y$13$TWyrxoeLGg9DBlk5qrmRseaPBErLxfMFrpNQV0duVDRRygYbS34by',NULL,'924451521@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1473470033,1473470033),(16,NULL,'NULLBUG',NULL,0,'7njQyvyCs925gqiEUNvFTeSniIWtdJHo','$2y$13$7i6sUmEapb005PBK8idp.uTK8eExf.owkPwdJ4vZPaSoy2rNlVNXS',NULL,'2281062824@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1473581444,1473581444),(17,NULL,'zhucy2025cc',NULL,0,'in0v0zazYBwYL2Wy4ohVf0A48zq_AbPy','$2y$13$.AjJTNcOrPD2B02soJbj1.dwz1Ktxnj.airNMfEA9zEW4HrrlZAKW',NULL,'774044567@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1473587396,1473587396),(18,NULL,'seven',NULL,0,'N_Z9hSEDQRRHn-ltmqJfWc2sKM22Tao5','$2y$13$NBID0oIH2WXHQe70IImrp.Q1e4QjlP6P7uHjCeYWhALTvSUfOXBYG',NULL,'930503924@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1473745066,1473745066),(19,NULL,'zgl',NULL,0,'H9n8LN2DKE18dchkY59mFyQO6ph2HDTl','$2y$13$OdMz7Uwy.IfHpgNf/lH4fe7k3iiQdj0cNs.mm0/oE5OTwuqW4ZQuW',NULL,'763629423@qq.com',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474261179,1474261179),(20,NULL,'琴菲雪',NULL,0,'6-phciHlpaCgC4meRF3HOqYBHbLUjJY4','$2y$13$dYOQEbS6.r0DgjPvZrtwJ.MRJmLwH7O6vcyS0gjJOzVHx2SLwf3ti',NULL,'ouyangqin@ydjsoil.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474268597,1474268597),(21,NULL,'hbyczsl',NULL,0,'AaZYSxRfWBCKmzenuaF16b0Ci8wb8_gj','$2y$13$inXjq8lQtwRETsKpRiIVfuaD.OQ8P40ObE2mu7AtbT0PAuQvIrIia',NULL,'19915868@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474277140,1474277140),(22,NULL,'yanxin789315',NULL,0,'Ph3qKN2HFoPUqZQ0vC6Jl8TfVC_-5_CC','$2y$13$smBu9Dp9pbElQDSftJqI5eWfGNs5oPhlFjrcN3WJH2ZHBitiWuzpm',NULL,'273582013@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474279665,1474279665),(23,NULL,'随风而行',NULL,0,'GyvFzawBdX78czUwCbWz0g2NvIh7VBm9','$2y$13$1xgZ5.2DgZFLeCYaD4Chlu.NJbzZj3rs21exqCxVefk8f6fOLp57a',NULL,'19293765@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474279730,1474279730),(24,NULL,'marso_jie',NULL,0,'dp3aMLJN41K9oT0gZguexKR8js_DMk7l','$2y$13$saJ75kZ2OuAXXeoLOwxlV.zCuV6MQwHKfjrwg.pg/RTVZofN2E5ri',NULL,'907845006@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474352991,1474352991),(25,NULL,'forecho',NULL,0,'PvgYzYDfekxKkKNr8JhgEzHfPEivVT8y','$2y$13$SjqU0tle0P/fti0tkMSTxuwST5S.QjR8bcRJ64IQ4R/0mSMBAIqSe',NULL,'caizhenghai@gmail.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474442083,1474442083),(26,NULL,'yangyu2718',NULL,0,'VFvAJHKcIzhd21IQIeU4CoqzzXdJO1K4','$2y$13$DnLSp7jSf6g.jytwcrzbcOXaUHnmq5kLfVYVHVNZLctOwOLsRs3Du',NULL,'yangyu2718@163.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1474885203,1474885203),(27,NULL,'sunny',NULL,0,'AQb6NwezSLNKxI_2_ZgLaFJQQI_zahSb','$2y$13$z9GNd6A5sMIJ7GxvwWgRo.8IBuedT3DDnYyN9a0HpcPpD3ZXhPioe',NULL,'664123947@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1475049022,1475049022),(28,NULL,'cnmao99',NULL,0,'u0SFkCoVAwrc-GS7SrelkgvJW-LqTEO8','$2y$13$aKz0op2PmBzUEhHkxJk30ecNn4ssO7y7bPif66mPUFGrnllHDGWt.',NULL,'freeqq8@163.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1475054057,1475054057),(29,NULL,'星月',NULL,0,'4EZs_MdlfO62ETslVw1WXLvIP9uK6uP0','$2y$13$5akwGr5htIr7oF1Noz9wWuIoOWyiNEIKNHID/Eld2ER08bmAlz3jm',NULL,'1124369771@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1476177297,1476177297),(30,NULL,'青岛--菜鸟',NULL,0,'mpwug1PQwvSgQNjhcTD3rE0x-Dqe5zSh','$2y$13$T7PDh/tHo2M5cdR5jKb0Iu9p8BayxozVizxEvQzzqy1NbOqOxqWCa',NULL,'1649790098@qq.com',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1476432257,1476432257),(31,NULL,'sang',NULL,0,'EPlPVXF3ZNKrLb4jsxy8ukj4hpEbMiID','$2y$13$qhP1agrFSl9n7JzvNzwerOofeTqY8nCCZNHwWSujTk0wiu2bS8xLq',NULL,'sang@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1482999323,1482999323),(32,NULL,'zh7908',NULL,0,'yTcl5hyorFAww770ceFlzolbEPlB0nZ3','$2y$13$PccZwG66hGXgqVBs575bYu4HRccP9gsOu1BcP4vYvTbHOmVNHdUre',NULL,'857650330@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1485263186,1485263186),(33,NULL,'学IT习',NULL,0,'WxWcLNG1tanPu6dxvtfEL2MRATRuFSQ9','$2y$13$s6FnB4e11WZYxYqBhrfqO.203wZ.TrV06hEgSoXz42Rjk6ww1n7De',NULL,'2323225392@qq.com',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1486716027,1486716027);
