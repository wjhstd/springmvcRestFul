/*
 Navicat Premium Data Transfer

 Source Server         : The
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : testdb

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 09/05/2017 11:35:00 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `a1002`
-- ----------------------------
DROP TABLE IF EXISTS `a1002`;
CREATE TABLE `a1002` (
  `id` int(11) NOT NULL,
  `answername` varchar(255) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `qid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9la7qmitcg24x22e3dh3q9kjv` (`qid`),
  CONSTRAINT `FK9la7qmitcg24x22e3dh3q9kjv` FOREIGN KEY (`qid`) REFERENCES `q1002` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `a1002`
-- ----------------------------
BEGIN;
INSERT INTO `a1002` VALUES ('2', '456', 'lili', '1'), ('3', 'dsfk', 'faou', '1');
COMMIT;

-- ----------------------------
--  Table structure for `addresslist`
-- ----------------------------
DROP TABLE IF EXISTS `addresslist`;
CREATE TABLE `addresslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `addresslist`
-- ----------------------------
BEGIN;
INSERT INTO `addresslist` VALUES ('1', 'wangjunhui', '123456789'), ('2', 'wangjunhui', '123456789'), ('3', 'wangjunhui', '123456789'), ('4', 'wwwwjsl', '123654'), ('5', 'wwwwhkjh', '123654'), ('6', 'wwwwhkjh', '586422'), ('7', 'wangjunhui', '123456789'), ('8', 'wangjunhui', '123456789'), ('9', 'wangjunhui', '123456789'), ('10', 'wangjunhui', '123456789'), ('11', 'wangjunhui', '123456789'), ('12', 'wangjunhui', '123456789'), ('13', 'wangjunhui', '123456789'), ('14', 'wangjunhui', '123456789'), ('15', 'wangjunhui', '123456789'), ('16', 'wangjunhui', '123456789'), ('17', 'wangjunhui', '123456789'), ('18', 'wangjunhui', '123456789'), ('19', 'wangjunhui', '123456789'), ('20', 'wangjunhui', '123456789'), ('21', 'wangjunhui', '123456789'), ('22', 'wangjunhui', '123456789'), ('23', 'wangjunhui', '123456789'), ('24', 'wangjunhui', '123456789'), ('25', 'wangjunhui', '123456789'), ('26', 'wangjunhui', '123456789'), ('27', 'wangjunhui', '123456789'), ('28', 'wangjunhui', '123456789'), ('29', 'wangjunhui', '123456789'), ('30', 'wangjunhui', '123456789'), ('31', 'wangjunhui', '123456789'), ('32', 'wangjunhui', '123456789'), ('33', 'wangjunhui', '123456789');
COMMIT;

-- ----------------------------
--  Table structure for `ans501`
-- ----------------------------
DROP TABLE IF EXISTS `ans501`;
CREATE TABLE `ans501` (
  `id` int(11) NOT NULL,
  `answername` varchar(255) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `suoyin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlha0fu9fjhckh66ivbt9wxn2p` (`qid`),
  CONSTRAINT `FKlha0fu9fjhckh66ivbt9wxn2p` FOREIGN KEY (`qid`) REFERENCES `q501` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ans501`
-- ----------------------------
BEGIN;
INSERT INTO `ans501` VALUES ('1', 'java is a programming language', 'Ravi Su', '1', '0'), ('2', 'java is a platform', 'Sudhir Wong', '1', '1'), ('3', 'Servlet is an Interface', 'Jai Li', '2', '0'), ('4', 'Servlet is an API', 'Arun', '2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `answer_m2m`
-- ----------------------------
DROP TABLE IF EXISTS `answer_m2m`;
CREATE TABLE `answer_m2m` (
  `questionid` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`questionid`,`answer`),
  KEY `FKkwn39v22curkbevluik274npg` (`userid`),
  CONSTRAINT `FK7cy207rewp4u6fbkjekvuyo5` FOREIGN KEY (`questionid`) REFERENCES `question_m2m` (`id`),
  CONSTRAINT `FKkwn39v22curkbevluik274npg` FOREIGN KEY (`userid`) REFERENCES `user_m2m` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `answer_m2m`
-- ----------------------------
BEGIN;
INSERT INTO `answer_m2m` VALUES ('1', 'java is a programming language', '1'), ('1', 'java is a platform', '2'), ('2', 'servlet technology is a server side programming', '3'), ('2', 'Servlet is an Interface', '4');
COMMIT;

-- ----------------------------
--  Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `count` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `sort` char(50) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `book`
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES ('1', '高等数学', 'wjh', '100', '10000', '0.9', '教育', '高等数学就是难,就是学不会,就是不及格'), ('2', '大话设计模式', 'wjh', '200', '2000', '0.8', '计算机', '很好很好'), ('10', '英语', 'lili', '10', '1000', '0.5', '英语', 'soeasy'), ('11', '英语', 'lili', '10', '1000', '0.5', '英语', 'soeasy'), ('12', '小黄手机', 'wjjh', '13424', '12', '0.4', ' 文学', 'fgbdfhgs');
COMMIT;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', 'English'), ('2', 'science');
COMMIT;

-- ----------------------------
--  Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_no` varchar(16) NOT NULL DEFAULT '',
  `money` float(10,2) unsigned DEFAULT '0.00',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `order`
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES ('1', '1', '1509289090', '99.90'), ('2', '1', '1519289091', '290.80'), ('3', '1', '1509294321', '919.90'), ('4', '1', '1601232190', '329.90'), ('5', '1', '1503457384', '321.00'), ('6', '1', '1598572382', '342.00'), ('7', '1', '1500845727', '458.00'), ('8', '1', '1508458923', '1200.00'), ('9', '1', '1504538293', '2109.00'), ('10', '1', '1932428723', '5888.00'), ('11', '1', '2390423712', '3219.00'), ('12', '1', '4587923992', '123.00'), ('13', '1', '4095378812', '421.00'), ('14', '1', '9423890127', '678.00'), ('15', '1', '7859213249', '7689.00'), ('16', '1', '4598450230', '909.20');
COMMIT;

-- ----------------------------
--  Table structure for `q1002`
-- ----------------------------
DROP TABLE IF EXISTS `q1002`;
CREATE TABLE `q1002` (
  `qid` int(11) NOT NULL,
  `qname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `q1002`
-- ----------------------------
BEGIN;
INSERT INTO `q1002` VALUES ('1', 'nishishui?');
COMMIT;

-- ----------------------------
--  Table structure for `q501`
-- ----------------------------
DROP TABLE IF EXISTS `q501`;
CREATE TABLE `q501` (
  `id` int(11) NOT NULL,
  `qname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `q501`
-- ----------------------------
BEGIN;
INSERT INTO `q501` VALUES ('1', 'What is Java?'), ('2', 'What is Servlet?');
COMMIT;

-- ----------------------------
--  Table structure for `question_m2m`
-- ----------------------------
DROP TABLE IF EXISTS `question_m2m`;
CREATE TABLE `question_m2m` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `question_m2m`
-- ----------------------------
BEGIN;
INSERT INTO `question_m2m` VALUES ('1', 'Java是什么?'), ('2', 'Servlet是什么?');
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` bigint(20) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('2', 'wjh'), ('3', '李莉莉'), ('4', '蘑菇头'), ('5', '金刚羊');
COMMIT;

-- ----------------------------
--  Table structure for `student_course`
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `student_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  KEY `FKejrkh4gv8iqgmspsanaji90ws` (`course_id`),
  KEY `FKq7yw2wg9wlt2cnj480hcdn6dq` (`student_id`),
  CONSTRAINT `FKejrkh4gv8iqgmspsanaji90ws` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKq7yw2wg9wlt2cnj480hcdn6dq` FOREIGN KEY (`student_id`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student_course`
-- ----------------------------
BEGIN;
INSERT INTO `student_course` VALUES ('2', '2'), ('2', '1'), ('3', '1'), ('4', '1'), ('5', '1'), ('3', '2'), ('4', '2'), ('5', '2');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('2', '李莉莉', '138'), ('3', 'asgdh', '42'), ('4', 'fuc*', '076'), ('10', 'lituotuo', '123654'), ('11', 'wangduotuo', '586521'), ('16', '王军会', '123'), ('17', '陈翔六个蛋', '1234566'), ('18', '鸡尾酒', '2343');
COMMIT;

-- ----------------------------
--  Table structure for `user_m2m`
-- ----------------------------
DROP TABLE IF EXISTS `user_m2m`;
CREATE TABLE `user_m2m` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_m2m`
-- ----------------------------
BEGIN;
INSERT INTO `user_m2m` VALUES ('1', '张小哥', 'user2@gmail.com', 'usa'), ('2', '王达叔', 'user1@gmail.com', 'China'), ('3', 'John Milton', 'john.su@gmail.com', 'usa'), ('4', 'Ashok Kumar', 'as-top@gmail.com', 'China');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
