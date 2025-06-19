/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : inventory_db

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 19/06/2025 15:35:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Electronics', '2025-06-19 12:56:08', '2025-06-19 12:56:08');
INSERT INTO `categories` VALUES (2, 'Groceries', '2025-06-19 12:56:08', '2025-06-19 12:56:08');
INSERT INTO `categories` VALUES (3, 'Clothing', '2025-06-19 12:56:08', '2025-06-19 12:56:08');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2025-06-19-040924', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1750306343, 1);
INSERT INTO `migrations` VALUES (2, '2025-06-19-044538', 'App\\Database\\Migrations\\CreateCategoriesTable', 'default', 'App', 1750308468, 2);
INSERT INTO `migrations` VALUES (3, '2025-06-19-044726', 'App\\Database\\Migrations\\CreateProductsTable', 'default', 'App', 1750308468, 2);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock_quantity` int NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id` ASC) USING BTREE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Smartphone', 1, 19999.00, 25, NULL, '2025-06-19 12:56:13', '2025-06-19 12:56:13');
INSERT INTO `products` VALUES (2, 'LED TV', 1, 25999.00, 10, NULL, '2025-06-19 12:56:13', '2025-06-19 12:56:13');
INSERT INTO `products` VALUES (3, 'Apples (1kg)', 2, 120.00, 50, NULL, '2025-06-19 12:56:13', '2025-06-19 12:56:13');
INSERT INTO `products` VALUES (4, 'T-shirt - Medium', 3, 350.00, 40, NULL, '2025-06-19 12:56:13', '2025-06-19 12:56:13');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, 'admin', '$2y$12$WkuD0SfsRns6UIUkWA0KxOdLpuhB6xtj7Y6vRKSeC.jAEjaUmaNB6', 'admin');
INSERT INTO `users` VALUES (6, 'user1', '$2y$12$WkuD0SfsRns6UIUkWA0KxOdLpuhB6xtj7Y6vRKSeC.jAEjaUmaNB6', 'user');
INSERT INTO `users` VALUES (7, 'anton45', '$2y$12$WkuD0SfsRns6UIUkWA0KxOdLpuhB6xtj7Y6vRKSeC.jAEjaUmaNB6', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
