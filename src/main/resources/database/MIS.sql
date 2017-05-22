# 创建数据库
CREATE DATABASE buptsseeducationmis;
USE buptsseeducationmis;
# 创建表
# 学生表
CREATE TABLE student (
  no     CHAR(10)     NOT NULL PRIMARY KEY,
  pwd    VARCHAR(255) NOT NULL,
  name   CHAR(5)      NOT NULL,
  sex    CHAR(1),
  age    TINYINT,
  dept   VARCHAR(255) NOT NULL,
  credit INT          NOT NULL
);
# 教师表
CREATE TABLE teacher (
  no   CHAR(10)     NOT NULL PRIMARY KEY,
  pwd  VARCHAR(255) NOT NULL,
  name CHAR(5)      NOT NULL,
  sex  CHAR(1),
  age  TINYINT,
  dept VARCHAR(255) NOT NULL
);
# 管理员表
CREATE TABLE admin (
  id         INT          NOT NULL PRIMARY KEY,
  username   VARCHAR(255) NOT NULL,
  password   VARCHAR(255) NOT NULL,
  controlMIS CHAR(1)      NOT NULL
);
# 教室表
CREATE TABLE classroom (
  id         INT         NOT NULL PRIMARY KEY,
  name       VARCHAR(10) NOT NULL,
  address    VARCHAR(20) NOT NULL,
  galleryful INT         NOT NULL
);
# 课程表
CREATE TABLE course (
  id          INT         NOT NULL PRIMARY KEY,
  name        VARCHAR(20) NOT NULL,
  credit      INT         NOT NULL,
  period      INT         NOT NULL,
  term        CHAR(10)    NOT NULL,
  tno         CHAR(10)    NOT NULL,
  classroomId INT         NOT NULL
);
# 学生选课表
CREATE TABLE student_course (
  id  INT      NOT NULL PRIMARY KEY,
  sno CHAR(10) NOT NULL
);
# 学生选课详情表
CREATE TABLE student_course_detail (
  id   INT  NOT NULL PRIMARY KEY,
  cId  INT  NOT NULL,
  scId INT  NOT NULL,
  time DATE NOT NULL
);