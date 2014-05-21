/*
Navicat MySQL Data Transfer

Source Server         : bjf
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-05-21 18:11:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(20) collate utf8_unicode_ci NOT NULL,
  `tel` varchar(11) collate utf8_unicode_ci NOT NULL,
  `id_card` varchar(18) collate utf8_unicode_ci NOT NULL,
  `book_time` varchar(50) collate utf8_unicode_ci NOT NULL,
  `operator_id` int(10) NOT NULL,
  `room_number` varchar(50) collate utf8_unicode_ci NOT NULL,
  `deposit` float(6,0) NOT NULL COMMENT '订金',
  `timestamp` varchar(20) collate utf8_unicode_ci NOT NULL default '该预定生成的时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for `food`
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` tinyint(10) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `price` float(6,0) NOT NULL,
  `season` enum('冬','秋','夏','春') collate utf8_unicode_ci NOT NULL,
  `discount` tinyint(2) NOT NULL default '10',
  `pic_url` varchar(200) collate utf8_unicode_ci NOT NULL,
  `delmark` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of food
-- ----------------------------

-- ----------------------------
-- Table structure for `meeting`
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting` (
  `id` int(10) NOT NULL auto_increment,
  `theme` varchar(50) collate utf8_unicode_ci NOT NULL,
  `time` varchar(20) collate utf8_unicode_ci NOT NULL,
  `description` varchar(200) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO meeting VALUES ('1', '开会', '2013', '开会');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(50) collate utf8_unicode_ci NOT NULL,
  `published` varchar(20) collate utf8_unicode_ci NOT NULL,
  `content` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO news VALUES ('1', '23', '2013', 'sdfsafaf');

-- ----------------------------
-- Table structure for `operator`
-- ----------------------------
DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator` (
  `id` int(10) NOT NULL auto_increment,
  `user_name` varchar(20) collate utf8_unicode_ci NOT NULL,
  `pwd` varchar(64) collate utf8_unicode_ci NOT NULL,
  `gender` varchar(10) collate utf8_unicode_ci default 'female',
  `url` varchar(50) collate utf8_unicode_ci default NULL,
  `mail` varchar(20) collate utf8_unicode_ci NOT NULL,
  `user_type` char(1) collate utf8_unicode_ci NOT NULL default '0' COMMENT '管理员类型',
  `login_time` varchar(20) collate utf8_unicode_ci default NULL,
  `delmark` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO operator VALUES ('2', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'female', '/img/admin/head.jpg', '213123@qq.com', '1', '2014-05-21 14:20:20', '0');
INSERT INTO operator VALUES ('6', '12345678', '202cb962ac59075b964b07152d234b70', 'female', '/img/admin/1400567529500.jpg', '23123', '0', '2014-05-20 14:32:10', '0');
INSERT INTO operator VALUES ('8', 'bujiangfeng1', 'e10adc3949ba59abbe56e057f20f883e', 'female', '/img/admin/head.jpg', '213123@qq.com', '1', '0000-00-00 00:00:00', '1');
INSERT INTO operator VALUES ('9', 'wertyui', '1b15ebdbb483c17fbf73e994a5de8fbe', 'female', '/img/food/1400053125269.png', '213123@qq.com', '0', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('10', 'sfsghk', '41fa5107545bf8e5f23e6a98032dc0f1', 'female', '/img/food/1400053232155.jpg', 'm213123@qq.comale', '0', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('11', '456789', '4428c6c474502e61151877825bb41961', 'female', '/img/food/1400053582134.png', 'male213123@qq.com', '0', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `recruitment`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci default NULL,
  `salary` float(6,0) default NULL,
  `people_number` int(10) default NULL,
  `description` varchar(500) collate utf8_unicode_ci default NULL,
  `published` varchar(20) collate utf8_unicode_ci default NULL COMMENT '发布时间',
  `delmark` char(1) collate utf8_unicode_ci default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruitment
-- ----------------------------
INSERT INTO recruitment VALUES ('1', 'å??å?°æ?¹æ??æ?¦æ³?', '0', '0', 'è¾?å?¥å??å®¹â?¦å??æ?¯è??è?¬æ?¯è??è?¬', '2014-05-21 12:35:12', '0');
INSERT INTO recruitment VALUES ('2', 'å??å?°æ?¹æ??æ?¦æ³?', '0', '0', 'è¾?å?¥å??å®¹â?¦å??æ?¯è??è?¬æ?¯è??è?¬', '2014-05-21 12:37:09', '0');
INSERT INTO recruitment VALUES ('3', '%E5%95%8A%E5%88%86%E6%89%93%E5%8F%91', '0', '0', 'è¾?å?¥å??å®¹â?¦å²?ç??å??æ?¾', '2014-05-21 12:40:40', '0');
INSERT INTO recruitment VALUES ('4', '????', '0', '0', 'è¾?å?¥å??å®¹â?¦å²?ç??å??æ?¾', '2014-05-21 12:42:35', '0');
INSERT INTO recruitment VALUES ('5', '????', '0', '0', 'è¾?å?¥å??å®¹â?¦å²?ç??å??æ?¾', '2014-05-21 12:43:46', '0');
INSERT INTO recruitment VALUES ('6', '?????', '0', '0', 'è¾?å?¥å??å®¹â?¦æ?¯å??æ?¯è??è?¬æ£®ç??', '2014-05-21 12:48:20', '0');
INSERT INTO recruitment VALUES ('7', '??????', '0', '0', 'è¾?å?¥å??å®¹â?¦å?°å¤?æ??æ??ç®?', '2014-05-21 12:50:01', '0');
INSERT INTO recruitment VALUES ('8', '?????', '0', '0', '°¡µÄ·¢µÄÈø·Ò', '2014-05-21 12:51:55', '0');
INSERT INTO recruitment VALUES ('9', '??????', '0', '0', 'è¾?å?¥å??å®¹â?¦æ?¯è??è?¬æ?¯è??è?¬æ?¯è??è?¬æ£®ç??', '2014-05-21 12:52:43', '0');
INSERT INTO recruitment VALUES ('10', '?????', '0', '0', '????…????', '2014-05-21 12:55:38', '0');
INSERT INTO recruitment VALUES ('11', '斯蒂芬斯蒂芬森的', '0', '0', '输入内容…适当放松放松的', '2014-05-21 13:08:56', '0');
INSERT INTO recruitment VALUES ('12', '萨芬萨法是分', '0', '0', '输入内容…使得该发生大幅', '2014-05-21 13:12:31', '0');
INSERT INTO recruitment VALUES ('13', 'afdsafasdfa ', '123', '123', '输入内容…sdfa', '2014-05-21 14:39:06', '0');
INSERT INTO recruitment VALUES ('14', 'afdsafasdfa ', '123', '123', '输入内容…sdfa', '2014-05-21 14:39:08', '0');
INSERT INTO recruitment VALUES ('15', 'afdsafasdfa ', '123', '123', '输入内容…sdfa', '2014-05-21 14:39:43', '0');
INSERT INTO recruitment VALUES ('17', '2q3w4e5678', '123', '123', '输入内容…adsf afas', '2014-05-21 14:40:24', '0');
INSERT INTO recruitment VALUES ('18', 'qwe12', '34', '23', '输入内容…2342342', '2014-05-21 14:40:36', '0');
INSERT INTO recruitment VALUES ('19', '12345678', '234567', '23', '输入内容…23456789', '2014-05-21 14:46:15', '0');

-- ----------------------------
-- Table structure for `room_info`
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `id` int(10) NOT NULL,
  `type_id` tinyint(2) NOT NULL,
  `state` enum('none','pause','check','book') collate utf8_unicode_ci NOT NULL default 'none' COMMENT '空房，暂停使用 , 已入住，已预订',
  `book_time` varchar(20) collate utf8_unicode_ci default NULL,
  `delmark` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO room_info VALUES ('1', '23', 'none', '2013', '0');

-- ----------------------------
-- Table structure for `room_type`
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `type` varchar(20) collate utf8_unicode_ci NOT NULL COMMENT '一室一卫',
  `price` float(6,0) NOT NULL,
  `discount` tinyint(2) NOT NULL COMMENT '折扣1~10',
  `description` varchar(500) collate utf8_unicode_ci NOT NULL,
  `pic_url` varchar(200) collate utf8_unicode_ci default NULL,
  `delmark` char(1) collate utf8_unicode_ci default '1' COMMENT '0,1已删除，未删除',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO room_type VALUES ('1', '豪华', '1', '1333', '7', '好房间', null, '0');
