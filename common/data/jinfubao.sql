/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jinfubao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-02-19 19:00:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cate_category
-- ----------------------------
DROP TABLE IF EXISTS `cate_category`;
CREATE TABLE `cate_category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `lft` int(10) unsigned DEFAULT '0',
  `rgt` int(10) unsigned DEFAULT '0',
  `shops_id` int(10) unsigned DEFAULT '0' COMMENT '店铺ID',
  PRIMARY KEY (`category_id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of cate_category
-- ----------------------------
INSERT INTO `cate_category` VALUES ('1', '火锅', '1', '6', '1');
INSERT INTO `cate_category` VALUES ('2', '自助餐', '7', '12', '1');
INSERT INTO `cate_category` VALUES ('3', '炒菜', '13', '20', '1');
INSERT INTO `cate_category` VALUES ('4', '重庆火锅', '2', '3', '1');
INSERT INTO `cate_category` VALUES ('5', '成都火锅', '4', '5', '1');
INSERT INTO `cate_category` VALUES ('6', '海鲜自助', '8', '9', '1');
INSERT INTO `cate_category` VALUES ('7', '烧烤自助', '10', '11', '1');
INSERT INTO `cate_category` VALUES ('8', '川菜', '14', '15', '1');
INSERT INTO `cate_category` VALUES ('9', '粤菜', '16', '17', '1');
INSERT INTO `cate_category` VALUES ('10', '湘菜', '18', '19', '1');
INSERT INTO `cate_category` VALUES ('11', '主菜', '11', '16', '2');
INSERT INTO `cate_category` VALUES ('12', '小菜', '17', '22', '2');
INSERT INTO `cate_category` VALUES ('13', '甜点', '23', '28', '2');
INSERT INTO `cate_category` VALUES ('14', '炒菜', '12', '13', '2');
INSERT INTO `cate_category` VALUES ('15', '蒸菜', '14', '15', '2');
INSERT INTO `cate_category` VALUES ('16', '荤菜', '18', '19', '2');
INSERT INTO `cate_category` VALUES ('17', '素菜', '20', '21', '2');
INSERT INTO `cate_category` VALUES ('18', '面包', '24', '25', '2');
INSERT INTO `cate_category` VALUES ('19', '蛋糕', '26', '27', '2');
INSERT INTO `cate_category` VALUES ('20', '粤菜', '20', '25', '23');
INSERT INTO `cate_category` VALUES ('21', '面包甜点', '26', '31', '23');
INSERT INTO `cate_category` VALUES ('22', '肠粉', '21', '22', '23');
INSERT INTO `cate_category` VALUES ('23', '叉烧包', '23', '24', '23');
INSERT INTO `cate_category` VALUES ('24', '小吃快餐', '32', '37', '23');
INSERT INTO `cate_category` VALUES ('25', '麻辣烫', '33', '34', '23');
INSERT INTO `cate_category` VALUES ('26', '快餐简餐', '35', '36', '23');
INSERT INTO `cate_category` VALUES ('27', '冰淇淋', '27', '28', '23');
INSERT INTO `cate_category` VALUES ('28', '面包蛋糕', '29', '30', '23');

