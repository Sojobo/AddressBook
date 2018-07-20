/*
Navicat MySQL Data Transfer

Source Database       : addressbook

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-20 01:33:02
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
  `phone_home` varchar(55) DEFAULT NULL,
  `phone_work` varchar(55) DEFAULT NULL,
  `phone_mobile` varchar(55) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Aaron', 'Marshall', '100 Potato Avenue', 'LS29 0PD', '01387 542542', '0800 118118', '07590548669', 'aaron.otaku@gmail.com', '13/06/1988');
INSERT INTO `contacts` VALUES ('4', 'Kelly', null, '12 Lorem Ipsum', 'LR5 9XT', null, null, null, 'brandyzomb@gmail.com', null);
INSERT INTO `contacts` VALUES ('5', 'Kevin', null, null, null, null, null, null, 'ipodude500@gmail.com', null);
INSERT INTO `contacts` VALUES ('6', 'Joe', 'Matthews', null, null, null, null, null, 'joewalton001@gmail.com', null);
INSERT INTO `contacts` VALUES ('8', 'Ben', 'McDonald', null, null, null, null, null, null, null);
INSERT INTO `contacts` VALUES ('9', 'Ben', 'Roper', '64 Glasgow Road', 'DG1 1GH', null, null, null, 'northernshadow@hotmail.com', null);
INSERT INTO `contacts` VALUES ('10', 'Connery', 'Marshall', null, null, null, null, null, null, null);
INSERT INTO `contacts` VALUES ('14', 'Johan', null, null, null, null, null, null, 'johan.sjuol@gmail.com', null);
INSERT INTO `contacts` VALUES ('16', 'Test', 'McTestington', null, null, null, null, null, 'Gaming5764@gmail.com', '2018-09-07');
