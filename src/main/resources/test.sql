/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 09/05/2022 10:27:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nx_order
-- ----------------------------
DROP TABLE IF EXISTS `nx_order`;
CREATE TABLE `nx_order` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customer_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item`;
CREATE TABLE `nx_order_item` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s0
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s0`;
CREATE TABLE `nx_order_item_s0` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s1
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s1`;
CREATE TABLE `nx_order_item_s1` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s2
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s2`;
CREATE TABLE `nx_order_item_s2` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s3
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s3`;
CREATE TABLE `nx_order_item_s3` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s4
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s4`;
CREATE TABLE `nx_order_item_s4` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s5
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s5`;
CREATE TABLE `nx_order_item_s5` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s6
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s6`;
CREATE TABLE `nx_order_item_s6` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_item_s7
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_item_s7`;
CREATE TABLE `nx_order_item_s7` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s0
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s0`;
CREATE TABLE `nx_order_s0` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s1
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s1`;
CREATE TABLE `nx_order_s1` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s2
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s2`;
CREATE TABLE `nx_order_s2` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s3
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s3`;
CREATE TABLE `nx_order_s3` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s4
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s4`;
CREATE TABLE `nx_order_s4` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s5
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s5`;
CREATE TABLE `nx_order_s5` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s6
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s6`;
CREATE TABLE `nx_order_s6` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nx_order_s7
-- ----------------------------
DROP TABLE IF EXISTS `nx_order_s7`;
CREATE TABLE `nx_order_s7` (
  `id` varchar(40) NOT NULL,
  `customer_id` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_number` bigint(13) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `org_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `order_number` (`order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
