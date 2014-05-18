/*
Navicat MySQL Data Transfer

Source Server         : bjf
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-05-18 12:59:12
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meeting
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO operator VALUES ('2', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'female', null, '213123@qq.com', '1', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('3', 'bujiangfeng2', 'e10adc3949ba59abbe56e057f20f883e', 'female', null, '3034123@qq.com', '1', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('4', 'bujiangfeng3', 'e10adc3949ba59abbe56e057f20f883e', 'female', null, '3034123@qq.com', '1', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('6', '12345678', 'e10adc3949ba59abbe56e057f20f883e', 'female', null, '123@124.com', '0', '2014-05-15 09:18:32', '0');
INSERT INTO operator VALUES ('8', 'bujiangfeng1', 'e10adc3949ba59abbe56e057f20f883e', 'female', null, '213123@qq.com', '1', '0000-00-00 00:00:00', '1');
INSERT INTO operator VALUES ('9', 'wertyui', '1b15ebdbb483c17fbf73e994a5de8fbe', 'wertfyui', '/img/food/1400053125269.png', 'male', '0', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('10', 'sfsghk', '41fa5107545bf8e5f23e6a98032dc0f1', 'ghgkjl', '/img/food/1400053232155.jpg', 'male', '0', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('11', '456789', '4428c6c474502e61151877825bb41961', '23456789', '/img/food/1400053582134.png', 'male', '0', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('12', '2345678io', '5490fe4696c9fcedd81a311e591e1a07', 'ertyuiop', '/img/food/1400055047169.png', 'male', '1', '0000-00-00 00:00:00', '0');
INSERT INTO operator VALUES ('13', '2345678io', 'e10adc3949ba59abbe56e057f20f883e', 'ertyuiop', '/img/admin/1400055623217.png', 'male', '1', '0000-00-00 00:00:00', '0');

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
  `id` tinyint(10) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `salary` float(6,0) default NULL,
  `people_number` tinyint(2) NOT NULL,
  `description` varchar(500) collate utf8_unicode_ci NOT NULL,
  `published` varchar(20) collate utf8_unicode_ci NOT NULL COMMENT '发布时间',
  `delmark` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruitment
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of room_type
-- ----------------------------
