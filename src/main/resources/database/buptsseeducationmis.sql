/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : buptsseeducationmis

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-06-12 11:45:38
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
INSERT INTO `admin` VALUES ('1', 'ZzGo', '123456', '1', '2017年春');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('8', '教一', '101', '5');
INSERT INTO `classroom` VALUES ('9', '教二', '201', '8');
INSERT INTO `classroom` VALUES ('10', '教二', '240', '6');
INSERT INTO `classroom` VALUES ('11', '教二', '301', '10');
INSERT INTO `classroom` VALUES ('12', '教二', '339', '20');
INSERT INTO `classroom` VALUES ('13', '教二', '410', '30');
INSERT INTO `classroom` VALUES ('14', '教三', '211', '10');
INSERT INTO `classroom` VALUES ('15', '教三', '308', '4');
INSERT INTO `classroom` VALUES ('16', '教三', '339', '6');
INSERT INTO `classroom` VALUES ('17', '教三', '419', '3');
INSERT INTO `classroom` VALUES ('18', '教三', '511', '4');
INSERT INTO `classroom` VALUES ('19', '教四', '202', '10');
INSERT INTO `classroom` VALUES ('20', '教四', '203', '5');
INSERT INTO `classroom` VALUES ('21', '教四', '238', '10');
INSERT INTO `classroom` VALUES ('22', '教四', '302', '3');
INSERT INTO `classroom` VALUES ('23', '教四', '313', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('9', '数值与符号计算', '3', '24', '2017年春', '3', '5', '7', '1', '16', '2012001216', '8');
INSERT INTO `course` VALUES ('10', '概率论与随机过程', '3', '24', '2017年秋', '2', '1', '3', '2', '16', '2012001216', '22');
INSERT INTO `course` VALUES ('11', '软件测试技术', '2', '16', '2017年春', '1', '3', '4', '1', '16', '2016140591', '8');
INSERT INTO `course` VALUES ('12', '面向对象系统的分析与设计', '2', '16', '2017年春', '2', '5', '6', '1', '16', '2016140591', '8');
INSERT INTO `course` VALUES ('13', '信息和网络安全', '2', '16', '2017年春', '4', '5', '6', '1', '16', '2016140591', '11');
INSERT INTO `course` VALUES ('14', '人工智能', '2', '16', '2017年春', '5', '5', '6', '1', '16', '2016140591', '8');
INSERT INTO `course` VALUES ('15', '软件工程实训-计算机网络', '2', '16', '2017年春', '2', '3', '4', '1', '16', '2016140591', '16');
INSERT INTO `course` VALUES ('16', '软件工程实训-软件测试', '2', '16', '2017年春', '4', '3', '4', '1', '16', '2016140591', '8');
INSERT INTO `course` VALUES ('17', '软件工程实训-通信软件', '2', '16', '2017年春', '4', '1', '2', '1', '16', '2016140591', '8');
INSERT INTO `course` VALUES ('18', '软件工程实训-信息系统', '2', '16', '2017年春', '1', '5', '6', '1', '16', '2016140591', '14');
INSERT INTO `course` VALUES ('19', '软件过程改进', '2', '16', '2017年春', '2', '3', '4', '1', '16', '2016140591', '13');
INSERT INTO `course` VALUES ('20', 'UNIX环境高级编程', '2', '16', '2017年春', '5', '5', '6', '1', '16', '2016140591', '14');
INSERT INTO `course` VALUES ('21', '信息融合技术', '2', '16', '2017年春', '4', '3', '4', '1', '16', '2012001213', '19');
INSERT INTO `course` VALUES ('22', '研究生英语科技写作', '1', '8', '2017年春', '1', '7', '8', '1', '8', '2012001213', '8');
INSERT INTO `course` VALUES ('23', '研究生英语职场交流', '1', '8', '2017年春', '2', '5', '6', '1', '8', '2012001213', '19');
INSERT INTO `course` VALUES ('24', '研究生英语国际会议交流', '1', '8', '2017年春', null, null, null, null, null, '2012001213', null);
INSERT INTO `course` VALUES ('25', '研究生英语公共演讲', '1', '8', '2017年春', null, null, null, null, null, '2012001213', null);
INSERT INTO `course` VALUES ('26', '网页设计与制作', '2', '16', '2017年春', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('27', 'XML与Web Service', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('28', '网络软件设计（英语）', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('29', '移动计算中的软件工程', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('30', '数据仓库与知识发现', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('31', '数据库系统设计与开发', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);
INSERT INTO `course` VALUES ('32', '软件体系结构设计与应用', '2', '16', '2017年秋', null, null, null, null, null, '2016140591', null);

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
INSERT INTO `student` VALUES ('2014145678', '123456', '刘一', '男', '20', '计算机学院', '100');
INSERT INTO `student` VALUES ('2014145679', '123456', '陈二', '男', '20', '计算机学院', '100');
INSERT INTO `student` VALUES ('2014145680', '123456', '张三', '男', '21', '计算机学院', '100');
INSERT INTO `student` VALUES ('2014145681', '123456', '李四', '男', '23', '自动化学院', '100');
INSERT INTO `student` VALUES ('2014145682', '123456', '王五', '女', '25', '自动化学院', '100');
INSERT INTO `student` VALUES ('2014145683', '123456', '赵六', '女', '23', '自动化学院', '100');
INSERT INTO `student` VALUES ('2015142239', '123456', '孙琦', '女', '21', '人文学院', '100');
INSERT INTO `student` VALUES ('2015142240', '123456', '周霸', '女', '23', '人文学院', '100');
INSERT INTO `student` VALUES ('2015142243', '123456', '张琪琪', '女', '23', '理学院', '100');
INSERT INTO `student` VALUES ('2016140589', '123456', '王浩', '男', '22', '理学院', '100');
INSERT INTO `student` VALUES ('2016140590', '123456', '李航', '男', '23', '人文学院', '100');
INSERT INTO `student` VALUES ('2016140591', '123456', '冯橘', '男', '21', '软件学院', '100');
INSERT INTO `student` VALUES ('2016140592', '123456', '钟春', '男', '22', '软件学院', '100');

-- ----------------------------
-- Table structure for `student_course`
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) NOT NULL,
  `sno` char(10) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('12', '14', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('13', '10', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('14', '18', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('15', '22', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('16', '11', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('17', '23', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('18', '9', '2016140591', '2017-06-12');
INSERT INTO `student_course` VALUES ('19', '10', '2016140592', '2017-06-12');
INSERT INTO `student_course` VALUES ('20', '16', '2016140592', '2017-06-12');
INSERT INTO `student_course` VALUES ('21', '20', '2016140592', '2017-06-12');
INSERT INTO `student_course` VALUES ('22', '12', '2016140592', '2017-06-12');
INSERT INTO `student_course` VALUES ('23', '9', '2016140592', '2017-06-12');
INSERT INTO `student_course` VALUES ('24', '10', '2016140589', '2017-06-12');
INSERT INTO `student_course` VALUES ('25', '9', '2016140589', '2017-06-12');
INSERT INTO `student_course` VALUES ('26', '16', '2016140589', '2017-06-12');
INSERT INTO `student_course` VALUES ('27', '13', '2016140589', '2017-06-12');
INSERT INTO `student_course` VALUES ('28', '17', '2016140589', '2017-06-12');

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
INSERT INTO `teacher` VALUES ('2000140001', '123456', '周谦伟', '男', '32', '网络技术研究院');
INSERT INTO `teacher` VALUES ('2000140002', '123456', '王康航', '男', '31', '网络技术研究院');
INSERT INTO `teacher` VALUES ('2000140003', '123456', '唐祥爽', '男', '30', '网络技术研究院');
INSERT INTO `teacher` VALUES ('2009130126', '123456', '武其艳', '男', '33', '网络技术研究院');
INSERT INTO `teacher` VALUES ('2009130127', '123456', '徐荣磊', '男', '31', '计算机学院');
INSERT INTO `teacher` VALUES ('2009130128', '123456', '周思贵', '男', '27', '计算机学院');
INSERT INTO `teacher` VALUES ('2009130129', '123456', '陈粤柠', '女', '26', '计算机学院');
INSERT INTO `teacher` VALUES ('2010120021', '123456', '刘海思', '女', '27', '计算机学院');
INSERT INTO `teacher` VALUES ('2010120022', '123456', '林朝茜', '女', '28', '计算机学院');
INSERT INTO `teacher` VALUES ('2010120023', '123456', '高连中', '女', '29', '软件学院');
INSERT INTO `teacher` VALUES ('2010120024', '123456', '杨春凡', '女', '30', '软件学院');
INSERT INTO `teacher` VALUES ('2010120025', '123456', '刘建昌', '男', '40', '软件学院');
INSERT INTO `teacher` VALUES ('2010120028', '123456', '杨海子', '男', '37', '自动化学院');
INSERT INTO `teacher` VALUES ('2012001213', '123456', '刘桂思', '女', '45', '人文学院');
INSERT INTO `teacher` VALUES ('2012001216', '123456', '赖若芳', '女', '32', '理学院');
INSERT INTO `teacher` VALUES ('2016140591', '123456', '郑怂掏', '男', '38', '软件学院');