-- ----------------------------
-- Table structure for combo
-- ----------------------------
DROP TABLE IF EXISTS `combo`;
CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `shops_id` int(11) DEFAULT NULL COMMENT '商铺id',
  `product_name` varchar(255) DEFAULT NULL COMMENT '套餐名称',
  `product_explain` text COMMENT '套餐描述',
  `product_class` varchar(255) DEFAULT NULL COMMENT '套餐分类',
  `product_price` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '套餐价格',
  `totalprice` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '套餐总价格',
  `product_stock` int(11) DEFAULT NULL COMMENT '库存量',
  `product_shelves` tinyint(4) unsigned DEFAULT NULL COMMENT '1=上架，2=放仓库',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `shelves_time` int(10) unsigned DEFAULT NULL COMMENT '上架时间',
  `group_time` int(10) unsigned DEFAULT NULL COMMENT '套餐活动开始时间',
  `group_use_time` int(10) unsigned DEFAULT NULL COMMENT '套餐活动结束时间',
  `product_id` varchar(255) DEFAULT NULL COMMENT '套餐产品ID',
  `product_thumb` varchar(255) DEFAULT NULL COMMENT '套餐默认图片',
  `details` mediumtext COMMENT '详情',
  `rule` mediumtext COMMENT '使用规则',
  `valid` int(10) unsigned DEFAULT '0' COMMENT '套餐活动有效期设置0长期1天2天等等',
  PRIMARY KEY (`combo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='套餐营销表';

-- ----------------------------
-- Records of combo
-- ----------------------------
INSERT INTO `combo` VALUES ('1', '1', '三人套餐', '三人套餐，尽享精致美味。', '16', '150.00', '188.00', '80', '1', '1486632159', null, null, null, '13,12,9', '/Public/Upload/Shops/40/product_thumb/product_thumb912568.jpg', '黄记煌三汁焖锅总部设在北京，自2003年家黄记煌餐厅在北京开业以来，目前有200多家黄记煌餐厅。黄记煌三汁焖锅原料的选择与搭配，均经过精细考究，力求营养均衡、鲜香绵嫩，采用高级钛金不沾锅，用特制“酱汁”、“酸椒汁”、“麻辣汁”三汁焖制各种美味食品，香味浓郁、汁浓味厚，让顾客在品尝美味的同时，仿佛置身于黄记煌那诱人的餐饮文化当中。黄记煌三汁焖锅源于清代御膳名肴香辣汁鱼。同治年间，御膳房总管黄钰玖随驾南巡，同治皇帝品遍各地佳肴，尤喜香辣汁鱼，赞其“鲜香绵嫩，回味悠长”。黄钰玖遂从民间索来秘方，回宫后按此秘方熬制汤汁。黄记煌三汁焖锅配套全、面积大，是黄记煌未来发展的新模式。店内所有的鱼全部来自三峡清江，通过冷链活鲜运输、中央鱼库中转，确保了每条生态鱼的鲜活，鲜活的生态香鲶生活在水深百米的三峡库区、清江流域。清江鱼的生产周期是3-4年，条条清江鱼，浓浓三峡情。', '<p><strong style=\"color: rgb(102, 102, 102);\">有效期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2014.6.25 至 2017.12.31</span></p><p><strong style=\"color: rgb(102, 102, 102);\">不可用日期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2016年12月24日至12月25日、2016年12月31日至2017年1月2日、2017年1月27日至2月2日、2月14日、4月2日至4月4日、4月29日至5月1日、5月28日至5月30日、8月28日、10月1日至10月8日、12月24日至12月25日、周六至周日，国家法定节假日不可用</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用时间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">11:00-21:30</span></p><p><strong style=\"color: rgb(102, 102, 102);\">预约提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">无需预约，消费高峰时可能需要等位</span></p><p><strong style=\"color: rgb(102, 102, 102);\">限购限用提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">每张美团券建议3人使用</span></p><p><strong style=\"color: rgb(102, 102, 102);\">其他费用</strong></p><p><span style=\"color: rgb(102, 102, 102);\">不提供餐巾纸</span></p><p><span style=\"color: rgb(102, 102, 102);\">套餐包含3份茶位，如需增加，需到店另付5元/份</span></p><p><strong style=\"color: rgb(102, 102, 102);\">包间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">不可使用包间</span></p><p><strong style=\"color: rgb(102, 102, 102);\">堂食外带</strong></p><p><span style=\"color: rgb(102, 102, 102);\">仅限堂食，不提供餐前外带，餐毕未吃完可打包，打包袋免费、打包盒2元/盒</span></p><p><strong style=\"color: rgb(102, 102, 102);\">温馨提示</strong></p><p><span style=\"color: rgb(102, 102, 102);\">团购用户不可同时享受商家其他优惠</span></p><p><span style=\"color: rgb(102, 102, 102);\">酒水饮料等问题，请致电商家咨询，以商家反馈为准</span></p><p><span style=\"color: rgb(102, 102, 102);\">如部分菜品因时令或其他不可抗因素导致无法提供，店内会用等价菜品替换，具体事宜请与店内协商</span></p><p><strong style=\"color: rgb(102, 102, 102);\">商家服务</strong></p><p><span style=\"color: rgb(102, 102, 102);\">停车位收费标准：消费满500元以上，可领取一张首两小时免费停车小票一张（近欢乐海岸停车区域H区）</span></p>', '0');
INSERT INTO `combo` VALUES ('2', '1', '深圳迎宾馆西餐厅双人套餐', '仅售128元！最高价值645元的深圳迎宾馆双人套餐。', '15', '128.00', '204.25', '60', '1', '1486639642', '1486639642', null, null, '13,12,9,8,3', '/Public/Upload/Shops/40/product_thumb/product_thumb912568.jpg', '<p><span style=\"color: rgb(102, 102, 102);\">迎宾馆西餐厅为您全力呈现琳琅满目的中外佳肴饮品，满足您不同口味的需求。轻松、惬意的就餐环境更是让您食欲大增。</span></p>', '<p><strong style=\"color: rgb(102, 102, 102);\">有效期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2013.4.15 至 2017.3.17</span></p><p><strong style=\"color: rgb(102, 102, 102);\">不可用日期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2015年12月24日、25日中午11:00-15:00</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用时间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">11:00-22:00</span></p><p><strong style=\"color: rgb(102, 102, 102);\">预约提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">请至少提前24小时致电商家预约</span></p><p><strong style=\"color: rgb(102, 102, 102);\">其他优惠</strong></p><p><span style=\"color: rgb(102, 102, 102);\">凭美团券到店消费不可同时享受店内其他优惠</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用规则</strong></p><ul><li><span style=\"color: rgb(102, 102, 102);\">若餐厅遇到包场，当天将无法接待美团用户</span></li><li><span style=\"color: rgb(102, 102, 102);\">每张美团券建议2人分享，如超出用餐人数，需到店另付20元/人，1.2米（含）以上儿童计入用餐人数</span></li><li><span style=\"color: rgb(102, 102, 102);\">本单含茶位费2位，如需增加，到店另付20元/位</span></li><li><span style=\"color: rgb(102, 102, 102);\">方案内包含服务费1份，其余额外消费需到店另付额外消费10%做为服务费</span></li><li><span style=\"color: rgb(102, 102, 102);\">仅限堂食，不提供餐前外带服务，餐毕若未吃完，可免费打包</span></li><li><span style=\"color: rgb(102, 102, 102);\">仅限大厅用餐，商家无包间</span></li><li><span style=\"color: rgb(102, 102, 102);\">酒水、饮料等问题，请致电商家咨询，以商家反馈为准</span></li><li><span style=\"color: rgb(102, 102, 102);\">消费满150元可免费停车</span></li><li><span style=\"color: rgb(102, 102, 102);\">2016年2月14日使用需到店另付80元/人</span></li></ul>', '270');
INSERT INTO `combo` VALUES ('3', '2', '六人套餐', '非常值得', '14', '150.00', '180.00', '80', '1', '1486716397', '1486716397', null, null, '4,3', '/Public/Upload/Shops/2/product_thumb/product_thumb541840.jpg', '<p>哀伤百搭包包</p>', '<ol><li>大家都呢百搭包包宣布百般刁难</li><li>教大家都呢不是你能像你</li><li>教大家都呢你都呢</li></ol>', '360');

-- ----------------------------
-- Table structure for financial
-- ----------------------------
DROP TABLE IF EXISTS `financial`;
CREATE TABLE `financial` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `open_id` varchar(32) NOT NULL,
  `amount` int(11) NOT NULL COMMENT '提现金额',
  `partner_trade_no` varchar(32) NOT NULL COMMENT '商户订单号',
  `desc` varchar(200) NOT NULL COMMENT '企业付款描述信息',
  `spbill_create_ip` varchar(32) NOT NULL COMMENT '调用接口的机器Ip地址',
  `payment_no` varchar(32) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '提现状态0:申请，1成功，-1失败',
  `ctime` int(11) NOT NULL COMMENT '提现时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financial
-- ----------------------------

-- ----------------------------
-- Table structure for jfb_admin
-- ----------------------------
DROP TABLE IF EXISTS `jfb_admin`;
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

-- ----------------------------
-- Records of jfb_admin
-- ----------------------------
INSERT INTO `jfb_admin` VALUES ('1', 'admin', 'yBlt6YH9a9JFWK85nMR-Y2X_itv0pHvD', '$2y$13$LrK6CD2djnYEK8M2X7jC1eL.PQXtr11//cO.RjRTw0fCElVkcjc9O', null, null, '290559038@qq.com', '10', '1460820565', '1460820565');

-- ----------------------------
-- Table structure for jfb_auth
-- ----------------------------
DROP TABLE IF EXISTS `jfb_auth`;
CREATE TABLE `jfb_auth` (
  `auth_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL COMMENT '权限名称',
  `auth_pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `auth_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `auth_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  PRIMARY KEY (`auth_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jfb_auth
-- ----------------------------
INSERT INTO `jfb_auth` VALUES ('1', '后台首页', '0', 'Index', 'index');

-- ----------------------------
-- Table structure for jfb_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `jfb_auth_assignment`;
CREATE TABLE `jfb_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `jfb_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jfb_auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for jfb_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `jfb_auth_item`;
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

-- ----------------------------
-- Records of jfb_auth_item
-- ----------------------------
INSERT INTO `jfb_auth_item` VALUES ('/comment/index', '2', '评论管理', null, null, '1474265757', '1474265757', '1', '2', null);
INSERT INTO `jfb_auth_item` VALUES ('/post/index', '2', '帖子管理', null, null, '1474265605', '1474265605', '1', '3', null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac', '2', '系统设置', null, null, '1467913682', '1467913682', '1', '1', null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac/add-permission', '2', '新增权限', null, null, '1467972825', '1467972825', '3', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac/add-role', '2', '新增角色', null, null, '1467979264', '1467979264', '3', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac/assign', '2', '分配权限', null, null, '1467993966', '1467993966', '3', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac/permission', '2', '权限管理', null, null, '1467915772', '1467915772', '2', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/rbac/role', '2', '角色管理', null, null, '1467915565', '1467915565', '2', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/site/main', '2', '后台首页', null, null, '1469261409', '1469261409', '1', '11', null);
INSERT INTO `jfb_auth_item` VALUES ('/staff/index', '2', '员工管理', null, null, '1468053145', '1468053145', '1', '7', null);
INSERT INTO `jfb_auth_item` VALUES ('/user', '2', '用户中心', null, null, '1469295424', '1469295606', '1', '6', null);
INSERT INTO `jfb_auth_item` VALUES ('/user/index', '2', '用户管理', null, null, '1469295563', '1469295563', '2', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/wechat', '2', '微信公众号', null, null, '1477996407', '1477996407', '1', null, null);
INSERT INTO `jfb_auth_item` VALUES ('/wechat/index', '2', '公众号验证', null, null, '1477996429', '1477996429', '2', null, null);
INSERT INTO `jfb_auth_item` VALUES ('测试角色', '1', null, null, null, '1467985121', '1467985121', '1', null, null);
INSERT INTO `jfb_auth_item` VALUES ('舰桥', '1', null, null, null, '1467989719', '1467989719', '1', null, null);

-- ----------------------------
-- Table structure for jfb_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `jfb_auth_item_child`;
CREATE TABLE `jfb_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `jfb_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jfb_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `jfb_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jfb_auth_item_child
-- ----------------------------
INSERT INTO `jfb_auth_item_child` VALUES ('/rbac/permission', '/rbac/add-permission');
INSERT INTO `jfb_auth_item_child` VALUES ('/rbac/role', '/rbac/add-role');
INSERT INTO `jfb_auth_item_child` VALUES ('/rbac/role', '/rbac/assign');
INSERT INTO `jfb_auth_item_child` VALUES ('/rbac', '/rbac/permission');
INSERT INTO `jfb_auth_item_child` VALUES ('/rbac', '/rbac/role');
INSERT INTO `jfb_auth_item_child` VALUES ('/user', '/user/index');
INSERT INTO `jfb_auth_item_child` VALUES ('/wechat', '/wechat/index');

-- ----------------------------
-- Table structure for jfb_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `jfb_auth_rule`;
CREATE TABLE `jfb_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jfb_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for jfb_migration
-- ----------------------------
DROP TABLE IF EXISTS `jfb_migration`;
CREATE TABLE `jfb_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jfb_migration
-- ----------------------------
INSERT INTO `jfb_migration` VALUES ('m000000_000000_base', '1487494410');
INSERT INTO `jfb_migration` VALUES ('m130524_201442_init', '1487494417');
INSERT INTO `jfb_migration` VALUES ('m140506_102106_rbac_init', '1487496497');

-- ----------------------------
-- Table structure for jfb_role
-- ----------------------------
DROP TABLE IF EXISTS `jfb_role`;
CREATE TABLE `jfb_role` (
  `role_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL COMMENT '角色/用户组名称',
  `role_auth_ids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids,1,2,5，权限表中的主键集合',
  `role_auth_ac` text COMMENT 'Goods-showlist,Goods-add,控制器-操作,控制器-操作,控制器-操作',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jfb_role
-- ----------------------------
INSERT INTO `jfb_role` VALUES ('1', '管理员', '1,2,3,4,5,6,7,8,9,10', null);

-- ----------------------------
-- Table structure for jfb_user
-- ----------------------------
DROP TABLE IF EXISTS `jfb_user`;
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

-- ----------------------------
-- Records of jfb_user
-- ----------------------------
INSERT INTO `jfb_user` VALUES ('1', '/img/a4.jpg', 'admint', null, null, 'GO4elmkhpHMMuUqhxN5N0ovLcfszOAIK', '$2y$13$tNYYyqhEHRkCHUoehjED4uW8QOUJxrUYHqFGeUrW6LGSN0FUKPR1u', null, '290559038@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1460820565', '1460820565');
INSERT INTO `jfb_user` VALUES ('2', null, 'admi', null, null, 'OkymtSmWkexS1CkL133W40cMf_vCL-Yo', '$2y$13$223Uf8yUOGcvziyl3oEzOOra8a0Gk7JWLevCRwrc0XYKqwya./ywK', null, 'gufe198@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1464431986', '1464452504');
INSERT INTO `jfb_user` VALUES ('13', '/img/a4.jpg', 'guoguo', '火柴', null, '28LtUsSFubjJktqxKpn4xXTPvx_VrblQ', '$2y$13$XwDtcX18IGkpOHghmUHNKuKAL44DJNM5xsUgpnASc69Z7t9zr6Gpi', null, 'gufe198@163.com', '1', '火柴工作室', '上海', '', '', '', null, null, '走的慢，但不后退', null, null, null, null, null, null, null, null, 'huaiguoguo', null, '10', '1468748317', '1476526385');
INSERT INTO `jfb_user` VALUES ('14', null, 'Match', null, '0', 'Ud9fWRRDwUU9afISwaj5IIzYnoVgzBlu', '$2y$13$CigpGE4F.EfDgAtzPPPPB.5KdscG8IL6BIPwUdrOnK38DMrgFFu3y', null, 'test@163.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1473405960', '1473405960');
INSERT INTO `jfb_user` VALUES ('15', null, '岁帆', null, '0', '6Gs5pHjAlzp_bAwCfHdXfDKDHtLYGxU3', '$2y$13$TWyrxoeLGg9DBlk5qrmRseaPBErLxfMFrpNQV0duVDRRygYbS34by', null, '924451521@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1473470033', '1473470033');
INSERT INTO `jfb_user` VALUES ('16', null, 'NULLBUG', null, '0', '7njQyvyCs925gqiEUNvFTeSniIWtdJHo', '$2y$13$7i6sUmEapb005PBK8idp.uTK8eExf.owkPwdJ4vZPaSoy2rNlVNXS', null, '2281062824@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1473581444', '1473581444');
INSERT INTO `jfb_user` VALUES ('17', null, 'zhucy2025cc', null, '0', 'in0v0zazYBwYL2Wy4ohVf0A48zq_AbPy', '$2y$13$.AjJTNcOrPD2B02soJbj1.dwz1Ktxnj.airNMfEA9zEW4HrrlZAKW', null, '774044567@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1473587396', '1473587396');
INSERT INTO `jfb_user` VALUES ('18', null, 'seven', null, '0', 'N_Z9hSEDQRRHn-ltmqJfWc2sKM22Tao5', '$2y$13$NBID0oIH2WXHQe70IImrp.Q1e4QjlP6P7uHjCeYWhALTvSUfOXBYG', null, '930503924@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1473745066', '1473745066');
INSERT INTO `jfb_user` VALUES ('19', null, 'zgl', null, '0', 'H9n8LN2DKE18dchkY59mFyQO6ph2HDTl', '$2y$13$OdMz7Uwy.IfHpgNf/lH4fe7k3iiQdj0cNs.mm0/oE5OTwuqW4ZQuW', null, '763629423@qq.com', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474261179', '1474261179');
INSERT INTO `jfb_user` VALUES ('20', null, '琴菲雪', null, '0', '6-phciHlpaCgC4meRF3HOqYBHbLUjJY4', '$2y$13$dYOQEbS6.r0DgjPvZrtwJ.MRJmLwH7O6vcyS0gjJOzVHx2SLwf3ti', null, 'ouyangqin@ydjsoil.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474268597', '1474268597');
INSERT INTO `jfb_user` VALUES ('21', null, 'hbyczsl', null, '0', 'AaZYSxRfWBCKmzenuaF16b0Ci8wb8_gj', '$2y$13$inXjq8lQtwRETsKpRiIVfuaD.OQ8P40ObE2mu7AtbT0PAuQvIrIia', null, '19915868@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474277140', '1474277140');
INSERT INTO `jfb_user` VALUES ('22', null, 'yanxin789315', null, '0', 'Ph3qKN2HFoPUqZQ0vC6Jl8TfVC_-5_CC', '$2y$13$smBu9Dp9pbElQDSftJqI5eWfGNs5oPhlFjrcN3WJH2ZHBitiWuzpm', null, '273582013@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474279665', '1474279665');
INSERT INTO `jfb_user` VALUES ('23', null, '随风而行', null, '0', 'GyvFzawBdX78czUwCbWz0g2NvIh7VBm9', '$2y$13$1xgZ5.2DgZFLeCYaD4Chlu.NJbzZj3rs21exqCxVefk8f6fOLp57a', null, '19293765@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474279730', '1474279730');
INSERT INTO `jfb_user` VALUES ('24', null, 'marso_jie', null, '0', 'dp3aMLJN41K9oT0gZguexKR8js_DMk7l', '$2y$13$saJ75kZ2OuAXXeoLOwxlV.zCuV6MQwHKfjrwg.pg/RTVZofN2E5ri', null, '907845006@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474352991', '1474352991');
INSERT INTO `jfb_user` VALUES ('25', null, 'forecho', null, '0', 'PvgYzYDfekxKkKNr8JhgEzHfPEivVT8y', '$2y$13$SjqU0tle0P/fti0tkMSTxuwST5S.QjR8bcRJ64IQ4R/0mSMBAIqSe', null, 'caizhenghai@gmail.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474442083', '1474442083');
INSERT INTO `jfb_user` VALUES ('26', null, 'yangyu2718', null, '0', 'VFvAJHKcIzhd21IQIeU4CoqzzXdJO1K4', '$2y$13$DnLSp7jSf6g.jytwcrzbcOXaUHnmq5kLfVYVHVNZLctOwOLsRs3Du', null, 'yangyu2718@163.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1474885203', '1474885203');
INSERT INTO `jfb_user` VALUES ('27', null, 'sunny', null, '0', 'AQb6NwezSLNKxI_2_ZgLaFJQQI_zahSb', '$2y$13$z9GNd6A5sMIJ7GxvwWgRo.8IBuedT3DDnYyN9a0HpcPpD3ZXhPioe', null, '664123947@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1475049022', '1475049022');
INSERT INTO `jfb_user` VALUES ('28', null, 'cnmao99', null, '0', 'u0SFkCoVAwrc-GS7SrelkgvJW-LqTEO8', '$2y$13$aKz0op2PmBzUEhHkxJk30ecNn4ssO7y7bPif66mPUFGrnllHDGWt.', null, 'freeqq8@163.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1475054057', '1475054057');
INSERT INTO `jfb_user` VALUES ('29', null, '星月', null, '0', '4EZs_MdlfO62ETslVw1WXLvIP9uK6uP0', '$2y$13$5akwGr5htIr7oF1Noz9wWuIoOWyiNEIKNHID/Eld2ER08bmAlz3jm', null, '1124369771@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1476177297', '1476177297');
INSERT INTO `jfb_user` VALUES ('30', null, '青岛--菜鸟', null, '0', 'mpwug1PQwvSgQNjhcTD3rE0x-Dqe5zSh', '$2y$13$T7PDh/tHo2M5cdR5jKb0Iu9p8BayxozVizxEvQzzqy1NbOqOxqWCa', null, '1649790098@qq.com', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1476432257', '1476432257');
INSERT INTO `jfb_user` VALUES ('31', null, 'sang', null, '0', 'EPlPVXF3ZNKrLb4jsxy8ukj4hpEbMiID', '$2y$13$qhP1agrFSl9n7JzvNzwerOofeTqY8nCCZNHwWSujTk0wiu2bS8xLq', null, 'sang@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1482999323', '1482999323');
INSERT INTO `jfb_user` VALUES ('32', null, 'zh7908', null, '0', 'yTcl5hyorFAww770ceFlzolbEPlB0nZ3', '$2y$13$PccZwG66hGXgqVBs575bYu4HRccP9gsOu1BcP4vYvTbHOmVNHdUre', null, '857650330@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1485263186', '1485263186');
INSERT INTO `jfb_user` VALUES ('33', null, '学IT习', null, '0', 'WxWcLNG1tanPu6dxvtfEL2MRATRuFSQ9', '$2y$13$s6FnB4e11WZYxYqBhrfqO.203wZ.TrV06hEgSoXz42Rjk6ww1n7De', null, '2323225392@qq.com', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10', '1486716027', '1486716027');

-- ----------------------------
-- Table structure for marketing
-- ----------------------------
DROP TABLE IF EXISTS `marketing`;
CREATE TABLE `marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `shops_id` int(11) DEFAULT NULL COMMENT '商铺id',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名',
  `product_explain` text COMMENT '产品说明',
  `product_class` varchar(255) DEFAULT NULL COMMENT '产品分类',
  `product_details` text COMMENT '产品详情',
  `product_price` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '产品价格',
  `totalprice` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '团购产品总价格',
  `product_stock` int(11) DEFAULT NULL COMMENT '产品库存',
  `product_shelves` tinyint(4) unsigned DEFAULT NULL COMMENT '1=上架，2=放仓库',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '产品创建时间',
  `shelves_time` int(10) unsigned DEFAULT NULL COMMENT '产品上架时间',
  `group_time` int(10) unsigned DEFAULT NULL COMMENT '团购活动开始时间',
  `group_use_time` int(10) unsigned DEFAULT NULL COMMENT '团购活动结束时间',
  `product_id` varchar(255) DEFAULT NULL COMMENT '团购产品ID',
  `product_thumb` varchar(255) DEFAULT NULL COMMENT '团购默认图片',
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='团购（营销）产品表';

-- ----------------------------
-- Records of marketing
-- ----------------------------
INSERT INTO `marketing` VALUES ('1', '8', '', '', '10', '', '646.00', '2338.00', '6764', '1', '1484996066', null, '0', '0', '8,7,6', '/Public/Upload/Shops/8/product_thumb/product_thumb520417.jpg');
INSERT INTO `marketing` VALUES ('2', '7', '05255', '啊建菊时间了……一直以来都是自己', '', '快乐聚聚聚聚', '288.00', '588.00', '99', '1', '1485054904', null, '0', '0', '10', '/Public/Upload/Shops/7/product_thumb/product_thumb520112.jpg');
INSERT INTO `marketing` VALUES ('3', '7', '团001', '，l k k lo o l', '', 'lol la la l', '200.00', '300.00', '99', '1', '1485055085', null, '0', '0', '12,11', '/Public/Upload/Shops/7/product_thumb/product_thumb618317.jpg');
INSERT INTO `marketing` VALUES ('4', '13', '不不', '不不', '', '', '0.00', '50.00', '0', '1', '1485055330', null, '1485055330', '0', '14,13', '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `marketing` VALUES ('5', '13', '', '', '', '', '0.00', '25.00', '0', '1', '1485055366', null, '1485055366', '0', '14', '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `marketing` VALUES ('6', '19', '阿彪猪', '很多很多质量优良的阿彪猪', '', null, '68.00', '99.00', '100', '1', '1486711999', null, '0', '0', '20', '');
INSERT INTO `marketing` VALUES ('7', '25', '黎钦s b', '哈哈', '', null, '0.00', '223.00', '0', '2', '1486712615', null, '0', '0', '22,21', '');

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(100) NOT NULL COMMENT '用户名',
  `pwd` varchar(100) NOT NULL COMMENT '密码',
  `phone` char(12) NOT NULL COMMENT '手机号',
  `hand_card_photo` varchar(255) DEFAULT NULL COMMENT '手持身份证照片',
  `card_photo` varchar(255) DEFAULT NULL COMMENT '身份证正面照',
  `user_id` int(10) unsigned DEFAULT '0' COMMENT '会员ID',
  `open_id` varchar(32) DEFAULT NULL COMMENT '微信openid',
  PRIMARY KEY (`merchant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='店铺主表';

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('10', 'huzhiehd', 'e10adc3949ba59abbe56e057f20f883e', '13265481481', null, null, '16', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `merchant` VALUES ('2', 'abavab', 'e10adc3949ba59abbe56e057f20f883e', '13751075434', null, null, '1', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `merchant` VALUES ('3', 'asdasd', 'e10adc3949ba59abbe56e057f20f883e', '', null, null, null, null);
INSERT INTO `merchant` VALUES ('4', '51111', '7c497868c9e6d3e4cf2e87396372cd3b', '13410552658', '/Public/Upload/Merchant/4/verify/20170210032532_7121.jpeg', '/Public/Upload/Merchant/4/verify/20170210032555_5840.jpeg', '17', 'o1MwhxMS7Lt_gAABesokUvdRuY78');
INSERT INTO `merchant` VALUES ('5', 'admin1', '7c497868c9e6d3e4cf2e87396372cd3b', '', null, null, '7', 'o1MwhxFSMtEaPwG9E9WstJEqQwM4');
INSERT INTO `merchant` VALUES ('6', 'admin2', '7c497868c9e6d3e4cf2e87396372cd3b', '', null, null, '5', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `merchant` VALUES ('7', 'admin3', '7c497868c9e6d3e4cf2e87396372cd3b', '', '/Public/Upload/Merchant/7/verify/20170121070636_4254.jpeg', '/Public/Upload/Merchant/7/verify/20170121070641_5330.jpeg', '12', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `merchant` VALUES ('8', '', 'e10adc3949ba59abbe56e057f20f883e', '', null, null, '16', '');
INSERT INTO `merchant` VALUES ('9', '464871013', '13ca63a7f3dff9725c344f600570719f', '', null, null, '15', 'o1MwhxKI1rCzpafXDlmxxz6Inpgs');
INSERT INTO `merchant` VALUES ('12', 'admin123456', 'fcea920f7412b5da7be0cf42b8c93759', '18033086721', null, null, '19', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `merchant` VALUES ('13', 'hanking186', '7700c2c547ba31c2e377fbb87579c4ce', '18688927750', null, null, '20', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `merchant` VALUES ('14', '123456', 'e10adc3949ba59abbe56e057f20f883e', '15186649083', '/Public/Upload/Merchant/14/verify/20170122055809_6567.jpeg', '/Public/Upload/Merchant/14/verify/20170122055814_2270.jpeg', '14', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `merchant` VALUES ('15', 'admin4', '7c497868c9e6d3e4cf2e87396372cd3b', '', null, null, '6', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `merchant` VALUES ('16', 'sb猪小慧', '25f9e794323b453885f5181f1b624d0b', '15616291998', null, null, '13', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');

-- ----------------------------
-- Table structure for merchant_wallet
-- ----------------------------
DROP TABLE IF EXISTS `merchant_wallet`;
CREATE TABLE `merchant_wallet` (
  `merchant_wallet_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '钱包id',
  `merchant_id` int(11) NOT NULL COMMENT '商户id',
  `bank_card` varchar(25) NOT NULL COMMENT '银行卡号',
  `truename` varchar(100) NOT NULL COMMENT '姓名',
  `identity_number` varchar(25) NOT NULL COMMENT '身份证号',
  `bank_account` varchar(255) NOT NULL COMMENT '开户行',
  `Transaction_pwd` varchar(255) NOT NULL COMMENT '交易密码',
  PRIMARY KEY (`merchant_wallet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_wallet
-- ----------------------------

-- ----------------------------
-- Table structure for nested_category
-- ----------------------------
DROP TABLE IF EXISTS `nested_category`;
CREATE TABLE `nested_category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(18) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `lft` int(4) NOT NULL,
  `rgt` int(4) NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='分类筛选表';

-- ----------------------------
-- Records of nested_category
-- ----------------------------
INSERT INTO `nested_category` VALUES ('1', '化妆品', '1', '12');
INSERT INTO `nested_category` VALUES ('2', '食品', '13', '20');
INSERT INTO `nested_category` VALUES ('3', '酒', '21', '26');
INSERT INTO `nested_category` VALUES ('4', '服装', '27', '34');
INSERT INTO `nested_category` VALUES ('5', '家电', '35', '40');
INSERT INTO `nested_category` VALUES ('6', '鞋帽', '41', '48');
INSERT INTO `nested_category` VALUES ('7', '面霜', '2', '3');
INSERT INTO `nested_category` VALUES ('8', '面膜', '4', '5');
INSERT INTO `nested_category` VALUES ('9', '眼霜', '6', '7');
INSERT INTO `nested_category` VALUES ('10', '洁面乳', '8', '9');
INSERT INTO `nested_category` VALUES ('11', '护手霜', '10', '11');
INSERT INTO `nested_category` VALUES ('12', '白酒', '22', '23');
INSERT INTO `nested_category` VALUES ('13', '红酒', '24', '25');
INSERT INTO `nested_category` VALUES ('14', '川菜', '14', '15');
INSERT INTO `nested_category` VALUES ('15', '湘菜', '16', '17');
INSERT INTO `nested_category` VALUES ('16', '粤菜', '18', '19');
INSERT INTO `nested_category` VALUES ('17', '女装', '28', '29');
INSERT INTO `nested_category` VALUES ('18', '男装', '30', '31');
INSERT INTO `nested_category` VALUES ('19', '童装', '32', '33');
INSERT INTO `nested_category` VALUES ('20', '冰箱', '36', '37');
INSERT INTO `nested_category` VALUES ('21', '洗衣机', '38', '39');
INSERT INTO `nested_category` VALUES ('22', '男鞋', '42', '43');
INSERT INTO `nested_category` VALUES ('23', '女鞋', '44', '45');
INSERT INTO `nested_category` VALUES ('24', '童鞋', '46', '47');
INSERT INTO `nested_category` VALUES ('25', '医药保健', '49', '52');
INSERT INTO `nested_category` VALUES ('26', '中西药品', '50', '51');

-- ----------------------------
-- Table structure for partner
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `truename` varchar(32) NOT NULL COMMENT '真实姓名',
  `IDnumber` char(19) DEFAULT NULL COMMENT '身份证号码',
  `phone` char(12) DEFAULT NULL COMMENT '电话',
  `recommend` char(15) DEFAULT NULL COMMENT '推荐码',
  `servicecode` char(15) DEFAULT NULL COMMENT '业务码',
  `qr_code` varchar(100) DEFAULT NULL COMMENT '二维码route',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `mailbox` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='业务推广员';

-- ----------------------------
-- Records of partner
-- ----------------------------

-- ----------------------------
-- Table structure for pay_info
-- ----------------------------
DROP TABLE IF EXISTS `pay_info`;
CREATE TABLE `pay_info` (
  `pay_id` varchar(20) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `shop_name` varchar(20) DEFAULT NULL,
  `order_body` varchar(150) DEFAULT NULL,
  `order_detail` varchar(255) DEFAULT NULL,
  `total_money` float NOT NULL,
  `order_type` varchar(10) DEFAULT '0' COMMENT '订单类型1：土豪支付，2：AA支付，3：拼手气',
  `order_attach` varchar(150) DEFAULT NULL COMMENT '附加数据',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户订单号',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '微信订单号，查询订单状态时优先使用',
  `trade_type` varchar(16) DEFAULT NULL COMMENT '交易类型：JSAPI，NATIVE，APP',
  `product_id` char(20) DEFAULT NULL COMMENT '商品ID：扫码支付，此参数必传，“yyyyMMddHHmmss”',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态0：未支付，1：已完成，2：失效',
  `start_time` int(11) DEFAULT '0',
  `end_time` int(11) DEFAULT '0',
  `open_id` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商户订单';

-- ----------------------------
-- Records of pay_info
-- ----------------------------
INSERT INTO `pay_info` VALUES ('148499419144', '5', '吴总家的店', '5', '5', '2', '1', '', 'th1484994189', null, 'JSAPI', null, '0', '1484994191', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148499420319', '5', '吴总家的店', '5', '5', '2', '1', '', 'th1484994201', null, 'JSAPI', null, '0', '1484994203', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148499423333', '4', '陶总家的店', '4', '4', '3', '1', '', 'th1484994231', null, 'JSAPI', null, '0', '1484994233', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148499485918', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1484994857', null, 'JSAPI', null, '0', '1484994859', '0', '');
INSERT INTO `pay_info` VALUES ('148499486259', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1484994860', null, 'JSAPI', null, '0', '1484994862', '0', '');
INSERT INTO `pay_info` VALUES ('148499486599', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1484994863', null, 'JSAPI', null, '0', '1484994865', '0', '');
INSERT INTO `pay_info` VALUES ('148499490474', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1484994902', null, 'JSAPI', null, '0', '1484994904', '0', '');
INSERT INTO `pay_info` VALUES ('148499490726', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1484994905', null, 'JSAPI', null, '0', '1484994907', '0', '');
INSERT INTO `pay_info` VALUES ('148499584556', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1484995843', null, 'JSAPI', null, '0', '1484995845', '0', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148499584715', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1484995845', null, 'JSAPI', null, '0', '1484995847', '0', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148499601125', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1484996009', null, 'JSAPI', null, '0', '1484996011', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148499603388', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1484996031', null, 'JSAPI', null, '0', '1484996033', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148499603551', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1484996033', null, 'JSAPI', null, '0', '1484996035', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148499603889', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1484996036', null, 'JSAPI', null, '0', '1484996038', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148499674688', null, null, null, null, '0', '3', '0', 'aa_1484996704', null, 'JSAPI', null, '0', '1484996746', '0', '');
INSERT INTO `pay_info` VALUES ('148499697076', null, null, null, null, '0', '3', '0', 'aa_1484996926', null, 'JSAPI', null, '0', '1484996970', '0', '');
INSERT INTO `pay_info` VALUES ('148499699641', null, null, null, null, '0', '3', '0', 'aa_1484996926', null, 'JSAPI', null, '0', '1484996996', '0', '');
INSERT INTO `pay_info` VALUES ('148500565385', '6', '韩经理的店', '6', '6', '0', '1', '', 'th1485005651', null, 'JSAPI', null, '0', '1485005653', '0', '');
INSERT INTO `pay_info` VALUES ('148500579972', '6', '韩经理的店', '6', '6', '10000', '1', '', 'th1485005797', null, 'JSAPI', null, '0', '1485005799', '0', '');
INSERT INTO `pay_info` VALUES ('148500580269', '6', '韩经理的店', '6', '6', '10000', '1', '', 'th1485005800', null, 'JSAPI', null, '0', '1485005802', '0', '');
INSERT INTO `pay_info` VALUES ('148500580490', '6', '韩经理的店', '6', '6', '10000', '1', '', 'th1485005802', null, 'JSAPI', null, '0', '1485005804', '0', '');
INSERT INTO `pay_info` VALUES ('148500580793', '6', '韩经理的店', '6', '6', '10000', '1', '', 'th1485005805', null, 'JSAPI', null, '0', '1485005807', '0', '');
INSERT INTO `pay_info` VALUES ('148500580975', '6', '韩经理的店', '6', '6', '10000', '1', '', 'th1485005807', null, 'JSAPI', null, '0', '1485005809', '0', '');
INSERT INTO `pay_info` VALUES ('148500911362', '4', '陶总家的店', '4', '4', '0', '1', '', 'th1485009111', null, 'JSAPI', null, '0', '1485009113', '0', 'o1MwhxCv3NHHHOy6aykbG91Qz3Pw');
INSERT INTO `pay_info` VALUES ('148500923388', null, null, null, null, '0', '3', '0', 'aa_1485009173', null, 'JSAPI', null, '0', '1485009233', '0', '');
INSERT INTO `pay_info` VALUES ('148500924915', null, null, null, null, '0', '3', '0', 'aa_1485009208', null, 'JSAPI', null, '0', '1485009249', '0', '');
INSERT INTO `pay_info` VALUES ('148501114048', '4', '陶总家的店', '4', '4', '88800', '1', '', 'th1485011138', null, 'JSAPI', null, '0', '1485011140', '0', '');
INSERT INTO `pay_info` VALUES ('148505353822', null, null, null, null, '0', '3', '0', 'aa_1485053498', null, 'JSAPI', null, '0', '1485053538', '0', '');
INSERT INTO `pay_info` VALUES ('148505370152', null, null, null, null, '0', '3', '0', 'aa_1485053658', null, 'JSAPI', null, '0', '1485053701', '0', '');
INSERT INTO `pay_info` VALUES ('148505376628', null, null, null, null, '0', '3', '0', 'aa_1485053730', null, 'JSAPI', null, '0', '1485053766', '0', '');
INSERT INTO `pay_info` VALUES ('148505378013', null, null, null, null, '0', '3', '0', 'aa_1485053730', null, 'JSAPI', null, '0', '1485053780', '0', '');
INSERT INTO `pay_info` VALUES ('148505381645', null, null, null, null, '0', '3', '0', 'aa_1485053785', null, 'JSAPI', null, '0', '1485053816', '0', '');
INSERT INTO `pay_info` VALUES ('148505388610', null, null, null, null, '0', '3', '0', 'ab_1485053850', null, 'JSAPI', null, '0', '1485053886', '0', '');
INSERT INTO `pay_info` VALUES ('148505390696', null, null, null, null, '0', '3', '0', 'ab_1485053850', null, 'JSAPI', null, '0', '1485053906', '0', '');
INSERT INTO `pay_info` VALUES ('148505397065', null, null, null, null, '0', '3', '0', 'aa_1485053932', null, 'JSAPI', null, '0', '1485053970', '0', '');
INSERT INTO `pay_info` VALUES ('148505403163', null, null, null, null, '0', '3', '0', 'aa_1485053994', null, 'JSAPI', null, '0', '1485054031', '0', '');
INSERT INTO `pay_info` VALUES ('148505405952', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054059', '0', '');
INSERT INTO `pay_info` VALUES ('148505405982', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054059', '0', '');
INSERT INTO `pay_info` VALUES ('148505405972', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054059', '0', '');
INSERT INTO `pay_info` VALUES ('', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054067', '0', '');
INSERT INTO `pay_info` VALUES ('148505406879', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054068', '0', '');
INSERT INTO `pay_info` VALUES ('148505407313', null, null, null, null, '0', '3', '0', 'ab_1485054027', null, 'JSAPI', null, '0', '1485054073', '0', '');
INSERT INTO `pay_info` VALUES ('148505464060', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485054638', null, 'JSAPI', null, '0', '1485054640', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148505556392', null, null, null, null, '0', '3', '0', 'aa_1485055512', null, 'JSAPI', null, '0', '1485055563', '0', '');
INSERT INTO `pay_info` VALUES ('148505562060', null, null, null, null, '0', '3', '0', 'aa_1485055592', null, 'JSAPI', null, '0', '1485055620', '0', '');
INSERT INTO `pay_info` VALUES ('148505562062', null, null, null, null, '0', '3', '0', 'aa_1485055592', null, 'JSAPI', null, '0', '1485055620', '0', '');
INSERT INTO `pay_info` VALUES ('148505562031', null, null, null, null, '0', '3', '0', 'aa_1485055592', null, 'JSAPI', null, '0', '1485055620', '0', '');
INSERT INTO `pay_info` VALUES ('148505562628', null, null, null, null, '0', '3', '0', 'aa_1485055592', null, 'JSAPI', null, '0', '1485055626', '0', '');
INSERT INTO `pay_info` VALUES ('148505597446', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055972', null, 'JSAPI', null, '0', '1485055974', '0', '');
INSERT INTO `pay_info` VALUES ('148505598044', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055978', null, 'JSAPI', null, '0', '1485055980', '0', '');
INSERT INTO `pay_info` VALUES ('148505598231', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055980', null, 'JSAPI', null, '0', '1485055982', '0', '');
INSERT INTO `pay_info` VALUES ('148505598536', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055983', null, 'JSAPI', null, '0', '1485055985', '0', '');
INSERT INTO `pay_info` VALUES ('148505599538', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055993', null, 'JSAPI', null, '0', '1485055995', '0', '');
INSERT INTO `pay_info` VALUES ('148505599725', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055995', null, 'JSAPI', null, '0', '1485055997', '0', '');
INSERT INTO `pay_info` VALUES ('148505600086', '4', '陶总家的店', '4', '4', '1', '1', '', 'th1485055998', null, 'JSAPI', null, '0', '1485056000', '0', '');
INSERT INTO `pay_info` VALUES ('148505601833', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485056016', null, 'JSAPI', null, '0', '1485056018', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148505602165', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485056019', null, 'JSAPI', null, '0', '1485056021', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148505604092', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485056038', null, 'JSAPI', null, '0', '1485056040', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505604319', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485056041', null, 'JSAPI', null, '0', '1485056043', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505605648', '5', '吴总家的店', '5', '5', '10', '1', '', 'th1485056054', '4006672001201701227166844459', 'JSAPI', null, '1', '1485056056', '1485056080', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505612423', '4', '陶总家的店', '4', '4', '10', '1', '', 'th1485056122', '4006672001201701227163509318', 'JSAPI', null, '1', '1485056124', '1485056133', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505614174', '4', '陶总家的店', '4', '4', '10', '1', '', 'th1485056139', '4006672001201701227164869981', 'JSAPI', null, '1', '1485056141', '1485056147', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505618628', null, null, null, null, '0', '3', '0', 'aa_1485055949', null, 'JSAPI', null, '0', '1485056186', '0', '');
INSERT INTO `pay_info` VALUES ('148505629662', '4', '陶总家的店', '4', '4', '0', '1', '', 'th1485056294', null, 'JSAPI', null, '0', '1485056296', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505630699', '4', '陶总家的店', '4', '4', '0', '1', '', 'th1485056303', null, 'JSAPI', null, '0', '1485056306', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505630990', '4', '陶总家的店', '4', '4', '0', '1', '', 'th1485056307', null, 'JSAPI', null, '0', '1485056309', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505632678', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056324', null, 'JSAPI', null, '0', '1485056326', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505633041', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056328', null, 'JSAPI', null, '0', '1485056330', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505633647', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056333', null, 'JSAPI', null, '0', '1485056336', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505633820', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056336', null, 'JSAPI', null, '0', '1485056338', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505634056', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056338', null, 'JSAPI', null, '0', '1485056340', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505634263', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056340', null, 'JSAPI', null, '0', '1485056342', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505634575', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056343', null, 'JSAPI', null, '0', '1485056345', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505634786', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056345', null, 'JSAPI', null, '0', '1485056347', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505635016', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485056348', null, 'JSAPI', null, '0', '1485056350', '0', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4');
INSERT INTO `pay_info` VALUES ('148505645489', null, null, null, null, '0', '3', '0', 'aa_1485056413', null, 'JSAPI', null, '0', '1485056454', '0', '');
INSERT INTO `pay_info` VALUES ('148505649260', null, null, null, null, '0', '3', '0', 'aa_1485056445', null, 'JSAPI', null, '0', '1485056492', '0', '');
INSERT INTO `pay_info` VALUES ('148505655482', null, null, null, null, '0', '3', '0', 'ab_1485056520', null, 'JSAPI', null, '0', '1485056554', '0', '');
INSERT INTO `pay_info` VALUES ('148505670049', null, null, null, null, '0', '3', '0', 'aa_1485056616', null, 'JSAPI', null, '0', '1485056700', '0', '');
INSERT INTO `pay_info` VALUES ('148505675855', null, null, null, null, '0', '3', '0', 'ab_1485056717', null, 'JSAPI', null, '0', '1485056758', '0', '');
INSERT INTO `pay_info` VALUES ('148505693212', '5', '吴总家的店', '5', '5', '1', '1', '', 'th1485056930', null, 'JSAPI', null, '0', '1485056932', '0', 'o1MwhxMS7Lt_gAABesokUvdRuY78');
INSERT INTO `pay_info` VALUES ('148505700395', null, null, null, null, '0', '3', '0', 'aa_1485056965', null, 'JSAPI', null, '0', '1485057003', '0', '');
INSERT INTO `pay_info` VALUES ('148507429538', '5', '吴总家的店', '吴总家的店', '吴总家的店', '1', '0', '0', 'aa_1485074280', null, 'JSAPI', null, '0', '1485074295', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507444322', '5', '吴总家的店', '吴总家的店', '吴总家的店', '3', '0', '0', 'aa_1485074431', null, 'JSAPI', null, '0', '1485074443', '0', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148507444644', '5', '吴总家的店', '吴总家的店', '吴总家的店', '3', '0', '0', 'aa_1485074431', null, 'JSAPI', null, '0', '1485074446', '0', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148507630135', '6', '韩经理的店', '韩经理的店', '韩经理的店', '4', '0', '0', 'aa_1485076275', null, 'JSAPI', null, '0', '1485076301', '0', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148507669625', '6', '韩经理的店', '韩经理的店', '韩经理的店', '2', '0', '0', 'aa_1485076690', null, 'JSAPI', null, '0', '1485076696', '0', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148507678611', '5', '吴总家的店', '吴总家的店', '吴总家的店', '3', '0', '0', 'ab_1485076783', '4004482001201701227198102089', 'JSAPI', null, '1', '1485076786', '1485076801', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148507795650', '5', '吴总家的店', '吴总家的店', '吴总家的店', '3', '3', '1', 'ab_1485076783', '4010202001201701227208567812', 'JSAPI', null, '1', '1485077956', '1485077974', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148507899142', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485078991', null, 'JSAPI', null, '0', '1485078991', '0', '');
INSERT INTO `pay_info` VALUES ('148507899699', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485078996', null, 'JSAPI', null, '0', '1485078996', '0', '');
INSERT INTO `pay_info` VALUES ('148507901992', '18', '刘总家的店', '18', '18', '8', '1', '', 'th1485079019', null, 'JSAPI', null, '0', '1485079019', '0', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148507905484', '18', '刘总家的店', '刘总家的店', '刘总家的店', '2', '0', '0', 'ab_1485079043', null, 'JSAPI', null, '0', '1485079054', '0', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148507906690', '0', null, null, null, '1600', '2', '1', 'aa_1485079013', null, 'JSAPI', null, '0', '1485079066', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507914149', '0', null, null, null, '2117', '3', '1', 'ab_1485079113', null, 'JSAPI', null, '0', '1485079141', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507918812', '18', '刘总家的店', '刘总家的店', '刘总家的店', '1', '0', '0', 'aa_1485079184', null, 'JSAPI', null, '0', '1485079188', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507920325', '18', '刘总家的店', '刘总家的店', '刘总家的店', '1', '2', '1', 'aa_1485079184', null, 'JSAPI', null, '0', '1485079203', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507924515', '18', '刘总家的店', '刘总家的店', '刘总家的店', '1666', '0', '0', 'aa_1485079230', null, 'JSAPI', null, '0', '1485079245', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507926681', '18', '刘总家的店', '刘总家的店', '刘总家的店', '5', '0', '0', 'ab_1485079258', '4003522001201701227203997266', 'JSAPI', null, '1', '1485079266', '1485079279', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148507927049', '18', '刘总家的店', '刘总家的店', '刘总家的店', '1666', '2', '1', 'aa_1485079230', null, 'JSAPI', null, '0', '1485079270', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507929750', '18', '刘总家的店', '刘总家的店', '刘总家的店', '3', '3', '1', 'ab_1485079258', '4004482001201701227205344014', 'JSAPI', null, '1', '1485079297', '1485079310', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU');
INSERT INTO `pay_info` VALUES ('148507929878', '18', '刘总家的店', '刘总家的店', '刘总家的店', '723', '0', '0', 'ab_1485079294', null, 'JSAPI', null, '0', '1485079298', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507931915', '18', '刘总家的店', '刘总家的店', '刘总家的店', '1743', '3', '1', 'ab_1485079294', null, 'JSAPI', null, '0', '1485079319', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507934758', '18', '刘总家的店', '刘总家的店', '刘总家的店', '533', '0', '0', 'aa_1485079343', null, 'JSAPI', null, '0', '1485079347', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507935033', '18', '刘总家的店', '18', '18', '8', '1', '', 'th1485079350', null, 'JSAPI', null, '0', '1485079350', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507937846', '18', '刘总家的店', '刘总家的店', '刘总家的店', '4', '0', '0', 'aa_1485079372', null, 'JSAPI', null, '0', '1485079378', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507939083', '18', '刘总家的店', '刘总家的店', '刘总家的店', '4', '0', '0', 'aa_1485079372', '4000432001201701227209299609', 'JSAPI', null, '1', '1485079390', '1485079418', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148507944040', '18', '刘总家的店', '刘总家的店', '刘总家的店', '4', '2', '1', 'aa_1485079372', '4007502001201701227207374543', 'JSAPI', null, '1', '1485079440', '1485079469', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148507948952', '18', '刘总家的店', '刘总家的店', '刘总家的店', '2', '0', '0', 'ab_1485079484', null, 'JSAPI', null, '0', '1485079489', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148508122763', '5', '吴总家的店', '吴总家的店', '吴总家的店', '2', '0', '0', 'aa_1485081200', null, 'JSAPI', null, '0', '1485081227', '0', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM');
INSERT INTO `pay_info` VALUES ('148514177550', '5', '吴总家的店', '5', '5', '8', '1', '', 'th1485141775', '4000432001201701237274861692', 'JSAPI', null, '1', '1485141775', '1485141787', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148514180681', '5', '吴总家的店', '吴总家的店', '吴总家的店', '4', '0', '0', 'aa_1485141802', '4000432001201701237273754686', 'JSAPI', null, '1', '1485141806', '1485141816', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148514183888', '5', '吴总家的店', '吴总家的店', '吴总家的店', '6', '0', '0', 'ab_1485141832', null, 'JSAPI', null, '0', '1485141838', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148514605244', '4', '陶总家的店', '4', '4', '8', '1', '', 'th1485146052', '4000432001201701237282961668', 'JSAPI', null, '1', '1485146052', '1485146064', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148514611716', '4', '陶总家的店', '陶总家的店', '陶总家的店', '4', '0', '0', 'aa_1485146084', '4000432001201701237278190323', 'JSAPI', null, '1', '1485146117', '1485146125', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148514612446', '4', '陶总家的店', '陶总家的店', '陶总家的店', '4', '2', '1', 'aa_1485146084', '4010202001201701237278244401', 'JSAPI', null, '1', '1485146124', '1485146139', 'o1MwhxFSMtEaPwG9E9WstJEqQwM4');
INSERT INTO `pay_info` VALUES ('148516038035', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485160380', null, 'JSAPI', null, '0', '1485160380', '0', '');
INSERT INTO `pay_info` VALUES ('148516038289', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485160382', null, 'JSAPI', null, '0', '1485160382', '0', '');
INSERT INTO `pay_info` VALUES ('148516038484', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485160384', null, 'JSAPI', null, '0', '1485160384', '0', '');
INSERT INTO `pay_info` VALUES ('148516038576', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485160385', null, 'JSAPI', null, '0', '1485160385', '0', '');
INSERT INTO `pay_info` VALUES ('148516038917', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485160389', null, 'JSAPI', null, '0', '1485160389', '0', '');
INSERT INTO `pay_info` VALUES ('148516178898', '18', '刘总家的店', '18', '18', '24000', '1', '', 'th1485161788', null, 'JSAPI', null, '0', '1485161788', '0', '');
INSERT INTO `pay_info` VALUES ('148516185784', '0', null, null, null, '376', '3', '1', 'ab_1485161826', null, 'JSAPI', null, '0', '1485161857', '0', 'o1MwhxKPdFRMwd7ZtEtIXAUjZsMA');
INSERT INTO `pay_info` VALUES ('148517427578', '6', '韩经理的店', '韩经理的店', '韩经理的店', '5', '0', '0', 'aa_1485174254', null, 'JSAPI', null, '0', '1485174275', '0', 'o1MwhxP5UfPpZmwYnuiRMoRrMx9k');
INSERT INTO `pay_info` VALUES ('148518471931', '5', '吴总家的店', '吴总家的店', '吴总家的店', '1865', '0', '0', 'ab_1485184705', null, 'JSAPI', null, '0', '1485184719', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148518475352', '5', '吴总家的店', '吴总家的店', '吴总家的店', '13147', '3', '1', 'ab_1485184705', null, 'JSAPI', null, '0', '1485184753', '0', 'o1MwhxL7noaZrikvQNNVcCVEFKis');
INSERT INTO `pay_info` VALUES ('148518482196', '5', '吴总家的店', '吴总家的店', '吴总家的店', '13147', '3', '1', 'ab_1485184705', null, 'JSAPI', null, '0', '1485184821', '0', 'o1MwhxFazdwJLlypKv6gLWf9auPM');
INSERT INTO `pay_info` VALUES ('148518486057', '5', '吴总家的店', '吴总家的店', '吴总家的店', '988', '3', '2', 'ab_1485184705', null, 'JSAPI', null, '0', '1485184860', '0', 'o1MwhxL7noaZrikvQNNVcCVEFKis');
INSERT INTO `pay_info` VALUES ('148518498071', '5', '吴总家的店', '5', '5', '80', '1', '', 'th1485184980', null, 'JSAPI', null, '0', '1485184980', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148518503213', '5', '吴总家的店', '吴总家的店', '吴总家的店', '40', '2', '1', 'aa_1485185009', '4010132001201701237352854085', 'JSAPI', null, '1', '1485185032', '1485185117', 'o1MwhxFazdwJLlypKv6gLWf9auPM');
INSERT INTO `pay_info` VALUES ('148518505615', '5', '吴总家的店', '吴总家的店', '吴总家的店', '40', '0', '0', 'aa_1485185009', '4000432001201701237354411392', 'JSAPI', null, '1', '1485185056', '1485185065', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148518520950', '5', '吴总家的店', '吴总家的店', '吴总家的店', '22', '0', '0', 'ab_1485185195', null, 'JSAPI', null, '0', '1485185209', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148518894312', '0', null, null, null, '40', '2', '0', 'aa_1485188928', null, 'JSAPI', null, '0', '1485188943', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148518908955', null, null, null, null, '0', '3', '0', 'ab_1485076783', null, 'JSAPI', null, '0', '1485189089', '0', '');
INSERT INTO `pay_info` VALUES ('148518910544', '18', '刘总家的店', '18', '18', '80', '1', '', 'th1485189105', null, 'JSAPI', null, '0', '1485189105', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148518914857', '18', '刘总家的店', '刘总家的店', '刘总家的店', '18', '0', '0', 'ab_1485189141', null, 'JSAPI', null, '0', '1485189148', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148525632879', '5', '吴总家的店', '吴总家的店', '吴总家的店', '40', '0', '0', 'aa_1485256325', null, 'JSAPI', null, '0', '1485256328', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148525641072', '5', '吴总家的店', '吴总家的店', '吴总家的店', '50', '0', '0', 'ab_1485256401', null, 'JSAPI', null, '0', '1485256410', '0', 'o1MwhxPUMPxa3xiP4dZ-OW2CCQD8');
INSERT INTO `pay_info` VALUES ('148545576576', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455765', null, 'JSAPI', null, '0', '1485455765', '0', '');
INSERT INTO `pay_info` VALUES ('148545576952', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455769', null, 'JSAPI', null, '0', '1485455769', '0', '');
INSERT INTO `pay_info` VALUES ('148545577152', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455771', null, 'JSAPI', null, '0', '1485455771', '0', '');
INSERT INTO `pay_info` VALUES ('148545577344', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455773', null, 'JSAPI', null, '0', '1485455773', '0', '');
INSERT INTO `pay_info` VALUES ('148545578346', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455783', null, 'JSAPI', null, '0', '1485455783', '0', '');
INSERT INTO `pay_info` VALUES ('148545578591', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455785', null, 'JSAPI', null, '0', '1485455785', '0', '');
INSERT INTO `pay_info` VALUES ('148545578948', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455789', null, 'JSAPI', null, '0', '1485455789', '0', '');
INSERT INTO `pay_info` VALUES ('148545579028', '18', '刘总家的店', '18', '18', '8000', '1', '', 'th1485455790', null, 'JSAPI', null, '0', '1485455790', '0', '');
INSERT INTO `pay_info` VALUES ('148545582588', '0', null, null, null, '1967', '3', '0', 'ab_1485455806', null, 'JSAPI', null, '0', '1485455825', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148545584956', '18', '刘总家的店', '18', '18', '160', '1', '', 'th1485455849', null, 'JSAPI', null, '0', '1485455849', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148545587881', '18', '刘总家的店', '刘总家的店', '刘总家的店', '80', '2', '0', 'aa_1485455867', null, 'JSAPI', null, '0', '1485455878', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148549524038', '5', '吴总家的店', '吴总家的店', '吴总家的店', '522', '0', '0', 'ab_1485495230', null, 'JSAPI', null, '0', '1485495240', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148559439416', null, null, null, null, '0', '3', '0', 'ab_1485076783', null, 'JSAPI', null, '0', '1485594394', '0', '');
INSERT INTO `pay_info` VALUES ('148559447516', '18', '刘总家的店', '刘总家的店', '刘总家的店', '4037', '0', '0', 'ab_1485594467', null, 'JSAPI', null, '0', '1485594475', '0', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w');
INSERT INTO `pay_info` VALUES ('148560615498', null, null, null, null, '0', '3', '0', '', null, 'JSAPI', null, '0', '1485606154', '0', '');
INSERT INTO `pay_info` VALUES ('148569980298', '5', '吴总家的店', '吴总家的店', '吴总家的店', '2399', '0', '0', 'ab_1485699781', null, 'JSAPI', null, '0', '1485699802', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148571918261', '5', '吴总家的店', '5', '5', '0', '1', '', 'th1485719182', null, 'JSAPI', null, '0', '1485719182', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148628458774', '5', '吴总家的店', '5', '5', '80', '1', '', 'th1486284587', null, 'JSAPI', null, '0', '1486284587', '0', '');
INSERT INTO `pay_info` VALUES ('148628459130', '5', '吴总家的店', '5', '5', '80', '1', '', 'th1486284591', null, 'JSAPI', null, '0', '1486284591', '0', '');
INSERT INTO `pay_info` VALUES ('148628489685', '5', '吴总家的店', '5', '5', '80', '1', '', 'th1486284896', null, 'JSAPI', null, '0', '1486284896', '0', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk');
INSERT INTO `pay_info` VALUES ('148634498796', '2', '周黑鸭', '2', '2', '400', '1', '', 'th1486344987', null, 'JSAPI', null, '0', '1486344987', '0', '');
INSERT INTO `pay_info` VALUES ('148637448038', '2', '周黑鸭', '周黑鸭', '周黑鸭', '97', '0', '0', 'ab_1486374471', null, 'JSAPI', null, '0', '1486374480', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148637483948', '2', '周黑鸭', '周黑鸭', '周黑鸭', '181', '0', '0', 'ab_1486374835', null, 'JSAPI', null, '0', '1486374839', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148637495814', '2', '周黑鸭', '周黑鸭', '周黑鸭', '181', '0', '0', 'ab_1486374835', null, 'JSAPI', null, '0', '1486374958', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148637498310', '2', '周黑鸭', '周黑鸭', '周黑鸭', '181', '0', '0', 'ab_1486374835', null, 'JSAPI', null, '0', '1486374983', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148637502854', '2', '周黑鸭', '周黑鸭', '周黑鸭', '181', '0', '0', 'ab_1486374835', null, 'JSAPI', null, '0', '1486375028', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652339978', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523399', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652340388', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523403', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652340726', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523407', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652341033', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523410', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652341434', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523414', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652342110', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523421', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652342939', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523429', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652343241', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523432', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148652347070', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5000', '0', '0', 'aa_1486523394', null, 'JSAPI', null, '0', '1486523470', '0', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts');
INSERT INTO `pay_info` VALUES ('148654130719', '18', '刘总家的店', '18', '18', '0', '1', '', 'th1486541307', null, 'JSAPI', null, '0', '1486541307', '0', '');
INSERT INTO `pay_info` VALUES ('148654236491', '5', '吴总家的店', '5', '5', '8000', '1', '', 'th1486542364', null, 'JSAPI', null, '0', '1486542364', '0', '');
INSERT INTO `pay_info` VALUES ('148654648363', '2', '周黑鸭', '周黑鸭', '周黑鸭', '8', '0', '0', 'ab_1486546479', null, 'JSAPI', null, '0', '1486546483', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148654649625', '2', '周黑鸭', '周黑鸭', '周黑鸭', '8', '0', '0', 'ab_1486546479', null, 'JSAPI', null, '0', '1486546496', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148654660018', '2', '周黑鸭', '周黑鸭', '周黑鸭', '58', '0', '0', 'ab_1486546567', null, 'JSAPI', null, '0', '1486546600', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148654759014', '0', null, null, null, '320', '2', '1', 'aa_1486547545', null, 'JSAPI', null, '0', '1486547590', '0', 'o1MwhxAMizMURSuDKWoaSgH9semk');
INSERT INTO `pay_info` VALUES ('148663592649', '2', '周黑鸭', '周黑鸭', '周黑鸭', '500', '0', '0', 'aa_1486635922', null, 'JSAPI', null, '0', '1486635926', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148663594822', '2', '周黑鸭', '周黑鸭', '周黑鸭', '500', '0', '0', 'aa_1486635943', null, 'JSAPI', null, '0', '1486635948', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148706046178', '2', '周黑鸭', '2', '2', '1', '1', '', 'th1487060461', null, 'JSAPI', null, '0', '1487060463', '0', '');
INSERT INTO `pay_info` VALUES ('148706046452', '2', '周黑鸭', '2', '2', '1', '1', '', 'th1487060464', null, 'JSAPI', null, '0', '1487060464', '0', '');
INSERT INTO `pay_info` VALUES ('148706046960', '2', '周黑鸭', '2', '2', '1', '1', '', 'th1487060469', null, 'JSAPI', null, '0', '1487060469', '0', '');
INSERT INTO `pay_info` VALUES ('148706048070', '2', '周黑鸭', '2', '2', '2', '1', '', 'th1487060480', null, 'JSAPI', null, '0', '1487060480', '0', '');
INSERT INTO `pay_info` VALUES ('148706049898', '2', '周黑鸭', '2', '2', '16', '1', '', 'th1487060498', null, 'JSAPI', null, '0', '1487060498', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148706052659', '2', '周黑鸭', '2', '2', '1', '1', '', 'th1487060526', null, 'JSAPI', null, '0', '1487060526', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721011149', '2', '周黑鸭', '周黑鸭', '周黑鸭', '4', 'ab', '0', 'ab_1487210098', null, 'JSAPI', null, '0', '1487210112', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721014414', '2', '周黑鸭', '周黑鸭', '周黑鸭', '10', 'aa', '0', 'aa_1487210137', null, 'JSAPI', null, '0', '1487210144', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721051124', '2', '周黑鸭', '周黑鸭', '周黑鸭', '8', 'ab', '0', 'ab_1487210505', null, 'JSAPI', null, '0', '1487210512', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721078070', '2', '周黑鸭', '周黑鸭', '周黑鸭', '3', 'ab', '0', 'ab_1487210775', null, 'JSAPI', null, '0', '1487210780', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721427981', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487214274', null, 'JSAPI', null, '0', '1487214279', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721475598', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487214755', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721566846', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215668', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721567852', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215678', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721568535', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215685', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721572549', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215725', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721573510', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215735', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721575682', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215756', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721576456', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215764', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721590546', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487215905', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721604834', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487216048', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721606147', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487216061', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721606318', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487216063', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721617744', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487214751', null, 'JSAPI', null, '0', '1487216177', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721634279', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487216336', null, 'JSAPI', null, '0', '1487216342', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148721635058', '2', '周黑鸭', '周黑鸭', '周黑鸭', '20', 'ab', '0', 'ab_1487216344', null, 'JSAPI', null, '0', '1487216350', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721638437', '2', '周黑鸭', '周黑鸭', '周黑鸭', '20', 'aa', '0', 'aa_1487216374', null, 'JSAPI', null, '0', '1487216384', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148721647388', '2', '周黑鸭', '周黑鸭', '周黑鸭', '80', 'aa', '0', 'aa_1487216468', null, 'JSAPI', null, '0', '1487216473', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722671845', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487226686', null, 'JSAPI', null, '0', '1487226719', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722724563', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487226686', null, 'JSAPI', null, '0', '1487227245', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722729754', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487226686', null, 'JSAPI', null, '0', '1487227297', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722739951', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487226686', null, 'JSAPI', null, '0', '1487227399', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722745363', '2', '周黑鸭', '周黑鸭', '周黑鸭', '40', 'aa', '0', 'aa_1487226686', null, 'JSAPI', null, '0', '1487227453', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148722919027', '2', '周黑鸭', '周黑鸭', '周黑鸭', '60', 'ab', '0', 'ab_1487228972', null, 'JSAPI', null, '0', '1487229190', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148722924649', '2', '周黑鸭', '周黑鸭', '周黑鸭', '60', 'ab', '0', 'ab_1487228972', null, 'JSAPI', null, '0', '1487229246', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148722927013', '2', '周黑鸭', '周黑鸭', '周黑鸭', '60', 'ab', '0', 'ab_1487228972', null, 'JSAPI', null, '0', '1487229270', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148722934513', '2', '周黑鸭', '周黑鸭', '周黑鸭', '60', 'ab', '0', 'ab_1487228972', null, 'JSAPI', null, '0', '1487229345', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148722961584', '0', null, null, null, '10', '2', '0', 'aa_1487229495', null, 'JSAPI', null, '0', '1487229615', '0', 'o1MwhxJNYVQVjKTfyr18nE6lytZI');
INSERT INTO `pay_info` VALUES ('148722987013', '2', '周黑鸭', '周黑鸭', '周黑鸭', '116', 'ab', '0', 'ab_1487229760', null, 'JSAPI', null, '0', '1487229870', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148723132899', '2', '周黑鸭', '周黑鸭', '周黑鸭', '78', 'ab', '0', 'ab_1487231303', null, 'JSAPI', null, '0', '1487231328', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723141721', '2', '周黑鸭', '周黑鸭', '周黑鸭', '78', 'ab', '0', 'ab_1487231303', null, 'JSAPI', null, '0', '1487231417', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723148257', '2', '周黑鸭', '周黑鸭', '周黑鸭', '78', 'ab', '0', 'ab_1487231303', null, 'JSAPI', null, '0', '1487231482', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723160967', '2', '周黑鸭', '周黑鸭', '周黑鸭', '33', 'aa', '0', 'aa_1487231601', null, 'JSAPI', null, '0', '1487231609', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723178471', '2', '周黑鸭', '周黑鸭', '周黑鸭', '77', 'ab', '0', 'ab_1487231774', null, 'JSAPI', null, '0', '1487231785', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723189743', '2', '周黑鸭', '周黑鸭', '周黑鸭', '4', 'ab', '0', 'ab_1487231863', null, 'JSAPI', null, '0', '1487231897', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');
INSERT INTO `pay_info` VALUES ('148723190544', '2', '周黑鸭', '周黑鸭', '周黑鸭', '5', '3', '1', 'ab_1487231863', null, 'JSAPI', null, '0', '1487231905', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148723419417', '2', '周黑鸭', '周黑鸭', '周黑鸭', '9', '3', '1', 'ab_1487234168', null, 'JSAPI', null, '0', '1487234194', '0', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0');
INSERT INTO `pay_info` VALUES ('148723420413', '2', '周黑鸭', '周黑鸭', '周黑鸭', '9', '3', '1', 'ab_1487234168', null, 'JSAPI', null, '0', '1487234204', '0', '');
INSERT INTO `pay_info` VALUES ('148723480745', '2', '周黑鸭', '周黑鸭', '周黑鸭', '4', 'ab', '0', 'ab_1487234800', null, 'JSAPI', null, '0', '1487234807', '0', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8');

-- ----------------------------
-- Table structure for pay_log
-- ----------------------------
DROP TABLE IF EXISTS `pay_log`;
CREATE TABLE `pay_log` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(1) NOT NULL COMMENT '日志类型1：土豪支付，2：aa支付，3：ab支付',
  `log_time` int(11) NOT NULL COMMENT '记日志时间',
  `log_body` varchar(120) NOT NULL COMMENT '日志简要',
  `log_info` text NOT NULL COMMENT '日志详细返回数据json格式',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `log_id` (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='支付详细日志';

-- ----------------------------
-- Records of pay_log
-- ----------------------------
INSERT INTO `pay_log` VALUES ('1', '1', '1485056081', '土豪支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"\\u5434\\u603b\\u5bb6\\u7684\\u5e97\",\"bank_type\":\"CFT\",\"cash_fee\":\"10\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"ktp5l33c8905sslj58vusf8h2w9ujesq\",\"openid\":\"o1MwhxIa0M3rrtUsqQSMSYNQfVQ4\",\"out');
INSERT INTO `pay_log` VALUES ('2', '1', '1485056134', '土豪支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"\\u9676\\u603b\\u5bb6\\u7684\\u5e97\",\"bank_type\":\"CFT\",\"cash_fee\":\"10\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"bxkg3hpal0zebmebdzkddy5090yunz08\",\"openid\":\"o1MwhxIa0M3rrtUsqQSMSYNQfVQ4\",\"out');
INSERT INTO `pay_log` VALUES ('3', '1', '1485056148', '土豪支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"\\u9676\\u603b\\u5bb6\\u7684\\u5e97\",\"bank_type\":\"CFT\",\"cash_fee\":\"10\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"hv9zi4n9x09ffvzntf7dp8h8swd4h31c\",\"openid\":\"o1MwhxIa0M3rrtUsqQSMSYNQfVQ4\",\"out');
INSERT INTO `pay_log` VALUES ('4', '3', '1485076801', 'ab支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"3\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"1rzuxk5oqrtgqh3utaexq7ciz0bsy2hr\",\"openid\":\"o1MwhxCXCT39NILvQ6PGVhsO_sVU\",\"out_trade_no\":\"148507678611\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"A261614642A318BC58FA38B32FE5C776\",\"time_end\":\"20170122171959\",\"total_fee\":\"3\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4004482001201701227198102089\"}');
INSERT INTO `pay_log` VALUES ('5', '3', '1485077974', 'ab支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"1\",\"bank_type\":\"GDB_CREDIT\",\"cash_fee\":\"3\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"dqdnjlhhwuzuasp173dy9los7nj2fosx\",\"openid\":\"o1MwhxBbFmkZgWyHe02fgEsYtj6w\",\"out_trade_no\":\"148507795650\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"C3DBC3F746AC96B531B8A56F916BA4D2\",\"time_end\":\"20170122173932\",\"total_fee\":\"3\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4010202001201701227208567812\"}');
INSERT INTO `pay_log` VALUES ('6', '3', '1485079279', 'ab支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"5\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"iwjiuhi9j4rdls31pxjyzji8nnlw1lh0\",\"openid\":\"o1MwhxECtVmOV8gu8bG3NzWxeVyM\",\"out_trade_no\":\"148507926681\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"7AC8A032BDF98CF9C0EFCF57D4A9338B\",\"time_end\":\"20170122180118\",\"total_fee\":\"5\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4003522001201701227203997266\"}');
INSERT INTO `pay_log` VALUES ('7', '3', '1485079310', 'ab支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"1\",\"bank_type\":\"CFT\",\"cash_fee\":\"3\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"fu4twwjwkvzhh79bvnv1326mhwkl6dfg\",\"openid\":\"o1MwhxCXCT39NILvQ6PGVhsO_sVU\",\"out_trade_no\":\"148507929750\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"BCB54EEFDDEDABB6830B5CD3196B8B8F\",\"time_end\":\"20170122180149\",\"total_fee\":\"3\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4004482001201701227205344014\"}');
INSERT INTO `pay_log` VALUES ('8', '2', '1485079418', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"4\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"p95it8p9xu7704zvk4yliknp0gwt02ij\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"148507939083\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"75AEC338B8ECF5F597D81CDC48F54C31\",\"time_end\":\"20170122180337\",\"total_fee\":\"4\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701227209299609\"}');
INSERT INTO `pay_log` VALUES ('9', '2', '1485079469', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"1\",\"bank_type\":\"CMB_DEBIT\",\"cash_fee\":\"4\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"oo8u0oqn1wqoh4eincxdaxsgbrp004sa\",\"openid\":\"o1MwhxH39P_1x1DxKBZebw4_9AQ0\",\"out_trade_no\":\"148507944040\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"1C26A9D969513C7649351DEE541B188C\",\"time_end\":\"20170122180416\",\"total_fee\":\"4\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4007502001201701227207374543\"}');
INSERT INTO `pay_log` VALUES ('10', '1', '1485141788', '土豪支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"\\u5434\\u603b\\u5bb6\\u7684\\u5e97\",\"bank_type\":\"CFT\",\"cash_fee\":\"8\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"fc6zqadved54tmperuy50j7s90xlc9yq\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"th1485141775\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"ED873F8D2D2AE8AC80B4285809625DA7\",\"time_end\":\"20170123112306\",\"total_fee\":\"8\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701237274861692\"}');
INSERT INTO `pay_log` VALUES ('11', '2', '1485141816', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"4\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"zibcvijeeqtq2he4sgjy3vl1fzn6i9na\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"148514180681\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"26922E8B3D298BFBC9EA29071825BAE5\",\"time_end\":\"20170123112334\",\"total_fee\":\"4\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701237273754686\"}');
INSERT INTO `pay_log` VALUES ('12', '1', '1485146066', '土豪支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"\\u9676\\u603b\\u5bb6\\u7684\\u5e97\",\"bank_type\":\"CFT\",\"cash_fee\":\"8\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"q2qqs5xkjw8anjurekvgw2qqmcp8w4if\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"th1485146052\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"738FA91802AD404D7473156E41459776\",\"time_end\":\"20170123123424\",\"total_fee\":\"8\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701237282961668\"}');
INSERT INTO `pay_log` VALUES ('13', '2', '1485146125', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"4\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"oklzr12ohy1mz82ihg11bwbwgmnwp2cq\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"148514611716\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"7F6AFEBF6CA97362E08E193F7F40DA91\",\"time_end\":\"20170123123524\",\"total_fee\":\"4\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701237278190323\"}');
INSERT INTO `pay_log` VALUES ('14', '2', '1485146139', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"1\",\"bank_type\":\"CMBC_CREDIT\",\"cash_fee\":\"4\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1417527502\",\"nonce_str\":\"706qqrtbnmrceh6edxatyp83hp7l9ysl\",\"openid\":\"o1MwhxFSMtEaPwG9E9WstJEqQwM4\",\"out_trade_no\":\"148514612446\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"2F86275E6DBD0EBD5340552B93A6609D\",\"time_end\":\"20170123123537\",\"total_fee\":\"4\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4010202001201701237278244401\"}');
INSERT INTO `pay_log` VALUES ('15', '2', '1485185065', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"0\",\"bank_type\":\"CFT\",\"cash_fee\":\"40\",\"fee_type\":\"CNY\",\"is_subscribe\":\"Y\",\"mch_id\":\"1417527502\",\"nonce_str\":\"3ryb4m9b3qw5x3vzvwb9up9adp0up6l8\",\"openid\":\"o1MwhxA2VyuMKzgj5IMMH-12Pwuk\",\"out_trade_no\":\"148518505615\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"0539A13CCF9A999B5DCC0E1AD2C9EC11\",\"time_end\":\"20170123232423\",\"total_fee\":\"40\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4000432001201701237354411392\"}');
INSERT INTO `pay_log` VALUES ('16', '2', '1485185117', 'aa支付完成', '{\"appid\":\"wx74412c431a9f3880\",\"attach\":\"1\",\"bank_type\":\"CMB_DEBIT\",\"cash_fee\":\"40\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1417527502\",\"nonce_str\":\"zxzfbjmn5wuhqtgoc41psw9s6ngf2m6x\",\"openid\":\"o1MwhxFazdwJLlypKv6gLWf9auPM\",\"out_trade_no\":\"148518503213\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"9BC63F891DB11E5FAC78C48BB5E77B37\",\"time_end\":\"20170123232516\",\"total_fee\":\"40\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4010132001201701237352854085\"}');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `shops_id` int(11) DEFAULT NULL COMMENT '商铺id',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名',
  `product_explain` text COMMENT '产品说明',
  `product_class` varchar(255) DEFAULT NULL COMMENT '产品分类',
  `product_details` text COMMENT '产品详情',
  `product_price` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '产品价格',
  `totalprice` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '团购产品总价格',
  `product_stock` int(11) DEFAULT NULL COMMENT '产品库存',
  `product_shelves` tinyint(4) unsigned DEFAULT NULL COMMENT '1=上架，2=放仓库',
  `product_group` tinyint(4) unsigned DEFAULT '1' COMMENT '1=单产品，2=团购',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '产品创建时间',
  `shelves_time` int(10) unsigned DEFAULT NULL COMMENT '产品上架时间',
  `group_time` int(10) unsigned DEFAULT NULL COMMENT '团购活动开始时间',
  `group_use_time` int(10) unsigned DEFAULT NULL COMMENT '团购活动结束时间',
  `productid` varchar(255) DEFAULT NULL COMMENT '团购产品ID',
  `product_thumb` varchar(255) DEFAULT NULL COMMENT '团购默认图片',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', '16', '002', 'ju tou mu mu mu mu mu', '', '', '600.00', '0.00', '99', '1', '1', '1484969747', '1492749300', null, null, null, '/Public/Upload/Shops/16/product_thumb/product_thumb359162.jpg');
INSERT INTO `product_category` VALUES ('2', '3', '', '', '', '', '0.00', '0.00', '0', '2', '1', '1484970916', '0', null, null, null, null);
INSERT INTO `product_category` VALUES ('3', '2', '鸭骨架', '鸭骨架身材', '10', '鸭骨架身材', '100.00', '0.00', '70', '1', '1', '1484971168', '1484974680', null, null, null, '/Public/Upload/Shops/2/product_thumb/product_thumb450165.jpg');
INSERT INTO `product_category` VALUES ('4', '2', '鸭脖', '鸭脖职前锋', '10', '远呀呀电话', '80.00', '0.00', '40', '1', '1', '1484971245', '1484974740', null, null, null, '/Public/Upload/Shops/2/product_thumb/product_thumb541840.jpg');
INSERT INTO `product_category` VALUES ('5', '1', 'A', 'Svgsgs', '', 'Gsgsgsgshsh', '10.00', '0.00', '1', '1', '1', '1484971262', '0', null, null, null, null);
INSERT INTO `product_category` VALUES ('6', '8', '哦婆婆', '婆婆嘴', '', '', '676.00', '0.00', '67984', '1', '1', '1484995925', '1484928000', null, null, null, '/Public/Upload/Shops/8/product_thumb/product_thumb76935.jpg');
INSERT INTO `product_category` VALUES ('7', '8', '哦所以', '儿女共沾巾', '', '', '676.00', '0.00', '646', '1', '1', '1484995966', '1484928000', null, null, null, '/Public/Upload/Shops/8/product_thumb/product_thumb954804.jpg');
INSERT INTO `product_category` VALUES ('8', '8', '哦破坏', '婆母捏', '', '', '986.00', '0.00', '649', '1', '1', '1484996032', '1484928000', null, null, null, '/Public/Upload/Shops/8/product_thumb/product_thumb520417.jpg');
INSERT INTO `product_category` VALUES ('9', '10', '猪肉', '猪肉', '', '于IO看见个电动工具', '12.00', '0.00', '0', '1', '1', '1485054327', '0', null, null, null, '/Public/Upload/Shops/10/product_thumb/product_thumb711365.jpg');
INSERT INTO `product_category` VALUES ('10', '7', '001', 'j l ru tu j j j', '', '阿里老奸巨猾快乐聚聚聚聚散散', '588.00', '0.00', '99', '1', '1', '1485054850', '1485187200', null, null, null, '/Public/Upload/Shops/7/product_thumb/product_thumb520112.jpg');
INSERT INTO `product_category` VALUES ('11', '7', '001', 'g ju tu low', '', 'ju ju j j', '100.00', '0.00', '99', '1', '1', '1485054992', '0', null, null, null, '/Public/Upload/Shops/7/product_thumb/product_thumb722504.jpg');
INSERT INTO `product_category` VALUES ('12', '7', '002', 'lv tu kou mo', '', 'j j j ju j', '200.00', '0.00', '99', '1', '1', '1485055023', '0', null, null, null, '/Public/Upload/Shops/7/product_thumb/product_thumb618317.jpg');
INSERT INTO `product_category` VALUES ('13', '13', '超级经纪人', 'u亚太广告就', '', '给发个就看看看', '25.00', '0.00', '0', '1', '1', '1485055059', '0', null, null, null, '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `product_category` VALUES ('14', '13', '超级经纪人', 'u亚太广告就', '', '给发个就看看看', '25.00', '0.00', '0', '1', '1', '1485055060', '0', null, null, null, '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `product_category` VALUES ('15', '7', '003', '记录体育怕啊都来了', '', 'k l ju j', '888.00', '0.00', '5558', '1', '1', '1485055179', '0', null, null, null, '/Public/Upload/Shops/7/product_thumb/product_thumb408234.jpg');
INSERT INTO `product_category` VALUES ('16', '8', '皮皮虾', '磨破一抹', '9', '&lt;p&gt;哦婆婆攻&lt;span class=&quot;ql-size-huge&quot;&gt;爹&lt;/span&gt;&lt;/p&gt;', '500.00', '0.00', '500', '1', '1', '1486695666', '1486695600', null, null, null, null);
INSERT INTO `product_category` VALUES ('17', '0', '', '', '', '&lt;p&gt;使用时间&lt;strong&gt;&lt;span class=&quot;ql-cursor&quot;&gt;﻿&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '0.00', '0.00', '0', '2', '1', '1486698541', '1430466122', null, null, null, null);
INSERT INTO `product_category` VALUES ('18', '0', '', '', '', null, '0.00', '0.00', '0', '1', '1', '1486698545', '1430466122', null, null, null, null);
INSERT INTO `product_category` VALUES ('20', '19', '打小怪兽', '超级好玩的', '14', null, '28.00', '0.00', '99', '1', '1', '1486711773', '1486711620', null, null, null, null);
INSERT INTO `product_category` VALUES ('21', '25', '猪小慧是猪是宁回忆', 'la la la', '9', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '212.00', '0.00', '11', '1', '1', '1486712094', '1486712040', null, null, null, null);
INSERT INTO `product_category` VALUES ('22', '25', '邵勇s b', '哈哈', '10', '&lt;p&gt;嗯哼&lt;/p&gt;', '11.00', '0.00', '1', '2', '1', '1486712197', '1486712160', null, null, null, null);
INSERT INTO `product_category` VALUES ('23', '19', '彪猪猪', '好好玩的彪猪哥', '17', null, '88.00', '0.00', '99', '1', '1', '1486712563', '1486712520', null, null, null, null);
INSERT INTO `product_category` VALUES ('24', '25', '黎钦也是s b', '护肤的黄赌毒', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '4444.00', '0.00', '44', '2', '1', '1486712909', '1430466122', null, null, null, null);
INSERT INTO `product_category` VALUES ('25', '2', '', '', '', '&lt;p&gt;东方各国和&lt;/p&gt;', '1.00', '0.00', '1', '2', '1', '1487318547', '1430466122', null, null, null, null);

-- ----------------------------
-- Table structure for product_img
-- ----------------------------
DROP TABLE IF EXISTS `product_img`;
CREATE TABLE `product_img` (
  `product_img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_id` int(11) NOT NULL COMMENT '产品关联id',
  `product_img` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `product_thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`product_img_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_img
-- ----------------------------
INSERT INTO `product_img` VALUES ('1', '1', '/Public/Upload/Shops/16/product_img/2017-01-21/product_img5882d6fca436c.JPG', '/Public/Upload/Shops/16/product_thumb/product_thumb359162.jpg');
INSERT INTO `product_img` VALUES ('2', '2', null, '');
INSERT INTO `product_img` VALUES ('3', '3', '/Public/Upload/Shops/2/product_img/2017-01-21/product_img5882dc7e5d3ad.JPG', '/Public/Upload/Shops/2/product_thumb/product_thumb450165.jpg');
INSERT INTO `product_img` VALUES ('4', '3', '/Public/Upload/Shops/2/product_img/2017-01-21/product_img5882dc852741e.JPG', '/Public/Upload/Shops/2/product_thumb/product_thumb335328.jpg');
INSERT INTO `product_img` VALUES ('5', '4', '/Public/Upload/Shops/2/product_img/2017-01-21/product_img5882dcc7a0af0.JPG', '/Public/Upload/Shops/2/product_thumb/product_thumb541840.jpg');
INSERT INTO `product_img` VALUES ('6', '4', '/Public/Upload/Shops/2/product_img/2017-01-21/product_img5882dcce9d085.JPG', '/Public/Upload/Shops/2/product_thumb/product_thumb739899.jpg');
INSERT INTO `product_img` VALUES ('7', '5', null, '');
INSERT INTO `product_img` VALUES ('8', '6', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833d4bf2ce1.PNG', '/Public/Upload/Shops/8/product_thumb/product_thumb76935.jpg');
INSERT INTO `product_img` VALUES ('9', '7', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833d698e5bb.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb954804.jpg');
INSERT INTO `product_img` VALUES ('10', '7', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833d6f22b97.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb965943.jpg');
INSERT INTO `product_img` VALUES ('11', '7', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833d7445201.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb601960.jpg');
INSERT INTO `product_img` VALUES ('12', '8', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833da290990.PNG', '/Public/Upload/Shops/8/product_thumb/product_thumb520417.jpg');
INSERT INTO `product_img` VALUES ('13', '8', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833da7da562.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb773987.jpg');
INSERT INTO `product_img` VALUES ('14', '8', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833dac8c100.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb710053.jpg');
INSERT INTO `product_img` VALUES ('15', '8', '/Public/Upload/Shops/8/product_img/2017-01-21/product_img58833db5d18e3.JPG', '/Public/Upload/Shops/8/product_thumb/product_thumb912171.jpg');
INSERT INTO `product_img` VALUES ('16', '9', '/Public/Upload/Shops/10/product_img/2017-01-22/product_img5884213054eb4.jpg', '/Public/Upload/Shops/10/product_thumb/product_thumb711365.jpg');
INSERT INTO `product_img` VALUES ('17', '10', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img588422d151293.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb520112.jpg');
INSERT INTO `product_img` VALUES ('18', '10', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img588422fc73d41.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb646973.jpg');
INSERT INTO `product_img` VALUES ('19', '10', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img58842304cc026.PNG', '/Public/Upload/Shops/7/product_thumb/product_thumb646760.jpg');
INSERT INTO `product_img` VALUES ('20', '10', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img588423114bf4f.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb358155.jpg');
INSERT INTO `product_img` VALUES ('21', '11', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img588423f23c4ae.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb722504.jpg');
INSERT INTO `product_img` VALUES ('22', '12', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img5884242588523.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb618317.jpg');
INSERT INTO `product_img` VALUES ('23', '13', '/Public/Upload/Shops/13/product_img/2017-01-22/product_img58842408c55f7.jpg', '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `product_img` VALUES ('24', '13', '/Public/Upload/Shops/13/product_img/2017-01-22/product_img58842417c1181.jpg', '/Public/Upload/Shops/13/product_thumb/product_thumb680542.jpg');
INSERT INTO `product_img` VALUES ('25', '14', '/Public/Upload/Shops/13/product_img/2017-01-22/product_img58842408c55f7.jpg', '/Public/Upload/Shops/13/product_thumb/product_thumb82764.jpg');
INSERT INTO `product_img` VALUES ('26', '14', '/Public/Upload/Shops/13/product_img/2017-01-22/product_img58842417c1181.jpg', '/Public/Upload/Shops/13/product_thumb/product_thumb680542.jpg');
INSERT INTO `product_img` VALUES ('27', '15', '/Public/Upload/Shops/7/product_img/2017-01-22/product_img588424b944b07.JPG', '/Public/Upload/Shops/7/product_thumb/product_thumb408234.jpg');
INSERT INTO `product_img` VALUES ('28', '16', '/Public/Upload/Shops/8/product_img/20170210105905_6719.jpeg', '/Public/Upload/Shops/8/product_thumb/product_thumb20170210105905_6719.jpeg');
INSERT INTO `product_img` VALUES ('29', '16', '/Public/Upload/Shops/8/product_img/20170210105912_5952.jpeg', '/Public/Upload/Shops/8/product_thumb/product_thumb20170210105912_5952.jpeg');
INSERT INTO `product_img` VALUES ('30', '16', '/Public/Upload/Shops/8/product_img/20170210105920_4125.jpeg', '/Public/Upload/Shops/8/product_thumb/product_thumb20170210105920_4125.jpeg');
INSERT INTO `product_img` VALUES ('31', '16', '/Public/Upload/Shops/8/product_img/20170210105927_5667.jpeg', '/Public/Upload/Shops/8/product_thumb/product_thumb20170210105927_5667.jpeg');
INSERT INTO `product_img` VALUES ('32', '19', '/Public/Upload/Shops/19/product_img/20170210031926_9824.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210031926_9824.jpeg');
INSERT INTO `product_img` VALUES ('33', '19', '/Public/Upload/Shops/19/product_img/20170210031935_3954.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210031935_3954.jpeg');
INSERT INTO `product_img` VALUES ('34', '20', '/Public/Upload/Shops/19/product_img/20170210032541_3328.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210032541_3328.jpeg');
INSERT INTO `product_img` VALUES ('35', '20', '/Public/Upload/Shops/19/product_img/20170210032552_4615.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210032552_4615.jpeg');
INSERT INTO `product_img` VALUES ('36', '20', '/Public/Upload/Shops/19/product_img/20170210032557_6323.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210032557_6323.jpeg');
INSERT INTO `product_img` VALUES ('37', '21', '/Public/Upload/Shops/25/product_img/20170210033411_9650.jpeg', '/Public/Upload/Shops/25/product_thumb/product_thumb20170210033411_9650.jpeg');
INSERT INTO `product_img` VALUES ('38', '21', '/Public/Upload/Shops/25/product_img/20170210033417_4039.jpeg', '/Public/Upload/Shops/25/product_thumb/product_thumb20170210033417_4039.jpeg');
INSERT INTO `product_img` VALUES ('39', '22', '/Public/Upload/Shops/25/product_img/20170210033554_8357.jpeg', '/Public/Upload/Shops/25/product_thumb/product_thumb20170210033554_8357.jpeg');
INSERT INTO `product_img` VALUES ('40', '23', '/Public/Upload/Shops/19/product_img/20170210034056_3187.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210034056_3187.jpeg');
INSERT INTO `product_img` VALUES ('41', '23', '/Public/Upload/Shops/19/product_img/20170210034107_6431.jpeg', '/Public/Upload/Shops/19/product_thumb/product_thumb20170210034107_6431.jpeg');
INSERT INTO `product_img` VALUES ('42', '24', '/Public/Upload/Shops/25/product_img/20170210034820_7630.jpeg', '/Public/Upload/Shops/25/product_thumb/product_thumb20170210034820_7630.jpeg');
INSERT INTO `product_img` VALUES ('43', '26', '/Public/Upload/Shops/2/product_img/20170217040255_8427.jpeg', '/Public/Upload/Shops/2/product_thumb/product_thumb20170217040255_8427.jpeg');

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `shops_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `merchant_id` int(11) NOT NULL COMMENT '关联商户表id',
  `store_name` varchar(100) NOT NULL COMMENT '商点名称',
  `store_type` smallint(1) NOT NULL DEFAULT '1' COMMENT '1=个体商户，2=企业商户',
  `industry_class` int(11) NOT NULL COMMENT '经营分类',
  `province_city` varchar(255) DEFAULT NULL,
  `address` varchar(100) NOT NULL COMMENT '手动地址输入框',
  `map_mark` varchar(100) NOT NULL COMMENT '调用地图sdk',
  `contacts` varchar(32) DEFAULT NULL COMMENT '联系人',
  `phone` char(12) NOT NULL COMMENT '手机号',
  `service_code` char(10) NOT NULL COMMENT '业务授权码',
  `door_pic` varchar(255) DEFAULT NULL COMMENT '门照片',
  `indoor_pic` varchar(255) DEFAULT NULL COMMENT '店内照片',
  `shops_logo` varchar(255) DEFAULT NULL COMMENT '公司或商铺logo',
  `y_license` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `x_license` varchar(255) DEFAULT NULL COMMENT '许可证',
  `state` tinyint(1) DEFAULT '1' COMMENT '1=审核中，2=已审核，3=申请中',
  `state_explain` varchar(255) DEFAULT NULL COMMENT '状态备注',
  `create_time` varchar(255) DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL DEFAULT '0',
  `shelves` tinyint(1) DEFAULT '1' COMMENT '店铺运营状态：1=营业。2=停业',
  PRIMARY KEY (`shops_id`),
  KEY `industry_class` (`industry_class`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', '2', 'Ater', '1', '7', null, '广东省深圳市南山区Sz', '', '', '', '', '/Public/Upload/Shops/1/verify/20170121114145_1009.jpeg', '/Public/Upload/Shops/1/verify/20170121114150_1350.jpeg', '/Public/Upload/Shops/1/verify/20170121114155_3912.jpeg', '/Public/Upload/Shops/1/verify/20170121114213_4780.jpeg', '/Public/Upload/Shops/1/verify/20170121114217_7314.jpeg', '2', null, '1484970091', '3', '1');
INSERT INTO `shops` VALUES ('2', '12', '周黑鸭', '2', '14', null, '广东省深圳市南山区粤海大厦B', '粤海大厦', '张三', '18033086721', '123456', null, null, null, null, null, '2', null, '1484970103', '1', '1');
INSERT INTO `shops` VALUES ('3', '4', '约约约', '1', '8', null, '广东省深圳市南山区34579', '阳光棕榈园', '嘿嘿', '13410552658', '666', '/Public/Upload/Shops/3/verify/20170121115113_4078.jpeg', '/Public/Upload/Shops/3/verify/20170121115121_6464.jpeg', '/Public/Upload/Shops/3/verify/20170121115130_4464.jpeg', '/Public/Upload/Shops/3/verify/20170121115144_7949.jpeg', '/Public/Upload/Shops/3/verify/20170121115151_5698.jpeg', '1', null, '1484970619', '3', '1');
INSERT INTO `shops` VALUES ('4', '5', '陶总家的店', '1', '7', null, '广东省深圳市南山区粤海大厦B', '粤海大厦', '陶总', '', '', '/Public/Upload/Shops/7/shops_logo/7.jpg', '/Public/Upload/Shops/7/shops_logo/7.jpg', '/Public/Upload/Shops/7/shops_logo/7.jpg', '/Public/Upload/Shops/7/shops_logo/7.jpg', '/Public/Upload/Shops/7/shops_logo/7.jpg', '1', null, '1484970091', '3', '1');
INSERT INTO `shops` VALUES ('5', '6', '吴总家的店', '1', '7', null, '广东省深圳市南山区粤海大厦B', '粤海大厦', '吴总', '', '', '/Public/Upload/Shops/5/shops_logo/5.jpg', '/Public/Upload/Shops/5/shops_logo/5.jpg', '/Public/Upload/Shops/5/shops_logo/5.jpg', '/Public/Upload/Shops/5/shops_logo/5.jpg', '/Public/Upload/Shops/5/shops_logo/5.jpg', '1', null, '1484970091', '3', '1');
INSERT INTO `shops` VALUES ('6', '7', '韩经理的店', '1', '7', null, '广东省深圳市南山区粤海大厦B', '粤海大厦', '韩经理', '', '', '/Public/Upload/Shops/12/shops_logo/12.jpg', '/Public/Upload/Shops/12/shops_logo/12.jpg', '/Public/Upload/Shops/12/shops_logo/12.jpg', '/Public/Upload/Shops/12/shops_logo/12.jpg', '/Public/Upload/Shops/12/shops_logo/12.jpg', '1', null, '1484970091', '3', '1');
INSERT INTO `shops` VALUES ('7', '7', '韩金未来', '1', '8', null, '广东省深圳市南山区前海路鸿海大厦', '鸿海大厦', '韩华一', '15818555711', '', '/Public/Upload/Shops/7/verify/20170121064146_3525.jpeg', '/Public/Upload/Shops/7/verify/20170121064207_3434.jpeg', '/Public/Upload/Shops/7/verify/20170121064214_8063.jpeg', '/Public/Upload/Shops/7/verify/20170121064233_2360.jpeg', '/Public/Upload/Shops/7/verify/20170121064240_8570.jpeg', '2', null, '1484995278', '3', '1');
INSERT INTO `shops` VALUES ('8', '10', '我婆婆', '1', '10', null, '广东省深圳市南山区哦婆', '鸿海大厦', '新', '64649464', '67676', '/Public/Upload/Shops/8/verify/20170121064648_7879.jpeg', '/Public/Upload/Shops/8/verify/20170121064654_9818.jpeg', '/Public/Upload/Shops/8/verify/20170121064659_8580.jpeg', '/Public/Upload/Shops/8/verify/20170121064708_9834.jpeg', '/Public/Upload/Shops/8/verify/20170121064713_7392.jpeg', '1', '太yellow！', '1484995600', '3', '1');
INSERT INTO `shops` VALUES ('9', '7', '韩金未来', '1', '10', null, '广东省深圳市南山区前海路鸿海大厦', '鸿海大厦', '韩华一', '15818555711', '', '/Public/Upload/Shops/9/verify/20170121071921_9811.jpeg', '/Public/Upload/Shops/9/verify/20170121071927_8282.jpeg', '/Public/Upload/Shops/9/verify/20170121071934_7689.jpeg', null, null, '3', null, '1484997539', '2', '1');
INSERT INTO `shops` VALUES ('10', '9', '胖纸餐饮', '1', '8', null, '广东省深圳市宝安区鸿海大厦', '摩登时尚(大新店)', '刘庆忠', '18319024797', '123456', '/Public/Upload/Shops/10/verify/20170122104954_5232.jpeg', '/Public/Upload/Shops/10/verify/20170122105023_1039.jpeg', '/Public/Upload/Shops/10/verify/20170122105053_4137.jpeg', '/Public/Upload/Shops/10/verify/20170122105120_7128.jpeg', '/Public/Upload/Shops/10/verify/20170122105130_7410.jpeg', '1', null, '1485053356', '3', '1');
INSERT INTO `shops` VALUES ('19', '14', 'mei', '1', '8', null, '广东省深圳市南山区', '鸿海大厦', '', '', '', '/Public/Upload/Shops/19/verify/20170122055649_1686.jpeg', '/Public/Upload/Shops/19/verify/20170122055643_6871.jpeg', '/Public/Upload/Shops/19/verify/20170122055654_8222.jpeg', '/Public/Upload/Shops/19/verify/20170122055707_2448.jpeg', '/Public/Upload/Shops/19/verify/20170122055713_5651.jpeg', '2', null, '1485078945', '3', '1');
INSERT INTO `shops` VALUES ('20', '14', '小笨笨', '1', '8', null, '广东省深圳市宝安区', '', '', '', '', '/Public/Upload/Shops/20/verify/20170122055919_5621.jpeg', '/Public/Upload/Shops/20/verify/20170122055931_2628.jpeg', '/Public/Upload/Shops/20/verify/20170122055939_5645.jpeg', '/Public/Upload/Shops/20/verify/20170122055952_5895.jpeg', '/Public/Upload/Shops/20/verify/20170122060007_4984.jpeg', '2', null, '1485079140', '3', '1');
INSERT INTO `shops` VALUES ('13', '9', '胖人餐饮', '1', '12', null, '广东省深圳市南山区鸿海大厦', '蝴蝶谷养生会所(前海店)', '刘庆忠', '18319024797', '123456', '/Public/Upload/Shops/13/verify/20170122111254_2821.jpeg', '/Public/Upload/Shops/13/verify/20170122111319_2882.jpeg', '/Public/Upload/Shops/13/verify/20170122111307_7126.jpeg', '/Public/Upload/Shops/13/verify/20170122111333_3239.jpeg', '/Public/Upload/Shops/13/verify/20170122111337_5228.jpeg', '1', null, '1485054762', '3', '1');
INSERT INTO `shops` VALUES ('21', '14', '', '1', '10', null, '', '', '', '', '', '/Public/Upload/Shops/21/verify/20170122060124_4712.jpeg', '/Public/Upload/Shops/21/verify/20170122060131_6147.jpeg', '/Public/Upload/Shops/21/verify/20170122060139_8161.jpeg', '/Public/Upload/Shops/21/verify/20170122060150_9118.jpeg', '/Public/Upload/Shops/21/verify/20170122060201_4766.jpeg', '1', null, '1485079271', '3', '1');
INSERT INTO `shops` VALUES ('23', '12', '绝味鸭脖', '2', '15', null, '广东省深圳市南山区学府路天虹商场', '常兴时代广场', '王五', '13456789087', '123456', '/Public/Upload/Shops/23/verify/20170207041443_9150.jpeg', '/Public/Upload/Shops/23/verify/20170207041502_1127.jpeg', '/Public/Upload/Shops/23/verify/20170207041517_3911.jpeg', '/Public/Upload/Shops/23/verify/20170207041534_3465.jpeg', '/Public/Upload/Shops/23/verify/20170207041544_7316.jpeg', '2', null, '1486455261', '3', '1');
INSERT INTO `shops` VALUES ('18', '15', '刘总家的店', '1', '7', null, '广东省深圳市南山区粤海大厦B', '鸿海大厦', '刘总', '', '', '/Public/Upload/Shops/6/shops_logo/6.jpg', '/Public/Upload/Shops/6/shops_logo/6.jpg', '/Public/Upload/Shops/6/shops_logo/6.jpg', '/Public/Upload/Shops/6/shops_logo/6.jpg', '/Public/Upload/Shops/6/shops_logo/6.jpg', '2', null, '1484970091', '3', '1');
INSERT INTO `shops` VALUES ('24', '16', '猪小慧有限公司', '1', '26', '广东省,深圳市,南山区', '深圳市南山区前海路鸿海大厦', '鸿海大厦', '猪小慧', '', '', '/Public/Upload/Shops/24/verify/20170210025940_1524.jpeg', '/Public/Upload/Shops/24/verify/20170210030004_8104.jpeg', '/Public/Upload/Shops/24/verify/20170210030020_6936.jpeg', '/Public/Upload/Shops/24/verify/20170210030113_9679.jpeg', '/Public/Upload/Shops/24/verify/20170210030120_4706.jpeg', '2', null, '1486709941', '3', '1');
INSERT INTO `shops` VALUES ('25', '4', '猪小慧', '1', '8', '广东省,深圳市,南山区', 'zhu?chang', '阳光棕榈园', '猪小慧', '274747', '111', '/Public/Upload/Shops/25/verify/20170210032844_8881.jpeg', '/Public/Upload/Shops/25/verify/20170210032851_5844.jpeg', '/Public/Upload/Shops/25/verify/20170210032858_3975.jpeg', '/Public/Upload/Shops/25/verify/20170210032907_4117.jpeg', '/Public/Upload/Shops/25/verify/20170210032913_6244.jpeg', '2', null, '1486711707', '3', '1');

-- ----------------------------
-- Table structure for shops_albm
-- ----------------------------
DROP TABLE IF EXISTS `shops_albm`;
CREATE TABLE `shops_albm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商家相册',
  `shops_id` int(11) DEFAULT NULL COMMENT '关联shuops表中的shops_id',
  `type` tinyint(4) DEFAULT NULL COMMENT '1菜品，2推荐3环境',
  `img_path` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商家相册表';

-- ----------------------------
-- Records of shops_albm
-- ----------------------------

-- ----------------------------
-- Table structure for shop_discount
-- ----------------------------
DROP TABLE IF EXISTS `shop_discount`;
CREATE TABLE `shop_discount` (
  `shops_id` int(11) NOT NULL COMMENT '商铺id',
  `discount` double(5,2) NOT NULL COMMENT '折扣率',
  `discount_begin` int(11) DEFAULT NULL COMMENT '开始时间',
  `discount_end` int(11) DEFAULT NULL COMMENT '结束时间',
  `discount_explain` text COMMENT '使用说明',
  `discount_overdue` tinyint(1) DEFAULT NULL COMMENT '状态：=1未过期；2过期',
  PRIMARY KEY (`shops_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='优惠买单表';

-- ----------------------------
-- Records of shop_discount
-- ----------------------------
INSERT INTO `shop_discount` VALUES ('1', '9.80', '1487128920', '1494818520', '<ul><li>优惠买单</li><li>测试优惠买单</li><li>优惠买单测试内容</li></ul>', '1');
INSERT INTO `shop_discount` VALUES ('2', '8.50', '1487145235', '1487750035', '<p>测试内容；</p><p>测试说明；</p>', '1');

-- ----------------------------
-- Table structure for shop_redbag
-- ----------------------------
DROP TABLE IF EXISTS `shop_redbag`;
CREATE TABLE `shop_redbag` (
  `shops_id` int(11) NOT NULL,
  `redbag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '红包id',
  `full_money` int(11) DEFAULT NULL COMMENT '使用满额',
  `redbag_name` varchar(255) DEFAULT NULL COMMENT '红包票面标题',
  `redbag_explain` mediumtext COMMENT '红包使用说明',
  `redbag_begin` int(11) DEFAULT NULL COMMENT '红包有效期开始',
  `redbag_end` int(11) DEFAULT NULL COMMENT '红包有效期结束',
  `redbag_overdue` tinyint(1) DEFAULT '1' COMMENT '红包状态：=1未过期；2过期',
  `redbag_denomination` int(11) DEFAULT NULL COMMENT '红包面额',
  `redbag_number` int(11) DEFAULT NULL COMMENT '红包数量',
  PRIMARY KEY (`shops_id`,`redbag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='红包券表';

-- ----------------------------
-- Records of shop_redbag
-- ----------------------------
INSERT INTO `shop_redbag` VALUES ('1', '2', '150', '20元红包', '<p><strong style=\"color: rgb(102, 102, 102);\">有效期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2013.9.12 至 2017.2.28（周末、法定节假日通用）</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用时间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">11:00-14:30,17:00-21:30</span></p><p><strong style=\"color: rgb(102, 102, 102);\">预约提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">无需预约，消费高峰时可能需要等位</span></p><p><strong style=\"color: rgb(102, 102, 102);\">限购限用提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可叠加使用</span></p><p><span style=\"color: rgb(102, 102, 102);\">不兑现、不找零</span></p><p><strong style=\"color: rgb(102, 102, 102);\">包间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可用包间，条件为：必须满足包房最低消费（团购券金额计入在内）才可使用</span></p><p><strong style=\"color: rgb(102, 102, 102);\">堂食外带</strong></p><p><span style=\"color: rgb(102, 102, 102);\">仅限堂食，不提供餐前外带，餐毕未吃完可打包，需到店另付打包费1元/盒</span></p><p><strong style=\"color: rgb(102, 102, 102);\">温馨提示</strong></p><p><span style=\"color: rgb(102, 102, 102);\">团购用户只能享受的优惠为除侯位优惠折扣和会员卡折扣之外的特价菜品优惠。</span></p><p><span style=\"color: rgb(102, 102, 102);\">酒水饮料等问题，请致电商家咨询，以商家反馈为准</span></p><p><strong style=\"color: rgb(102, 102, 102);\">商家服务</strong></p><p><span style=\"color: rgb(102, 102, 102);\">免费提供50个停车位</span></p>', '1487130180', '1502768580', '1', '20', '15');
INSERT INTO `shop_redbag` VALUES ('1', '1', '100', '10元红包', '<p><strong style=\"color: rgb(102, 102, 102);\">有效期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2013.9.12 至 2017.2.28（周末、法定节假日通用）</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用时间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">11:00-14:30,17:00-21:30</span></p><p><strong style=\"color: rgb(102, 102, 102);\">预约提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">无需预约，消费高峰时可能需要等位</span></p><p><strong style=\"color: rgb(102, 102, 102);\">限购限用提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可叠加使用</span></p><p><span style=\"color: rgb(102, 102, 102);\">不兑现、不找零</span></p><p><strong style=\"color: rgb(102, 102, 102);\">包间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可用包间，条件为：必须满足包房最低消费（团购券金额计入在内）才可使用</span></p><p><strong style=\"color: rgb(102, 102, 102);\">堂食外带</strong></p><p><span style=\"color: rgb(102, 102, 102);\">仅限堂食，不提供餐前外带，餐毕未吃完可打包，需到店另付打包费1元/盒</span></p><p><strong style=\"color: rgb(102, 102, 102);\">温馨提示</strong></p><p><span style=\"color: rgb(102, 102, 102);\">团购用户只能享受的优惠为除侯位优惠折扣和会员卡折扣之外的特价菜品优惠。</span></p><p><span style=\"color: rgb(102, 102, 102);\">酒水饮料等问题，请致电商家咨询，以商家反馈为准</span></p><p><strong style=\"color: rgb(102, 102, 102);\">商家服务</strong></p><p><span style=\"color: rgb(102, 102, 102);\">免费提供50个停车位</span></p>', '1487130180', '1500090180', '1', '10', '20');
INSERT INTO `shop_redbag` VALUES ('1', '3', '250', '30元红包', '<p><strong style=\"color: rgb(102, 102, 102);\">有效期</strong></p><p><span style=\"color: rgb(102, 102, 102);\">2013.9.12 至 2017.2.28（周末、法定节假日通用）</span></p><p><strong style=\"color: rgb(102, 102, 102);\">使用时间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">11:00-14:30,17:00-21:30</span></p><p><strong style=\"color: rgb(102, 102, 102);\">预约提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">无需预约，消费高峰时可能需要等位</span></p><p><strong style=\"color: rgb(102, 102, 102);\">限购限用提醒</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可叠加使用</span></p><p><span style=\"color: rgb(102, 102, 102);\">不兑现、不找零</span></p><p><strong style=\"color: rgb(102, 102, 102);\">包间</strong></p><p><span style=\"color: rgb(102, 102, 102);\">可用包间，条件为：必须满足包房最低消费（团购券金额计入在内）才可使用</span></p><p><strong style=\"color: rgb(102, 102, 102);\">堂食外带</strong></p><p><span style=\"color: rgb(102, 102, 102);\">仅限堂食，不提供餐前外带，餐毕未吃完可打包，需到店另付打包费1元/盒</span></p><p><strong style=\"color: rgb(102, 102, 102);\">温馨提示</strong></p><p><span style=\"color: rgb(102, 102, 102);\">团购用户只能享受的优惠为除侯位优惠折扣和会员卡折扣之外的特价菜品优惠。</span></p><p><span style=\"color: rgb(102, 102, 102);\">酒水饮料等问题，请致电商家咨询，以商家反馈为准</span></p><p><strong style=\"color: rgb(102, 102, 102);\">商家服务</strong></p><p><span style=\"color: rgb(102, 102, 102);\">免费提供50个停车位</span></p>', '1487142540', '1500102540', '1', '30', '25');
INSERT INTO `shop_redbag` VALUES ('2', '1', '100', '10元红包', '<p>全年这是室内设计</p><p>或者你觉得精神</p><p>准备张家界市</p>', '1487145300', '1487750100', '1', '10', '20');
INSERT INTO `shop_redbag` VALUES ('2', '2', '200', '20元红包', '<p>全年这是室内设计</p><p>或者你觉得精神</p><p>准备张家界市</p>', '1487145420', '1508572620', '1', '20', '30');

-- ----------------------------
-- Table structure for shop_voucher
-- ----------------------------
DROP TABLE IF EXISTS `shop_voucher`;
CREATE TABLE `shop_voucher` (
  `shops_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商铺id',
  `voucher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '抵用券标识',
  `voucher_name` varchar(255) DEFAULT NULL COMMENT '抵用名称',
  `original_price` decimal(9,2) DEFAULT '0.00' COMMENT '原价',
  `voucher_rice` decimal(9,2) DEFAULT '0.00' COMMENT '抵用价',
  `voucher_number` int(11) DEFAULT NULL COMMENT '数量',
  `voucher_apply` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '适用满额金额',
  `voucher_begin` int(11) DEFAULT NULL COMMENT '开始时间',
  `voucher_end` int(11) DEFAULT NULL COMMENT '结束时间',
  `voucher_explain` text COMMENT '说明',
  `voucher_overdue` tinyint(1) DEFAULT '1' COMMENT '状态：=1未过期；2过期',
  PRIMARY KEY (`shops_id`,`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='现金券表';

-- ----------------------------
-- Records of shop_voucher
-- ----------------------------
INSERT INTO `shop_voucher` VALUES ('2', '1', '300元现金券', '300.00', '250.00', '50', '500.00', '1487001600', '1487606400', '满500元才可以使用', '1');
INSERT INTO `shop_voucher` VALUES ('2', '2', '100元现金券', '100.00', '80.00', '100', '200.00', '1487001600', '1513180800', '满200元才可以使用', '1');
INSERT INTO `shop_voucher` VALUES ('2', '3', '500元现金券', '500.00', '400.00', '45', '800.00', '1487001600', '1507910400', '满800元才可以使用；\r\n一次只能使用一张，不可叠加；', '1');
INSERT INTO `shop_voucher` VALUES ('2', '4', '200元现金券', '200.00', '160.00', '60', '300.00', '1487001600', '1487606400', '满300元才可以使用', '1');
INSERT INTO `shop_voucher` VALUES ('2', '5', '答对', '10.00', '20.00', '1', '100.00', '1487260800', '1487865600', '而是懂得', '1');

-- ----------------------------
-- Table structure for spot_menu
-- ----------------------------
DROP TABLE IF EXISTS `spot_menu`;
CREATE TABLE `spot_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '点菜单主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `shops_id` int(11) NOT NULL COMMENT '商户id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `menu_type` tinyint(1) NOT NULL COMMENT '类型：1=单品，2=套餐，3=团购',
  `menu_price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `menu_create` int(11) DEFAULT NULL COMMENT '创建时间',
  `menu_state` tinyint(1) DEFAULT NULL COMMENT '状态：1=买单，2=未买单',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='点菜表';

-- ----------------------------
-- Records of spot_menu
-- ----------------------------
INSERT INTO `spot_menu` VALUES ('1', '1', '8', '6', '1', '676.00', '1484995925', '2', '时崎狂三');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='登录表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'huzhiwei', '123456789', '1');

-- ----------------------------
-- Table structure for yy_users
-- ----------------------------
DROP TABLE IF EXISTS `yy_users`;
CREATE TABLE `yy_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(32) NOT NULL,
  `nick_name` varchar(150) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `language` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `head_img_url` varchar(255) NOT NULL,
  `power` varchar(10) NOT NULL COMMENT '权限：1普通用户，2合作伙伴，3商户',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yy_users
-- ----------------------------
INSERT INTO `yy_users` VALUES ('1', 'o1MwhxH39P_1x1DxKBZebw4_9AQ0', 'fang', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxIrEe7Yee5sfDzmvYialaich6vGwYwrxbcTbaPCQxichpnCxFD56Z0f0iaSVpBic6Giaoc8bAKwKkZLnfppyOnVN1F719/0', '0');
INSERT INTO `yy_users` VALUES ('2', 'o1MwhxGb1xYtUSQoZD9BjJNuqiNc', '？？？', '2', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/rdUuHicOwQ4u3tSJwW6NvhbvnL2OIRkRveTCcEiaUymwaGB8w394ZRoxkHFOFen3Y8ic3gCqUHKh7CpnbkBun8nrvodIZXia9Eea/0', '0');
INSERT INTO `yy_users` VALUES ('3', 'o1MwhxH39P_1x1DxKBZebw4_9AQ2', 'test', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxIrEe7Yee5sfDzmvYialaich6vGwYwrxbcTbaPCQxichpnCxFD56Z0f0iaSVpBic6Giaoc8bAKwKkZLnfppyOnVN1F719/0', '0');
INSERT INTO `yy_users` VALUES ('4', 'o1MwhxEjZw2j9qvOlqDRBKMwmJDI', '吴绍勇', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wHyL1yfB9gV62VgUxyJAPh7qZtXhP55JcpwOSYTKddQYUQ4ZUIMj55jSc4aBDY369IfGnoibNLNdSmM5yc1Lpo2ia/0', '0');
INSERT INTO `yy_users` VALUES ('5', 'o1MwhxA2VyuMKzgj5IMMH-12Pwuk', '[机智]Vincent', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxLNmM4lG91icOHjpjicePPRfe9jO9atVSyGeRQicrKoZogIrmZF3mvMibY5zpCXbxLgUd2ia0tk3OlmWrKwm0Gx3FZT9/0', '0');
INSERT INTO `yy_users` VALUES ('6', 'o1MwhxBbFmkZgWyHe02fgEsYtj6w', '鱼', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wEt7cA5S60Ftv1M7ciauyxgRxg2r28IgEiaKtDIuk6JdkU5fhxNot8S1b9Z9T5lia3wW2UwFeTpCn8FUKichPLiaKCnC/0', '0');
INSERT INTO `yy_users` VALUES ('7', 'o1MwhxFSMtEaPwG9E9WstJEqQwM4', '陶子', '0', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxIrEe7Yee5sfIAYN2CZhiat8b8ASW36VePgWAmAyDqCZy7vJic75nibJTkOG2kUkKlJlms9cxLib1W1SnbH4Vm1aYKh/0', '0');
INSERT INTO `yy_users` VALUES ('8', 'o1MwhxGPProVJb1hjJcjDRjdnkxI', '中国国际税务咨询公司', '0', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKrI23zmxoTv3tFL29FMMIN6GjXEZ3pjX4zx99L9Bibl0QPezKq6U5qtiaqmduyibHag6ibv9Iiag25iawg/0', '0');
INSERT INTO `yy_users` VALUES ('9', 'o1MwhxBUA7sF2f-EtGiGRCeAAeTs', '谢建军', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXsqaN93XdoLT1G9MPRIZ04Q122nAW57wCNP2tLHUU99gIHZc1VAKPYfSHUjDsxhfghCr1gYh93hIE3w4ZkMMtW6/0', '0');
INSERT INTO `yy_users` VALUES ('10', 'o1MwhxBzh0CrjV9bzOMlDguEh1xc', '图鹏', '1', 'zh_CN', 'Huizhou', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM71g1cz9IunqDEpKXbAuria90kKx73QLsqsrCFoCibGPpW9mHCTmLJ191c0kWEBlHiaLphfOWpwjtWag/0', '0');
INSERT INTO `yy_users` VALUES ('19', 'o1MwhxCz_BIDZ2bJUDV_cdQZiqI8', '翟冬群', '2', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxLNmM4lG91icOIgkWvTthJqxF2FibMTqLSN0qicocxfpqhE4AJ5evYGzYtJQuNN43O0pvuFF0Z60ficW6sDBszHP3aE/0', '0');
INSERT INTO `yy_users` VALUES ('12', 'o1MwhxECtVmOV8gu8bG3NzWxeVyM', 'hanking韩金 ', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wGRmXZeoszrcPyZPd8ROyUsBp7LNxRklUCVjk85ycapYmjhzoBGJ6qZTVLNT8oZqP2UPRoSAic8bic8sIvPm4mK8M/0', '0');
INSERT INTO `yy_users` VALUES ('13', 'o1MwhxJNYVQVjKTfyr18nE6lytZI', '罗彪', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wHnfXJeWxcBiaRJRibDX5ueAwBqPxV3GDpweJ1wI3XoQYGpXlNRdqIba7qDYE2Q8SEDSB4xoVBIQj9FgcUzlNd6Dq/0', '0');
INSERT INTO `yy_users` VALUES ('14', 'o1MwhxBx1qsGUNuLo_4CSv3hmgts', '美美', '2', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wE7FmtqdPCY2rNkI3BlToPInJr1ocqR2lJvSUhNJRb9X31nZb2AcLRicu3CzYh4EkUNoQPCP7Spib6TBNepj8ElMX/0', '0');
INSERT INTO `yy_users` VALUES ('15', 'o1MwhxKI1rCzpafXDlmxxz6Inpgs', '独舟', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wHKdlSvsgicR7gOsrJd8JVlicNFLhIiby5vnXFvEXjugECnKtV7icUN3kRb2iamWKEQAfcn9IVyWheicPjpQbbniaTMTlg/0', '0');
INSERT INTO `yy_users` VALUES ('16', 'o1MwhxIa0M3rrtUsqQSMSYNQfVQ4', '快乐', '1', 'zh_CN', 'Jiangmen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wEKPeZuMdWeNicPWxPBbKKBs12tS4nfyic3UesBXmlF8OaRu8IIIcm1Zd2JvgusTbeAWicTskv5bP9GA/0', '0');
INSERT INTO `yy_users` VALUES ('17', 'o1MwhxMS7Lt_gAABesokUvdRuY78', 'shy', '2', 'zh_TW', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXvicrg5WPicwnwKicH1HtonIE8pqjzsG3ul4D1SxUb288j6mzGUlOQdbYvR5ZMeuicm2FvMxiaPxTz1KnMEFjfx7ekqS/0', '0');
INSERT INTO `yy_users` VALUES ('20', 'o1MwhxCXCT39NILvQ6PGVhsO_sVU', 'hanking-asme', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxLNmM4lG91icOAl2icaicTVJawngdamgk5VpZv1zKK2eT9I4ULCWYyuT7nAGXhFBRpL7vGvDdq6lFplQiaibafmgylBX/0', '0');
INSERT INTO `yy_users` VALUES ('21', 'o1MwhxHnoTpetZL2lm3e3hurr8Mc', '圈子◎圈外', '1', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/OQtPsaM4OrpPI1wGTXnZrEoocW866hRicHhhM6WbeUvqS2nJYcLicJuGqPzJb5ic0AAxV5NT9a8LWHU7VsJDiazJhL5mrUO4icDPG/0', '0');
INSERT INTO `yy_users` VALUES ('22', 'o1MwhxP5UfPpZmwYnuiRMoRrMx9k', 'Starfish', '2', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wGEcngZ05Qsiao1mS7ia8Ab725gwjNG68gXXbmEAiaHdWibSiamDCtmxgKMqyibRDRU6SSIEhmdR0F22hqpVIickEu7Fak/0', '0');
INSERT INTO `yy_users` VALUES ('23', 'o1MwhxCv3NHHHOy6aykbG91Qz3Pw', '黄玲', '2', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wE7FmtqdPCY2uYt29DMtEIevHoavJINyWJicko4ZF5pNdS4EsCQUp5Vqt71zcULibXxuS0wjdNB1fn4El0ewDzFkA/0', '0');
INSERT INTO `yy_users` VALUES ('24', 'o1MwhxH9tIQ5e4_Da0319zkE2D6Y', '梅子', '0', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXvytStpD6Pia9e0Az06AO0BErjcXFChGibu2luLEM6DGfP8lSJIcaeFlB5GA8rAS3tSDQs8SGAsCZcnZVHS4AUCW9/0', '0');
INSERT INTO `yy_users` VALUES ('25', 'o1MwhxIUzipTGHk9v-FUEPmlCKXc', 'Stranger...  ', '2', 'zh_CN', 'Dongguan', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxLwtZ3QTLyW9sQGG305kgd7S10ynYAAAvEEiaULPfWT9QmgFDj8sw7XW5AqGKgg88SanK27mibgzX3lEsDGtkqf3I/0', '0');
INSERT INTO `yy_users` VALUES ('26', 'o1MwhxOTf2Z8eA_6UBn6JuCm1aFU', '罗 罗 ', '2', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXvIlnWxkzhaA7UmpbwW9iasmuxd2MnLSToLnGH2qmL2lNPZ9caQIbSKunoCAPibibhrBRDpZVz6PprrH3Z2Va304VX/0', '0');
INSERT INTO `yy_users` VALUES ('27', 'o1MwhxKPdFRMwd7ZtEtIXAUjZsMA', '庚戌风铃', '2', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ0OicsKRa4rn9WQ9hpOmbs92rtDiavW17EBTKK9xHiauxB8AS9icgHdiclIMic9I2vtoNaE121nRNJKGe5AnA70OS0kd7micLvyow5bc/0', '0');
INSERT INTO `yy_users` VALUES ('28', 'o1MwhxL7noaZrikvQNNVcCVEFKis', '玛利（彭丽新）', '2', 'zh_CN', 'Guangzhou', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxIfdVwiafN3XKGjTvPyMt3PU89HNOsgiaOrOGf3Wr4qvQs25pibq1fjJCYlrQic0UyXKBfKWhiakhRUyTv2gNWxfNdQp/0', '0');
INSERT INTO `yy_users` VALUES ('29', 'o1MwhxFazdwJLlypKv6gLWf9auPM', '凤栖梧桐', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/DzC5cqKT4wE7FmtqdPCY2svM718OtZdtlY6XgBdIJk2AoQqeiaKp9jzBPVZZkTCEVR4QoWo5CxFlnnTawJibTmUaiblMcH8xgu0/0', '0');
INSERT INTO `yy_users` VALUES ('30', 'o1MwhxPUMPxa3xiP4dZ-OW2CCQD8', '詹强华', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXvicrg5WPicwnwERicgjHI4NMmoZLsQMO9IZ1OYjffCiaic6rxGrGuibgCu4SgpRKpFjMVoducHQmELTnPJIcrTViazeud/0', '0');
INSERT INTO `yy_users` VALUES ('31', 'o1MwhxBU2Ol9xgjl9WlmAsNo6HZg', '徐燕玲bb', '2', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL6AiaRtUexf7J5afFqnHcryibJa9B2CxdHDv3icqqoRbBqTayVguHPM4yI1hq3uaxhH7ccic0EuGqOCRu1ibKAHGGLlcicBP9dHRuHs/0', '0');
INSERT INTO `yy_users` VALUES ('32', 'o1MwhxLJVrCD59pSUGZfZy9pF1es', '阿训', '1', 'zh_CN', 'Shenzhen', 'Guangdong', 'CN', 'http://wx.qlogo.cn/mmopen/6KcHSN9QxXvIlnWxkzhaA0lXxb3yIxAaNQUOweIgoPoGaEdNVQ49rU1A0t20FddlB8MSfibhjIpAiaq2J5JV4Jqaok7icEj0icZV/0', '0');
INSERT INTO `yy_users` VALUES ('33', 'o1MwhxCBOo5lIK9jbHfeQsbR8fhE', '再超航拍', '1', 'zh_CN', '', '', 'CN', 'http://wx.qlogo.cn/mmopen/pRXCCaX8yGrTGaoycp4DmuWrpL2QKI8Xice4RpvXokJZJjIEb64vNefPHNx9VFjCGkGfmTR3KSQzY0ABylbibocBuqVcKCVmLt/0', '0');
INSERT INTO `yy_users` VALUES ('34', 'o1MwhxAMizMURSuDKWoaSgH9semk', '赵文举', '1', 'zh_CN', 'Ili', 'Xinjiang', 'CN', 'http://wx.qlogo.cn/mmopen/mJJKqlbtrxLNmM4lG91icOEpIqibXwZvibR72ls0SM6Hf2ctLDYZkI7lib0u1ZwGApqQDNmpIFGzu8gRq8qWHQ1oEy5SvEpv9M82/0', '0');
SET FOREIGN_KEY_CHECKS=1;
