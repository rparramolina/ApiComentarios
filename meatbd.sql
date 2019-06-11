/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : meatbd

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 11/06/2019 13:26:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comentarios
-- ----------------------------
DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios`  (
  `comentario_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comentario` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_comentario_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`comentario_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comentarios
-- ----------------------------
INSERT INTO `comentarios` VALUES (1, 'test 1', 0, NULL, NULL);
INSERT INTO `comentarios` VALUES (2, 'resuesta 1 a test 1', 1, NULL, NULL);
INSERT INTO `comentarios` VALUES (3, 'respuesta 2 a test 1', 1, NULL, NULL);
INSERT INTO `comentarios` VALUES (4, 'test 222', 0, NULL, NULL);
INSERT INTO `comentarios` VALUES (5, 'respuesta 1 a test 222', 4, NULL, NULL);
INSERT INTO `comentarios` VALUES (6, 'respuesta 2 a test 222', 4, NULL, NULL);
INSERT INTO `comentarios` VALUES (7, 'este es una prueba', 0, '2019-06-11 04:43:22', '2019-06-11 04:43:22');
INSERT INTO `comentarios` VALUES (8, 'este es una prueba de respuesta al 7', 7, '2019-06-11 04:55:05', '2019-06-11 04:55:05');
INSERT INTO `comentarios` VALUES (9, 'este es otra prueba de respuesta al 7', 7, '2019-06-11 04:55:33', '2019-06-11 04:55:33');
INSERT INTO `comentarios` VALUES (10, 'este es  y otra prueba de respuesta al 7', 7, '2019-06-11 04:55:37', '2019-06-11 04:55:37');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_06_11_031608_create_comentarios_table', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('16deea5593c27bd21c49fb95e678f22073c3fe652106ff9c682776f755720590409ec5dcaadd4d57', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-11 03:00:31', '2019-06-11 03:00:31', '2020-06-11 03:00:31');
INSERT INTO `oauth_access_tokens` VALUES ('37e87ededfba33fe036f0c85ed537caed5cf98e0e88ab9f8301ceb4fa7dc639f9c3a7cb023d16219', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-11 03:18:52', '2019-06-11 03:18:52', '2020-06-11 03:18:52');
INSERT INTO `oauth_access_tokens` VALUES ('5fdbd0a3ec58c3654460a65faec80874b8317293594dcfeb586be51918fcac5d633fad56af9c7063', 1, 1, 'Grant', '[]', 1, '2019-06-11 04:39:10', '2019-06-11 04:39:10', '2020-06-11 04:39:10');
INSERT INTO `oauth_access_tokens` VALUES ('9ed1e6c55287fc5ff28d3e85cd1ce609d658ecdd7965c053f42fab64964054d475b035abb194be4c', 1, 1, 'Laravel Password Grant Client', '[]', 1, '2019-06-11 03:01:06', '2019-06-11 03:01:06', '2020-06-11 03:01:06');
INSERT INTO `oauth_access_tokens` VALUES ('cf3fc57e3d315f4e399dd02fbf1a47ea85cd3cde46f2adfb13f52b7e36956664ddfd7eb1263877c7', 1, 1, 'Grant', '[]', 0, '2019-06-11 04:54:37', '2019-06-11 04:54:37', '2020-06-11 04:54:37');
INSERT INTO `oauth_access_tokens` VALUES ('e6f226b98393f0cfdf1c4185cc81a4cfd2c660120e0b02a695dda5de7267f3455e448abccc8e471a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-11 03:02:53', '2019-06-11 03:02:53', '2020-06-11 03:02:53');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'rYW0phK8plrSjLI9DAr1HS5SPyrwAMKQW3ITNniE', 'http://localhost', 1, 0, 0, '2019-06-11 02:28:16', '2019-06-11 02:28:16');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'MmKrycXVJvNswE4a8xYBahZNxBlO2X208MSqsHX2', 'http://localhost', 0, 1, 0, '2019-06-11 02:28:16', '2019-06-11 02:28:16');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-06-11 02:28:16', '2019-06-11 02:28:16');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'rparra', 'rparra@mail.cl', NULL, '$2y$10$GVjCM5syhsMsPpynjLQz9uLkIb454/YZtwyuwnNidFb1tpWhjlV52', NULL, '2019-06-11 02:55:09', '2019-06-11 02:55:09');

SET FOREIGN_KEY_CHECKS = 1;
