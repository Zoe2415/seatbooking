/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1（8.0.31）
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:3306
 Source Schema         : a_seat

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 19/05/2025 12:22:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `uid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作员id',
  `object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作事项',
  `create_time` datetime NULL DEFAULT NULL,
  `method_time` datetime NULL DEFAULT NULL COMMENT '方法执行时间',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作浏览器',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布人id',
  `read_num` int NULL DEFAULT 0 COMMENT '阅读次数',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1839540171679133697', '关于系统正式运营', '系统正式开始运营啦', '1464847968499675138', 0, '2024-09-27 13:38:49', '2024-09-27 13:38:49', 0);

-- ----------------------------
-- Table structure for tb_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教室名称',
  `total_num` int NULL DEFAULT NULL COMMENT '容纳人数',
  `checked_num` int NULL DEFAULT 0 COMMENT '已选人数',
  `is_open` tinyint(1) NULL DEFAULT NULL COMMENT '是否开启',
  `rows` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排数',
  `open_time` datetime NULL DEFAULT NULL COMMENT '开放时间',
  `close_time` datetime NULL DEFAULT NULL COMMENT '关闭时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('bfa6dfc3-66cb-487e-b3eb-7a11005127b8', '自习室1', 50, 2, NULL, '3', '2024-09-25 00:00:00', '2024-10-31 00:00:00', '2024-09-27 10:14:29', '2024-09-27 13:37:31', 0);

-- ----------------------------
-- Table structure for tb_class_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_class_user`;
CREATE TABLE `tb_class_user`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `class_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教室id',
  `seat_num` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '座位号',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_class_user
-- ----------------------------
INSERT INTO `tb_class_user` VALUES ('1464806795672330241', '1461221422975221762', '0618fa78-52fe-47e8-8044-2668503cd1e5', '1463689225640660995', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1464806907999985665', '1461221422975221762', '0618fa78-52fe-47e8-8044-2668503cd1e5', '1463689225640661004', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1464807180927541250', '1461221422975221762', '0618fa78-52fe-47e8-8044-2668503cd1e5', '1463689225640660999', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1464834056626667521', '1461221422975221762', '0618fa78-52fe-47e8-8044-2668503cd1e5', '1463689225640661001', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1464851812445106177', '1464847968499675138', '5a291a17-ff47-48fa-8680-a421567128a0', '1464851779796643877', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1464851841402580993', '1464847968499675138', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', '1464851727636279304', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 1);
INSERT INTO `tb_class_user` VALUES ('1839493758349930498', '1839483761498943489', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', '1839488753115058181', '2024-09-27 10:34:23', '2024-09-27 10:34:23', 1);
INSERT INTO `tb_class_user` VALUES ('1839498559234179073', '1839483761498943489', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', '1839488753115058180', '2024-09-27 10:53:27', '2024-09-27 10:53:27', 1);
INSERT INTO `tb_class_user` VALUES ('1839504150547591170', '1464847968499675138', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', '1839488753115058183', '2024-09-27 11:15:40', '2024-09-27 11:15:40', 0);
INSERT INTO `tb_class_user` VALUES ('1839537544367108097', '1839483761498943489', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', '1839488753115058179', '2024-09-27 13:28:22', '2024-09-27 13:28:22', 0);

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `uid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `replay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `rid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回复人id',
  `replay_time` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('1464852053105881090', '1464847968499675138', '阶梯教室的空调坏了，麻烦维修师傅来处理一下~', '不错', '1464847968499675138', NULL, '2024-09-27 09:54:39', '2024-09-27 10:25:18', 0);
INSERT INTO `tb_message` VALUES ('1839494671131144194', '1839483761498943489', '我觉得不错', NULL, NULL, NULL, '2024-09-27 10:38:00', '2024-09-27 10:38:00', 0);
INSERT INTO `tb_message` VALUES ('1900746493913051138', '1464847968499675138', '', NULL, NULL, NULL, '2025-03-15 11:10:53', '2025-03-15 11:10:53', 0);

-- ----------------------------
-- Table structure for tb_seat
-- ----------------------------
DROP TABLE IF EXISTS `tb_seat`;
CREATE TABLE `tb_seat`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `cid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图书馆教室id',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '座位状态(0未选,1已选)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_seat
-- ----------------------------
INSERT INTO `tb_seat` VALUES ('1464851727636279297', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279298', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279299', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279300', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279301', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279302', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279303', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279304', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279305', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279306', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851727636279307', 'df0eed50-f101-4b43-babf-e5246b8e9f5a', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534977', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534978', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534979', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534980', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534981', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534982', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534983', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534984', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534985', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534986', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534987', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534988', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534989', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779729534990', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643842', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643843', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643844', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643845', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643846', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643847', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643848', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643849', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643850', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643851', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643852', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643853', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643854', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643855', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643856', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643857', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643858', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643859', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643860', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643861', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643862', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643863', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643864', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643865', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643866', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643867', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643868', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643869', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643870', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643871', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643872', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643873', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643874', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643875', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643876', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1464851779796643877', '5a291a17-ff47-48fa-8680-a421567128a0', 0);
INSERT INTO `tb_seat` VALUES ('1839488753106669569', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058178', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058179', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 1);
INSERT INTO `tb_seat` VALUES ('1839488753115058180', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058181', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058182', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058183', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 1);
INSERT INTO `tb_seat` VALUES ('1839488753115058184', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058185', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058186', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058187', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058188', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058189', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058190', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058191', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058192', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058193', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058194', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058195', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058196', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058197', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058198', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058199', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058200', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058201', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058202', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058203', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058204', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058205', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058206', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058207', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058208', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058209', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058210', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058211', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058212', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058213', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058214', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058215', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058216', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058217', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058218', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058219', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058220', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058221', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058222', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058223', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058224', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058225', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);
INSERT INTO `tb_seat` VALUES ('1839488753115058226', 'bfa6dfc3-66cb-487e-b3eb-7a11005127b8', 0);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1464847210953846786', 'a', 'YQ==', 'a', 'user', 'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 0);
INSERT INTO `tb_user` VALUES ('1464847968499675138', 'admin', 'YWRtaW4=', 'admin', 'admin', 'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 0);
INSERT INTO `tb_user` VALUES ('1839483761498943489', 'yang', 'MTIzNDU2', 'yang', 'user', 'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '2024-09-27 09:54:39', '2024-09-27 09:54:39', 0);

SET FOREIGN_KEY_CHECKS = 1;
