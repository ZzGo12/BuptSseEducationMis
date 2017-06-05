/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : buptsseeducationmis

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-06-05 09:50:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `controlMIS` char(1) NOT NULL,
  `nowTerm` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'ZzGo', '123456', '0', '2017年秋');

-- ----------------------------
-- Table structure for `classroom`
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `galleryful` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', '教三', '237', '60');
INSERT INTO `classroom` VALUES ('2', '教一', '101', '59');
INSERT INTO `classroom` VALUES ('5', '教二', '511', '33');
INSERT INTO `classroom` VALUES ('6', '教二', '319', '333');
INSERT INTO `classroom` VALUES ('7', '教三', '245', '33');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `term` char(10) NOT NULL,
  `day` int(11) DEFAULT NULL,
  `startTime` int(11) DEFAULT NULL,
  `endTime` int(11) DEFAULT NULL,
  `startWeek` int(11) DEFAULT NULL,
  `endWeek` int(11) DEFAULT NULL,
  `tno` char(10) NOT NULL,
  `classroomId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', '深度学习11', '3', '24', '2017年春', '1', '1', '4', '1', '16', '2016140591', '1');
INSERT INTO `course` VALUES ('3', '深度学习1', '3', '24', '2017年春', '1', '1', '4', '1', '16', '2016140591', '2');
INSERT INTO `course` VALUES ('4', '深度学习1', '3', '24', '2017年春', '1', '1', '4', '1', '16', '2016140591', '2');
INSERT INTO `course` VALUES ('5', '深度学习1', '3', '24', '2017年春', '1', '1', '4', '1', '16', '2016140591', '2');
INSERT INTO `course` VALUES ('6', '深度学习1', '3', '24', '2017年春', '1', '1', '4', '1', '16', '2016140591', '2');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `no` char(10) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `name` char(5) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2016140591', '123456', '郑文', '男', '19', '软件学院', '35');
INSERT INTO `student` VALUES ('2016140592', '123456', '钟琛', '男', '22', '软件学院', '100');

-- ----------------------------
-- Table structure for `student_course`
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------

-- ----------------------------
-- Table structure for `student_course_detail`
-- ----------------------------
DROP TABLE IF EXISTS `student_course_detail`;
CREATE TABLE `student_course_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) NOT NULL,
  `scId` int(11) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `no` char(10) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `name` char(5) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2016140000', '123456789', 'test', '女', '11', '网络技术研究院');
INSERT INTO `teacher` VALUES ('2016140591', '123456', 'ZzGo', '男', '19', '软件学院');
