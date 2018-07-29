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

 Date: 29/07/2018 20:02:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rwy_log
-- ----------------------------
DROP TABLE IF EXISTS `rwy_log`;
CREATE TABLE `rwy_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `time` datetime(0) DEFAULT NULL COMMENT '时间',
  `icaddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网吧地区',
  `icnum` bigint(20) DEFAULT NULL COMMENT '网吧编号',
  `icp` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网吧问题',
  `contact` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `QQ` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'QQ',
  `cause` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '导致原因',
  `solution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '解决方案',
  `sop` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题来源',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_log
-- ----------------------------
INSERT INTO `rwy_log` VALUES (1, 2, '工作日志', '2018-07-21 22:28:20', '广东深圳（龙华网租）', 2018555555555, '重新安装龙管家，需要36位注册码', '杜', '17313126301', '4387476', '重新安装龙管家', '登录5.0中心，根据网吧提供的编号注册36位注册码', 'web', '审计');
INSERT INTO `rwy_log` VALUES (5, 2, NULL, '2018-07-28 15:43:13', '四川成都', 11111110000012, '计费闪退', '杜圣', '17313126301', '4387476', '装了360桌面助手', '卸载', 'web', NULL);
INSERT INTO `rwy_log` VALUES (6, 2, NULL, '2018-07-28 20:57:40', '四川成都', 11111110000012, '计费闪退', '杜圣', '17313126301', '4387476', '装了360桌面助手', '卸载', 'QQ', '计费');
INSERT INTO `rwy_log` VALUES (7, 2, NULL, '2018-07-29 12:52:41', '1', 12345, 'ssds', 'ds', '1123456', '45456', 'sdsd s', 'sdsds', 'web', '审计');
INSERT INTO `rwy_log` VALUES (8, 2, NULL, '2018-07-29 12:53:17', '是多少', 45465, '撒大声地', '都是', '454565', '456456456', '撒大声地', '撒大声地', 'QQ', '计费');
INSERT INTO `rwy_log` VALUES (9, 2, NULL, '2018-07-29 12:53:57', '撒大声地', 456456564, '撒大声地', '454是', '4545456', '45145458', '大声道', '十五分', 'QQ', '的');
INSERT INTO `rwy_log` VALUES (10, 2, NULL, '2018-07-29 20:00:30', '是是', 11111110000012, '计费闪退', '是', '17313126301', '123455', '装了360桌面助手', '所谓的', 'web', '审计');

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
INSERT INTO `rwy_menu` VALUES (4, 'log/mylog', NULL, 1, 1, 2, '我的日志');
INSERT INTO `rwy_menu` VALUES (5, 'system/chart', '', 2, 2, 1, '全部统计');
INSERT INTO `rwy_menu` VALUES (6, 'log/logall', NULL, 2, 2, 2, '所有日志');

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
INSERT INTO `rwy_role_menu` VALUES (2, 3);
INSERT INTO `rwy_role_menu` VALUES (2, 4);
INSERT INTO `rwy_role_menu` VALUES (1, 5);
INSERT INTO `rwy_role_menu` VALUES (1, 6);

-- ----------------------------
-- Table structure for rwy_user
-- ----------------------------
DROP TABLE IF EXISTS `rwy_user`;
CREATE TABLE `rwy_user`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `loginname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录名',
  `loginpassword` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录密码',
  `name` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rwy_user
-- ----------------------------
INSERT INTO `rwy_user` VALUES (1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '管理员', '11111111', 1);
INSERT INTO `rwy_user` VALUES (2, 'dusheng', '7c4a8d09ca3762af61e59520943dc26494f8941b', '杜圣', '17313126301', 2);

SET FOREIGN_KEY_CHECKS = 1;
