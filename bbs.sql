/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-07-11 21:24:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `context` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'Hello world', 'context_test', '2017-07-09', '1');
INSERT INTO `article` VALUES ('2', '一篇新文章2017.7.11', '这是我的内容。这是我的内容。这是我的内容。这是我的内容。\r\n啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈啊哈哈哈', '2017-07-11', '3');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('3', 'see you', '2017-07-11', '3', '1');
INSERT INTO `comment` VALUES ('4', 'see you next', '2017-07-11', '3', '1');
INSERT INTO `comment` VALUES ('5', 'see you see me', '2017-07-11', '3', '1');
INSERT INTO `comment` VALUES ('6', 'we are toghter', '2017-07-11', '3', '1');
INSERT INTO `comment` VALUES ('7', '啊哈哈啊', '2017-07-11', '3', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', 'a');
INSERT INTO `user` VALUES ('2', 'b', 'b');
INSERT INTO `user` VALUES ('3', '曹宇', 'caoniezi');
