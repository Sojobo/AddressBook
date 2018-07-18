/*
Navicat MySQL Data Transfer

Source Server         : GTA V Life
Source Server Version : 50718
Source Host           : 66.70.180.161:7331
Source Database       : addressbook

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-18 19:34:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone_home` int(255) DEFAULT NULL,
  `phone_work` int(255) DEFAULT NULL,
  `phone_mobile` int(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Aaron', 'Marshall', '100 Potato Avenue', 'LS29 0PD', '1387524524', null, null, 'aaron.otaku@gmail.com', '1988-06-13');
INSERT INTO `contacts` VALUES ('2', 'George', null, '64 Glasgow Road', 'DG1 1GH', null, null, null, 'george@email.com', null);
INSERT INTO `contacts` VALUES ('3', 'Chris', null, '12 Lorem Ipsum', 'LR5 9XT', null, null, null, null, null);
