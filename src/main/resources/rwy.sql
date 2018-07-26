/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : rwy

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 26/07/2018 23:13:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rwy_log
-- ----------------------------
DROP TABLE IF EXISTS `rwy_log`;
CREATE TABLE `rwy_log`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `time` datetime(0) DEFAULT NULL COMMENT '时间',
  `icp` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网吧问题',
  `contact` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `QQ` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'QQ',
  `cause` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '导致原因',
  `solution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '解决方案',
  `sop` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_log
-- ----------------------------
INSERT INTO `rwy_log` VALUES (1, 2, '工作日志', '2018-07-21 22:28:20', '重新安装龙管家，需要36位注册码', '杜', '17313126301', '4387476', '重新安装龙管家', '登录5.0中心，根据网吧提供的编号注册36位注册码', 'web');

-- ----------------------------
-- Table structure for rwy_menu
-- ----------------------------
DROP TABLE IF EXISTS `rwy_menu`;
CREATE TABLE `rwy_menu`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `priority` int(255) DEFAULT NULL COMMENT '菜单排序',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  `parentid` int(11) DEFAULT NULL COMMENT '父菜单id',
  `menuname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_menu
-- ----------------------------
INSERT INTO `rwy_menu` VALUES (1, '', 'fa fa-home', 1, 1, NULL, '系统管理');
INSERT INTO `rwy_menu` VALUES (2, 'home/home', '', 1, 1, 1, '用户管理');
INSERT INTO `rwy_menu` VALUES (3, NULL, 'fa fa-mortar-board', 2, 2, NULL, '日志管理');
INSERT INTO `rwy_menu` VALUES (4, '/log/mylog', NULL, 1, 1, 2, '我的日志');

-- ----------------------------
-- Table structure for rwy_role
-- ----------------------------
DROP TABLE IF EXISTS `rwy_role`;
CREATE TABLE `rwy_role`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `available` bit(1) DEFAULT NULL COMMENT '1、启用 2、禁用',
  `name` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `roleCode` int(11) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_role
-- ----------------------------
INSERT INTO `rwy_role` VALUES (1, b'1', '管理员', 1);
INSERT INTO `rwy_role` VALUES (2, b'1', '成员', 2);

-- ----------------------------
-- Table structure for rwy_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `rwy_role_menu`;
CREATE TABLE `rwy_role_menu`  (
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `menuid` int(11) DEFAULT NULL COMMENT '菜单id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_role_menu
-- ----------------------------
INSERT INTO `rwy_role_menu` VALUES (1, 1);
INSERT INTO `rwy_role_menu` VALUES (1, 2);
INSERT INTO `rwy_role_menu` VALUES (1, 3);
INSERT INTO `rwy_role_menu` VALUES (1, 4);
INSERT INTO `rwy_role_menu` VALUES (2, 3);
INSERT INTO `rwy_role_menu` VALUES (2, 4);

-- ----------------------------
-- Table structure for rwy_user
-- ----------------------------
DROP TABLE IF EXISTS `rwy_user`;
CREATE TABLE `rwy_user`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `loginname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录名',
  `loginpassword` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录密码',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_user
-- ----------------------------
INSERT INTO `rwy_user` VALUES (1, 'admin', '123456', 1);
INSERT INTO `rwy_user` VALUES (2, 'dusheng', '123456', 2);

SET FOREIGN_KEY_CHECKS = 1;
