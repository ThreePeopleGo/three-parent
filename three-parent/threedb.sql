/*
Navicat MySQL Data Transfer

Source Server         : 蔡得利
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : threedb

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-02-16 11:10:43
*/
/* 用户表 */
DROP TABLE IF EXISTS `back_user`;
CREATE TABLE `back_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(255) NOT NULL COMMENT '密码',
  `status` varchar(10) NOT NULL COMMENT '状态 -1删除 1审核通过 0 待审核  2审核不通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 角色表 */
DROP TABLE IF EXISTS `back_role`;
CREATE TABLE `back_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 权限表 */
DROP TABLE IF EXISTS `back_power`;
CREATE TABLE `back_power` (
  `power_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(255) DEFAULT NULL COMMENT '权限名',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `parentid` bigint(20) NOT NULL COMMENT '父权限id',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 用户角色中间表 */
DROP TABLE IF EXISTS `back_user_role`;
CREATE TABLE `back_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 角色权限中间表 */
DROP TABLE IF EXISTS `back_role_power`;
CREATE TABLE `back_role_power` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `power_id` bigint(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




