/*
Navicat MySQL Data Transfer

Source Server         : cms
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : 1710d

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-10 23:08:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cus_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `cus_idCard` varchar(255) DEFAULT NULL COMMENT '客户身份证',
  `room_id` int(11) DEFAULT NULL COMMENT '客房ID',
  `people_number` int(11) DEFAULT NULL COMMENT '入住人数',
  `cus_date` date DEFAULT NULL COMMENT '入住日期',
  `leace_date` date DEFAULT NULL COMMENT '预退房日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', '小红', '123456781234567899', '2', '2', '2020-03-04', '2020-03-06');
INSERT INTO `t_customer` VALUES ('2', '小绿', '123456789166666666', '4', '1', '2020-04-06', '2020-04-07');
INSERT INTO `t_customer` VALUES ('3', '小粉', '123456789123445555', '5', '1', '2020-04-03', '2020-04-07');
INSERT INTO `t_customer` VALUES ('4', '小粉', '123456789123456712', '6', '4', '2020-04-03', '2020-04-07');

-- ----------------------------
-- Table structure for t_guest_room
-- ----------------------------
DROP TABLE IF EXISTS `t_guest_room`;
CREATE TABLE `t_guest_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_number` varchar(255) DEFAULT NULL COMMENT '客房编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '客房单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guest_room
-- ----------------------------
INSERT INTO `t_guest_room` VALUES ('1', '1001', '200.00');
INSERT INTO `t_guest_room` VALUES ('2', '1002', '200.00');
INSERT INTO `t_guest_room` VALUES ('3', '2001', '230.00');
INSERT INTO `t_guest_room` VALUES ('4', '2004', '240.00');
INSERT INTO `t_guest_room` VALUES ('5', '3001', '250.00');
INSERT INTO `t_guest_room` VALUES ('6', '3022', '130.00');
INSERT INTO `t_guest_room` VALUES ('7', '3013', '150.00');
