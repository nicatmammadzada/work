/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : premiere

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 10/08/2020 10:24:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brend_logos
-- ----------------------------
DROP TABLE IF EXISTS `brend_logos`;
CREATE TABLE `brend_logos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.png',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brend_logos
-- ----------------------------
INSERT INTO `brend_logos` VALUES (1, 'KÖRTING', '1593007893.png', NULL);
INSERT INTO `brend_logos` VALUES (2, 'BOSCH', '1593009965.png', NULL);
INSERT INTO `brend_logos` VALUES (3, 'BLANCO', '1593008680.png', NULL);
INSERT INTO `brend_logos` VALUES (4, 'CATA', '1593008846.png', NULL);
INSERT INTO `brend_logos` VALUES (5, 'NODOR', '1593009436.png', NULL);
INSERT INTO `brend_logos` VALUES (6, 'KITCHENAID', '1593009573.png', NULL);
INSERT INTO `brend_logos` VALUES (7, 'SMEG', '1593009792.png', NULL);
INSERT INTO `brend_logos` VALUES (8, 'SHARP', '1593062192.png', NULL);
INSERT INTO `brend_logos` VALUES (9, 'PYRAMIS', '1593062336.png', NULL);
INSERT INTO `brend_logos` VALUES (10, 'HOTPOINT', '1593062959.png', NULL);
INSERT INTO `brend_logos` VALUES (11, 'FRANKE', '1593063253.png', NULL);
INSERT INTO `brend_logos` VALUES (12, 'HITACHI', '1593063388.png', NULL);
INSERT INTO `brend_logos` VALUES (15, NULL, '1593063928.png', NULL);
INSERT INTO `brend_logos` VALUES (16, NULL, '1593064210.png', NULL);
INSERT INTO `brend_logos` VALUES (17, NULL, '1593064490.png', NULL);
INSERT INTO `brend_logos` VALUES (18, NULL, '1593063440.png', NULL);
INSERT INTO `brend_logos` VALUES (19, NULL, '1593064711.png', NULL);
INSERT INTO `brend_logos` VALUES (20, 'netgear', '1593065182.png', NULL);
INSERT INTO `brend_logos` VALUES (21, 'tefal', '1593065325.png', NULL);
INSERT INTO `brend_logos` VALUES (22, 'sony', '1593065454.png', NULL);
INSERT INTO `brend_logos` VALUES (23, NULL, '1589357328.png', NULL);
INSERT INTO `brend_logos` VALUES (24, NULL, '1589357464.png', NULL);
INSERT INTO `brend_logos` VALUES (25, 'Gaggia', '1593065050.png', NULL);
INSERT INTO `brend_logos` VALUES (26, NULL, '1593063553.png', NULL);
INSERT INTO `brend_logos` VALUES (28, NULL, 'default.png', NULL);

-- ----------------------------
-- Table structure for brends
-- ----------------------------
DROP TABLE IF EXISTS `brends`;
CREATE TABLE `brends`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brends
-- ----------------------------
INSERT INTO `brends` VALUES (1, 'bosch');
INSERT INTO `brends` VALUES (2, 'körting');
INSERT INTO `brends` VALUES (3, 'cata & can roca');
INSERT INTO `brends` VALUES (4, 'smeg');
INSERT INTO `brends` VALUES (5, 'aquasanita');
INSERT INTO `brends` VALUES (6, 'amica');
INSERT INTO `brends` VALUES (7, 'siemens');
INSERT INTO `brends` VALUES (8, 'aeg');
INSERT INTO `brends` VALUES (9, 'cata');
INSERT INTO `brends` VALUES (10, 'haier');
INSERT INTO `brends` VALUES (11, 'hitachi');
INSERT INTO `brends` VALUES (12, 'hotpoint');
INSERT INTO `brends` VALUES (13, 'mpm');
INSERT INTO `brends` VALUES (14, 'nodor');
INSERT INTO `brends` VALUES (15, 'samsung');
INSERT INTO `brends` VALUES (16, 'sharp');
INSERT INTO `brends` VALUES (17, 'whirlpool');
INSERT INTO `brends` VALUES (18, 'barazza');
INSERT INTO `brends` VALUES (19, 'gorenje');
INSERT INTO `brends` VALUES (20, 'kitchenaid');
INSERT INTO `brends` VALUES (21, 'blanco');
INSERT INTO `brends` VALUES (22, 'franke');
INSERT INTO `brends` VALUES (23, 'teka');
INSERT INTO `brends` VALUES (24, 'ariston');
INSERT INTO `brends` VALUES (25, 'elİca');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, '{\"az\":\"test\",\"en\":\"test\"}', '1592291052.jpeg', 'Tam Kart');
INSERT INTO `cart` VALUES (4, '{\"az\":\"Endirimli qiymetler Nagd alisa Bolkartla taksitli alislara nezerde tutulur\"}', '1592774167.jpeg', 'bolkart');

-- ----------------------------
-- Table structure for cart_product
-- ----------------------------
DROP TABLE IF EXISTS `cart_product`;
CREATE TABLE `cart_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `month` int(11) NULL DEFAULT NULL,
  `taksit_price` decimal(11, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart_product
-- ----------------------------
INSERT INTO `cart_product` VALUES (1, 1, 339, 5, 56.00);
INSERT INTO `cart_product` VALUES (2, 4, 339, 12, 89.60);
INSERT INTO `cart_product` VALUES (22, 1, 283, 888, 155.00);
INSERT INTO `cart_product` VALUES (23, 4, 283, 85, 850.00);
INSERT INTO `cart_product` VALUES (24, 1, 283, 12, 256.63);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_type_filter_id` int(11) NULL DEFAULT 0,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (13, 0, '1589283215.svg', '1589283215.svg', '2020-04-11 18:17:22', '2020-05-12 13:33:35', 'washing-dryer', 0, '1587652450download.webp');
INSERT INTO `category` VALUES (14, 0, '1589282936.svg', '1589282936.svg', '2020-04-11 18:27:14', '2020-05-12 13:28:56', 'fridges', 0, '15876531355.webp');
INSERT INTO `category` VALUES (15, 0, '1589283294.svg', '1589283294.svg', '2020-04-11 18:28:19', '2020-05-16 12:47:56', 'qabyuyan', 0, '1587653621q.webp');
INSERT INTO `category` VALUES (16, 0, '1589442166.png', '1589441949.png', '2020-04-11 18:29:09', '2020-05-14 11:42:46', 'pilte', 0, '1588327464cok.jpeg');
INSERT INTO `category` VALUES (17, 0, '1589283508.svg', '1589283508.svg', '2020-04-11 18:30:25', '2020-05-21 13:15:08', 'Havaceken', 0, '1588327154asp.jpeg');
INSERT INTO `category` VALUES (18, 0, '1589283571.svg', '1589283571.svg', '2020-04-11 18:35:03', '2020-05-12 13:39:31', 'oven', 0, '1588327579ovv.webp');
INSERT INTO `category` VALUES (19, 0, '1589283648.svg', '1589283648.svg', '2020-04-11 18:36:29', '2020-05-13 14:48:42', 'metbex-canagi', 0, '1589366922DF.png');
INSERT INTO `category` VALUES (20, 0, '1589268497.svg', '1589268440.svg', '2020-04-11 18:38:09', '2020-05-16 12:47:24', 'small-appliances', 0, '1587653752ap.webp');
INSERT INTO `category` VALUES (21, 0, '1589283724.svg', '1589283724.svg', '2020-04-11 18:40:34', '2020-05-12 16:42:47', 'hamam', 0, '1589294566XCCCCCCCCCCCCCC.png');
INSERT INTO `category` VALUES (24, 13, '1591771854.svg', '1591771854.svg', '2020-04-11 19:33:38', '2020-06-10 08:50:54', 'washing-machine', 0, '1589358686category-images-laundry-washing-machines--2-category-row-tile.jpeg');
INSERT INTO `category` VALUES (25, 13, '1591772103.svg', '1591772103.svg', '2020-04-11 19:40:23', '2020-06-10 08:55:03', 'dryer', 0, '1589358663category-images-laundry-all-dryers--2-category-row-tile.jpeg');
INSERT INTO `category` VALUES (26, 13, '1591772130.svg', '1591772130.svg', '2020-04-11 19:41:35', '2020-06-10 08:55:30', 'combo', 0, '1589358577category-images-laundry-washer-dryer-combo--2-category-row-tile.jpeg');
INSERT INTO `category` VALUES (27, 13, '1591772153.svg', '1591772153.svg', '2020-04-11 19:42:33', '2020-06-10 08:55:53', 'laundry-packages', 0, '1589358615category-images-laundry-laundry-packages--2-category-row-tile.jpeg');
INSERT INTO `category` VALUES (28, 14, '1591772358.svg', '1591772358.svg', '2020-04-11 19:48:11', '2020-06-10 08:59:18', 'fridgesss', 0, '1589358826category-images-All-fridgescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (29, 14, '1591792253.svg', '1591792253.svg', '2020-04-11 19:59:08', '2020-06-10 14:30:53', 'wine-fridges', 0, '1589358840category-images-All-wine-fridgescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (30, 14, '1591772470.svg', '1591772470.svg', '2020-04-11 20:00:26', '2020-06-10 09:01:10', 'freezers', 0, '1589358853category-images-All-freezerscategory-row-tile.jpeg');
INSERT INTO `category` VALUES (31, 16, '1591772805.svg', '1591772805.svg', '2020-04-11 20:02:41', '2020-06-10 09:06:45', 'qaz-cooktops', 0, '1589359004Category-image-cooking-cooktops-gas-induction-electriccategory-row-tile.jpeg');
INSERT INTO `category` VALUES (32, 16, '1591772855.svg', '1591772855.svg', '2020-04-11 20:03:27', '2020-06-10 09:07:35', 'electric-cookctops', 0, '1589359043Category-image-cooking-packagescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (33, 16, '1591772882.svg', '1591772882.svg', '2020-04-11 20:04:03', '2020-06-10 09:08:02', 'induction-cooktops', 0, '1589442209category-imagesinduction-cooktopscategory-row-tile.jpeg');
INSERT INTO `category` VALUES (34, 16, '1591772908.svg', '1591772908.svg', '2020-04-11 20:06:22', '2020-06-10 09:08:28', 'combo', 0, '1589359171Category-image-cooking-freestanding-stovescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (35, 17, '1591773619.svg', '1591773619.svg', '2020-04-11 20:09:02', '2020-06-10 09:20:19', 'qurasdırılan', 0, '1589373805aspirator-ukrasni-min.png');
INSERT INTO `category` VALUES (36, 17, '1591773646.svg', '1591773646.svg', '2020-04-11 20:10:00', '2020-06-10 09:20:46', 'island', 0, '1589373880island-rangehoods-category-image-updatedcategory-row-tile.jpeg');
INSERT INTO `category` VALUES (37, 17, '1591773687.svg', '1591773687.svg', '2020-04-11 20:11:07', '2020-06-10 09:21:27', 'wall', 0, '1589373928downdraft-rangehoods-category-imagecategory-row-tilecategory-row-tile.jpeg');
INSERT INTO `category` VALUES (38, 18, '1591773890.svg', '1591773890.svg', '2020-04-11 20:12:45', '2020-06-10 09:24:50', 'sobalar', 0, '1589441797built-in-oven-and-cooktopcategory-row-tile.jpeg');
INSERT INTO `category` VALUES (39, 18, '1591773921.svg', '1591773921.svg', '2020-04-11 20:13:43', '2020-06-10 09:25:21', 'mikrodalğalı-soba', 0, '1589359526category-images-microwavesconvection-microwavescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (40, 19, '1591774562.svg', '1591774562.svg', '2020-04-11 20:19:44', '2020-06-10 09:36:02', 'kran', 0, '1589367077category-images-dst-pull-out-tapscategory-row-tile.png');
INSERT INTO `category` VALUES (41, 19, '1591774593.svg', '1591774593.svg', '2020-04-11 20:21:42', '2020-06-10 09:36:33', 'canaq', 0, '1589367206BH.png');
INSERT INTO `category` VALUES (42, 19, '1591774625.svg', '1591774625.svg', '2020-04-11 20:23:07', '2020-06-10 09:37:05', 'maye-sabun', 0, '1589367467TR.png');
INSERT INTO `category` VALUES (43, 19, '1591774662.svg', '1591774662.svg', '2020-04-11 20:25:16', '2020-06-10 09:37:42', 'food-waste', 0, '1589367276category-images-dishwashers-sinks-tapsArtboard-5category-row-tile.jpeg');
INSERT INTO `category` VALUES (44, 20, '1591774692.svg', '1591774692.svg', '2020-04-11 20:27:53', '2020-06-10 09:38:12', 'tozsoran', 0, '1589372685category-images-floorcare-barrel-vaccuumscategory-row-tile.jpeg');
INSERT INTO `category` VALUES (45, 20, '1591774721.svg', '1591774721.svg', '2020-04-11 20:28:42', '2020-06-10 09:38:41', 'caynik', 0, '1589372866category-image-kettles-and-toasters-kettlescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (46, 20, '1591774757.svg', '1591774757.svg', '2020-04-11 20:29:26', '2020-06-10 09:39:17', 'kofe-aparati', 0, '1589373009category-images-coffee-machines-nespresso-machinescategory-row-tile.jpeg');
INSERT INTO `category` VALUES (47, 20, '1591774789.svg', '1591774789.svg', '2020-04-11 20:29:51', '2020-06-10 09:39:49', 'toster', 0, '1589373146purepng.png');
INSERT INTO `category` VALUES (48, 20, '1591774819.svg', '1591774819.svg', '2020-04-11 20:30:56', '2020-06-10 09:40:19', 'sirəceken', 0, '1589373261juicer-png-2.png');
INSERT INTO `category` VALUES (49, 20, '1591775261.svg', '1591775261.svg', '2020-04-11 20:33:28', '2020-06-10 09:47:41', 'etceken', 0, '1589373308mg700-content-page-product-tiles-150x150category-row-tile.jpeg');
INSERT INTO `category` VALUES (50, 20, '1587121042.png', '1587121042.png', '2020-04-11 20:41:19', '2020-05-13 16:36:52', 'mixer', 0, '1589373412category-images-food-preperation-hand-mixerscategory-row-tile.jpeg');
INSERT INTO `category` VALUES (51, 20, '1587121116.png', '1589292320.svg', '2020-04-11 20:41:48', '2020-05-13 16:37:08', 'blender', 0, '1589373428category-images-food-preperation-stick-blenders-mixerscategory-row-tile.jpeg');
INSERT INTO `category` VALUES (52, 20, '1587121157.png', '1587121157.png', '2020-04-11 20:42:32', '2020-05-14 12:12:26', 'utu', 0, '1589443946unnamed.png');
INSERT INTO `category` VALUES (53, 20, '1587121234.png', '1587121234.png', '2020-04-11 20:43:17', '2020-05-13 16:38:35', 'qazan-tava', 0, '1589373515category-images-cooking-and-baking-cookwarecategory-row-tile.jpeg');
INSERT INTO `category` VALUES (54, 21, '1591775164.svg', '1591775164.svg', '2020-04-11 20:44:54', '2020-06-10 09:46:04', 'dus', 0, '1589368394shower_PNG36.png');
INSERT INTO `category` VALUES (55, 21, '1591775193.svg', '1591775193.svg', '2020-04-11 20:45:18', '2020-06-10 09:46:33', 'kran', 0, '1589368195category-images-dishwashers-sinks-tapsprovincial-tapscategory-row-tile (1).jpeg');
INSERT INTO `category` VALUES (56, 21, '1591775216.svg', '1591775216.svg', '2020-04-11 20:45:48', '2020-06-10 09:46:56', 'aksesuar', 0, '1589368327611KMYJ6M6L._SY355_.jpg');

-- ----------------------------
-- Table structure for category_translation
-- ----------------------------
DROP TABLE IF EXISTS `category_translation`;
CREATE TABLE `category_translation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of category_translation
-- ----------------------------
INSERT INTO `category_translation` VALUES (16, 6, 'az', 'Yuyucu və Quruducular');
INSERT INTO `category_translation` VALUES (17, 6, 'en', NULL);
INSERT INTO `category_translation` VALUES (18, 6, 'ru', NULL);
INSERT INTO `category_translation` VALUES (19, 7, 'az', 'dfgfdg');
INSERT INTO `category_translation` VALUES (20, 7, 'en', NULL);
INSERT INTO `category_translation` VALUES (21, 7, 'ru', NULL);
INSERT INTO `category_translation` VALUES (22, 8, 'az', 'fdgfdg');
INSERT INTO `category_translation` VALUES (23, 8, 'en', NULL);
INSERT INTO `category_translation` VALUES (24, 8, 'ru', NULL);
INSERT INTO `category_translation` VALUES (25, 9, 'az', 'Yuyucu və Quruducular');
INSERT INTO `category_translation` VALUES (26, 9, 'en', NULL);
INSERT INTO `category_translation` VALUES (27, 9, 'ru', NULL);
INSERT INTO `category_translation` VALUES (28, 10, 'az', 'Yuyucu və Quruducular');
INSERT INTO `category_translation` VALUES (29, 10, 'en', NULL);
INSERT INTO `category_translation` VALUES (30, 10, 'ru', NULL);
INSERT INTO `category_translation` VALUES (31, 11, 'az', 'Paltaryuyan maşın');
INSERT INTO `category_translation` VALUES (32, 11, 'en', NULL);
INSERT INTO `category_translation` VALUES (33, 11, 'ru', NULL);
INSERT INTO `category_translation` VALUES (34, 12, 'az', 'Yuyucu və Quruducular');
INSERT INTO `category_translation` VALUES (35, 12, 'en', NULL);
INSERT INTO `category_translation` VALUES (36, 12, 'ru', NULL);
INSERT INTO `category_translation` VALUES (37, 13, 'az', 'Paltaryuyan və Qurudan');
INSERT INTO `category_translation` VALUES (38, 13, 'en', 'Washer & dryer');
INSERT INTO `category_translation` VALUES (39, 13, 'ru', NULL);
INSERT INTO `category_translation` VALUES (40, 14, 'az', 'Soyuducu');
INSERT INTO `category_translation` VALUES (41, 14, 'en', 'Fridge');
INSERT INTO `category_translation` VALUES (42, 14, 'ru', NULL);
INSERT INTO `category_translation` VALUES (43, 15, 'az', 'Qabyuyan');
INSERT INTO `category_translation` VALUES (44, 15, 'en', 'Dishwasher');
INSERT INTO `category_translation` VALUES (45, 15, 'ru', NULL);
INSERT INTO `category_translation` VALUES (46, 16, 'az', 'Bişirmə paneli');
INSERT INTO `category_translation` VALUES (47, 16, 'en', 'Hob');
INSERT INTO `category_translation` VALUES (48, 16, 'ru', NULL);
INSERT INTO `category_translation` VALUES (49, 17, 'az', 'Havaçəkən');
INSERT INTO `category_translation` VALUES (50, 17, 'en', 'Hood');
INSERT INTO `category_translation` VALUES (51, 17, 'ru', NULL);
INSERT INTO `category_translation` VALUES (52, 18, 'az', 'Soba');
INSERT INTO `category_translation` VALUES (53, 18, 'en', 'Oven');
INSERT INTO `category_translation` VALUES (54, 18, 'ru', NULL);
INSERT INTO `category_translation` VALUES (55, 19, 'az', 'Mətbəx çanağı  və kranı');
INSERT INTO `category_translation` VALUES (56, 19, 'en', 'Kitchen sink & tap');
INSERT INTO `category_translation` VALUES (57, 19, 'ru', NULL);
INSERT INTO `category_translation` VALUES (58, 20, 'az', 'Kiçik mətbəx texnikası');
INSERT INTO `category_translation` VALUES (59, 20, 'en', 'Small kitchen appliances');
INSERT INTO `category_translation` VALUES (60, 20, 'ru', NULL);
INSERT INTO `category_translation` VALUES (61, 21, 'az', 'Hamam və Tualet');
INSERT INTO `category_translation` VALUES (62, 21, 'en', 'Bath & Toilet');
INSERT INTO `category_translation` VALUES (63, 21, 'ru', NULL);
INSERT INTO `category_translation` VALUES (64, 22, 'az', 'Paltaryuyan maşın');
INSERT INTO `category_translation` VALUES (65, 22, 'en', NULL);
INSERT INTO `category_translation` VALUES (66, 22, 'ru', NULL);
INSERT INTO `category_translation` VALUES (67, 23, 'az', 'Paltaryuyan maşın');
INSERT INTO `category_translation` VALUES (68, 23, 'en', NULL);
INSERT INTO `category_translation` VALUES (69, 23, 'ru', NULL);
INSERT INTO `category_translation` VALUES (70, 24, 'az', 'Paltaryuyan');
INSERT INTO `category_translation` VALUES (71, 24, 'en', 'Washing');
INSERT INTO `category_translation` VALUES (72, 24, 'ru', NULL);
INSERT INTO `category_translation` VALUES (73, 25, 'az', 'Qurudan');
INSERT INTO `category_translation` VALUES (74, 25, 'en', 'Dryer');
INSERT INTO `category_translation` VALUES (75, 25, 'ru', NULL);
INSERT INTO `category_translation` VALUES (76, 26, 'az', 'Yuyan & qurudan');
INSERT INTO `category_translation` VALUES (77, 26, 'en', 'Washer & dryer');
INSERT INTO `category_translation` VALUES (78, 26, 'ru', NULL);
INSERT INTO `category_translation` VALUES (79, 27, 'az', 'Camaşırxana dəstləri');
INSERT INTO `category_translation` VALUES (80, 27, 'en', 'Laundry packages');
INSERT INTO `category_translation` VALUES (81, 27, 'ru', NULL);
INSERT INTO `category_translation` VALUES (82, 28, 'az', 'Soyuducu');
INSERT INTO `category_translation` VALUES (83, 28, 'en', 'Fridge');
INSERT INTO `category_translation` VALUES (84, 28, 'ru', NULL);
INSERT INTO `category_translation` VALUES (85, 29, 'az', 'Şərab soyuducusu');
INSERT INTO `category_translation` VALUES (86, 29, 'en', 'Wine fridge');
INSERT INTO `category_translation` VALUES (87, 29, 'ru', NULL);
INSERT INTO `category_translation` VALUES (88, 30, 'az', 'Dondurucu');
INSERT INTO `category_translation` VALUES (89, 30, 'en', 'Freezer');
INSERT INTO `category_translation` VALUES (90, 30, 'ru', NULL);
INSERT INTO `category_translation` VALUES (91, 31, 'az', 'Qaz');
INSERT INTO `category_translation` VALUES (92, 31, 'en', 'Gas');
INSERT INTO `category_translation` VALUES (93, 31, 'ru', NULL);
INSERT INTO `category_translation` VALUES (94, 32, 'az', 'Elektrik');
INSERT INTO `category_translation` VALUES (95, 32, 'en', 'Electric');
INSERT INTO `category_translation` VALUES (96, 32, 'ru', NULL);
INSERT INTO `category_translation` VALUES (97, 33, 'az', 'İnduksiya');
INSERT INTO `category_translation` VALUES (98, 33, 'en', 'Induction');
INSERT INTO `category_translation` VALUES (99, 33, 'ru', NULL);
INSERT INTO `category_translation` VALUES (100, 34, 'az', 'Qaz+Elektrik');
INSERT INTO `category_translation` VALUES (101, 34, 'en', 'Gas+Electric');
INSERT INTO `category_translation` VALUES (102, 34, 'ru', NULL);
INSERT INTO `category_translation` VALUES (103, 35, 'az', 'Mebel içi');
INSERT INTO `category_translation` VALUES (104, 35, 'en', 'Built-in');
INSERT INTO `category_translation` VALUES (105, 35, 'ru', NULL);
INSERT INTO `category_translation` VALUES (106, 36, 'az', 'Ada');
INSERT INTO `category_translation` VALUES (107, 36, 'en', 'Island');
INSERT INTO `category_translation` VALUES (108, 36, 'ru', NULL);
INSERT INTO `category_translation` VALUES (109, 37, 'az', 'Divardan asılan');
INSERT INTO `category_translation` VALUES (110, 37, 'en', 'Wall');
INSERT INTO `category_translation` VALUES (111, 37, 'ru', NULL);
INSERT INTO `category_translation` VALUES (112, 38, 'az', 'Soba');
INSERT INTO `category_translation` VALUES (113, 38, 'en', 'Oven');
INSERT INTO `category_translation` VALUES (114, 38, 'ru', NULL);
INSERT INTO `category_translation` VALUES (115, 39, 'az', 'Mikrodalğalı soba');
INSERT INTO `category_translation` VALUES (116, 39, 'en', 'Microwave oven');
INSERT INTO `category_translation` VALUES (117, 39, 'ru', NULL);
INSERT INTO `category_translation` VALUES (118, 40, 'az', 'Mətbəx kranı');
INSERT INTO `category_translation` VALUES (119, 40, 'en', 'Kitchen tap');
INSERT INTO `category_translation` VALUES (120, 40, 'ru', NULL);
INSERT INTO `category_translation` VALUES (121, 41, 'az', 'Mətbəx çanağı');
INSERT INTO `category_translation` VALUES (122, 41, 'en', 'Kitchen sink');
INSERT INTO `category_translation` VALUES (123, 41, 'ru', NULL);
INSERT INTO `category_translation` VALUES (124, 42, 'az', 'Maye sabun dispenseri');
INSERT INTO `category_translation` VALUES (125, 42, 'en', 'Soap dispenser');
INSERT INTO `category_translation` VALUES (126, 42, 'ru', NULL);
INSERT INTO `category_translation` VALUES (127, 43, 'az', 'Qida tullantıları avadanlığı');
INSERT INTO `category_translation` VALUES (128, 43, 'en', 'Food waste disposers');
INSERT INTO `category_translation` VALUES (129, 43, 'ru', NULL);
INSERT INTO `category_translation` VALUES (130, 44, 'az', 'Tozsoran');
INSERT INTO `category_translation` VALUES (131, 44, 'en', NULL);
INSERT INTO `category_translation` VALUES (132, 44, 'ru', NULL);
INSERT INTO `category_translation` VALUES (133, 45, 'az', 'Çaynik');
INSERT INTO `category_translation` VALUES (134, 45, 'en', NULL);
INSERT INTO `category_translation` VALUES (135, 45, 'ru', NULL);
INSERT INTO `category_translation` VALUES (136, 46, 'az', 'Kofe aparatı');
INSERT INTO `category_translation` VALUES (137, 46, 'en', NULL);
INSERT INTO `category_translation` VALUES (138, 46, 'ru', NULL);
INSERT INTO `category_translation` VALUES (139, 47, 'az', 'Toster');
INSERT INTO `category_translation` VALUES (140, 47, 'en', NULL);
INSERT INTO `category_translation` VALUES (141, 47, 'ru', NULL);
INSERT INTO `category_translation` VALUES (142, 48, 'az', 'Şirəçəkən');
INSERT INTO `category_translation` VALUES (143, 48, 'en', NULL);
INSERT INTO `category_translation` VALUES (144, 48, 'ru', NULL);
INSERT INTO `category_translation` VALUES (145, 49, 'az', 'Ətçəkən');
INSERT INTO `category_translation` VALUES (146, 49, 'en', NULL);
INSERT INTO `category_translation` VALUES (147, 49, 'ru', NULL);
INSERT INTO `category_translation` VALUES (148, 50, 'az', 'Mixer');
INSERT INTO `category_translation` VALUES (149, 50, 'en', NULL);
INSERT INTO `category_translation` VALUES (150, 50, 'ru', NULL);
INSERT INTO `category_translation` VALUES (151, 51, 'az', 'blender');
INSERT INTO `category_translation` VALUES (152, 51, 'en', NULL);
INSERT INTO `category_translation` VALUES (153, 51, 'ru', NULL);
INSERT INTO `category_translation` VALUES (154, 52, 'az', 'Ütü və ütü masası');
INSERT INTO `category_translation` VALUES (155, 52, 'en', NULL);
INSERT INTO `category_translation` VALUES (156, 52, 'ru', NULL);
INSERT INTO `category_translation` VALUES (157, 53, 'az', 'Qazan/tava');
INSERT INTO `category_translation` VALUES (158, 53, 'en', NULL);
INSERT INTO `category_translation` VALUES (159, 53, 'ru', NULL);
INSERT INTO `category_translation` VALUES (160, 54, 'az', 'Duş');
INSERT INTO `category_translation` VALUES (161, 54, 'en', NULL);
INSERT INTO `category_translation` VALUES (162, 54, 'ru', NULL);
INSERT INTO `category_translation` VALUES (163, 55, 'az', 'Kran');
INSERT INTO `category_translation` VALUES (164, 55, 'en', NULL);
INSERT INTO `category_translation` VALUES (165, 55, 'ru', NULL);
INSERT INTO `category_translation` VALUES (166, 56, 'az', 'Aksesuar');
INSERT INTO `category_translation` VALUES (167, 56, 'en', NULL);
INSERT INTO `category_translation` VALUES (168, 56, 'ru', NULL);
INSERT INTO `category_translation` VALUES (169, 57, 'az', 'sdfsd');
INSERT INTO `category_translation` VALUES (170, 57, 'en', NULL);
INSERT INTO `category_translation` VALUES (171, 57, 'ru', NULL);
INSERT INTO `category_translation` VALUES (172, 58, 'az', 'tst');
INSERT INTO `category_translation` VALUES (173, 58, 'en', NULL);
INSERT INTO `category_translation` VALUES (174, 58, 'ru', NULL);
INSERT INTO `category_translation` VALUES (175, 59, 'az', 'test');
INSERT INTO `category_translation` VALUES (176, 59, 'en', NULL);
INSERT INTO `category_translation` VALUES (177, 59, 'ru', NULL);
INSERT INTO `category_translation` VALUES (178, 60, 'az', 'sdfsdf');
INSERT INTO `category_translation` VALUES (179, 60, 'en', NULL);
INSERT INTO `category_translation` VALUES (180, 60, 'ru', NULL);

-- ----------------------------
-- Table structure for category_type
-- ----------------------------
DROP TABLE IF EXISTS `category_type`;
CREATE TABLE `category_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category_type
-- ----------------------------
INSERT INTO `category_type` VALUES (16, 6, 0, 'default.png');
INSERT INTO `category_type` VALUES (17, 6, 1, '1586610991WhatsApp Image 2020-04-11 at 17.04.44.jpeg');
INSERT INTO `category_type` VALUES (18, 6, 2, 'default.png');
INSERT INTO `category_type` VALUES (19, 7, 0, 'default.png');
INSERT INTO `category_type` VALUES (20, 7, 1, '1586611637chernovik-01 2.png');
INSERT INTO `category_type` VALUES (21, 7, 2, 'default.png');
INSERT INTO `category_type` VALUES (22, 8, 0, 'default.png');
INSERT INTO `category_type` VALUES (23, 8, 1, '1586611867Facebook.png');
INSERT INTO `category_type` VALUES (24, 8, 2, 'default.png');
INSERT INTO `category_type` VALUES (25, 9, 0, 'default.png');
INSERT INTO `category_type` VALUES (26, 9, 1, '1586612443Group 34.png');
INSERT INTO `category_type` VALUES (27, 9, 2, 'default.png');
INSERT INTO `category_type` VALUES (28, 10, 0, 'default.png');
INSERT INTO `category_type` VALUES (29, 10, 1, '1586612550Group 32.png');
INSERT INTO `category_type` VALUES (30, 10, 2, 'default.png');
INSERT INTO `category_type` VALUES (31, 11, 0, 'default.png');
INSERT INTO `category_type` VALUES (32, 11, 1, '1586613388Group 29.png');
INSERT INTO `category_type` VALUES (33, 11, 2, 'default.png');
INSERT INTO `category_type` VALUES (34, 12, 0, 'default.png');
INSERT INTO `category_type` VALUES (35, 12, 1, '1586621031washing-machine (3) 1.png');
INSERT INTO `category_type` VALUES (36, 12, 2, 'default.png');
INSERT INTO `category_type` VALUES (37, 13, 0, '15876447731586168440chernovik2-01 1.png');
INSERT INTO `category_type` VALUES (38, 13, 1, '1586621842chernovik2-01 1.png');
INSERT INTO `category_type` VALUES (39, 13, 2, 'default.png');
INSERT INTO `category_type` VALUES (40, 14, 0, '15894441615-2-refrigerator-png-picture-thumb.png');
INSERT INTO `category_type` VALUES (41, 14, 1, 'default.png');
INSERT INTO `category_type` VALUES (42, 14, 2, 'default.png');
INSERT INTO `category_type` VALUES (43, 15, 0, '1589359933category-images-dishwashers-sinks-tapsall-dishwasherscategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (44, 15, 1, '1589359956category-images-dishwashers-sinks-tapssemi-integrated-dishwashercategory-row-tilecategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (45, 15, 2, '1589359933category-images-dishwashers-sinks-tapsfully-integrated-dishwasherscategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (46, 16, 0, 'default.png');
INSERT INTO `category_type` VALUES (47, 17, 0, 'default.png');
INSERT INTO `category_type` VALUES (48, 18, 0, 'default.png');
INSERT INTO `category_type` VALUES (49, 18, 1, 'default.png');
INSERT INTO `category_type` VALUES (50, 18, 2, 'default.png');
INSERT INTO `category_type` VALUES (51, 19, 0, 'default.png');
INSERT INTO `category_type` VALUES (52, 19, 3, 'default.png');
INSERT INTO `category_type` VALUES (53, 19, 4, 'default.png');
INSERT INTO `category_type` VALUES (54, 20, 0, 'default.png');
INSERT INTO `category_type` VALUES (55, 21, 0, 'default.png');
INSERT INTO `category_type` VALUES (56, 22, 0, 'default.png');
INSERT INTO `category_type` VALUES (57, 22, 1, 'default.png');
INSERT INTO `category_type` VALUES (58, 22, 2, 'default.png');
INSERT INTO `category_type` VALUES (59, 23, 0, 'default.png');
INSERT INTO `category_type` VALUES (60, 23, 1, 'default.png');
INSERT INTO `category_type` VALUES (61, 23, 2, 'default.png');
INSERT INTO `category_type` VALUES (62, 24, 0, '1589443374544.jpg');
INSERT INTO `category_type` VALUES (63, 24, 1, '1589442952photo.png');
INSERT INTO `category_type` VALUES (64, 24, 2, '1589442898Top_Load_VN.png');
INSERT INTO `category_type` VALUES (65, 25, 0, '1589443567544.jpg');
INSERT INTO `category_type` VALUES (66, 25, 1, '1589443566photo.png');
INSERT INTO `category_type` VALUES (67, 25, 2, '1589443567Top_Load_VN.png');
INSERT INTO `category_type` VALUES (68, 26, 0, '1589443771544.jpg');
INSERT INTO `category_type` VALUES (69, 26, 1, '1589443770photo.png');
INSERT INTO `category_type` VALUES (70, 26, 2, '1589443770Top_Load_VN.png');
INSERT INTO `category_type` VALUES (71, 27, 0, '1589443867544.jpg');
INSERT INTO `category_type` VALUES (72, 27, 1, '1589443866photo.png');
INSERT INTO `category_type` VALUES (73, 27, 2, '1589443866Top_Load_VN.png');
INSERT INTO `category_type` VALUES (74, 28, 0, '15894442555-2-refrigerator-png-picture-thumb.png');
INSERT INTO `category_type` VALUES (75, 28, 1, '158944425597-978851_two-door-refrigerator-png-transparent-image-samsung-24-52.png');
INSERT INTO `category_type` VALUES (76, 28, 2, '1589444255hero-JBFFS36NHM.png');
INSERT INTO `category_type` VALUES (77, 29, 0, '15894449795-2-refrigerator-png-picture-thumb.png');
INSERT INTO `category_type` VALUES (78, 29, 1, '158944497997-978851_two-door-refrigerator-png-transparent-image-samsung-24-52.png');
INSERT INTO `category_type` VALUES (79, 29, 2, '1589444979hero-JBFFS36NHM.png');
INSERT INTO `category_type` VALUES (80, 30, 0, '15894450855-2-refrigerator-png-picture-thumb.png');
INSERT INTO `category_type` VALUES (81, 30, 1, '158944508497-978851_two-door-refrigerator-png-transparent-image-samsung-24-52.png');
INSERT INTO `category_type` VALUES (82, 30, 2, '1589445085hero-JBFFS36NHM.png');
INSERT INTO `category_type` VALUES (83, 31, 0, 'default.png');
INSERT INTO `category_type` VALUES (84, 32, 0, 'default.png');
INSERT INTO `category_type` VALUES (85, 33, 0, 'default.png');
INSERT INTO `category_type` VALUES (86, 34, 0, 'default.png');
INSERT INTO `category_type` VALUES (87, 35, 0, 'default.png');
INSERT INTO `category_type` VALUES (88, 36, 0, 'default.png');
INSERT INTO `category_type` VALUES (89, 37, 0, 'default.png');
INSERT INTO `category_type` VALUES (90, 38, 0, '1589446508category-imagesAll-freestanding-stovescategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (91, 38, 1, '1589446508category-imagesgas-freestanding-ovenscategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (92, 38, 2, '1589446508category-imagesinduction-free-standing-stovescategory-row-tile.jpeg');
INSERT INTO `category_type` VALUES (93, 39, 0, '1589446014qü.png');
INSERT INTO `category_type` VALUES (94, 39, 1, '1589446008f44a433410984b3128ea0e1d1167e66cb828455e.png');
INSERT INTO `category_type` VALUES (95, 39, 2, '15894460102cd43b_bd16f85ffad0457da224bb40e1205b23_mv2_d_1200_1200_s_2.png');
INSERT INTO `category_type` VALUES (96, 40, 0, 'default.png');
INSERT INTO `category_type` VALUES (97, 41, 0, '15894528469ee2c3ec17deb0e633b5f028d0accfbb.png');
INSERT INTO `category_type` VALUES (98, 41, 3, 'default.png');
INSERT INTO `category_type` VALUES (99, 41, 4, 'default.png');
INSERT INTO `category_type` VALUES (100, 42, 0, 'default.png');
INSERT INTO `category_type` VALUES (101, 43, 0, 'default.png');
INSERT INTO `category_type` VALUES (102, 44, 0, 'default.png');
INSERT INTO `category_type` VALUES (103, 45, 0, 'default.png');
INSERT INTO `category_type` VALUES (104, 46, 0, 'default.png');
INSERT INTO `category_type` VALUES (105, 47, 0, 'default.png');
INSERT INTO `category_type` VALUES (106, 48, 0, 'default.png');
INSERT INTO `category_type` VALUES (107, 49, 0, 'default.png');
INSERT INTO `category_type` VALUES (108, 50, 0, 'default.png');
INSERT INTO `category_type` VALUES (109, 51, 0, 'default.png');
INSERT INTO `category_type` VALUES (110, 52, 0, 'default.png');
INSERT INTO `category_type` VALUES (111, 53, 0, 'default.png');
INSERT INTO `category_type` VALUES (112, 54, 0, 'default.png');
INSERT INTO `category_type` VALUES (113, 55, 0, 'default.png');
INSERT INTO `category_type` VALUES (114, 56, 0, 'default.png');
INSERT INTO `category_type` VALUES (115, 57, 0, 'default.png');
INSERT INTO `category_type` VALUES (116, 57, 1, 'default.png');
INSERT INTO `category_type` VALUES (117, 57, 2, 'default.png');
INSERT INTO `category_type` VALUES (118, 57, 3, 'default.png');
INSERT INTO `category_type` VALUES (119, 58, 0, 'default.png');
INSERT INTO `category_type` VALUES (120, 58, 1, '1586983372chernovik-01 2.png');
INSERT INTO `category_type` VALUES (121, 58, 4, 'default.png');
INSERT INTO `category_type` VALUES (122, 59, 0, 'default.png');
INSERT INTO `category_type` VALUES (123, 60, 0, 'default.png');

-- ----------------------------
-- Table structure for color_translation
-- ----------------------------
DROP TABLE IF EXISTS `color_translation`;
CREATE TABLE `color_translation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color_id` int(11) NULL DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of color_translation
-- ----------------------------
INSERT INTO `color_translation` VALUES (1, 'qirmizi', 1, 'az');
INSERT INTO `color_translation` VALUES (2, '', 1, 'en');
INSERT INTO `color_translation` VALUES (3, '', 1, 'ru');
INSERT INTO `color_translation` VALUES (4, 'green', 2, 'az');
INSERT INTO `color_translation` VALUES (5, 'green', 2, 'en');
INSERT INTO `color_translation` VALUES (6, '', 2, 'ru');
INSERT INTO `color_translation` VALUES (7, 'black', 3, 'az');
INSERT INTO `color_translation` VALUES (8, '', 3, 'en');
INSERT INTO `color_translation` VALUES (9, '', 3, 'ru');
INSERT INTO `color_translation` VALUES (10, 'ag', 4, 'az');
INSERT INTO `color_translation` VALUES (11, '', 4, 'en');
INSERT INTO `color_translation` VALUES (12, '', 4, 'ru');
INSERT INTO `color_translation` VALUES (13, 'bej', 5, 'az');
INSERT INTO `color_translation` VALUES (14, '', 5, 'en');
INSERT INTO `color_translation` VALUES (15, '', 5, 'ru');
INSERT INTO `color_translation` VALUES (16, 'bej', 6, 'az');
INSERT INTO `color_translation` VALUES (17, '', 6, 'en');
INSERT INTO `color_translation` VALUES (18, '', 6, 'ru');
INSERT INTO `color_translation` VALUES (19, 'qəhvəyi', 7, 'az');
INSERT INTO `color_translation` VALUES (20, '', 7, 'en');
INSERT INTO `color_translation` VALUES (21, '', 7, 'ru');
INSERT INTO `color_translation` VALUES (22, 'metal', 8, 'az');
INSERT INTO `color_translation` VALUES (23, '', 8, 'en');
INSERT INTO `color_translation` VALUES (24, '', 8, 'ru');
INSERT INTO `color_translation` VALUES (25, 'boz', 9, 'az');
INSERT INTO `color_translation` VALUES (26, '', 9, 'en');
INSERT INTO `color_translation` VALUES (27, '', 9, 'ru');
INSERT INTO `color_translation` VALUES (28, 'qızılı', 10, 'az');
INSERT INTO `color_translation` VALUES (29, 'gold', 10, 'en');
INSERT INTO `color_translation` VALUES (30, '', 10, 'ru');
INSERT INTO `color_translation` VALUES (31, 'bənövşəyi', 11, 'az');
INSERT INTO `color_translation` VALUES (32, '', 11, 'en');
INSERT INTO `color_translation` VALUES (33, 'фиолетовый', 11, 'ru');
INSERT INTO `color_translation` VALUES (34, 'goy', 12, 'az');
INSERT INTO `color_translation` VALUES (35, '', 12, 'en');
INSERT INTO `color_translation` VALUES (36, '', 12, 'ru');
INSERT INTO `color_translation` VALUES (37, 'ağ şüşə', 13, 'az');
INSERT INTO `color_translation` VALUES (38, 'white glass', 13, 'en');
INSERT INTO `color_translation` VALUES (39, 'Белое стекло', 13, 'ru');

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES (1, 'red');
INSERT INTO `colors` VALUES (2, 'green');
INSERT INTO `colors` VALUES (3, 'black');
INSERT INTO `colors` VALUES (4, 'white');
INSERT INTO `colors` VALUES (6, 'beige');
INSERT INTO `colors` VALUES (7, 'brown');
INSERT INTO `colors` VALUES (8, 'metal');
INSERT INTO `colors` VALUES (9, 'gray');
INSERT INTO `colors` VALUES (10, 'gold');
INSERT INTO `colors` VALUES (11, 'violet');
INSERT INTO `colors` VALUES (12, 'blue');
INSERT INTO `colors` VALUES (13, 'white glass');

-- ----------------------------
-- Table structure for filter
-- ----------------------------
DROP TABLE IF EXISTS `filter`;
CREATE TABLE `filter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_type_id` int(11) NULL DEFAULT NULL,
  `typeId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 552 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of filter
-- ----------------------------
INSERT INTO `filter` VALUES (220, NULL, 80, 1);
INSERT INTO `filter` VALUES (221, NULL, 80, 3);
INSERT INTO `filter` VALUES (222, NULL, 80, 4);
INSERT INTO `filter` VALUES (223, NULL, 80, 5);
INSERT INTO `filter` VALUES (224, NULL, 80, 6);
INSERT INTO `filter` VALUES (225, NULL, 80, 11);
INSERT INTO `filter` VALUES (226, NULL, 81, 1);
INSERT INTO `filter` VALUES (227, NULL, 81, 3);
INSERT INTO `filter` VALUES (228, NULL, 81, 4);
INSERT INTO `filter` VALUES (229, NULL, 81, 5);
INSERT INTO `filter` VALUES (230, NULL, 81, 6);
INSERT INTO `filter` VALUES (231, NULL, 81, 11);
INSERT INTO `filter` VALUES (232, NULL, 82, 1);
INSERT INTO `filter` VALUES (233, NULL, 82, 3);
INSERT INTO `filter` VALUES (234, NULL, 82, 6);
INSERT INTO `filter` VALUES (235, NULL, 82, 11);
INSERT INTO `filter` VALUES (236, NULL, 43, 1);
INSERT INTO `filter` VALUES (237, NULL, 43, 2);
INSERT INTO `filter` VALUES (238, NULL, 43, 3);
INSERT INTO `filter` VALUES (239, NULL, 43, 6);
INSERT INTO `filter` VALUES (240, NULL, 44, 1);
INSERT INTO `filter` VALUES (241, NULL, 44, 2);
INSERT INTO `filter` VALUES (242, NULL, 44, 3);
INSERT INTO `filter` VALUES (243, NULL, 44, 6);
INSERT INTO `filter` VALUES (244, NULL, 45, 1);
INSERT INTO `filter` VALUES (245, NULL, 45, 2);
INSERT INTO `filter` VALUES (246, NULL, 45, 3);
INSERT INTO `filter` VALUES (247, NULL, 45, 6);
INSERT INTO `filter` VALUES (248, NULL, 83, 1);
INSERT INTO `filter` VALUES (249, NULL, 83, 3);
INSERT INTO `filter` VALUES (250, NULL, 83, 5);
INSERT INTO `filter` VALUES (251, NULL, 83, 6);
INSERT INTO `filter` VALUES (252, NULL, 83, 18);
INSERT INTO `filter` VALUES (253, NULL, 84, 1);
INSERT INTO `filter` VALUES (254, NULL, 84, 3);
INSERT INTO `filter` VALUES (255, NULL, 84, 5);
INSERT INTO `filter` VALUES (256, NULL, 84, 6);
INSERT INTO `filter` VALUES (257, NULL, 84, 18);
INSERT INTO `filter` VALUES (258, NULL, 85, 1);
INSERT INTO `filter` VALUES (259, NULL, 85, 3);
INSERT INTO `filter` VALUES (260, NULL, 85, 5);
INSERT INTO `filter` VALUES (261, NULL, 85, 6);
INSERT INTO `filter` VALUES (262, NULL, 85, 18);
INSERT INTO `filter` VALUES (263, NULL, 86, 1);
INSERT INTO `filter` VALUES (264, NULL, 86, 3);
INSERT INTO `filter` VALUES (265, NULL, 86, 5);
INSERT INTO `filter` VALUES (266, NULL, 86, 6);
INSERT INTO `filter` VALUES (267, NULL, 86, 18);
INSERT INTO `filter` VALUES (268, NULL, 87, 1);
INSERT INTO `filter` VALUES (269, NULL, 87, 3);
INSERT INTO `filter` VALUES (270, NULL, 87, 4);
INSERT INTO `filter` VALUES (271, NULL, 87, 6);
INSERT INTO `filter` VALUES (272, NULL, 87, 12);
INSERT INTO `filter` VALUES (273, NULL, 88, 1);
INSERT INTO `filter` VALUES (274, NULL, 88, 3);
INSERT INTO `filter` VALUES (275, NULL, 88, 4);
INSERT INTO `filter` VALUES (276, NULL, 88, 6);
INSERT INTO `filter` VALUES (277, NULL, 88, 12);
INSERT INTO `filter` VALUES (278, NULL, 89, 1);
INSERT INTO `filter` VALUES (279, NULL, 89, 3);
INSERT INTO `filter` VALUES (280, NULL, 89, 4);
INSERT INTO `filter` VALUES (281, NULL, 89, 6);
INSERT INTO `filter` VALUES (282, NULL, 89, 12);
INSERT INTO `filter` VALUES (302, NULL, 100, 1);
INSERT INTO `filter` VALUES (303, NULL, 100, 3);
INSERT INTO `filter` VALUES (304, NULL, 101, 1);
INSERT INTO `filter` VALUES (305, NULL, 101, 3);
INSERT INTO `filter` VALUES (306, NULL, 101, 4);
INSERT INTO `filter` VALUES (307, NULL, 102, 1);
INSERT INTO `filter` VALUES (308, NULL, 102, 3);
INSERT INTO `filter` VALUES (309, NULL, 102, 4);
INSERT INTO `filter` VALUES (310, NULL, 102, 12);
INSERT INTO `filter` VALUES (311, NULL, 102, 16);
INSERT INTO `filter` VALUES (312, NULL, 103, 1);
INSERT INTO `filter` VALUES (313, NULL, 103, 3);
INSERT INTO `filter` VALUES (314, NULL, 103, 4);
INSERT INTO `filter` VALUES (315, NULL, 104, 1);
INSERT INTO `filter` VALUES (316, NULL, 104, 3);
INSERT INTO `filter` VALUES (317, NULL, 104, 4);
INSERT INTO `filter` VALUES (318, NULL, 104, 9);
INSERT INTO `filter` VALUES (319, NULL, 105, 1);
INSERT INTO `filter` VALUES (320, NULL, 105, 3);
INSERT INTO `filter` VALUES (321, NULL, 105, 4);
INSERT INTO `filter` VALUES (322, NULL, 106, 1);
INSERT INTO `filter` VALUES (323, NULL, 106, 3);
INSERT INTO `filter` VALUES (324, NULL, 106, 4);
INSERT INTO `filter` VALUES (325, NULL, 107, 1);
INSERT INTO `filter` VALUES (326, NULL, 107, 3);
INSERT INTO `filter` VALUES (327, NULL, 107, 4);
INSERT INTO `filter` VALUES (328, NULL, 107, 12);
INSERT INTO `filter` VALUES (329, NULL, 108, 1);
INSERT INTO `filter` VALUES (330, NULL, 108, 3);
INSERT INTO `filter` VALUES (331, NULL, 108, 4);
INSERT INTO `filter` VALUES (332, NULL, 108, 8);
INSERT INTO `filter` VALUES (333, NULL, 109, 1);
INSERT INTO `filter` VALUES (334, NULL, 109, 3);
INSERT INTO `filter` VALUES (335, NULL, 109, 4);
INSERT INTO `filter` VALUES (336, NULL, 109, 8);
INSERT INTO `filter` VALUES (337, NULL, 110, 1);
INSERT INTO `filter` VALUES (338, NULL, 110, 3);
INSERT INTO `filter` VALUES (339, NULL, 110, 4);
INSERT INTO `filter` VALUES (340, NULL, 110, 12);
INSERT INTO `filter` VALUES (341, NULL, 111, 1);
INSERT INTO `filter` VALUES (342, NULL, 111, 3);
INSERT INTO `filter` VALUES (343, NULL, 111, 4);
INSERT INTO `filter` VALUES (344, NULL, 111, 10);
INSERT INTO `filter` VALUES (345, NULL, 112, 1);
INSERT INTO `filter` VALUES (346, NULL, 112, 3);
INSERT INTO `filter` VALUES (347, NULL, 112, 4);
INSERT INTO `filter` VALUES (348, NULL, 113, 1);
INSERT INTO `filter` VALUES (349, NULL, 113, 3);
INSERT INTO `filter` VALUES (350, NULL, 113, 4);
INSERT INTO `filter` VALUES (351, NULL, 114, 1);
INSERT INTO `filter` VALUES (352, NULL, 114, 3);
INSERT INTO `filter` VALUES (353, NULL, 114, 4);
INSERT INTO `filter` VALUES (390, NULL, 71, 1);
INSERT INTO `filter` VALUES (391, NULL, 71, 2);
INSERT INTO `filter` VALUES (392, NULL, 71, 3);
INSERT INTO `filter` VALUES (393, NULL, 71, 4);
INSERT INTO `filter` VALUES (394, NULL, 72, 1);
INSERT INTO `filter` VALUES (395, NULL, 72, 2);
INSERT INTO `filter` VALUES (396, NULL, 72, 3);
INSERT INTO `filter` VALUES (397, NULL, 72, 4);
INSERT INTO `filter` VALUES (398, NULL, 73, 1);
INSERT INTO `filter` VALUES (399, NULL, 73, 2);
INSERT INTO `filter` VALUES (400, NULL, 73, 3);
INSERT INTO `filter` VALUES (401, NULL, 73, 4);
INSERT INTO `filter` VALUES (406, NULL, 96, 1);
INSERT INTO `filter` VALUES (407, NULL, 96, 3);
INSERT INTO `filter` VALUES (408, NULL, 96, 4);
INSERT INTO `filter` VALUES (409, NULL, 96, 15);
INSERT INTO `filter` VALUES (410, NULL, 74, 1);
INSERT INTO `filter` VALUES (411, NULL, 74, 3);
INSERT INTO `filter` VALUES (412, NULL, 74, 4);
INSERT INTO `filter` VALUES (413, NULL, 74, 5);
INSERT INTO `filter` VALUES (414, NULL, 74, 6);
INSERT INTO `filter` VALUES (415, NULL, 74, 11);
INSERT INTO `filter` VALUES (416, NULL, 75, 1);
INSERT INTO `filter` VALUES (417, NULL, 75, 3);
INSERT INTO `filter` VALUES (418, NULL, 75, 4);
INSERT INTO `filter` VALUES (419, NULL, 75, 5);
INSERT INTO `filter` VALUES (420, NULL, 75, 6);
INSERT INTO `filter` VALUES (421, NULL, 75, 11);
INSERT INTO `filter` VALUES (422, NULL, 76, 1);
INSERT INTO `filter` VALUES (423, NULL, 76, 3);
INSERT INTO `filter` VALUES (424, NULL, 76, 6);
INSERT INTO `filter` VALUES (425, NULL, 76, 11);
INSERT INTO `filter` VALUES (426, NULL, 77, 1);
INSERT INTO `filter` VALUES (427, NULL, 77, 3);
INSERT INTO `filter` VALUES (428, NULL, 77, 4);
INSERT INTO `filter` VALUES (429, NULL, 77, 5);
INSERT INTO `filter` VALUES (430, NULL, 77, 6);
INSERT INTO `filter` VALUES (431, NULL, 77, 11);
INSERT INTO `filter` VALUES (432, NULL, 78, 1);
INSERT INTO `filter` VALUES (433, NULL, 78, 3);
INSERT INTO `filter` VALUES (434, NULL, 78, 4);
INSERT INTO `filter` VALUES (435, NULL, 78, 5);
INSERT INTO `filter` VALUES (436, NULL, 78, 6);
INSERT INTO `filter` VALUES (437, NULL, 78, 11);
INSERT INTO `filter` VALUES (438, NULL, 79, 1);
INSERT INTO `filter` VALUES (439, NULL, 79, 3);
INSERT INTO `filter` VALUES (440, NULL, 79, 6);
INSERT INTO `filter` VALUES (441, NULL, 79, 11);
INSERT INTO `filter` VALUES (442, NULL, 97, 1);
INSERT INTO `filter` VALUES (443, NULL, 97, 3);
INSERT INTO `filter` VALUES (444, NULL, 97, 4);
INSERT INTO `filter` VALUES (445, NULL, 97, 6);
INSERT INTO `filter` VALUES (446, NULL, 97, 19);
INSERT INTO `filter` VALUES (447, NULL, 97, 20);
INSERT INTO `filter` VALUES (448, NULL, 98, 1);
INSERT INTO `filter` VALUES (449, NULL, 98, 3);
INSERT INTO `filter` VALUES (450, NULL, 98, 4);
INSERT INTO `filter` VALUES (451, NULL, 98, 6);
INSERT INTO `filter` VALUES (452, NULL, 98, 19);
INSERT INTO `filter` VALUES (453, NULL, 98, 20);
INSERT INTO `filter` VALUES (454, NULL, 99, 1);
INSERT INTO `filter` VALUES (455, NULL, 99, 3);
INSERT INTO `filter` VALUES (456, NULL, 99, 4);
INSERT INTO `filter` VALUES (457, NULL, 99, 6);
INSERT INTO `filter` VALUES (458, NULL, 99, 19);
INSERT INTO `filter` VALUES (459, NULL, 99, 20);
INSERT INTO `filter` VALUES (480, NULL, 90, 1);
INSERT INTO `filter` VALUES (481, NULL, 90, 3);
INSERT INTO `filter` VALUES (482, NULL, 90, 4);
INSERT INTO `filter` VALUES (483, NULL, 90, 5);
INSERT INTO `filter` VALUES (484, NULL, 90, 6);
INSERT INTO `filter` VALUES (485, NULL, 90, 7);
INSERT INTO `filter` VALUES (486, NULL, 90, 14);
INSERT INTO `filter` VALUES (487, NULL, 90, 17);
INSERT INTO `filter` VALUES (488, NULL, 91, 1);
INSERT INTO `filter` VALUES (489, NULL, 91, 3);
INSERT INTO `filter` VALUES (490, NULL, 91, 4);
INSERT INTO `filter` VALUES (491, NULL, 91, 5);
INSERT INTO `filter` VALUES (492, NULL, 91, 6);
INSERT INTO `filter` VALUES (493, NULL, 91, 7);
INSERT INTO `filter` VALUES (494, NULL, 91, 14);
INSERT INTO `filter` VALUES (495, NULL, 91, 17);
INSERT INTO `filter` VALUES (496, NULL, 92, 1);
INSERT INTO `filter` VALUES (497, NULL, 92, 3);
INSERT INTO `filter` VALUES (498, NULL, 92, 4);
INSERT INTO `filter` VALUES (499, NULL, 92, 5);
INSERT INTO `filter` VALUES (500, NULL, 92, 6);
INSERT INTO `filter` VALUES (501, NULL, 92, 7);
INSERT INTO `filter` VALUES (502, NULL, 92, 14);
INSERT INTO `filter` VALUES (503, NULL, 92, 17);
INSERT INTO `filter` VALUES (504, NULL, 62, 1);
INSERT INTO `filter` VALUES (505, NULL, 62, 2);
INSERT INTO `filter` VALUES (506, NULL, 62, 3);
INSERT INTO `filter` VALUES (507, NULL, 62, 4);
INSERT INTO `filter` VALUES (508, NULL, 63, 1);
INSERT INTO `filter` VALUES (509, NULL, 63, 2);
INSERT INTO `filter` VALUES (510, NULL, 63, 3);
INSERT INTO `filter` VALUES (511, NULL, 63, 4);
INSERT INTO `filter` VALUES (512, NULL, 64, 1);
INSERT INTO `filter` VALUES (513, NULL, 64, 2);
INSERT INTO `filter` VALUES (514, NULL, 64, 3);
INSERT INTO `filter` VALUES (515, NULL, 64, 4);
INSERT INTO `filter` VALUES (516, NULL, 65, 1);
INSERT INTO `filter` VALUES (517, NULL, 65, 2);
INSERT INTO `filter` VALUES (518, NULL, 65, 3);
INSERT INTO `filter` VALUES (519, NULL, 65, 4);
INSERT INTO `filter` VALUES (520, NULL, 66, 1);
INSERT INTO `filter` VALUES (521, NULL, 66, 2);
INSERT INTO `filter` VALUES (522, NULL, 66, 3);
INSERT INTO `filter` VALUES (523, NULL, 66, 4);
INSERT INTO `filter` VALUES (524, NULL, 67, 1);
INSERT INTO `filter` VALUES (525, NULL, 67, 2);
INSERT INTO `filter` VALUES (526, NULL, 67, 3);
INSERT INTO `filter` VALUES (527, NULL, 67, 4);
INSERT INTO `filter` VALUES (540, NULL, 68, 1);
INSERT INTO `filter` VALUES (541, NULL, 68, 3);
INSERT INTO `filter` VALUES (542, NULL, 68, 4);
INSERT INTO `filter` VALUES (543, NULL, 68, 13);
INSERT INTO `filter` VALUES (544, NULL, 69, 1);
INSERT INTO `filter` VALUES (545, NULL, 69, 3);
INSERT INTO `filter` VALUES (546, NULL, 69, 4);
INSERT INTO `filter` VALUES (547, NULL, 69, 13);
INSERT INTO `filter` VALUES (548, NULL, 70, 1);
INSERT INTO `filter` VALUES (549, NULL, 70, 2);
INSERT INTO `filter` VALUES (550, NULL, 70, 3);
INSERT INTO `filter` VALUES (551, NULL, 70, 13);

-- ----------------------------
-- Table structure for footer_pages
-- ----------------------------
DROP TABLE IF EXISTS `footer_pages`;
CREATE TABLE `footer_pages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `az` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ru` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of footer_pages
-- ----------------------------
INSERT INTO `footer_pages` VALUES (6, '{\"az\":\"Haqq\\u0131m\\u0131zda\",\"ru\":\"name.ru\"}', 'haqqımızda', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (7, '{\"az\":\"Korparativ sat\\u0131\\u015f\"}', 'korprativ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (8, '{\"az\":\"\\u00d6d\\u0259ni\\u015f n\\u00f6vl\\u0259ri\"}', 'odenis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (9, '{\"az\":\"Servis\"}', 'Servis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (10, '{\"az\":\"Qeydiyyat\"}', 'register', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (11, '{\"az\":\"\\u00c7atd\\u0131r\\u0131lma v\\u0259 Qura\\u015fd\\u0131r\\u0131lma\"}', 'services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (12, '{\"az\":\"Brendl\\u0259r\"}', 'brends', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);
INSERT INTO `footer_pages` VALUES (13, '{\"az\":\"Karyera\"}', 'karyera', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa possimus placeat eius iste harum accusantium tempora! Velit, sit debitis provident natus ratione recusandae repellendus fugit ex tempore cumque reprehenderit temporibus alias accusantium quia molestiae. Molestiae voluptates consequatur dolor enim voluptatem repudiandae atque iste perferendis! Architecto optio ratione adipisci nemo officiis alias deleniti sapiente hic dignissimos asperiores ipsum assumenda rem a atque obcaecati nihil, sed, minus totam molestias exercitationem eos! Unde nulla laboriosam officiis ipsam repellendus voluptates esse sit perferendis. Quos accusamus sit incidunt, delectus veritatis rem at atque eos aliquam officiis! Impedit tempore ducimus ut modi voluptatibus laborum praesentium. Dolor?', NULL, NULL);

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'az');
INSERT INTO `language` VALUES (2, 'en');
INSERT INTO `language` VALUES (3, 'ru');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` bigint(22) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT 0,
  `discountprice` decimal(10, 2) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1589230620, 60, NULL, 6500.00, '2020-05-11 22:57:00', '2020-05-11 22:57:00', NULL, NULL, 0, 4500.00, 4, NULL, NULL, NULL);
INSERT INTO `order` VALUES (2, 1589237250, 61, NULL, 3000.00, '2020-05-12 00:47:30', '2020-05-12 00:47:30', NULL, NULL, 0, 2500.00, 6, NULL, NULL, NULL);
INSERT INTO `order` VALUES (3, 1589974322, 62, NULL, 4500.00, '2020-05-20 13:32:02', '2020-05-20 13:32:02', NULL, NULL, 0, 0.00, 3, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `brend_id` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT 0,
  `height` int(11) NULL DEFAULT 0,
  `depth` int(11) NULL DEFAULT 0,
  `fuel_type` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `machine_type` int(11) NULL DEFAULT NULL,
  `mixer_type` int(11) NULL DEFAULT NULL,
  `material` int(11) NULL DEFAULT NULL,
  `discountprice` decimal(10, 2) NULL DEFAULT NULL,
  `capasity` int(11) NULL DEFAULT 0,
  `guc` int(11) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `color_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `frost` int(11) NULL DEFAULT NULL,
  `wasing_cap` int(11) NULL DEFAULT 0,
  `cod` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `drainer` int(11) NULL DEFAULT NULL,
  `bag_type` int(11) NULL DEFAULT NULL,
  `water_type` int(11) NULL DEFAULT NULL,
  `oven_cat` int(11) NULL DEFAULT NULL,
  `volume` int(11) NULL DEFAULT 0,
  `burner` int(11) NULL DEFAULT NULL,
  `installation` int(11) NULL DEFAULT NULL,
  `dispenser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plumbing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `warranty` int(11) NULL DEFAULT 2,
  `top_offer` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 655 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (26, '{\"az\":\"Jesse Haley\",\"en\":\"Chantale Morales\",\"ru\":\"Katelyn Saunders\"}', '{\"az\":\"Tempore similique a\",\"en\":\"Corporis cumque repe\",\"ru\":\"Ut recusandae Non l\"}', 110.00, 4, 5, 76, 88, NULL, 1, NULL, NULL, NULL, NULL, 533.00, 0, 0, '2020-05-11 23:59:16', '2020-06-16 12:57:16', '2020-06-16 12:57:16', 2, 24, NULL, 0, 'Pariatur Et asperio', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', 'no', 41, NULL);
INSERT INTO `product` VALUES (27, '{\"az\":\"Hotpoint BTZ 1632\"}', '[]', 7000.00, 5, 1200, 1700, 1900, NULL, 2, NULL, NULL, NULL, NULL, 6500.00, 0, 0, '2020-05-14 15:41:15', '2020-06-18 16:30:05', '2020-06-18 16:30:05', 1, 25, NULL, 0, 'WAK 24', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', 'no', 2, NULL);
INSERT INTO `product` VALUES (28, '{\"az\":\"AMICA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1990.00, 5, 550, 1810, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:07:21', '2020-06-09 10:13:01', '2020-06-09 10:13:01', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (29, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1990.00, 5, 550, 1810, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:21:39', '2020-06-09 10:25:55', '2020-06-09 10:25:55', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (30, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 2965.30, 4, 2965, 2965, 2965, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:26:33', '2020-06-09 10:35:57', '2020-06-09 10:35:57', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (31, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 2965.30, 1, 2965, 2965, 2965, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:28:22', '2020-06-09 10:36:02', '2020-06-09 10:36:02', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (32, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1810.00, 1, 1810, 1810, 1810, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:39:27', '2020-06-09 12:16:06', '2020-06-09 12:16:06', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (33, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 2965.30, 1, 2965, 2965, 2965, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:41:51', '2020-06-09 12:16:10', '2020-06-09 12:16:10', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (34, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 2965.30, 1, 2965, 2965, 2965, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 10:43:38', '2020-06-09 12:16:15', '2020-06-09 12:16:15', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (35, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1810.00, 1, 1810, 1810, 1810, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:14:58', '2020-06-09 12:16:19', '2020-06-09 12:16:19', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (36, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1810.00, 1, 1810, 1810, 1810, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:16:59', '2020-06-11 08:07:02', '2020-06-11 08:07:02', 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (37, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 2222.00, 1, 2, 2, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:19:06', '2020-06-11 08:07:07', '2020-06-11 08:07:07', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (38, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 555.00, 1, 5, 5, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:20:28', '2020-06-11 08:07:12', '2020-06-11 08:07:12', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (39, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 555.00, 1, 5, 5, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:21:47', '2020-06-11 08:07:16', '2020-06-11 08:07:16', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (40, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 555.00, 1, 5, 5, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:29:00', '2020-06-11 08:07:26', '2020-06-11 08:07:26', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (41, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 88.00, 1, 8, 88, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-09 12:31:35', '2020-06-11 08:07:31', '2020-06-11 08:07:31', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (42, '{\"az\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\"}', 1990.00, 6, 550, 1810, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 08:21:01', '2020-06-11 08:24:03', '2020-06-11 08:24:03', 5, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (43, '{\"az\":\"1 990,00 \\u20bc\"}', '{\"az\":\"1 990,00 \\u20bc\"}', 1990.00, 1, 1990, 1990, 1990, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 08:23:05', '2020-06-11 08:24:00', '2020-06-11 08:24:00', 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (44, '{\"az\":\"AMICA FK 2965.3 GAA\",\"en\":\"AMICA FK 2965.3 GAA\",\"ru\":\"AMICA FK 2965.3 GAA\"}', '{\"az\":\"AMICA FK 2965.3 GAA\",\"en\":\"AMICA FK 2965.3 GAA\",\"ru\":\"AMICA FK 2965.3 GAA\"}', 1990.00, 6, 1810, 1810, 1810, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 08:39:12', '2020-06-18 16:50:52', NULL, 6, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (45, '{\"az\":\"AMICA FK 2965.3 RAA3\",\"en\":\"AMICA FK 2965.3 RAA3\",\"ru\":\"AMICA FK 2965.3 RAA3\"}', '{\"az\":\"AMICA FK 2965.3 RAA3\",\"en\":\"AMICA FK 2965.3 RAA3\",\"ru\":\"AMICA FK 2965.3 RAA3\"}', 1990.00, 6, 550, 1810, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 08:49:46', '2020-06-18 16:52:09', NULL, 1, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (46, '{\"az\":\"AMICA FM 104.4\",\"en\":\"AMICA FM 104.4\",\"ru\":\"AMICA FM 104.4\"}', '{\"az\":\"AMICA FM 104.4\",\"en\":\"AMICA FM 104.4\",\"ru\":\"AMICA FM 104.4\"}', 560.00, 6, 480, 840, 510, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 09:11:02', '2020-06-18 16:52:34', NULL, 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (47, '{\"az\":\"AMICA KGC 15634 S\",\"en\":\"AMICA KGC 15634 S\",\"ru\":\"AMICA KGC 15634 S\"}', '{\"az\":\"AMICA KGC 15634 S\",\"en\":\"AMICA KGC 15634 S\",\"ru\":\"AMICA KGC 15634 S\"}', 1530.00, 6, 550, 1440, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-11 09:18:54', '2020-06-18 16:52:55', NULL, 3, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (48, '{\"az\":\"AQUASANITA BELLA SQB101-601AW\",\"en\":\"AQUASANITA BELLA SQB101-601AW\",\"ru\":\"AQUASANITA BELLA SQB101-601AW\"}', '{\"az\":\"AQUASANITA BELLA SQB101-601AW\",\"en\":\"AQUASANITA BELLA SQB101-601AW\",\"ru\":\"AQUASANITA BELLA SQB101-601AW\"}', 490.00, 5, 780, 500, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:39:21', '2020-06-18 15:53:36', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (49, '{\"az\":\"AQUASANITA BELLA SQB101-120AW\",\"en\":\"AQUASANITA BELLA SQB101-120AW\",\"ru\":\"AQUASANITA BELLA SQB101-120AW\"}', '{\"az\":\"AQUASANITA BELLA SQB101-120AW\",\"en\":\"AQUASANITA BELLA SQB101-120AW\",\"ru\":\"AQUASANITA BELLA SQB101-120AW\"}', 490.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:46:29', '2020-06-18 15:53:09', NULL, 7, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (50, '{\"az\":\"AQUASANITA BELLA SQB101\"}', '{\"az\":\"AQUASANITA BELLA SQB101\"}', 490.00, 5, 0, 0, 0, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:47:30', '2020-06-16 13:20:52', '2020-06-16 13:20:52', 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (51, '{\"az\":\"AQUASANITA BELLA SQB101-112AW\",\"en\":\"AQUASANITA BELLA SQB101-112AW\",\"ru\":\"AQUASANITA BELLA SQB101-112AW\"}', '{\"az\":\"AQUASANITA BELLA SQB101-112AW\",\"en\":\"AQUASANITA BELLA SQB101-112AW\",\"ru\":\"AQUASANITA BELLA SQB101-112AW\"}', 490.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:48:26', '2020-06-18 15:52:28', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (52, '{\"az\":\"AQUASANITA 2581-110-01\"}', '{\"az\":\"AQUASANITA 2581-110-01\"}', 240.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:52:04', '2020-06-15 18:56:13', '2020-06-15 18:56:13', 6, 55, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (53, '{\"az\":\"AQUASANITA 2581-601-01\"}', '{\"az\":\"AQUASANITA 2581-601-01\"}', 240.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:52:53', '2020-06-15 18:56:09', '2020-06-15 18:56:09', 3, 55, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (54, '{\"az\":\"AQUASANITA 2581-110-01\"}', '{\"az\":\"AQUASANITA 2581-110-01\"}', 240.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-15 18:57:21', '2020-06-15 18:57:21', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (55, '{\"az\":\"AQUASANITA 2581-601-01\"}', '{\"az\":\"AQUASANITA 2581-601-01\"}', 240.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 09:11:37', '2020-06-16 09:11:37', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (56, '{\"az\":\"AQUASANITA 2813-110-01\"}', '{\"az\":\"AQUASANITA 2813-110-01\"}', 270.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 09:13:27', '2020-06-16 09:13:27', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (57, '{\"az\":\"AQUASANITA 2813-111-01\"}', '{\"az\":\"AQUASANITA 2813-111-01\"}', 270.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 09:14:52', '2020-06-16 09:14:52', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (58, '{\"az\":\"AQUASANITA 2813-112-01\"}', '{\"az\":\"AQUASANITA 2813-112-01\"}', 270.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 09:16:04', '2020-06-16 09:16:04', NULL, 2, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (59, '{\"az\":\"AQUASANITA 2813-112-01\"}', '{\"az\":\"AQUASANITA 2813-112-01\"}', 270.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:40:03', '2020-06-16 11:40:03', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (60, '{\"az\":\"AQUASANITA 2813-601-01\"}', '{\"az\":\"AQUASANITA 2813-601-01\"}', 270.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:40:51', '2020-06-16 11:40:51', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (61, '{\"az\":\"AQUASANITA 5523 -111-01\"}', '{\"az\":\"AQUASANITA 5523 -111-01\"}', 355.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:42:14', '2020-06-16 11:42:14', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (62, '{\"az\":\"AQUASANITA 5523 -112-01\"}', '{\"az\":\"AQUASANITA 5523 -112-01\"}', 355.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:44:04', '2020-06-16 11:44:04', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (63, '{\"az\":\"AQUASANITA 5523 -601-01\"}', '{\"az\":\"AQUASANITA 5523 -601-01\"}', 355.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:45:07', '2020-06-16 11:45:07', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (64, '{\"az\":\"AQUASANITA 5523 -710-01\"}', '{\"az\":\"AQUASANITA 5523 -710-01\"}', 355.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:46:22', '2020-06-16 11:46:22', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (65, '{\"az\":\"AQUASANITA AKVADUO 2663-001-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-001-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:47:50', '2020-06-16 11:47:50', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (66, '{\"az\":\"AQUASANITA AKVADUO 2663-001-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-001-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:48:29', '2020-06-16 11:48:29', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (67, '{\"az\":\"AQUASANITA AKVADUO 2663-110-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-110-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:49:13', '2020-06-16 11:49:13', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (68, '{\"az\":\"AQUASANITA AKVADUO 2663-111-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-111-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:50:38', '2020-06-16 11:50:38', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (69, '{\"az\":\"AQUASANITA AKVADUO 2663-112-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-112-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:53:57', '2020-06-16 11:53:57', NULL, 9, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (70, '{\"az\":\"AQUASANITA AKVADUO 2663-710-01\"}', '{\"az\":\"AQUASANITA AKVADUO 2663-710-01\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:54:56', '2020-06-16 11:54:56', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (71, '{\"az\":\"AQUASANITA HERA 2473-311-01\"}', '{\"az\":\"AQUASANITA HERA 2473-311-01\"}', 580.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 11:56:05', '2020-06-16 11:56:05', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (72, '{\"az\":\"AQUASANITA MIRRUS 5063-111-01\"}', '{\"az\":\"AQUASANITA MIRRUS 5063-111-01\"}', 450.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:01:48', '2020-06-16 12:01:48', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (73, '{\"az\":\"AQUASANITA MIRRUS 5063-601-01\"}', '{\"az\":\"AQUASANITA MIRRUS 5063-601-01\"}', 450.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:02:17', '2020-06-16 12:02:17', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (74, '{\"az\":\"AQUASANITA MIRRUS 5063-710-01\"}', '{\"az\":\"AQUASANITA MIRRUS 5063-710-01\"}', 450.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:02:52', '2020-06-16 12:02:52', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (75, '{\"az\":\"AQUASANITA MODUS 2383-001-01\"}', '{\"az\":\"AQUASANITA MODUS 2383-001-01\"}', 440.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:04:23', '2020-06-16 12:04:23', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (76, '{\"az\":\"AQUASANITA MODUS 2383-111-01\"}', '{\"az\":\"AQUASANITA MODUS 2383-111-01\"}', 460.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:05:03', '2020-06-16 12:05:03', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (77, '{\"az\":\"AQUASANITA MODUS 2383-601-01\"}', '{\"az\":\"AQUASANITA MODUS 2383-601-01\"}', 480.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:05:41', '2020-06-16 12:05:41', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (78, '{\"az\":\"AQUASANITA SABIADUO 2963 -710-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963 -710-01\"}', 550.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:07:19', '2020-06-16 12:07:19', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (79, '{\"az\":\"AQUASANITA SABIADUO 2963-001-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-001-01\"}', 520.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:08:04', '2020-06-16 12:08:04', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (80, '{\"az\":\"AQUASANITA SABIADUO 2963-002-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-002-01\"}', 590.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:08:49', '2020-06-16 12:08:49', NULL, 8, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (81, '{\"az\":\"AQUASANITA SABIADUO 2963-110-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-110-01\"}', 550.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:09:45', '2020-06-16 12:09:45', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (82, '{\"az\":\"AQUASANITA SABIADUO 2963-111-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-111-01\"}', 550.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:10:25', '2020-06-16 12:10:25', NULL, 4, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (83, '{\"az\":\"AQUASANITA SABIADUO 2963-112-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-112-01\"}', 550.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:10:59', '2020-06-16 12:10:59', NULL, 7, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (84, '{\"az\":\"AQUASANITA SABIADUO 2963-601-01\"}', '{\"az\":\"AQUASANITA SABIADUO 2963-601-01\"}', 550.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:11:46', '2020-06-16 12:11:46', NULL, 3, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (85, '{\"az\":\"BOSCH\\tHBF 534 EBOQ\",\"en\":\"BOSCH\\tHBF 534 EBOQ\",\"ru\":\"BOSCH\\tHBF 534 EBOQ\"}', '{\"az\":\"BOSCH\\tHBF 534 EBOQ\",\"en\":\"BOSCH\\tHBF 534 EBOQ\",\"ru\":\"BOSCH\\tHBF 534 EBOQ\"}', 960.00, 1, 479, 329, 420, 8, 2, 6, NULL, 0, NULL, NULL, 0, 0, '2020-06-16 12:17:13', '2020-06-19 12:17:32', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, 7, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (86, '{\"az\":\"BOSCH HBA 534EB0Q\"}', '{\"az\":\"BOSCH HBA 534EB0Q\"}', 960.00, 1, 0, 0, 0, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:21:32', '2020-06-16 12:25:27', '2020-06-16 12:25:27', 3, 38, NULL, 0, NULL, NULL, NULL, NULL, 7, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (87, '{\"az\":\"BOSCH HBG76R650\",\"en\":\"BOSCH HBG76R650\",\"ru\":\"BOSCH HBG76R650\"}', '{\"az\":\"BOSCH HBG76R650\",\"en\":\"BOSCH HBG76R650\",\"ru\":\"BOSCH HBG76R650\"}', 1980.00, 1, 595, 595, 550, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:23:17', '2020-06-19 12:21:23', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (88, '{\"az\":\"BOSCH HBG636NS1\",\"en\":\"BOSCH HBG636NS1\",\"ru\":\"BOSCH HBG636NS1\"}', '{\"az\":\"BOSCH HBG636NS1\",\"en\":\"BOSCH HBG636NS1\",\"ru\":\"BOSCH HBG636NS1\"}', 2100.00, 1, 595, 595, 540, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:25:08', '2020-06-19 12:20:26', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (89, '{\"az\":\"BOSCH DWK065G60\",\"en\":\"BOSCH DWK065G60\",\"ru\":\"BOSCH DWK065G60\"}', '{\"az\":\"BOSCH DWK065G60\",\"en\":\"BOSCH DWK065G60\",\"ru\":\"BOSCH DWK065G60\"}', 799.00, 1, 600, 1107, 339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:30:11', '2020-06-18 16:58:55', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (90, '{\"az\":\"BOSCH\\tTKA 1410\"}', '{\"az\":\"BOSCH\\tTKA 1410\"}', 120.00, 1, 0, 0, 0, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, 0, '2020-06-16 12:32:34', '2020-06-19 16:10:33', '2020-06-19 16:10:33', 3, 46, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (91, '{\"az\":\"BOSCH MFW45020\"}', '{\"az\":\"BOSCH MFW45020\"}', 245.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:35:12', '2020-06-16 12:35:12', NULL, 4, 49, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (92, '{\"az\":\"BOSCH WTG8640XME\",\"en\":\"BOSCH WTG8640XME\",\"ru\":\"BOSCH WTG8640XME\"}', '{\"az\":\"BOSCH WTG8640XME\",\"en\":\"BOSCH WTG8640XME\",\"ru\":\"BOSCH WTG8640XME\"}', 1799.00, 1, 598, 842, 636, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:51:25', '2020-06-18 16:34:06', NULL, 9, 25, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (93, '{\"az\":\"BOSCH WTN86200PL\",\"en\":\"BOSCH WTN86200PL\",\"ru\":\"BOSCH WTN86200PL\"}', '{\"az\":\"BOSCH WTN86200PL\",\"en\":\"BOSCH WTN86200PL\",\"ru\":\"BOSCH WTN86200PL\"}', 1620.00, 1, 598, 842, 599, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:55:29', '2020-06-18 16:34:20', NULL, 4, 25, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (94, '{\"az\":\"BOSCH WAB2026YPL\",\"en\":\"BOSCH WAB2026YPL\",\"ru\":\"BOSCH WAB2026YPL\"}', '{\"az\":\"BOSCH WAB2026YPL\",\"en\":\"BOSCH WAB2026YPL\",\"ru\":\"BOSCH WAB2026YPL\"}', 890.00, 1, 600, 850, 560, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:58:22', '2020-06-18 16:20:36', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (95, '{\"az\":\"BOSCH WAN2007KPL\",\"en\":\"BOSCH WAN2007KPL\",\"ru\":\"BOSCH WAN2007KPL\"}', '{\"az\":\"BOSCH WAN2007KPL\",\"en\":\"BOSCH WAN2007KPL\",\"ru\":\"BOSCH WAN2007KPL\"}', 1190.00, 1, 600, 850, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 12:59:49', '2020-06-18 16:25:35', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (96, '{\"az\":\"BOSCH WAT28481ME\",\"en\":\"BOSCH WAT28481ME\",\"ru\":\"BOSCH WAT28481ME\"}', '{\"az\":\"BOSCH WAT28481ME\",\"en\":\"BOSCH WAT28481ME\",\"ru\":\"BOSCH WAT28481ME\"}', 1445.00, 1, 800, 590, 650, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:00:59', '2020-06-18 16:27:42', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (97, '{\"az\":\"BOSCH WLK2427KPL\",\"en\":\"BOSCH WLK2427KPL\",\"ru\":\"BOSCH WLK2427KPL\"}', '{\"az\":\"BOSCH WLK2427KPL\",\"en\":\"BOSCH WLK2427KPL\",\"ru\":\"BOSCH WLK2427KPL\"}', 1390.00, 1, 600, 850, 450, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:02:16', '2020-06-18 16:29:47', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (98, '{\"az\":\"BOSCH WLL2018KPL\",\"en\":\"BOSCH WLL2018KPL\",\"ru\":\"BOSCH WLL2018KPL\"}', '{\"az\":\"BOSCH WLL2018KPL\",\"en\":\"BOSCH WLL2018KPL\",\"ru\":\"BOSCH WLL2018KPL\"}', 1390.00, 1, 598, 848, 486, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:04:47', '2020-06-18 16:19:27', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (99, '{\"az\":\"BOSCH PBY6C5B6O0\",\"en\":\"BOSCH PBY6C5B6O0\",\"ru\":\"BOSCH PBY6C5B6O0\"}', '{\"az\":\"BOSCH PBY6C5B6O0\",\"en\":\"BOSCH PBY6C5B6O0\",\"ru\":\"BOSCH PBY6C5B6O0\"}', 385.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:07:50', '2020-06-18 16:54:32', NULL, 9, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (100, '{\"az\":\"BOSCH PBY6C6B60O\",\"en\":\"BOSCH PBY6C6B60O\",\"ru\":\"BOSCH PBY6C6B60O\"}', '{\"az\":\"BOSCH PBY6C6B60O\",\"en\":\"BOSCH PBY6C6B60O\",\"ru\":\"BOSCH PBY6C6B60O\"}', 385.00, 1, 580, 510, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:09:06', '2020-06-18 16:56:10', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (101, '{\"az\":\"AQUASANITA BELLA SQB101-111AW\",\"en\":\"AQUASANITA BELLA SQB101-111AW\",\"ru\":\"AQUASANITA BELLA SQB101-111AW\"}', '{\"az\":\"AQUASANITA BELLA SQB101-111AW\",\"en\":\"AQUASANITA BELLA SQB101-111AW\",\"ru\":\"AQUASANITA BELLA SQB101-111AW\"}', 1399.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:21:56', '2020-06-18 15:52:01', NULL, 4, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (102, '{\"az\":\"Combo BOSCH WDU2852KPL\",\"en\":\"Combo BOSCH WDU2852KPL\",\"ru\":\"Combo BOSCH WDU2852KPL\"}', '{\"az\":\"Combo BOSCH WDU2852KPL\",\"en\":\"Combo BOSCH WDU2852KPL\",\"ru\":\"Combo BOSCH WDU2852KPL\"}', 3290.00, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:26:37', '2020-06-18 16:37:53', NULL, 4, 26, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (103, '{\"az\":\"Combo BOSCH WDU28540EU\",\"en\":\"Combo BOSCH WDU28540EU\",\"ru\":\"Combo BOSCH WDU28540EU\"}', '{\"az\":\"Combo BOSCH WDU28540EU\",\"en\":\"Combo BOSCH WDU28540EU\",\"ru\":\"Combo BOSCH WDU28540EU\"}', 2860.00, 1, 598, 848, 640, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:28:11', '2020-06-18 16:40:10', NULL, 4, 26, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (104, '{\"az\":\"Combo BOSCH WKD28541EU\",\"en\":\"Combo BOSCH WKD28541EU\",\"ru\":\"Combo BOSCH WKD28541EU\"}', '{\"az\":\"Combo BOSCH WKD28541EU\",\"en\":\"Combo BOSCH WKD28541EU\",\"ru\":\"Combo BOSCH WKD28541EU\"}', 2690.00, 1, 595, 820, 584, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:29:04', '2020-06-18 16:41:43', NULL, 4, 26, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (105, '{\"az\":\"AQUASANITA BELLA SQB101-710AW-01\",\"en\":\"AQUASANITA BELLA SQB101-710AW-01\",\"ru\":\"AQUASANITA BELLA SQB101-710AW-01\"}', '{\"az\":\"AQUASANITA BELLA SQB101-710AW-01\",\"en\":\"AQUASANITA BELLA SQB101-710AW-01\",\"ru\":\"AQUASANITA BELLA SQB101-710AW-01\"}', 490.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 13:41:08', '2020-06-18 15:53:59', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (106, '{\"az\":\"AQUASANITA CLARUS SR100-111W-01\",\"en\":\"AQUASANITA CLARUS SR100-111W-01\",\"ru\":\"AQUASANITA CLARUS SR100-111W-01\"}', '{\"az\":\"AQUASANITA CLARUS SR100-111W-01\",\"en\":\"AQUASANITA CLARUS SR100-111W-01\",\"ru\":\"AQUASANITA CLARUS SR100-111W-01\"}', 330.00, 5, 505, 505, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:41:25', '2020-06-18 15:54:18', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (107, '{\"az\":\"AQUASANITA CLARUS SR100-112W-01\",\"en\":\"AQUASANITA CLARUS SR100-112W-01\",\"ru\":\"AQUASANITA CLARUS SR100-112W-01\"}', '{\"az\":\"AQUASANITA CLARUS SR100-112W-01\",\"en\":\"AQUASANITA CLARUS SR100-112W-01\",\"ru\":\"AQUASANITA CLARUS SR100-112W-01\"}', 330.00, 5, 505, 505, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:42:30', '2020-06-18 15:54:37', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (108, '{\"az\":\"AQUASANITA CLARUS SR100-120W-01\",\"en\":\"AQUASANITA CLARUS SR100-120W-01\",\"ru\":\"AQUASANITA CLARUS SR100-120W-01\"}', '{\"az\":\"AQUASANITA CLARUS SR100-120W-01\",\"en\":\"AQUASANITA CLARUS SR100-120W-01\",\"ru\":\"AQUASANITA CLARUS SR100-120W-01\"}', 330.00, 5, 505, 505, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:43:31', '2020-06-18 15:54:54', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (109, '{\"az\":\"AQUASANITA CLARUS SR100-601W-01\",\"en\":\"AQUASANITA CLARUS SR100-601W-01\",\"ru\":\"AQUASANITA CLARUS SR100-601W-01\"}', '{\"az\":\"AQUASANITA CLARUS SR100-601W-01\",\"en\":\"AQUASANITA CLARUS SR100-601W-01\",\"ru\":\"AQUASANITA CLARUS SR100-601W-01\"}', 330.00, 5, 505, 505, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:44:38', '2020-06-18 15:55:18', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (110, '{\"az\":\"AQUASANITA CLARUS SR100-710W-01\",\"en\":\"AQUASANITA CLARUS SR100-710W-01\",\"ru\":\"AQUASANITA CLARUS SR100-710W-01\"}', '{\"az\":\"AQUASANITA CLARUS SR100-710W-01\",\"en\":\"AQUASANITA CLARUS SR100-710W-01\",\"ru\":\"AQUASANITA CLARUS SR100-710W-01\"}', 330.00, 5, 505, 505, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:45:11', '2020-06-18 15:55:54', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (111, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-110AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:48:45', '2020-06-18 15:56:18', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (112, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-111AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:50:08', '2020-06-18 15:56:36', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (113, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-112AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:50:45', '2020-06-18 15:57:00', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (114, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-120AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:51:33', '2020-06-18 15:58:44', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (115, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-601AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:53:21', '2020-06-18 15:59:08', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (116, '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\"}', '{\"az\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\",\"en\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\",\"ru\":\"AQUASANITA DELICIA PLUS GQD150B-710AW-01\"}', 1560.00, 5, 650, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-16 14:54:00', '2020-06-18 15:59:30', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (117, '{\"az\":\"AQUASANITA SQA100-110W-01\",\"en\":\"AQUASANITA SQA100-110W-01\",\"ru\":\"AQUASANITA SQA100-110W-01\"}', '{\"az\":\"AQUASANITA SQA100-110W-01\",\"en\":\"AQUASANITA SQA100-110W-01\",\"ru\":\"AQUASANITA SQA100-110W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:49:24', '2020-06-18 13:08:53', NULL, 6, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (118, '{\"az\":\"AQUASANITA SQA100-111W-01\",\"en\":\"AQUASANITA SQA100-111W-01\",\"ru\":\"AQUASANITA SQA100-111W-01\"}', '{\"az\":\"AQUASANITA SQA100-111W-01\",\"en\":\"AQUASANITA SQA100-111W-01\",\"ru\":\"AQUASANITA SQA100-111W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:50:22', '2020-06-18 13:10:21', NULL, 6, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (119, '{\"az\":\"AQUASANITA SQA100-112W-01\",\"en\":\"AQUASANITA SQA100-112W-01\",\"ru\":\"AQUASANITA SQA100-112W-01\"}', '{\"az\":\"AQUASANITA SQA100-112W-01\",\"en\":\"AQUASANITA SQA100-112W-01\",\"ru\":\"AQUASANITA SQA100-112W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:51:16', '2020-06-18 13:10:57', NULL, 6, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (120, '{\"az\":\"AQUASANITA SQA100-120W-01\",\"en\":\"AQUASANITA SQA100-120W-01\",\"ru\":\"AQUASANITA SQA100-120W-01\"}', '{\"az\":\"AQUASANITA SQA100-120W-01\",\"en\":\"AQUASANITA SQA100-120W-01\",\"ru\":\"AQUASANITA SQA100-120W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:51:59', '2020-06-18 14:28:01', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (121, '{\"az\":\"AQUASANITA SQA100-601W-01\",\"en\":\"AQUASANITA SQA100-601W-01\",\"ru\":\"AQUASANITA SQA100-601W-01\"}', '{\"az\":\"AQUASANITA SQA100-601W-01\",\"en\":\"AQUASANITA SQA100-601W-01\",\"ru\":\"AQUASANITA SQA100-601W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:52:36', '2020-06-18 14:29:26', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (122, '{\"az\":\"AQUASANITA SQA100-710W-01\",\"en\":\"AQUASANITA SQA100-710W-01\",\"ru\":\"AQUASANITA SQA100-710W-01\"}', '{\"az\":\"AQUASANITA SQA100-710W-01\",\"en\":\"AQUASANITA SQA100-710W-01\",\"ru\":\"AQUASANITA SQA100-710W-01\"}', 520.00, 5, 380, 380, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:53:22', '2020-06-18 14:33:27', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (123, '{\"az\":\"AQUASANITA SQA101-110W-01\",\"en\":\"AQUASANITA SQA101-110W-01\",\"ru\":\"AQUASANITA SQA101-110W-01\"}', '{\"az\":\"AQUASANITA SQA101-110W-01\",\"en\":\"AQUASANITA SQA101-110W-01\",\"ru\":\"AQUASANITA SQA101-110W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:54:33', '2020-06-18 14:35:00', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (124, '{\"az\":\"AQUASANITA SQA101-111W-01\",\"en\":\"AQUASANITA SQA101-111W-01\",\"ru\":\"AQUASANITA SQA101-111W-01\"}', '{\"az\":\"AQUASANITA SQA101-111W-01\",\"en\":\"AQUASANITA SQA101-111W-01\",\"ru\":\"AQUASANITA SQA101-111W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:55:32', '2020-06-18 14:35:52', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (125, '{\"az\":\"AQUASANITA SQA101-112W-01\",\"en\":\"AQUASANITA SQA101-112W-01\",\"ru\":\"AQUASANITA SQA101-112W-01\"}', '{\"az\":\"AQUASANITA SQA101-112W-01\",\"en\":\"AQUASANITA SQA101-112W-01\",\"ru\":\"AQUASANITA SQA101-112W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:56:10', '2020-06-18 14:36:35', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (126, '{\"az\":\"AQUASANITA SQA101-120W-01\",\"en\":\"AQUASANITA SQA101-120W-01\",\"ru\":\"AQUASANITA SQA101-120W-01\"}', '{\"az\":\"AQUASANITA SQA101-120W-01\",\"en\":\"AQUASANITA SQA101-120W-01\",\"ru\":\"AQUASANITA SQA101-120W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:56:52', '2020-06-18 14:37:13', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (127, '{\"az\":\"AQUASANITA SQA101-601W-01\",\"en\":\"AQUASANITA SQA101-601W-01\",\"ru\":\"AQUASANITA SQA101-601W-01\"}', '{\"az\":\"AQUASANITA SQA101-601W-01\",\"en\":\"AQUASANITA SQA101-601W-01\",\"ru\":\"AQUASANITA SQA101-601W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:57:40', '2020-06-18 14:37:51', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (128, '{\"az\":\"AQUASANITA SQA101-710W-01\",\"en\":\"AQUASANITA SQA101-710W-01\",\"ru\":\"AQUASANITA SQA101-710W-01\"}', '{\"az\":\"AQUASANITA SQA101-710W-01\",\"en\":\"AQUASANITA SQA101-710W-01\",\"ru\":\"AQUASANITA SQA101-710W-01\"}', 560.00, 5, 420, 460, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:58:21', '2020-06-18 14:38:20', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (129, '{\"az\":\"AQUASANITA SQA102-110W-01\",\"en\":\"AQUASANITA SQA102-110W-01\",\"ru\":\"AQUASANITA SQA102-110W-01\"}', '{\"az\":\"AQUASANITA SQA102-110W-01\",\"en\":\"AQUASANITA SQA102-110W-01\",\"ru\":\"AQUASANITA SQA102-110W-01\"}', 670.00, 5, 585, 460, 210, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 05:59:18', '2020-06-18 14:39:22', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (130, '{\"az\":\"AQUASANITA SQA102-112W-01\",\"en\":\"AQUASANITA SQA102-112W-01\",\"ru\":\"AQUASANITA SQA102-112W-01\"}', '{\"az\":\"AQUASANITA SQA102-112W-01\",\"en\":\"AQUASANITA SQA102-112W-01\",\"ru\":\"AQUASANITA SQA102-112W-01\"}', 670.00, 5, 585, 460, 210, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 06:00:05', '2020-06-18 14:40:00', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (131, '{\"az\":\"AQUASANITA SQA102-120W-01\",\"en\":\"AQUASANITA SQA102-120W-01\",\"ru\":\"AQUASANITA SQA102-120W-01\"}', '{\"az\":\"AQUASANITA SQA102-120W-01\",\"en\":\"AQUASANITA SQA102-120W-01\",\"ru\":\"AQUASANITA SQA102-120W-01\"}', 670.00, 5, 585, 460, 210, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 06:00:52', '2020-06-18 14:40:29', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (132, '{\"az\":\"AQUASANITA SQA102-601W-01\",\"en\":\"AQUASANITA SQA102-601W-01\",\"ru\":\"AQUASANITA SQA102-601W-01\"}', '{\"az\":\"AQUASANITA SQA102-601W-01\",\"en\":\"AQUASANITA SQA102-601W-01\",\"ru\":\"AQUASANITA SQA102-601W-01\"}', 670.00, 5, 585, 460, 210, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 06:01:39', '2020-06-18 14:41:36', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (133, '{\"az\":\"AQUASANITA SQA102-710W-01\",\"en\":\"AQUASANITA SQA102-710W-01\",\"ru\":\"AQUASANITA SQA102-710W-01\"}', '{\"az\":\"AQUASANITA SQA102-710W-01\",\"en\":\"AQUASANITA SQA102-710W-01\",\"ru\":\"AQUASANITA SQA102-710W-01\"}', 670.00, 5, 585, 460, 210, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 06:02:38', '2020-06-18 14:42:21', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (134, '{\"az\":\"AQUASANITA SQA104-111W-01\",\"en\":\"AQUASANITA SQA104-111W-01\",\"ru\":\"AQUASANITA SQA104-111W-01\"}', '{\"az\":\"AQUASANITA SQA104-111W-01\",\"en\":\"AQUASANITA SQA104-111W-01\",\"ru\":\"AQUASANITA SQA104-111W-01\"}', 950.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 06:03:28', '2020-06-18 14:45:34', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (135, '{\"az\":\"AQUASANITA SQA104-112W-01\",\"en\":\"AQUASANITA SQA104-112W-01\",\"ru\":\"AQUASANITA SQA104-112W-01\"}', '{\"az\":\"AQUASANITA SQA104-112W-01\",\"en\":\"AQUASANITA SQA104-112W-01\",\"ru\":\"AQUASANITA SQA104-112W-01\"}', 950.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:10:34', '2020-06-18 14:46:10', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (136, '{\"az\":\"AQUASANITA SQA104-710W-01\",\"en\":\"AQUASANITA SQA104-710W-01\",\"ru\":\"AQUASANITA SQA104-710W-01\"}', '{\"az\":\"AQUASANITA SQA104-710W-01\",\"en\":\"AQUASANITA SQA104-710W-01\",\"ru\":\"AQUASANITA SQA104-710W-01\"}', 950.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:11:30', '2020-06-18 14:47:38', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (137, '{\"az\":\"AQUASANITA SQA200-110W-01\",\"en\":\"AQUASANITA SQA200-110W-01\",\"ru\":\"AQUASANITA SQA200-110W-01\"}', '{\"az\":\"AQUASANITA SQA200-110W-01\",\"en\":\"AQUASANITA SQA200-110W-01\",\"ru\":\"AQUASANITA SQA200-110W-01\"}', 1150.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:12:24', '2020-06-18 14:48:34', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (138, '{\"az\":\"AQUASANITA SQA200-111W-01\",\"en\":\"AQUASANITA SQA200-111W-01\",\"ru\":\"AQUASANITA SQA200-111W-01\"}', '{\"az\":\"AQUASANITA SQA200-111W-01\",\"en\":\"AQUASANITA SQA200-111W-01\",\"ru\":\"AQUASANITA SQA200-111W-01\"}', 1150.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:13:11', '2020-06-18 14:49:04', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (139, '{\"az\":\"AQUASANITA SQA200-112W-01\",\"en\":\"AQUASANITA SQA200-112W-01\",\"ru\":\"AQUASANITA SQA200-112W-01\"}', '{\"az\":\"AQUASANITA SQA200-112W-01\",\"en\":\"AQUASANITA SQA200-112W-01\",\"ru\":\"AQUASANITA SQA200-112W-01\"}', 1150.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:15:05', '2020-06-18 14:51:22', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (140, '{\"az\":\"AQUASANITA SQA200-601W-01\",\"en\":\"AQUASANITA SQA200-601W-01\",\"ru\":\"AQUASANITA SQA200-601W-01\"}', '{\"az\":\"AQUASANITA SQA200-601W-01\",\"en\":\"AQUASANITA SQA200-601W-01\",\"ru\":\"AQUASANITA SQA200-601W-01\"}', 1150.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:15:46', '2020-06-18 14:53:01', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (141, '{\"az\":\"AQUASANITA SQA200-710W-01\",\"en\":\"AQUASANITA SQA200-710W-01\",\"ru\":\"AQUASANITA SQA200-710W-01\"}', '{\"az\":\"AQUASANITA SQA200-710W-01\",\"en\":\"AQUASANITA SQA200-710W-01\",\"ru\":\"AQUASANITA SQA200-710W-01\"}', 1150.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:16:34', '2020-06-18 14:53:58', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (142, '{\"az\":\"AQUASANITA SQA210-110W-01\",\"en\":\"AQUASANITA SQA210-110W-01\",\"ru\":\"AQUASANITA SQA210-110W-01\"}', '{\"az\":\"AQUASANITA SQA210-110W-01\",\"en\":\"AQUASANITA SQA210-110W-01\",\"ru\":\"AQUASANITA SQA210-110W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:17:14', '2020-06-18 14:55:59', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (143, '{\"az\":\"AQUASANITA SQA210-111W-01\",\"en\":\"AQUASANITA SQA210-111W-01\",\"ru\":\"AQUASANITA SQA210-111W-01\"}', '{\"az\":\"AQUASANITA SQA210-111W-01\",\"en\":\"AQUASANITA SQA210-111W-01\",\"ru\":\"AQUASANITA SQA210-111W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:17:53', '2020-06-18 14:56:35', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (144, '{\"az\":\"AQUASANITA SQA210-112W-01\",\"en\":\"AQUASANITA SQA210-112W-01\",\"ru\":\"AQUASANITA SQA210-112W-01\"}', '{\"az\":\"AQUASANITA SQA210-112W-01\",\"en\":\"AQUASANITA SQA210-112W-01\",\"ru\":\"AQUASANITA SQA210-112W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:18:31', '2020-06-18 14:57:21', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (145, '{\"az\":\"AQUASANITA SQA210-120W-01\",\"en\":\"AQUASANITA SQA210-120W-01\",\"ru\":\"AQUASANITA SQA210-120W-01\"}', '{\"az\":\"AQUASANITA SQA210-120W-01\",\"en\":\"AQUASANITA SQA210-120W-01\",\"ru\":\"AQUASANITA SQA210-120W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:19:15', '2020-06-18 14:58:06', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (146, '{\"az\":\"AQUASANITA SQA210-601W-01\",\"en\":\"AQUASANITA SQA210-601W-01\",\"ru\":\"AQUASANITA SQA210-601W-01\"}', '{\"az\":\"AQUASANITA SQA210-601W-01\",\"en\":\"AQUASANITA SQA210-601W-01\",\"ru\":\"AQUASANITA SQA210-601W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:20:21', '2020-06-18 14:58:46', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (147, '{\"az\":\"AQUASANITA SQA210-710W-01\",\"en\":\"AQUASANITA SQA210-710W-01\",\"ru\":\"AQUASANITA SQA210-710W-01\"}', '{\"az\":\"AQUASANITA SQA210-710W-01\",\"en\":\"AQUASANITA SQA210-710W-01\",\"ru\":\"AQUASANITA SQA210-710W-01\"}', 1050.00, 5, 840, 560, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:21:06', '2020-06-18 14:59:17', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (148, '{\"az\":\"AQUASANITA SQA230L-111W-01\",\"en\":\"AQUASANITA SQA230L-111W-01\",\"ru\":\"AQUASANITA SQA230L-111W-01\"}', '{\"az\":\"AQUASANITA SQA230L-111W-01\",\"en\":\"AQUASANITA SQA230L-111W-01\",\"ru\":\"AQUASANITA SQA230L-111W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:21:52', '2020-06-18 15:00:38', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (149, '{\"az\":\"AQUASANITA SQA230L-112W-01\",\"en\":\"AQUASANITA SQA230L-112W-01\",\"ru\":\"AQUASANITA SQA230L-112W-01\"}', '{\"az\":\"AQUASANITA SQA230L-112W-01\",\"en\":\"AQUASANITA SQA230L-112W-01\",\"ru\":\"AQUASANITA SQA230L-112W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:22:47', '2020-06-18 15:01:20', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (150, '{\"az\":\"AQUASANITA SQA230L-601W-01\",\"en\":\"AQUASANITA SQA230L-601W-01\",\"ru\":\"AQUASANITA SQA230L-601W-01\"}', '{\"az\":\"AQUASANITA SQA230L-601W-01\",\"en\":\"AQUASANITA SQA230L-601W-01\",\"ru\":\"AQUASANITA SQA230L-601W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:23:59', '2020-06-18 15:01:53', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (151, '{\"az\":\"AQUASANITA SQA230L-710W-01\",\"en\":\"AQUASANITA SQA230L-710W-01\",\"ru\":\"AQUASANITA SQA230L-710W-01\"}', '{\"az\":\"AQUASANITA SQA230L-710W-01\",\"en\":\"AQUASANITA SQA230L-710W-01\",\"ru\":\"AQUASANITA SQA230L-710W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:24:40', '2020-06-18 15:02:29', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (152, '{\"az\":\"AQUASANITA SQA230R-111W-01\",\"en\":\"AQUASANITA SQA230R-111W-01\",\"ru\":\"AQUASANITA SQA230R-111W-01\"}', '{\"az\":\"AQUASANITA SQA230R-111W-01\",\"en\":\"AQUASANITA SQA230R-111W-01\",\"ru\":\"AQUASANITA SQA230R-111W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:25:27', '2020-06-18 15:04:10', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (153, '{\"az\":\"AQUASANITA SQA230R-112W-01\",\"en\":\"AQUASANITA SQA230R-112W-01\",\"ru\":\"AQUASANITA SQA230R-112W-01\"}', '{\"az\":\"AQUASANITA SQA230R-112W-01\",\"en\":\"AQUASANITA SQA230R-112W-01\",\"ru\":\"AQUASANITA SQA230R-112W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:26:19', '2020-06-18 15:04:38', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (154, '{\"az\":\"AQUASANITA SQA230R-601W-01\",\"en\":\"AQUASANITA SQA230R-601W-01\",\"ru\":\"AQUASANITA SQA230R-601W-01\"}', '{\"az\":\"AQUASANITA SQA230R-601W-01\",\"en\":\"AQUASANITA SQA230R-601W-01\",\"ru\":\"AQUASANITA SQA230R-601W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:28:16', '2020-06-18 15:05:19', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (155, '{\"az\":\"AQUASANITA SQA230R-710W-01\",\"en\":\"AQUASANITA SQA230R-710W-01\",\"ru\":\"AQUASANITA SQA230R-710W-01\"}', '{\"az\":\"AQUASANITA SQA230R-710W-01\",\"en\":\"AQUASANITA SQA230R-710W-01\",\"ru\":\"AQUASANITA SQA230R-710W-01\"}', 1140.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:29:36', '2020-06-18 15:05:49', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (156, '{\"az\":\"AQUASANITA SQA104-601W-01\",\"en\":\"AQUASANITA SQA104-601W-01\",\"ru\":\"AQUASANITA SQA104-601W-01\"}', '{\"az\":\"AQUASANITA SQA104-601W-01\",\"en\":\"AQUASANITA SQA104-601W-01\",\"ru\":\"AQUASANITA SQA104-601W-01\"}', 950.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 08:31:26', '2020-06-18 14:46:46', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (157, '{\"az\":\"AQUASANITA SQD100-111W-01\",\"en\":\"AQUASANITA SQD100-111W-01\",\"ru\":\"AQUASANITA SQD100-111W-01\"}', '{\"az\":\"AQUASANITA SQD100-111W-01\",\"en\":\"AQUASANITA SQD100-111W-01\",\"ru\":\"AQUASANITA SQD100-111W-01\"}', 740.00, 5, 555, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:36:25', '2020-06-18 15:07:18', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (158, '{\"az\":\"AQUASANITA SQD100-112W-01\",\"en\":\"AQUASANITA SQD100-112W-01\",\"ru\":\"AQUASANITA SQD100-112W-01\"}', '{\"az\":\"AQUASANITA SQD100-112W-01\",\"en\":\"AQUASANITA SQD100-112W-01\",\"ru\":\"AQUASANITA SQD100-112W-01\"}', 740.00, 5, 555, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:37:26', '2020-06-18 15:07:47', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (159, '{\"az\":\"AQUASANITA SQD100-601W-01\",\"en\":\"AQUASANITA SQD100-601W-01\",\"ru\":\"AQUASANITA SQD100-601W-01\"}', '{\"az\":\"AQUASANITA SQD100-601W-01\",\"en\":\"AQUASANITA SQD100-601W-01\",\"ru\":\"AQUASANITA SQD100-601W-01\"}', 740.00, 5, 555, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:38:48', '2020-06-18 15:08:17', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (160, '{\"az\":\"AQUASANITA SQD100-710W-01\",\"en\":\"AQUASANITA SQD100-710W-01\",\"ru\":\"AQUASANITA SQD100-710W-01\"}', '{\"az\":\"AQUASANITA SQD100-710W-01\",\"en\":\"AQUASANITA SQD100-710W-01\",\"ru\":\"AQUASANITA SQD100-710W-01\"}', 740.00, 5, 555, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:39:55', '2020-06-18 15:08:53', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (161, '{\"az\":\"AQUASANITA SQD101-111W-01\",\"en\":\"AQUASANITA SQD101-111W-01\",\"ru\":\"AQUASANITA SQD101-111W-01\"}', '{\"az\":\"AQUASANITA SQD101-111W-01\",\"en\":\"AQUASANITA SQD101-111W-01\",\"ru\":\"AQUASANITA SQD101-111W-01\"}', 970.00, 5, 740, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:41:00', '2020-06-18 15:09:46', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (162, '{\"az\":\"AQUASANITA SQD101-112W-01\",\"en\":\"AQUASANITA SQD101-112W-01\",\"ru\":\"AQUASANITA SQD101-112W-01\"}', '{\"az\":\"AQUASANITA SQD101-112W-01\",\"en\":\"AQUASANITA SQD101-112W-01\",\"ru\":\"AQUASANITA SQD101-112W-01\"}', 970.00, 5, 740, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:41:58', '2020-06-18 15:10:26', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (163, '{\"az\":\"AQUASANITA SQD101-601W-01\",\"en\":\"AQUASANITA SQD101-601W-01\",\"ru\":\"AQUASANITA SQD101-601W-01\"}', '{\"az\":\"AQUASANITA SQD101-601W-01\",\"en\":\"AQUASANITA SQD101-601W-01\",\"ru\":\"AQUASANITA SQD101-601W-01\"}', 970.00, 5, 740, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:42:49', '2020-06-18 15:11:23', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (164, '{\"az\":\"AQUASANITA SQD101-710W-01\",\"en\":\"AQUASANITA SQD101-710W-01\",\"ru\":\"AQUASANITA SQD101-710W-01\"}', '{\"az\":\"AQUASANITA SQD101-710W-01\",\"en\":\"AQUASANITA SQD101-710W-01\",\"ru\":\"AQUASANITA SQD101-710W-01\"}', 970.00, 5, 740, 455, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:43:41', '2020-06-18 15:12:02', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (165, '{\"az\":\"AQUASANITA SQL101-111AW-01\",\"en\":\"AQUASANITA SQL101-111AW-01\",\"ru\":\"AQUASANITA SQL101-111AW-01\"}', '{\"az\":\"AQUASANITA SQL101-111AW-01\",\"en\":\"AQUASANITA SQL101-111AW-01\",\"ru\":\"AQUASANITA SQL101-111AW-01\"}', 540.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:44:51', '2020-06-18 15:12:57', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (166, '{\"az\":\"AQUASANITA SQL101-112AW-01\",\"en\":\"AQUASANITA SQL101-112AW-01\",\"ru\":\"AQUASANITA SQL101-112AW-01\"}', '{\"az\":\"AQUASANITA SQL101-112AW-01\",\"en\":\"AQUASANITA SQL101-112AW-01\",\"ru\":\"AQUASANITA SQL101-112AW-01\"}', 540.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:45:55', '2020-06-18 15:13:38', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (167, '{\"az\":\"AQUASANITA SQL101-710AW-01\",\"en\":\"AQUASANITA SQL101-710AW-01\",\"ru\":\"AQUASANITA SQL101-710AW-01\"}', '{\"az\":\"AQUASANITA SQL101-710AW-01\",\"en\":\"AQUASANITA SQL101-710AW-01\",\"ru\":\"AQUASANITA SQL101-710AW-01\"}', 540.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:48:25', '2020-06-18 15:14:10', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (168, '{\"az\":\"AQUASANITA SQM200-110W-01\",\"en\":\"AQUASANITA SQM200-110W-01\",\"ru\":\"AQUASANITA SQM200-110W-01\"}', '{\"az\":\"AQUASANITA SQM200-110W-01\",\"en\":\"AQUASANITA SQM200-110W-01\",\"ru\":\"AQUASANITA SQM200-110W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:49:46', '2020-06-18 15:14:58', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (169, '{\"az\":\"AQUASANITA SQM200-111W-01\",\"en\":\"AQUASANITA SQM200-111W-01\",\"ru\":\"AQUASANITA SQM200-111W-01\"}', '{\"az\":\"AQUASANITA SQM200-111W-01\",\"en\":\"AQUASANITA SQM200-111W-01\",\"ru\":\"AQUASANITA SQM200-111W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:50:38', '2020-06-18 15:15:37', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (170, '{\"az\":\"AQUASANITA SQM200-112W-01\",\"en\":\"AQUASANITA SQM200-112W-01\",\"ru\":\"AQUASANITA SQM200-112W-01\"}', '{\"az\":\"AQUASANITA SQM200-112W-01\",\"en\":\"AQUASANITA SQM200-112W-01\",\"ru\":\"AQUASANITA SQM200-112W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:51:26', '2020-06-18 15:16:20', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (171, '{\"az\":\"AQUASANITA SQM200-120W-01\",\"en\":\"AQUASANITA SQM200-120W-01\",\"ru\":\"AQUASANITA SQM200-120W-01\"}', '{\"az\":\"AQUASANITA SQM200-120W-01\",\"en\":\"AQUASANITA SQM200-120W-01\",\"ru\":\"AQUASANITA SQM200-120W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:52:30', '2020-06-18 15:17:01', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (172, '{\"az\":\"AQUASANITA SQM200-601W-01\",\"en\":\"AQUASANITA SQM200-601W-01\",\"ru\":\"AQUASANITA SQM200-601W-01\"}', '{\"az\":\"AQUASANITA SQM200-601W-01\",\"en\":\"AQUASANITA SQM200-601W-01\",\"ru\":\"AQUASANITA SQM200-601W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:53:42', '2020-06-18 15:23:48', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (173, '{\"az\":\"AQUASANITA SQM200-710W-01\",\"en\":\"AQUASANITA SQM200-710W-01\",\"ru\":\"AQUASANITA SQM200-710W-01\"}', '{\"az\":\"AQUASANITA SQM200-710W-01\",\"en\":\"AQUASANITA SQM200-710W-01\",\"ru\":\"AQUASANITA SQM200-710W-01\"}', 790.00, 5, 860, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:54:31', '2020-06-18 15:24:17', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (174, '{\"az\":\"AQUASANITA SQQ100-110W-01\",\"en\":\"AQUASANITA SQQ100-110W-01\",\"ru\":\"AQUASANITA SQQ100-110W-01\"}', '{\"az\":\"AQUASANITA SQQ100-110W-01\",\"en\":\"AQUASANITA SQQ100-110W-01\",\"ru\":\"AQUASANITA SQQ100-110W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:55:31', '2020-06-18 15:25:27', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (175, '{\"az\":\"AQUASANITA SQQ100-111W-01\",\"en\":\"AQUASANITA SQQ100-111W-01\",\"ru\":\"AQUASANITA SQQ100-111W-01\"}', '{\"az\":\"AQUASANITA SQQ100-111W-01\",\"en\":\"AQUASANITA SQQ100-111W-01\",\"ru\":\"AQUASANITA SQQ100-111W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:58:34', '2020-06-18 15:25:57', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (176, '{\"az\":\"AQUASANITA SQQ100-112W-01\",\"en\":\"AQUASANITA SQQ100-112W-01\",\"ru\":\"AQUASANITA SQQ100-112W-01\"}', '{\"az\":\"AQUASANITA SQQ100-112W-01\",\"en\":\"AQUASANITA SQQ100-112W-01\",\"ru\":\"AQUASANITA SQQ100-112W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 11:59:46', '2020-06-18 15:26:56', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (177, '{\"az\":\"AQUASANITA SQQ100-120W-01\",\"en\":\"AQUASANITA SQQ100-120W-01\",\"ru\":\"AQUASANITA SQQ100-120W-01\"}', '{\"az\":\"AQUASANITA SQQ100-120W-01\",\"en\":\"AQUASANITA SQQ100-120W-01\",\"ru\":\"AQUASANITA SQQ100-120W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:02:56', '2020-06-18 15:27:26', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (178, '{\"az\":\"AQUASANITA SQQ100-601W-01\",\"en\":\"AQUASANITA SQQ100-601W-01\",\"ru\":\"AQUASANITA SQQ100-601W-01\"}', '{\"az\":\"AQUASANITA SQQ100-601W-01\",\"en\":\"AQUASANITA SQQ100-601W-01\",\"ru\":\"AQUASANITA SQQ100-601W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:04:59', '2020-06-18 15:27:58', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (179, '{\"az\":\"AQUASANITA SQQ100-710W-01\",\"en\":\"AQUASANITA SQQ100-710W-01\",\"ru\":\"AQUASANITA SQQ100-710W-01\"}', '{\"az\":\"AQUASANITA SQQ100-710W-01\",\"en\":\"AQUASANITA SQQ100-710W-01\",\"ru\":\"AQUASANITA SQQ100-710W-01\"}', 460.00, 5, 565, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:06:56', '2020-06-18 15:28:41', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (180, '{\"az\":\"AQUASANITA SQS100-110W-01\",\"en\":\"AQUASANITA SQS100-110W-01\",\"ru\":\"AQUASANITA SQS100-110W-01\"}', '{\"az\":\"AQUASANITA SQS100-110W-01\",\"en\":\"AQUASANITA SQS100-110W-01\",\"ru\":\"AQUASANITA SQS100-110W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:08:58', '2020-06-18 15:30:41', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (181, '{\"az\":\"AQUASANITA SQS100-111W-01\",\"en\":\"AQUASANITA SQS100-111W-01\",\"ru\":\"AQUASANITA SQS100-111W-01\"}', '{\"az\":\"AQUASANITA SQS100-111W-01\",\"en\":\"AQUASANITA SQS100-111W-01\",\"ru\":\"AQUASANITA SQS100-111W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:10:11', '2020-06-18 15:31:19', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (182, '{\"az\":\"AQUASANITA SQS100-112W-01\",\"en\":\"AQUASANITA SQS100-112W-01\",\"ru\":\"AQUASANITA SQS100-112W-01\"}', '{\"az\":\"AQUASANITA SQS100-112W-01\",\"en\":\"AQUASANITA SQS100-112W-01\",\"ru\":\"AQUASANITA SQS100-112W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:11:10', '2020-06-18 15:31:54', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (183, '{\"az\":\"AQUASANITA SQS100-120W-01\",\"en\":\"AQUASANITA SQS100-120W-01\",\"ru\":\"AQUASANITA SQS100-120W-01\"}', '{\"az\":\"AQUASANITA SQS100-120W-01\",\"en\":\"AQUASANITA SQS100-120W-01\",\"ru\":\"AQUASANITA SQS100-120W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:12:09', '2020-06-18 15:33:27', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (184, '{\"az\":\"AQUASANITA SQS100-601W-01\",\"en\":\"AQUASANITA SQS100-601W-01\",\"ru\":\"AQUASANITA SQS100-601W-01\"}', '{\"az\":\"AQUASANITA SQS100-601W-01\",\"en\":\"AQUASANITA SQS100-601W-01\",\"ru\":\"AQUASANITA SQS100-601W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:14:46', '2020-06-18 15:33:57', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (185, '{\"az\":\"AQUASANITA SQS100-710W-01\",\"en\":\"AQUASANITA SQS100-710W-01\",\"ru\":\"AQUASANITA SQS100-710W-01\"}', '{\"az\":\"AQUASANITA SQS100-710W-01\",\"en\":\"AQUASANITA SQS100-710W-01\",\"ru\":\"AQUASANITA SQS100-710W-01\"}', 370.00, 5, 425, 500, 190, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:15:35', '2020-06-18 15:34:27', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (186, '{\"az\":\"AQUASANITA SQT100-111W-01\",\"en\":\"AQUASANITA SQT100-111W-01\",\"ru\":\"AQUASANITA SQT100-111W-01\"}', '{\"az\":\"AQUASANITA SQT100-111W-01\",\"en\":\"AQUASANITA SQT100-111W-01\",\"ru\":\"AQUASANITA SQT100-111W-01\"}', 395.00, 5, 490, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:16:17', '2020-06-18 15:35:49', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (187, '{\"az\":\"AQUASANITA SQT100-112W-01\",\"en\":\"AQUASANITA SQT100-112W-01\",\"ru\":\"AQUASANITA SQT100-112W-01\"}', '{\"az\":\"AQUASANITA SQT100-112W-01\",\"en\":\"AQUASANITA SQT100-112W-01\",\"ru\":\"AQUASANITA SQT100-112W-01\"}', 395.00, 5, 490, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:17:01', '2020-06-18 15:36:30', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (188, '{\"az\":\"AQUASANITA SQT100-601W-01\",\"en\":\"AQUASANITA SQT100-601W-01\",\"ru\":\"AQUASANITA SQT100-601W-01\"}', '{\"az\":\"AQUASANITA SQT100-601W-01\",\"en\":\"AQUASANITA SQT100-601W-01\",\"ru\":\"AQUASANITA SQT100-601W-01\"}', 395.00, 5, 490, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:17:56', '2020-06-18 15:37:10', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (189, '{\"az\":\"AQUASANITA SQT100-710W-01\",\"en\":\"AQUASANITA SQT100-710W-01\",\"ru\":\"AQUASANITA SQT100-710W-01\"}', '{\"az\":\"AQUASANITA SQT100-710W-01\",\"en\":\"AQUASANITA SQT100-710W-01\",\"ru\":\"AQUASANITA SQT100-710W-01\"}', 395.00, 5, 490, 510, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:18:44', '2020-06-18 15:37:40', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (190, '{\"az\":\"AQUASANITA SQT101-110W-01\",\"en\":\"AQUASANITA SQT101-110W-01\",\"ru\":\"AQUASANITA SQT101-110W-01\"}', '{\"az\":\"AQUASANITA SQT101-110W-01\",\"en\":\"AQUASANITA SQT101-110W-01\",\"ru\":\"AQUASANITA SQT101-110W-01\"}', 460.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:19:46', '2020-06-18 15:38:37', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (191, '{\"az\":\"AQUASANITA SQT101-111W-01\",\"en\":\"AQUASANITA SQT101-111W-01\",\"ru\":\"AQUASANITA SQT101-111W-01\"}', '{\"az\":\"AQUASANITA SQT101-111W-01\",\"en\":\"AQUASANITA SQT101-111W-01\",\"ru\":\"AQUASANITA SQT101-111W-01\"}', 460.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:20:29', '2020-06-18 15:39:17', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (192, '{\"az\":\"AQUASANITA SQT101-112W-01\",\"en\":\"AQUASANITA SQT101-112W-01\",\"ru\":\"AQUASANITA SQT101-112W-01\"}', '{\"az\":\"AQUASANITA SQT101-112W-01\",\"en\":\"AQUASANITA SQT101-112W-01\",\"ru\":\"AQUASANITA SQT101-112W-01\"}', 460.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:21:14', '2020-06-18 15:40:25', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (193, '{\"az\":\"AQUASANITA SQT101-601W-01\",\"en\":\"AQUASANITA SQT101-601W-01\",\"ru\":\"AQUASANITA SQT101-601W-01\"}', '{\"az\":\"AQUASANITA SQT101-601W-01\",\"en\":\"AQUASANITA SQT101-601W-01\",\"ru\":\"AQUASANITA SQT101-601W-01\"}', 460.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:22:00', '2020-06-18 15:39:53', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (194, '{\"az\":\"AQUASANITA SQT101-710W-01\",\"en\":\"AQUASANITA SQT101-710W-01\",\"ru\":\"AQUASANITA SQT101-710W-01\"}', '{\"az\":\"AQUASANITA SQT101-710W-01\",\"en\":\"AQUASANITA SQT101-710W-01\",\"ru\":\"AQUASANITA SQT101-710W-01\"}', 460.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:22:59', '2020-06-18 15:40:57', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (195, '{\"az\":\"AQUASANITA SQT150-111W-01\",\"en\":\"AQUASANITA SQT150-111W-01\",\"ru\":\"AQUASANITA SQT150-111W-01\"}', '{\"az\":\"AQUASANITA SQT150-111W-01\",\"en\":\"AQUASANITA SQT150-111W-01\",\"ru\":\"AQUASANITA SQT150-111W-01\"}', 520.00, 5, 580, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:23:58', '2020-06-18 15:42:15', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (196, '{\"az\":\"AQUASANITA SQT150-112W-01\",\"en\":\"AQUASANITA SQT150-112W-01\",\"ru\":\"AQUASANITA SQT150-112W-01\"}', '{\"az\":\"AQUASANITA SQT150-112W-01\",\"en\":\"AQUASANITA SQT150-112W-01\",\"ru\":\"AQUASANITA SQT150-112W-01\"}', 520.00, 5, 580, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:24:37', '2020-06-18 15:43:22', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (197, '{\"az\":\"AQUASANITA SQT150-120W-01\",\"en\":\"AQUASANITA SQT150-120W-01\",\"ru\":\"AQUASANITA SQT150-120W-01\"}', '{\"az\":\"AQUASANITA SQT150-120W-01\",\"en\":\"AQUASANITA SQT150-120W-01\",\"ru\":\"AQUASANITA SQT150-120W-01\"}', 520.00, 5, 580, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:25:23', '2020-06-18 15:44:09', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (198, '{\"az\":\"AQUASANITA SQT150-601W-01\",\"en\":\"AQUASANITA SQT150-601W-01\",\"ru\":\"AQUASANITA SQT150-601W-01\"}', '{\"az\":\"AQUASANITA SQT150-601W-01\",\"en\":\"AQUASANITA SQT150-601W-01\",\"ru\":\"AQUASANITA SQT150-601W-01\"}', 520.00, 5, 580, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:26:07', '2020-06-18 15:44:42', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (199, '{\"az\":\"AQUASANITA SQT150-710W-01\",\"en\":\"AQUASANITA SQT150-710W-01\",\"ru\":\"AQUASANITA SQT150-710W-01\"}', '{\"az\":\"AQUASANITA SQT150-710W-01\",\"en\":\"AQUASANITA SQT150-710W-01\",\"ru\":\"AQUASANITA SQT150-710W-01\"}', 520.00, 5, 580, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:26:50', '2020-06-18 15:45:12', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (200, '{\"az\":\"AQUASANITA SQT151-111W-01\",\"en\":\"AQUASANITA SQT151-111W-01\",\"ru\":\"AQUASANITA SQT151-111W-01\"}', '{\"az\":\"AQUASANITA SQT151-111W-01\",\"en\":\"AQUASANITA SQT151-111W-01\",\"ru\":\"AQUASANITA SQT151-111W-01\"}', 590.00, 5, 800, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:27:56', '2020-06-18 15:46:00', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (201, '{\"az\":\"AQUASANITA SQT151-112W-01\",\"en\":\"AQUASANITA SQT151-112W-01\",\"ru\":\"AQUASANITA SQT151-112W-01\"}', '{\"az\":\"AQUASANITA SQT151-112W-01\",\"en\":\"AQUASANITA SQT151-112W-01\",\"ru\":\"AQUASANITA SQT151-112W-01\"}', 590.00, 5, 800, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:28:57', '2020-06-18 15:46:32', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (202, '{\"az\":\"AQUASANITA SQT151-601W-01\",\"en\":\"AQUASANITA SQT151-601W-01\",\"ru\":\"AQUASANITA SQT151-601W-01\"}', '{\"az\":\"AQUASANITA SQT151-601W-01\",\"en\":\"AQUASANITA SQT151-601W-01\",\"ru\":\"AQUASANITA SQT151-601W-01\"}', 590.00, 5, 800, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:29:43', '2020-06-18 15:46:56', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (203, '{\"az\":\"AQUASANITA SQT151-710W-01\",\"en\":\"AQUASANITA SQT151-710W-01\",\"ru\":\"AQUASANITA SQT151-710W-01\"}', '{\"az\":\"AQUASANITA SQT151-710W-01\",\"en\":\"AQUASANITA SQT151-710W-01\",\"ru\":\"AQUASANITA SQT151-710W-01\"}', 590.00, 5, 800, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:30:19', '2020-06-18 15:47:21', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (204, '{\"az\":\"AQUASANITA AIR100N-01\",\"en\":\"AQUASANITA AIR100N-01\",\"ru\":\"AQUASANITA AIR100N-01\"}', '{\"az\":\"AQUASANITA AIR100N-01\",\"en\":\"AQUASANITA AIR100N-01\",\"ru\":\"AQUASANITA AIR100N-01\"}', 790.00, 5, 550, 510, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:58:37', '2020-06-18 15:50:25', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (205, '{\"az\":\"AQUASANITA AIR100N-C-01\",\"en\":\"AQUASANITA AIR100N-C-01\",\"ru\":\"AQUASANITA AIR100N-C-01\"}', '{\"az\":\"AQUASANITA AIR100N-C-01\",\"en\":\"AQUASANITA AIR100N-C-01\",\"ru\":\"AQUASANITA AIR100N-C-01\"}', 990.00, 5, 550, 510, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 12:59:24', '2020-06-18 15:50:43', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (206, '{\"az\":\"AQUASANITA AIR100N-G-01\",\"en\":\"AQUASANITA AIR100N-G-01\",\"ru\":\"AQUASANITA AIR100N-G-01\"}', '{\"az\":\"AQUASANITA AIR100N-G-01\",\"en\":\"AQUASANITA AIR100N-G-01\",\"ru\":\"AQUASANITA AIR100N-G-01\"}', 1100.00, 5, 550, 510, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:00:50', '2020-06-18 15:51:04', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (207, '{\"az\":\"AQUASANITA AIR100N-T-01\",\"en\":\"AQUASANITA AIR100N-T-01\",\"ru\":\"AQUASANITA AIR100N-T-01\"}', '{\"az\":\"AQUASANITA AIR100N-T-01\",\"en\":\"AQUASANITA AIR100N-T-01\",\"ru\":\"AQUASANITA AIR100N-T-01\"}', 950.00, 5, 550, 510, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:23:34', '2020-06-18 15:51:28', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (208, '{\"az\":\"AQUASANITA AIR100X-01\",\"en\":\"AQUASANITA AIR100X-01\",\"ru\":\"AQUASANITA AIR100X-01\"}', '{\"az\":\"AQUASANITA AIR100X-01\",\"en\":\"AQUASANITA AIR100X-01\",\"ru\":\"AQUASANITA AIR100X-01\"}', 580.00, 5, 510, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:24:58', '2020-06-18 15:51:43', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (209, '{\"az\":\"AQUASANITA DER100L-01\",\"en\":\"AQUASANITA DER100L-01\",\"ru\":\"AQUASANITA DER100L-01\"}', '{\"az\":\"AQUASANITA DER100L-01\",\"en\":\"AQUASANITA DER100L-01\",\"ru\":\"AQUASANITA DER100L-01\"}', 630.00, 5, 450, 550, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:29:40', '2020-06-18 15:59:53', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (210, '{\"az\":\"AQUASANITA DER100X-01\",\"en\":\"AQUASANITA DER100X-01\",\"ru\":\"AQUASANITA DER100X-01\"}', '{\"az\":\"AQUASANITA DER100X-01\",\"en\":\"AQUASANITA DER100X-01\",\"ru\":\"AQUASANITA DER100X-01\"}', 700.00, 5, 450, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:30:59', '2020-06-18 16:00:16', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (211, '{\"az\":\"AQUASANITA DER100X-T-01\",\"en\":\"AQUASANITA DER100X-T-01\",\"ru\":\"AQUASANITA DER100X-T-01\"}', '{\"az\":\"AQUASANITA DER100X-T-01\",\"en\":\"AQUASANITA DER100X-T-01\",\"ru\":\"AQUASANITA DER100X-T-01\"}', 890.00, 5, 450, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:31:35', '2020-06-18 16:00:37', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (212, '{\"az\":\"AQUASANITA DERA DER100L-C-01\",\"en\":\"AQUASANITA DERA DER100L-C-01\",\"ru\":\"AQUASANITA DERA DER100L-C-01\"}', '{\"az\":\"AQUASANITA DERA DER100L-C-01\",\"en\":\"AQUASANITA DERA DER100L-C-01\",\"ru\":\"AQUASANITA DERA DER100L-C-01\"}', 930.00, 5, 550, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:32:18', '2020-06-18 16:00:56', NULL, 1, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (213, '{\"az\":\"AQUASANITA DERA DER100L-G-01\",\"en\":\"AQUASANITA DERA DER100L-G-01\",\"ru\":\"AQUASANITA DERA DER100L-G-01\"}', '{\"az\":\"AQUASANITA DERA DER100L-G-01\",\"en\":\"AQUASANITA DERA DER100L-G-01\",\"ru\":\"AQUASANITA DERA DER100L-G-01\"}', 1050.00, 5, 550, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:32:51', '2020-06-18 16:01:20', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (214, '{\"az\":\"AQUASANITA ENN100B-01\",\"en\":\"AQUASANITA ENN100B-01\",\"ru\":\"AQUASANITA ENN100B-01\"}', '{\"az\":\"AQUASANITA ENN100B-01\",\"en\":\"AQUASANITA ENN100B-01\",\"ru\":\"AQUASANITA ENN100B-01\"}', 855.00, 5, 790, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:33:30', '2020-06-18 16:01:41', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (215, '{\"az\":\"AQUASANITA ENN100L-01\",\"en\":\"AQUASANITA ENN100L-01\",\"ru\":\"AQUASANITA ENN100L-01\"}', '{\"az\":\"AQUASANITA ENN100L-01\",\"en\":\"AQUASANITA ENN100L-01\",\"ru\":\"AQUASANITA ENN100L-01\"}', 670.00, 5, 590, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:34:37', '2020-06-18 16:02:01', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (216, '{\"az\":\"AQUASANITA ENN100M-01\",\"en\":\"AQUASANITA ENN100M-01\",\"ru\":\"AQUASANITA ENN100M-01\"}', '{\"az\":\"AQUASANITA ENN100M-01\",\"en\":\"AQUASANITA ENN100M-01\",\"ru\":\"AQUASANITA ENN100M-01\"}', 570.00, 5, 390, 450, 220, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:35:20', '2020-06-18 16:02:20', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (217, '{\"az\":\"AQUASANITA ENN100S-01\",\"en\":\"AQUASANITA ENN100S-01\",\"ru\":\"AQUASANITA ENN100S-01\"}', '{\"az\":\"AQUASANITA ENN100S-01\",\"en\":\"AQUASANITA ENN100S-01\",\"ru\":\"AQUASANITA ENN100S-01\"}', 320.00, 5, 212, 350, 110, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:36:02', '2020-06-18 16:02:43', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (218, '{\"az\":\"AQUASANITA ENN100X-01\",\"en\":\"AQUASANITA ENN100X-01\",\"ru\":\"AQUASANITA ENN100X-01\"}', '{\"az\":\"AQUASANITA ENN100X-01\",\"en\":\"AQUASANITA ENN100X-01\",\"ru\":\"AQUASANITA ENN100X-01\"}', 590.00, 5, 450, 450, 220, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:36:55', '2020-06-18 12:58:04', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (219, '{\"az\":\"AQUASANITA ENN200L-01\",\"en\":\"AQUASANITA ENN200L-01\",\"ru\":\"AQUASANITA ENN200L-01\"}', '{\"az\":\"AQUASANITA ENN200L-01\",\"en\":\"AQUASANITA ENN200L-01\",\"ru\":\"AQUASANITA ENN200L-01\"}', 1050.00, 5, 760, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:38:17', '2020-06-18 12:59:23', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (220, '{\"az\":\"AQUASANITA LUN100M-01\",\"en\":\"AQUASANITA LUN100M-01\",\"ru\":\"AQUASANITA LUN100M-01\"}', '{\"az\":\"AQUASANITA LUN100M-01\",\"en\":\"AQUASANITA LUN100M-01\",\"ru\":\"AQUASANITA LUN100M-01\"}', 890.00, 5, 790, 505, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:39:59', '2020-06-18 13:00:25', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (221, '{\"az\":\"AQUASANITA LUN100N-01\",\"en\":\"AQUASANITA LUN100N-01\",\"ru\":\"AQUASANITA LUN100N-01\"}', '{\"az\":\"AQUASANITA LUN100N-01\",\"en\":\"AQUASANITA LUN100N-01\",\"ru\":\"AQUASANITA LUN100N-01\"}', 620.00, 5, 550, 505, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:40:38', '2020-06-18 13:01:25', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (222, '{\"az\":\"AQUASANITA LUN100X-01\",\"en\":\"AQUASANITA LUN100X-01\",\"ru\":\"AQUASANITA LUN100X-01\"}', '{\"az\":\"AQUASANITA LUN100X-01\",\"en\":\"AQUASANITA LUN100X-01\",\"ru\":\"AQUASANITA LUN100X-01\"}', 580.00, 5, 450, 505, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:41:20', '2020-06-18 13:02:49', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (223, '{\"az\":\"AQUASANITA LUN101N-L-01\",\"en\":\"AQUASANITA LUN101N-L-01\",\"ru\":\"AQUASANITA LUN101N-L-01\"}', '{\"az\":\"AQUASANITA LUN101N-L-01\",\"en\":\"AQUASANITA LUN101N-L-01\",\"ru\":\"AQUASANITA LUN101N-L-01\"}', 790.00, 5, 780, 500, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:42:03', '2020-06-18 13:03:38', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (224, '{\"az\":\"AQUASANITA LUN101N-R-01\",\"en\":\"AQUASANITA LUN101N-R-01\",\"ru\":\"AQUASANITA LUN101N-R-01\"}', '{\"az\":\"AQUASANITA LUN101N-R-01\",\"en\":\"AQUASANITA LUN101N-R-01\",\"ru\":\"AQUASANITA LUN101N-R-01\"}', 790.00, 5, 780, 500, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:42:52', '2020-06-18 13:04:51', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (225, '{\"az\":\"AQUASANITA LUN151N-L-01\",\"en\":\"AQUASANITA LUN151N-L-01\",\"ru\":\"AQUASANITA LUN151N-L-01\"}', '{\"az\":\"AQUASANITA LUN151N-L-01\",\"en\":\"AQUASANITA LUN151N-L-01\",\"ru\":\"AQUASANITA LUN151N-L-01\"}', 890.00, 5, 780, 500, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:43:36', '2020-06-18 13:06:14', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (226, '{\"az\":\"AQUASANITA LUN151N-R-01\",\"en\":\"AQUASANITA LUN151N-R-01\",\"ru\":\"AQUASANITA LUN151N-R-01\"}', '{\"az\":\"AQUASANITA LUN151N-R-01\",\"en\":\"AQUASANITA LUN151N-R-01\",\"ru\":\"AQUASANITA LUN151N-R-01\"}', 890.00, 5, 780, 500, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:44:12', '2020-06-18 13:07:09', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (227, '{\"az\":\"Aquasanita\\tSQA200-112W\",\"en\":\"Aquasanita\\tSQA200-112W\",\"ru\":\"Aquasanita\\tSQA200-112W\"}', '{\"az\":\"Aquasanita\\tSQA200-112W\",\"en\":\"Aquasanita\\tSQA200-112W\",\"ru\":\"Aquasanita\\tSQA200-112W\"}', 1040.00, 5, 810, 480, 230, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:52:03', '2020-06-18 15:48:34', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (228, '{\"az\":\"Aquasanita\\tDER100L-T\",\"en\":\"Aquasanita\\tDER100L-T\",\"ru\":\"Aquasanita\\tDER100L-T\"}', '{\"az\":\"Aquasanita\\tDER100L-T\",\"en\":\"Aquasanita\\tDER100L-T\",\"ru\":\"Aquasanita\\tDER100L-T\"}', 930.00, 5, 550, 450, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:53:47', '2020-06-18 15:47:59', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (229, '{\"az\":\"Aquasanita\\tLUN151N-R\",\"en\":\"Aquasanita\\tLUN151N-R\",\"ru\":\"Aquasanita\\tLUN151N-R\"}', '{\"az\":\"Aquasanita\\tLUN151N-R\",\"en\":\"Aquasanita\\tLUN151N-R\",\"ru\":\"Aquasanita\\tLUN151N-R\"}', 890.00, 5, 500, 780, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 13:55:31', '2020-06-18 15:48:15', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (230, '{\"az\":\"Aquasanita\\tSQB101-111AW\",\"en\":\"Aquasanita\\tSQB101-111AW\",\"ru\":\"Aquasanita\\tSQB101-111AW\"}', '{\"az\":\"Aquasanita\\tSQB101-111AW\",\"en\":\"Aquasanita\\tSQB101-111AW\",\"ru\":\"Aquasanita\\tSQB101-111AW\"}', 490.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:08:07', '2020-06-18 15:48:51', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (231, '{\"az\":\"Aquasanita\\tSQB101-112AW\",\"en\":\"Aquasanita\\tSQB101-112AW\",\"ru\":\"Aquasanita\\tSQB101-112AW\"}', '{\"az\":\"Aquasanita\\tSQB101-112AW\",\"en\":\"Aquasanita\\tSQB101-112AW\",\"ru\":\"Aquasanita\\tSQB101-112AW\"}', 490.00, 5, 780, 500, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:36:34', '2020-06-18 15:49:11', NULL, 6, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (232, '{\"az\":\"Aquasanita\\tSQB101-120AW\",\"en\":\"Aquasanita\\tSQB101-120AW\",\"ru\":\"Aquasanita\\tSQB101-120AW\"}', '{\"az\":\"Aquasanita\\tSQB101-120AW\",\"en\":\"Aquasanita\\tSQB101-120AW\",\"ru\":\"Aquasanita\\tSQB101-120AW\"}', 490.00, 5, 500, 780, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:39:54', '2020-06-18 15:49:31', NULL, 7, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (233, '{\"az\":\"Aquasanita\\tSQB101-601AW\",\"en\":\"Aquasanita\\tSQB101-601AW\",\"ru\":\"Aquasanita\\tSQB101-601AW\"}', '{\"az\":\"Aquasanita\\tSQB101-601AW\",\"en\":\"Aquasanita\\tSQB101-601AW\",\"ru\":\"Aquasanita\\tSQB101-601AW\"}', 490.00, 5, 500, 780, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:42:08', '2020-06-18 15:49:49', NULL, 3, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (234, '{\"az\":\"Aquasanita\\tSQB101-710AW\",\"en\":\"Aquasanita\\tSQB101-710AW\",\"ru\":\"Aquasanita\\tSQB101-710AW\"}', '{\"az\":\"Aquasanita\\tSQB101-710AW\",\"en\":\"Aquasanita\\tSQB101-710AW\",\"ru\":\"Aquasanita\\tSQB101-710AW\"}', 490.00, 5, 460, 760, 200, NULL, 4, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:44:13', '2020-06-18 15:50:07', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (235, '{\"az\":\"Aquasanita\\t2383-112\"}', '{\"az\":\"Aquasanita\\t2383-112\"}', 460.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:46:15', '2020-06-17 14:46:15', NULL, 6, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (236, '{\"az\":\"Aquasanita\\t2663-120\"}', '{\"az\":\"Aquasanita\\t2663-120\"}', 540.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:49:33', '2020-06-17 14:49:33', NULL, 7, 40, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (237, '{\"az\":\"Aquasanita\\tD-301\"}', '{\"az\":\"Aquasanita\\tD-301\"}', 100.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:55:00', '2020-06-17 14:55:00', NULL, 8, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (238, '{\"az\":\"Aquasanita\\tDQ-301\"}', '{\"az\":\"Aquasanita\\tDQ-301\"}', 121.77, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:57:03', '2020-06-17 14:57:03', NULL, 8, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (239, '{\"az\":\"Aquasanita\\tDR-001\"}', '{\"az\":\"Aquasanita\\tDR-001\"}', 90.00, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 14:59:12', '2020-06-17 14:59:12', NULL, 8, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (240, '{\"az\":\"Aquasanita\\tDS-601\"}', '{\"az\":\"Aquasanita\\tDS-601\"}', 84.25, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 15:00:55', '2020-06-17 15:00:55', NULL, 3, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (241, '{\"az\":\"Aquasanita\\tDS-110\"}', '{\"az\":\"Aquasanita\\tDS-110\"}', 84.25, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 15:03:56', '2020-06-17 15:03:56', NULL, 6, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (242, '{\"az\":\"Aquasanita\\tDS-111\"}', '{\"az\":\"Aquasanita\\tDS-111\"}', 84.25, 5, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-17 15:05:24', '2020-06-17 15:05:24', NULL, 4, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (243, '{\"az\":\"BOSCH\\tMMR 08A1\\/02\",\"en\":\"BOSCH\\tMMR 08A1\\/02\",\"ru\":\"BOSCH\\tMMR 08A1\\/02\"}', '{\"az\":\"BOSCH\\tMMR 08A1\\/02\",\"en\":\"BOSCH\\tMMR 08A1\\/02\",\"ru\":\"BOSCH\\tMMR 08A1\\/02\"}', 95.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:21:42', '2020-06-18 17:21:42', NULL, 4, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (244, '{\"az\":\"BOSCH\\tMMR 08R2\",\"en\":\"BOSCH\\tMMR 08R2\",\"ru\":\"BOSCH\\tMMR 08R2\"}', '{\"az\":\"BOSCH\\tMMR 08R2\",\"en\":\"BOSCH\\tMMR 08R2\",\"ru\":\"BOSCH\\tMMR 08R2\"}', 95.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:26:06', '2020-06-18 17:26:06', NULL, 1, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (245, '{\"az\":\"BOSCH\\tTWK 6004\",\"en\":\"BOSCH\\tTWK 6004\",\"ru\":\"BOSCH\\tTWK 6004\"}', '{\"az\":\"BOSCH\\tTWK 6004\",\"en\":\"BOSCH\\tTWK 6004\",\"ru\":\"BOSCH\\tTWK 6004\"}', 145.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:34:00', '2020-06-18 17:34:00', NULL, 1, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (246, '{\"az\":\"BOSCH\\tTWK 60088\",\"en\":\"BOSCH\\tTWK 60088\",\"ru\":\"BOSCH\\tTWK 60088\"}', '{\"az\":\"BOSCH\\tTWK 60088\",\"en\":\"BOSCH\\tTWK 60088\",\"ru\":\"BOSCH\\tTWK 60088\"}', 125.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:37:09', '2020-06-18 17:37:09', NULL, 6, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (247, '{\"az\":\"BOSCH\\tTWK 7007\",\"en\":\"BOSCH\\tTWK 7007\",\"ru\":\"BOSCH\\tTWK 7007\"}', '{\"az\":\"BOSCH\\tTWK 7007\",\"en\":\"BOSCH\\tTWK 7007\",\"ru\":\"BOSCH\\tTWK 7007\"}', 129.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:40:30', '2020-06-18 17:40:30', NULL, 6, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (248, '{\"az\":\"BOSCH\\t3A017\",\"en\":\"BOSCH\\t3A017\",\"ru\":\"BOSCH\\t3A017\"}', '{\"az\":\"BOSCH\\t3A017\",\"en\":\"BOSCH\\t3A017\",\"ru\":\"BOSCH\\t3A017\"}', 106.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-18 17:49:54', '2020-06-18 17:49:54', NULL, 6, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (249, '{\"az\":\"BOSCH\\tTWK 7506\",\"en\":\"BOSCH\\tTWK 7506\",\"ru\":\"BOSCH\\tTWK 7506\"}', '{\"az\":\"BOSCH\\tTWK 7506\",\"en\":\"BOSCH\\tTWK 7506\",\"ru\":\"BOSCH\\tTWK 7506\"}', 154.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:21:26', '2020-06-19 11:21:26', NULL, 2, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (250, '{\"az\":\"BOSCH\\tTWK 7808\",\"en\":\"BOSCH\\tTWK 7808\",\"ru\":\"BOSCH\\tTWK 7808\"}', '{\"az\":\"BOSCH\\tTWK 7808\",\"en\":\"BOSCH\\tTWK 7808\",\"ru\":\"BOSCH\\tTWK 7808\"}', 158.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:26:01', '2020-06-19 11:26:01', NULL, 10, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (251, '{\"az\":\"BOSCH\\tTWK 7S05\",\"en\":\"BOSCH\\tTWK 7S05\",\"ru\":\"BOSCH\\tTWK 7S05\"}', '{\"az\":\"BOSCH\\tTWK 7S05\",\"en\":\"BOSCH\\tTWK 7S05\",\"ru\":\"BOSCH\\tTWK 7S05\"}', 259.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:31:24', '2020-06-19 11:31:24', NULL, 8, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (252, '{\"az\":\"BOSCH\\tTWK 8611P\",\"en\":\"BOSCH\\tTWK 8611P\",\"ru\":\"BOSCH\\tTWK 8611P\"}', '{\"az\":\"BOSCH\\tTWK 8611P\",\"en\":\"BOSCH\\tTWK 8611P\",\"ru\":\"BOSCH\\tTWK 8611P\"}', 259.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:40:16', '2020-06-19 11:40:16', NULL, 8, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (253, '{\"az\":\"BOSCH\\tTWK 70A03\",\"en\":\"BOSCH\\tTWK 70A03\",\"ru\":\"BOSCH\\tTWK 70A03\"}', '{\"az\":\"BOSCH\\tTWK 70A03\",\"en\":\"BOSCH\\tTWK 70A03\",\"ru\":\"BOSCH\\tTWK 70A03\"}', 200.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:47:07', '2020-06-19 11:47:07', NULL, 3, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (254, '{\"az\":\"BOSCH\\tTWK 6303\",\"en\":\"BOSCH\\tTWK 6303\",\"ru\":\"BOSCH\\tTWK 6303\"}', '{\"az\":\"BOSCH\\tTWK 6303\",\"en\":\"BOSCH\\tTWK 6303\",\"ru\":\"BOSCH\\tTWK 6303\"}', 165.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 11:53:12', '2020-06-19 11:53:12', NULL, 8, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (255, '{\"az\":\"BOSCH\\tTWK 8612P\",\"en\":\"BOSCH\\tTWK 8612P\",\"ru\":\"BOSCH\\tTWK 8612P\"}', '{\"az\":\"BOSCH\\tTWK 8612P\",\"en\":\"BOSCH\\tTWK 8612P\",\"ru\":\"BOSCH\\tTWK 8612P\"}', 255.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:07:07', '2020-06-19 12:07:07', NULL, 2, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (256, '{\"az\":\"BOSCH\\tTWK 8613P\",\"en\":\"BOSCH\\tTWK 8613P\",\"ru\":\"BOSCH\\tTWK 8613P\"}', '{\"az\":\"BOSCH\\tTWK 8613P\",\"en\":\"BOSCH\\tTWK 8613P\",\"ru\":\"BOSCH\\tTWK 8613P\"}', 149.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:14:10', '2020-06-19 12:14:10', NULL, 3, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (257, '{\"az\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"en\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"ru\":\"BOSCH\\tCMG 633 BB1 (BS1)\"}', '{\"az\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"en\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"ru\":\"BOSCH\\tCMG 633 BB1 (BS1)\"}', 2650.00, 1, 455, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:30:49', '2020-06-19 12:35:30', '2020-06-19 12:35:30', 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (258, '{\"az\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"en\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"ru\":\"BOSCH\\tCMG 633 BB1 (BS1)\"}', '{\"az\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"en\":\"BOSCH\\tCMG 633 BB1 (BS1)\",\"ru\":\"BOSCH\\tCMG 633 BB1 (BS1)\"}', 2650.00, 1, 455, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:33:00', '2020-06-19 12:33:00', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, 7, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (259, '{\"az\":\"BOSCH\\tCMG 633 BB1\",\"en\":\"BOSCH\\tCMG 633 BB1\",\"ru\":\"BOSCH\\tCMG 633 BB1\"}', '{\"az\":\"BOSCH\\tCMG 633 BB1\",\"en\":\"BOSCH\\tCMG 633 BB1\",\"ru\":\"BOSCH\\tCMG 633 BB1\"}', 2650.00, 1, 455, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:34:42', '2020-06-19 12:35:25', '2020-06-19 12:35:25', 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (260, '{\"az\":\"BOSCH\\tBIC 630 NB1\",\"en\":\"BOSCH\\tBIC 630 NB1\",\"ru\":\"BOSCH\\tBIC 630 NB1\"}', '{\"az\":\"BOSCH\\tBIC 630 NB1\",\"en\":\"BOSCH\\tBIC 630 NB1\",\"ru\":\"BOSCH\\tBIC 630 NB1\"}', 1380.00, 1, 595, 140, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:46:16', '2020-06-19 12:46:16', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (261, '{\"az\":\"BOSCH\\tHBN 231E 2\",\"en\":\"BOSCH\\tHBN 231E 2\",\"ru\":\"BOSCH\\tHBN 231E 2\"}', '{\"az\":\"BOSCH\\tHBN 231E 2\",\"en\":\"BOSCH\\tHBN 231E 2\",\"ru\":\"BOSCH\\tHBN 231E 2\"}', 825.00, 1, 595, 595, 548, 8, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 12:57:10', '2020-06-19 12:57:10', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (262, '{\"az\":\"BOSCH\\tHBA 313 ORO\",\"en\":\"BOSCH\\tHBA 313 ORO\",\"ru\":\"BOSCH\\tHBA 313 ORO\"}', '{\"az\":\"BOSCH\\tHBA 313 ORO\",\"en\":\"BOSCH\\tHBA 313 ORO\",\"ru\":\"BOSCH\\tHBA 313 ORO\"}', 995.00, 1, 0, 0, 0, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:06:36', '2020-06-19 13:06:36', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (263, '{\"az\":\"BOSCH\\tHBA 214 OSO\",\"en\":\"BOSCH\\tHBA 214 OSO\",\"ru\":\"BOSCH\\tHBA 214 OSO\"}', '{\"az\":\"BOSCH\\tHBA 214 OSO\",\"en\":\"BOSCH\\tHBA 214 OSO\",\"ru\":\"BOSCH\\tHBA 214 OSO\"}', 1399.00, 1, 0, 0, 0, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:17:38', '2020-06-19 13:17:38', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (264, '{\"az\":\"BOSCH\\tHBA 334 YBO\",\"en\":\"BOSCH\\tHBA 334 YBO\",\"ru\":\"BOSCH\\tHBA 334 YBO\"}', '{\"az\":\"BOSCH\\tHBA 334 YBO\",\"en\":\"BOSCH\\tHBA 334 YBO\",\"ru\":\"BOSCH\\tHBA 334 YBO\"}', 1490.00, 1, 595, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:20:42', '2020-06-19 13:20:42', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (265, '{\"az\":\"BOSCH\\tHBA 554 EBO\",\"en\":\"BOSCH\\tHBA 554 EBO\",\"ru\":\"BOSCH\\tHBA 554 EBO\"}', '{\"az\":\"BOSCH\\tHBA 554 EBO\",\"en\":\"BOSCH\\tHBA 554 EBO\",\"ru\":\"BOSCH\\tHBA 554 EBO\"}', 1050.00, 1, 590, 600, 570, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:33:29', '2020-06-19 13:33:29', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (266, '{\"az\":\"BOSCH\\tHBF 534 EWOQ\",\"en\":\"BOSCH\\tHBF 534 EWOQ\",\"ru\":\"BOSCH\\tHBF 534 EWOQ\"}', '{\"az\":\"BOSCH\\tHBF 534 EWOQ\",\"en\":\"BOSCH\\tHBF 534 EWOQ\",\"ru\":\"BOSCH\\tHBF 534 EWOQ\"}', 960.00, 1, 597, 575, 568, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:39:29', '2020-06-19 13:39:29', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (267, '{\"az\":\"BOSCH\\tHBG 36 T 650\",\"en\":\"BOSCH\\tHBG 36 T 650\",\"ru\":\"BOSCH\\tHBG 36 T 650\"}', '{\"az\":\"BOSCH\\tHBG 36 T 650\",\"en\":\"BOSCH\\tHBG 36 T 650\",\"ru\":\"BOSCH\\tHBG 36 T 650\"}', 1930.00, 1, 595, 595, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:43:10', '2020-06-19 13:43:10', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (268, '{\"az\":\"BOSCH\\tHBG 633 BB1\",\"en\":\"BOSCH\\tHBG 633 BB1\",\"ru\":\"BOSCH\\tHBG 633 BB1\"}', '{\"az\":\"BOSCH\\tHBG 633 BB1\",\"en\":\"BOSCH\\tHBG 633 BB1\",\"ru\":\"BOSCH\\tHBG 633 BB1\"}', 1720.00, 1, 595, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 13:54:33', '2020-06-19 13:54:33', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (269, '{\"az\":\"BOSCH\\tHBG 634 BW1\",\"en\":\"BOSCH\\tHBG 634 BW1\",\"ru\":\"BOSCH\\tHBG 634 BW1\"}', '{\"az\":\"BOSCH\\tHBG 634 BW1\",\"en\":\"BOSCH\\tHBG 634 BW1\",\"ru\":\"BOSCH\\tHBG 634 BW1\"}', 1980.00, 1, 595, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 14:12:36', '2020-06-19 14:12:36', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (270, '{\"az\":\"BOSCH\\tHBG 655 NB1\",\"en\":\"BOSCH\\tHBG 655 NB1\",\"ru\":\"BOSCH\\tHBG 655 NB1\"}', '{\"az\":\"BOSCH\\tHBG 655 NB1\",\"en\":\"BOSCH\\tHBG 655 NB1\",\"ru\":\"BOSCH\\tHBG 655 NB1\"}', 2200.00, 1, 595, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 14:18:44', '2020-06-19 14:18:44', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (271, '{\"az\":\"BOSCH\\tHBN 43 455 1E\",\"en\":\"BOSCH\\tHBN 43 455 1E\",\"ru\":\"BOSCH\\tHBN 43 455 1E\"}', '{\"az\":\"BOSCH\\tHBN 43 455 1E\",\"en\":\"BOSCH\\tHBN 43 455 1E\",\"ru\":\"BOSCH\\tHBN 43 455 1E\"}', 1480.00, 1, 595, 595, 535, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 14:25:04', '2020-06-19 14:25:04', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (272, '{\"az\":\"BOSCH\\tCMG 633 BS1\",\"en\":\"BOSCH\\tCMG 633 BS1\",\"ru\":\"BOSCH\\tCMG 633 BS1\"}', '{\"az\":\"BOSCH\\tCMG 633 BS1\",\"en\":\"BOSCH\\tCMG 633 BS1\",\"ru\":\"BOSCH\\tCMG 633 BS1\"}', 2200.00, 1, 455, 595, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 14:45:32', '2020-06-19 14:45:32', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (273, '{\"az\":\"BOSCH\\tMFW 1501\\/08\",\"en\":\"BOSCH\\tMFW 1501\\/08\",\"ru\":\"BOSCH\\tMFW 1501\\/08\"}', '{\"az\":\"BOSCH\\tMFW 1501\\/08\",\"en\":\"BOSCH\\tMFW 1501\\/08\",\"ru\":\"BOSCH\\tMFW 1501\\/08\"}', 210.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 14:50:07', '2020-06-19 14:50:07', NULL, 4, 49, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (274, '{\"az\":\"BOSCH\\tDWK 095 G 20\",\"en\":\"BOSCH\\tDWK 095 G 20\",\"ru\":\"BOSCH\\tDWK 095 G 20\"}', '{\"az\":\"BOSCH\\tDWK 095 G 20\",\"en\":\"BOSCH\\tDWK 095 G 20\",\"ru\":\"BOSCH\\tDWK 095 G 20\"}', 1260.00, 1, 896, 1080, 386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 15:32:17', '2020-06-19 15:32:17', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (275, '{\"az\":\"BOSCH\\tDKE 965 P\",\"en\":\"BOSCH\\tDKE 965 P\",\"ru\":\"BOSCH\\tDKE 965 P\"}', '{\"az\":\"BOSCH\\tDKE 965 P\",\"en\":\"BOSCH\\tDKE 965 P\",\"ru\":\"BOSCH\\tDKE 965 P\"}', 1200.00, 1, 900, 1190, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 15:38:04', '2020-06-19 15:38:04', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (276, '{\"az\":\"BOSCH\\tDHI 635\",\"en\":\"BOSCH\\tDHI 635\",\"ru\":\"BOSCH\\tDHI 635\"}', '{\"az\":\"BOSCH\\tDHI 635\",\"en\":\"BOSCH\\tDHI 635\",\"ru\":\"BOSCH\\tDHI 635\"}', 690.00, 1, 600, 350, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 15:43:28', '2020-06-19 15:43:28', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (277, '{\"az\":\"BOSCH\\tMKM 6003\",\"en\":\"BOSCH\\tMKM 6003\",\"ru\":\"BOSCH\\tMKM 6003\"}', '{\"az\":\"BOSCH\\tMKM 6003\",\"en\":\"BOSCH\\tMKM 6003\",\"ru\":\"BOSCH\\tMKM 6003\"}', 85.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 15:51:34', '2020-06-19 15:57:40', '2020-06-19 15:57:40', 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (278, '{\"az\":\"BOSCH\\tTSM 6A017C\",\"en\":\"BOSCH\\tTSM 6A017C\",\"ru\":\"BOSCH\\tTSM 6A017C\"}', '{\"az\":\"BOSCH\\tTSM 6A017C\",\"en\":\"BOSCH\\tTSM 6A017C\",\"ru\":\"BOSCH\\tTSM 6A017C\"}', 85.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 15:55:49', '2020-06-19 15:57:52', '2020-06-19 15:57:52', 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (279, '{\"az\":\"BOSCH\\tTSM 6A017C\",\"en\":\"BOSCH\\tTSM 6A017C\",\"ru\":\"BOSCH\\tTSM 6A017C\"}', '{\"az\":\"BOSCH\\tTSM 6A017C\",\"en\":\"BOSCH\\tTSM 6A017C\",\"ru\":\"BOSCH\\tTSM 6A017C\"}', 85.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 16:03:20', '2020-06-19 16:03:20', NULL, 6, 46, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (280, '{\"az\":\"BOSCH\\tMKM 6003\",\"en\":\"BOSCH\\tMKM 6003\",\"ru\":\"BOSCH\\tMKM 6003\"}', '{\"az\":\"BOSCH\\tMKM 6003\",\"en\":\"BOSCH\\tMKM 6003\",\"ru\":\"BOSCH\\tMKM 6003\"}', 85.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 16:05:06', '2020-06-19 16:05:06', NULL, 3, 46, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (281, '{\"az\":\"BOSCH\\tBFL 524 MSO\",\"en\":\"BOSCH\\tBFL 524 MSO\",\"ru\":\"BOSCH\\tBFL 524 MSO\"}', '{\"az\":\"BOSCH\\tBFL 524 MSO\",\"en\":\"BOSCH\\tBFL 524 MSO\",\"ru\":\"BOSCH\\tBFL 524 MSO\"}', 830.00, 1, 362, 568, 300, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 16:19:52', '2020-06-19 16:19:52', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (282, '{\"az\":\"BOSCH\\tBFL 524 MBO\",\"en\":\"BOSCH\\tBFL 524 MBO\",\"ru\":\"BOSCH\\tBFL 524 MBO\"}', '{\"az\":\"BOSCH\\tBFL 524 MBO\",\"en\":\"BOSCH\\tBFL 524 MBO\",\"ru\":\"BOSCH\\tBFL 524 MBO\"}', 880.00, 1, 554, 382, 297, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-19 16:28:35', '2020-06-19 16:28:35', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (283, '{\"az\":\"BOSCH WTN 86201\",\"en\":\"BOSCH WTN 86201\",\"ru\":\"BOSCH\\tWTN 86201\"}', '{\"az\":\"BOSCH\\tWTN 86201\",\"en\":\"BOSCH\\tWTN 86201\",\"ru\":\"BOSCH\\tWTN 86201\"}', 1690.00, 1, 840, 840, 840, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 07:36:55', '2020-06-22 15:35:39', NULL, 4, 25, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, 500.00);
INSERT INTO `product` VALUES (284, '{\"az\":\"BOSCH\\tWIW 24340\",\"en\":\"BOSCH\\tWIW 24340\",\"ru\":\"BOSCH\\tWIW 24340\"}', '{\"az\":\"BOSCH\\tWIW 24340\",\"en\":\"BOSCH\\tWIW 24340\",\"ru\":\"BOSCH\\tWIW 24340\"}', 2780.00, 1, 600, 820, 570, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 07:44:42', '2020-06-20 07:44:42', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (285, '{\"az\":\"BOSCH\\tWAY 24742\",\"en\":\"BOSCH\\tWAY 24742\",\"ru\":\"BOSCH\\tWAY 24742\"}', '{\"az\":\"BOSCH\\tWAY 24742\",\"en\":\"BOSCH\\tWAY 24742\",\"ru\":\"BOSCH\\tWAY 24742\"}', 2640.00, 1, 600, 850, 590, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 07:49:59', '2020-06-20 07:49:59', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (286, '{\"az\":\"BOSCH\\tWAW 325 XOME\",\"en\":\"BOSCH\\tWAW 325 XOME\",\"ru\":\"BOSCH\\tWAW 325 XOME\"}', '{\"az\":\"BOSCH\\tWAW 325 XOME\",\"en\":\"BOSCH\\tWAW 325 XOME\",\"ru\":\"BOSCH\\tWAW 325 XOME\"}', 1999.00, 1, 600, 850, 590, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 07:56:25', '2020-06-20 07:56:25', NULL, 8, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (287, '{\"az\":\"BOSCH\\tWAW 24440\",\"en\":\"BOSCH\\tWAW 24440\",\"ru\":\"BOSCH\\tWAW 24440\"}', '{\"az\":\"BOSCH\\tWAW 24440\",\"en\":\"BOSCH\\tWAW 24440\",\"ru\":\"BOSCH\\tWAW 24440\"}', 1890.00, 1, 600, 850, 590, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:05:26', '2020-06-20 08:05:26', NULL, 8, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (288, '{\"az\":\"BOSCH\\tWAT 2467 KPL\",\"en\":\"BOSCH\\tWAT 2467 KPL\",\"ru\":\"BOSCH\\tWAT 2467 KPL\"}', '{\"az\":\"BOSCH\\tWAT 2467 KPL\",\"en\":\"BOSCH\\tWAT 2467 KPL\",\"ru\":\"BOSCH\\tWAT 2467 KPL\"}', 1845.00, 1, 600, 850, 600, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:14:31', '2020-06-20 08:14:31', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (289, '{\"az\":\"BOSCH\\tWAN 2427 TPL\",\"en\":\"BOSCH\\tWAN 2427 TPL\",\"ru\":\"BOSCH\\tWAN 2427 TPL\"}', '{\"az\":\"BOSCH\\tWAN 2427 TPL\",\"en\":\"BOSCH\\tWAN 2427 TPL\",\"ru\":\"BOSCH\\tWAN 2427 TPL\"}', 1560.00, 1, 600, 850, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:20:51', '2020-06-20 08:20:51', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (290, '{\"az\":\"BOSCH\\tWAK 2426 SME\",\"en\":\"BOSCH\\tWAK 2426 SME\",\"ru\":\"BOSCH\\tWAK 2426 SME\"}', '{\"az\":\"BOSCH\\tWAK 2426 SME\",\"en\":\"BOSCH\\tWAK 2426 SME\",\"ru\":\"BOSCH\\tWAK 2426 SME\"}', 1445.00, 1, 600, 850, 600, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:34:51', '2020-06-20 08:34:51', NULL, 8, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (291, '{\"az\":\"BOSCH\\tWVG 30460 PL\",\"en\":\"BOSCH\\tWVG 30460 PL\",\"ru\":\"BOSCH\\tWVG 30460 PL\"}', '{\"az\":\"BOSCH\\tWVG 30460 PL\",\"en\":\"BOSCH\\tWVG 30460 PL\",\"ru\":\"BOSCH\\tWVG 30460 PL\"}', 1390.00, 1, 600, 850, 590, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:39:28', '2020-06-20 08:39:28', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (292, '{\"az\":\"BOSCH\\tWAN 2416 EPL\",\"en\":\"BOSCH\\tWAN 2416 EPL\",\"ru\":\"BOSCH\\tWAN 2416 EPL\"}', '{\"az\":\"BOSCH\\tWAN 2416 EPL\",\"en\":\"BOSCH\\tWAN 2416 EPL\",\"ru\":\"BOSCH\\tWAN 2416 EPL\"}', 1230.00, 1, 600, 850, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:41:51', '2020-06-20 08:41:51', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (293, '{\"az\":\"BOSCH\\tWAN 2006 TPL\",\"en\":\"BOSCH\\tWAN 2006 TPL\",\"ru\":\"BOSCH\\tWAN 2006 TPL\"}', '{\"az\":\"BOSCH\\tWAN 2006 TPL\",\"en\":\"BOSCH\\tWAN 2006 TPL\",\"ru\":\"BOSCH\\tWAN 2006 TPL\"}', 1190.00, 1, 600, 850, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:45:53', '2020-06-20 08:45:53', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (294, '{\"az\":\"BOSCH\\tSMV 68 MX 07\",\"en\":\"BOSCH\\tSMV 68 MX 07\",\"ru\":\"BOSCH\\tSMV 68 MX 07\"}', '{\"az\":\"BOSCH\\tSMV 68 MX 07\",\"en\":\"BOSCH\\tSMV 68 MX 07\",\"ru\":\"BOSCH\\tSMV 68 MX 07\"}', 1699.00, 1, 600, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:54:05', '2020-06-20 08:54:05', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (295, '{\"az\":\"BOSCH\\tSMV 25 AX 00\",\"en\":\"BOSCH\\tSMV 25 AX 00\",\"ru\":\"BOSCH\\tSMV 25 AX 00\"}', '{\"az\":\"BOSCH\\tSMV 25 AX 00\",\"en\":\"BOSCH\\tSMV 25 AX 00\",\"ru\":\"BOSCH\\tSMV 25 AX 00\"}', 1320.00, 1, 600, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 08:59:16', '2020-06-20 08:59:16', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (296, '{\"az\":\"BOSCH\\tSMV 25 CX 03\",\"en\":\"BOSCH\\tSMV 25 CX 03\",\"ru\":\"BOSCH\\tSMV 25 CX 03\"}', '{\"az\":\"BOSCH\\tSMV 25 CX 03\",\"en\":\"BOSCH\\tSMV 25 CX 03\",\"ru\":\"BOSCH\\tSMV 25 CX 03\"}', 1480.00, 1, 450, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 09:07:35', '2020-06-20 09:07:35', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (297, '{\"az\":\"BOSCH\\tSMV 45 EX 00\",\"en\":\"BOSCH\\tSMV 45 EX 00\",\"ru\":\"BOSCH\\tSMV 45 EX 00\"}', '{\"az\":\"BOSCH\\tSMV 45 EX 00\",\"en\":\"BOSCH\\tSMV 45 EX 00\",\"ru\":\"BOSCH\\tSMV 45 EX 00\"}', 1499.00, 1, 600, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 09:46:27', '2020-06-20 09:46:27', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (298, '{\"az\":\"BOSCH\\tSMV 46 AX 00\",\"en\":\"BOSCH\\tSMV 46 AX 00\",\"ru\":\"BOSCH\\tSMV 46 AX 00\"}', '{\"az\":\"BOSCH\\tSMV 46 AX 00\",\"en\":\"BOSCH\\tSMV 46 AX 00\",\"ru\":\"BOSCH\\tSMV 46 AX 00\"}', 1320.00, 1, 600, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 09:50:42', '2020-06-20 09:50:42', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (299, '{\"az\":\"BOSCH\\tSPV 25 CX 03\",\"en\":\"BOSCH\\tSPV 25 CX 03\",\"ru\":\"BOSCH\\tSPV 25 CX 03\"}', '{\"az\":\"BOSCH\\tSPV 25 CX 03\",\"en\":\"BOSCH\\tSPV 25 CX 03\",\"ru\":\"BOSCH\\tSPV 25 CX 03\"}', 1230.00, 1, 450, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 09:59:32', '2020-06-20 09:59:32', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (300, '{\"az\":\"BOSCH\\tSMS 67 N\\u0130 10Q\",\"en\":\"BOSCH\\tSMS 67 N\\u0130 10Q\",\"ru\":\"BOSCH\\tSMS 67 N\\u0130 10Q\"}', '{\"az\":\"BOSCH\\tSMS 67 N\\u0130 10Q\",\"en\":\"BOSCH\\tSMS 67 N\\u0130 10Q\",\"ru\":\"BOSCH\\tSMS 67 N\\u0130 10Q\"}', 1338.00, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:06:07', '2020-06-20 10:06:07', NULL, 8, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (301, '{\"az\":\"BOSCH\\tSBV 68 MD 02\",\"en\":\"BOSCH\\tSBV 68 MD 02\",\"ru\":\"BOSCH\\tSBV 68 MD 02\"}', '{\"az\":\"BOSCH\\tSBV 68 MD 02\",\"en\":\"BOSCH\\tSBV 68 MD 02\",\"ru\":\"BOSCH\\tSBV 68 MD 02\"}', 2950.00, 1, 600, 870, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:13:16', '2020-06-20 10:13:16', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (302, '{\"az\":\"BOSCH\\tSMV 24 AX 00\",\"en\":\"BOSCH\\tSMV 24 AX 00\",\"ru\":\"BOSCH\\tSMV 24 AX 00\"}', '{\"az\":\"BOSCH\\tSMV 24 AX 00\",\"en\":\"BOSCH\\tSMV 24 AX 00\",\"ru\":\"BOSCH\\tSMV 24 AX 00\"}', 1299.00, 1, 600, 820, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:21:12', '2020-06-20 10:21:12', NULL, 4, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (303, '{\"az\":\"BOSCH\\tSMI 40 M 65\",\"en\":\"BOSCH\\tSMI 40 M 65\",\"ru\":\"BOSCH\\tSMI 40 M 65\"}', '{\"az\":\"BOSCH\\tSMI 40 M 65\",\"en\":\"BOSCH\\tSMI 40 M 65\",\"ru\":\"BOSCH\\tSMI 40 M 65\"}', 1690.00, 1, 650, 820, 570, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:27:30', '2020-06-20 10:27:30', NULL, 8, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (304, '{\"az\":\"BOSCH\\tSMI 69 N 45\",\"en\":\"BOSCH\\tSMI 69 N 45\",\"ru\":\"BOSCH\\tSMI 69 N 45\"}', '{\"az\":\"BOSCH\\tSMI 69 N 45\",\"en\":\"BOSCH\\tSMI 69 N 45\",\"ru\":\"BOSCH\\tSMI 69 N 45\"}', 2690.00, 1, 600, 820, 570, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:30:50', '2020-06-20 10:30:50', NULL, 8, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (305, '{\"az\":\"BOSCH\\tSPI 53 M 55\",\"en\":\"BOSCH\\tSPI 53 M 55\",\"ru\":\"BOSCH\\tSPI 53 M 55\"}', '{\"az\":\"BOSCH\\tSPI 53 M 55\",\"en\":\"BOSCH\\tSPI 53 M 55\",\"ru\":\"BOSCH\\tSPI 53 M 55\"}', 1388.00, 1, 448, 815, 573, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:35:23', '2020-06-20 10:35:23', NULL, 8, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (306, '{\"az\":\"BOSCH\\tSPS 53 M 28\",\"en\":\"BOSCH\\tSPS 53 M 28\",\"ru\":\"BOSCH\\tSPS 53 M 28\"}', '{\"az\":\"BOSCH\\tSPS 53 M 28\",\"en\":\"BOSCH\\tSPS 53 M 28\",\"ru\":\"BOSCH\\tSPS 53 M 28\"}', 1480.00, 1, 450, 845, 600, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:39:27', '2020-06-20 10:39:27', NULL, 9, 15, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (307, '{\"az\":\"BOSCH\\tMES 4000\",\"en\":\"BOSCH\\tMES 4000\",\"ru\":\"BOSCH\\tMES 4000\"}', '{\"az\":\"BOSCH\\tMES 4000\",\"en\":\"BOSCH\\tMES 4000\",\"ru\":\"BOSCH\\tMES 4000\"}', 355.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:44:50', '2020-06-20 10:44:50', NULL, 3, 48, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (308, '{\"az\":\"BOSCH\\tKAD 90 VB 20\",\"en\":\"BOSCH\\tKAD 90 VB 20\",\"ru\":\"BOSCH\\tKAD 90 VB 20\"}', '{\"az\":\"BOSCH\\tKAD 90 VB 20\",\"en\":\"BOSCH\\tKAD 90 VB 20\",\"ru\":\"BOSCH\\tKAD 90 VB 20\"}', 3980.00, 1, 910, 1770, 720, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:49:23', '2020-06-20 10:49:23', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (309, '{\"az\":\"BOSCH\\tKGN 36 MLEA\",\"en\":\"BOSCH\\tKGN 36 MLEA\",\"ru\":\"BOSCH\\tKGN 36 MLEA\"}', '{\"az\":\"BOSCH\\tKGN 36 MLEA\",\"en\":\"BOSCH\\tKGN 36 MLEA\",\"ru\":\"BOSCH\\tKGN 36 MLEA\"}', 1580.00, 1, 600, 1860, 660, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 10:53:40', '2020-06-20 10:53:40', NULL, 9, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (310, '{\"az\":\"BOSCH\\tKGN 56 AB 30N\",\"en\":\"BOSCH\\tKGN 56 AB 30N\",\"ru\":\"BOSCH\\tKGN 56 AB 30N\"}', '{\"az\":\"BOSCH\\tKGN 56 AB 30N\",\"en\":\"BOSCH\\tKGN 56 AB 30N\",\"ru\":\"BOSCH\\tKGN 56 AB 30N\"}', 1740.00, 1, 700, 1930, 800, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:00:29', '2020-06-20 11:00:29', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (311, '{\"az\":\"BOSCH\\tKIN 86 KS 30\",\"en\":\"BOSCH\\tKIN 86 KS 30\",\"ru\":\"BOSCH\\tKIN 86 KS 30\"}', '{\"az\":\"BOSCH\\tKIN 86 KS 30\",\"en\":\"BOSCH\\tKIN 86 KS 30\",\"ru\":\"BOSCH\\tKIN 86 KS 30\"}', 2480.00, 1, 541, 1772, 545, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:10:53', '2020-06-20 11:10:53', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (312, '{\"az\":\"BOSCH\\tKIS 86 KF 31\",\"en\":\"BOSCH\\tKIS 86 KF 31\",\"ru\":\"BOSCH\\tKIS 86 KF 31\"}', '{\"az\":\"BOSCH\\tKIS 86 KF 31\",\"en\":\"BOSCH\\tKIS 86 KF 31\",\"ru\":\"BOSCH\\tKIS 86 KF 31\"}', 2480.00, 1, 560, 1770, 555, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:15:59', '2020-06-20 11:15:59', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (313, '{\"az\":\"BOSCH\\tKIV 34 x 20\",\"en\":\"BOSCH\\tKIV 34 x 20\",\"ru\":\"BOSCH\\tKIV 34 x 20\"}', '{\"az\":\"BOSCH\\tKIV 34 x 20\",\"en\":\"BOSCH\\tKIV 34 x 20\",\"ru\":\"BOSCH\\tKIV 34 x 20\"}', 1530.00, 1, 540, 1770, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:22:56', '2020-06-20 11:22:56', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (314, '{\"az\":\"BOSCH\\tKIN 86 KF 31\",\"en\":\"BOSCH\\tKIN 86 KF 31\",\"ru\":\"BOSCH\\tKIN 86 KF 31\"}', '{\"az\":\"BOSCH\\tKIN 86 KF 31\",\"en\":\"BOSCH\\tKIN 86 KF 31\",\"ru\":\"BOSCH\\tKIN 86 KF 31\"}', 2680.00, 1, 560, 1770, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:24:25', '2020-06-20 11:24:25', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (315, '{\"az\":\"BOSCH\\tTAT 6A 113\",\"en\":\"BOSCH\\tTAT 6A 113\",\"ru\":\"BOSCH\\tTAT 6A 113\"}', '{\"az\":\"BOSCH\\tTAT 6A 113\",\"en\":\"BOSCH\\tTAT 6A 113\",\"ru\":\"BOSCH\\tTAT 6A 113\"}', 99.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 11:56:32', '2020-06-20 11:56:32', NULL, 3, 47, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (316, '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', 530.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:01:54', '2020-06-20 12:05:51', '2020-06-20 12:05:51', 3, 47, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (317, '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', 530.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:05:19', '2020-06-20 12:05:56', '2020-06-20 12:05:56', 3, 47, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (318, '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', '{\"az\":\"BOSCH\\tBSGL 5 PRO 5\",\"en\":\"BOSCH\\tBSGL 5 PRO 5\",\"ru\":\"BOSCH\\tBSGL 5 PRO 5\"}', 530.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:06:39', '2020-06-20 12:06:39', NULL, 3, 44, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (319, '{\"az\":\"BOSCH\\tBGS 2U PW ER1\",\"en\":\"BOSCH\\tBGS 2U PW ER1\",\"ru\":\"BOSCH\\tBGS 2U PW ER1\"}', '{\"az\":\"BOSCH\\tBGS 2U PW ER1\",\"en\":\"BOSCH\\tBGS 2U PW ER1\",\"ru\":\"BOSCH\\tBGS 2U PW ER1\"}', 385.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:13:50', '2020-06-20 12:13:50', NULL, 3, 44, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (320, '{\"az\":\"BOSCH\\tBGS 412000\",\"en\":\"BOSCH\\tBGS 412000\",\"ru\":\"BOSCH\\tBGS 412000\"}', '{\"az\":\"BOSCH\\tBGS 412000\",\"en\":\"BOSCH\\tBGS 412000\",\"ru\":\"BOSCH\\tBGS 412000\"}', 435.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:21:57', '2020-06-20 12:21:57', NULL, 3, 44, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (321, '{\"az\":\"BOSCH\\tTDN 1700P\",\"en\":\"BOSCH\\tTDN 1700P\",\"ru\":\"BOSCH\\tTDN 1700P\"}', '{\"az\":\"BOSCH\\tTDN 1700P\",\"en\":\"BOSCH\\tTDN 1700P\",\"ru\":\"BOSCH\\tTDN 1700P\"}', 600.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:28:56', '2020-06-20 12:28:56', NULL, 3, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (322, '{\"az\":\"BOSCH\\tTDA  1024110\",\"en\":\"BOSCH\\tTDA  1024110\",\"ru\":\"BOSCH\\tTDA  1024110\"}', '{\"az\":\"BOSCH\\tTDA  1024110\",\"en\":\"BOSCH\\tTDA  1024110\",\"ru\":\"BOSCH\\tTDA  1024110\"}', 185.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:37:23', '2020-06-20 12:37:23', NULL, 11, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (323, '{\"az\":\"BOSCH\\tTDA 2630\",\"en\":\"BOSCH\\tTDA 2630\",\"ru\":\"BOSCH\\tTDA 2630\"}', '{\"az\":\"BOSCH\\tTDA 2630\",\"en\":\"BOSCH\\tTDA 2630\",\"ru\":\"BOSCH\\tTDA 2630\"}', 145.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:43:09', '2020-06-20 12:43:09', NULL, 11, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (324, '{\"az\":\"BOSCH\\tTDA 2365\",\"en\":\"BOSCH\\tTDA 2365\",\"ru\":\"BOSCH\\tTDA 2365\"}', '{\"az\":\"BOSCH\\tTDA 2365\",\"en\":\"BOSCH\\tTDA 2365\",\"ru\":\"BOSCH\\tTDA 2365\"}', 135.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:45:54', '2020-06-20 12:45:54', NULL, 12, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (325, '{\"az\":\"BOSCH\\tTDA 3026110\",\"en\":\"BOSCH\\tTDA 3026110\",\"ru\":\"BOSCH\\tTDA 3026110\"}', '{\"az\":\"BOSCH\\tTDA 3026110\",\"en\":\"BOSCH\\tTDA 3026110\",\"ru\":\"BOSCH\\tTDA 3026110\"}', 235.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:51:57', '2020-06-20 12:51:57', NULL, 11, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (326, '{\"az\":\"BOSCH\\tTDA 2620\",\"en\":\"BOSCH\\tTDA 2620\",\"ru\":\"BOSCH\\tTDA 2620\"}', '{\"az\":\"BOSCH\\tTDA 2620\",\"en\":\"BOSCH\\tTDA 2620\",\"ru\":\"BOSCH\\tTDA 2620\"}', 158.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:53:52', '2020-06-20 12:53:52', NULL, 10, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (327, '{\"az\":\"BOSCH\\tTDA 102411C\",\"en\":\"BOSCH\\tTDA 102411C\",\"ru\":\"BOSCH\\tTDA 102411C\"}', '{\"az\":\"BOSCH\\tTDA 102411C\",\"en\":\"BOSCH\\tTDA 102411C\",\"ru\":\"BOSCH\\tTDA 102411C\"}', 143.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 12:58:48', '2020-06-20 12:58:48', NULL, 9, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (328, '{\"az\":\"BOSCH\\tTDA 46 MOVE 5\",\"en\":\"BOSCH\\tTDA 46 MOVE 5\",\"ru\":\"BOSCH\\tTDA 46 MOVE 5\"}', '{\"az\":\"BOSCH\\tTDA 46 MOVE 5\",\"en\":\"BOSCH\\tTDA 46 MOVE 5\",\"ru\":\"BOSCH\\tTDA 46 MOVE 5\"}', 165.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 13:09:25', '2020-06-20 13:09:25', NULL, 9, 52, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (329, '{\"az\":\"BOSCH\\tBFL 634 GW1\",\"en\":\"BOSCH\\tBFL 634 GW1\",\"ru\":\"BOSCH\\tBFL 634 GW1\"}', '{\"az\":\"BOSCH\\tBFL 634 GW1\",\"en\":\"BOSCH\\tBFL 634 GW1\",\"ru\":\"BOSCH\\tBFL 634 GW1\"}', 1455.00, 1, 594, 382, 318, 8, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 15:38:02', '2020-06-20 15:38:02', NULL, 4, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (330, '{\"az\":\"BOSCH\\tBFL 634 GS1\",\"en\":\"BOSCH\\tBFL 634 GS1\",\"ru\":\"BOSCH\\tBFL 634 GS1\"}', '{\"az\":\"BOSCH\\tBFL 634 GS1\",\"en\":\"BOSCH\\tBFL 634 GS1\",\"ru\":\"BOSCH\\tBFL 634 GS1\"}', 1480.00, 1, 594, 382, 318, 8, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 15:42:24', '2020-06-20 15:42:24', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (331, '{\"az\":\"BOSCH\\tMFQ 36460\",\"en\":\"BOSCH\\tMFQ 36460\",\"ru\":\"BOSCH\\tMFQ 36460\"}', '{\"az\":\"BOSCH\\tMFQ 36460\",\"en\":\"BOSCH\\tMFQ 36460\",\"ru\":\"BOSCH\\tMFQ 36460\"}', 148.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-06-20 15:47:38', '2020-06-20 15:47:38', NULL, 4, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (332, '{\"az\":\"BOSCH\\tPRP 6A 6D 70\",\"en\":\"BOSCH\\tPRP 6A 6D 70\",\"ru\":\"BOSCH\\tPRP 6A 6D 70\"}', '{\"az\":\"BOSCH\\tPRP 6A 6D 70\",\"en\":\"BOSCH\\tPRP 6A 6D 70\",\"ru\":\"BOSCH\\tPRP 6A 6D 70\"}', 1379.00, 1, 606, 45, 527, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 16:02:53', '2020-06-20 16:02:53', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (333, '{\"az\":\"BOSCH\\tPKF 375 FP1 E\",\"en\":\"BOSCH\\tPKF 375 FP1 E\",\"ru\":\"BOSCH\\tPKF 375 FP1 E\"}', '{\"az\":\"BOSCH\\tPKF 375 FP1 E\",\"en\":\"BOSCH\\tPKF 375 FP1 E\",\"ru\":\"BOSCH\\tPKF 375 FP1 E\"}', 960.00, 1, 270, 0, 490, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 16:09:23', '2020-06-20 16:09:23', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (334, '{\"az\":\"BOSCH\\tPKF 375 CA1M\",\"en\":\"BOSCH\\tPKF 375 CA1M\",\"ru\":\"BOSCH\\tPKF 375 CA1M\"}', '{\"az\":\"BOSCH\\tPKF 375 CA1M\",\"en\":\"BOSCH\\tPKF 375 CA1M\",\"ru\":\"BOSCH\\tPKF 375 CA1M\"}', 790.00, 1, 0, 0, 0, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 16:32:27', '2020-06-20 16:32:27', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (335, '{\"az\":\"BOSCH\\tPRB 3A 6D 70\",\"en\":\"BOSCH\\tPRB 3A 6D 70\",\"ru\":\"BOSCH\\tPRB 3A 6D 70\"}', '{\"az\":\"BOSCH\\tPRB 3A 6D 70\",\"en\":\"BOSCH\\tPRB 3A 6D 70\",\"ru\":\"BOSCH\\tPRB 3A 6D 70\"}', 1190.00, 1, 270, 0, 490, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-20 16:37:23', '2020-06-20 16:37:23', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (338, '{\"az\":\"Kaye Forbes\",\"en\":\"Jasper Aguirre\",\"ru\":\"Beau Clemons\"}', '{\"az\":\"Quis in blanditiis e\",\"en\":\"Ex nostrud deleniti\",\"ru\":\"Nihil rerum sed dese\"}', 742.00, 1, 79, 93, 36, NULL, 1, NULL, NULL, NULL, NULL, 449.00, 0, 0, '2020-06-22 09:52:59', '2020-06-22 09:52:59', NULL, 2, 24, NULL, 0, 'Optio minim quia au', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', 'no', 78, NULL);
INSERT INTO `product` VALUES (339, '{\"az\":\"Orla Kinney\",\"en\":\"Miriam Greene\",\"ru\":\"Kenneth Lindsey\"}', '{\"az\":\"Sit consequatur In\",\"en\":\"Enim ex blanditiis a\",\"ru\":\"Beatae doloribus con\"}', 954.00, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 895.00, 0, 0, '2020-06-22 10:05:59', '2020-06-22 10:05:59', NULL, 2, 54, NULL, 0, 'Proident autem exce', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', 'yes', 28, NULL);
INSERT INTO `product` VALUES (340, '{\"az\":\"BOSCH\\tPRY 6A 6B 70Q\",\"en\":\"BOSCH\\tPRY 6A 6B 70Q\",\"ru\":\"BOSCH\\tPRY 6A 6B 70Q\"}', '{\"az\":\"BOSCH\\tPRY 6A 6B 70Q\",\"en\":\"BOSCH\\tPRY 6A 6B 70Q\",\"ru\":\"BOSCH\\tPRY 6A 6B 70Q\"}', 1090.00, 1, 606, 45, 527, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 10:34:45', '2020-06-23 10:34:45', NULL, 3, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (341, '{\"az\":\"BOSCH\\tPUE 611 BB1E\",\"en\":\"BOSCH\\tPUE 611 BB1E\",\"ru\":\"BOSCH\\tPUE 611 BB1E\"}', '{\"az\":\"BOSCH\\tPUE 611 BB1E\",\"en\":\"BOSCH\\tPUE 611 BB1E\",\"ru\":\"BOSCH\\tPUE 611 BB1E\"}', 1199.00, 1, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 10:41:30', '2020-06-23 10:41:30', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (342, '{\"az\":\"BOSCH\\tPCH 6A 5B 90\",\"en\":\"BOSCH\\tPCH 6A 5B 90\",\"ru\":\"BOSCH\\tPCH 6A 5B 90\"}', '{\"az\":\"BOSCH\\tPCH 6A 5B 90\",\"en\":\"BOSCH\\tPCH 6A 5B 90\",\"ru\":\"BOSCH\\tPCH 6A 5B 90\"}', 965.00, 1, 582, 45, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 10:49:37', '2020-06-23 10:49:37', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (343, '{\"az\":\"BOSCH\\tPGY 6B 5B 60Q\",\"en\":\"BOSCH\\tPGY 6B 5B 60Q\",\"ru\":\"BOSCH\\tPGY 6B 5B 60Q\"}', '{\"az\":\"BOSCH\\tPGY 6B 5B 60Q\",\"en\":\"BOSCH\\tPGY 6B 5B 60Q\",\"ru\":\"BOSCH\\tPGY 6B 5B 60Q\"}', 570.00, 1, 582, 45, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 10:58:57', '2020-06-23 10:58:57', NULL, 8, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (344, '{\"az\":\"BOSCH\\tPIE 611 BB1E\",\"en\":\"BOSCH\\tPIE 611 BB1E\",\"ru\":\"BOSCH\\tPIE 611 BB1E\"}', '{\"az\":\"BOSCH\\tPIE 611 BB1E\",\"en\":\"BOSCH\\tPIE 611 BB1E\",\"ru\":\"BOSCH\\tPIE 611 BB1E\"}', 1245.00, 1, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 11:03:09', '2020-06-23 11:03:09', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (345, '{\"az\":\"BOSCH\\tPKE 652 CA1E\",\"en\":\"BOSCH\\tPKE 652 CA1E\",\"ru\":\"BOSCH\\tPKE 652 CA1E\"}', '{\"az\":\"BOSCH\\tPKE 652 CA1E\",\"en\":\"BOSCH\\tPKE 652 CA1E\",\"ru\":\"BOSCH\\tPKE 652 CA1E\"}', 1280.00, 1, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 11:08:21', '2020-06-23 11:08:21', NULL, 4, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (346, '{\"az\":\"BOSCH\\tPKN 645 B17E\",\"en\":\"BOSCH\\tPKN 645 B17E\",\"ru\":\"BOSCH\\tPKN 645 B17E\"}', '{\"az\":\"BOSCH\\tPKN 645 B17E\",\"en\":\"BOSCH\\tPKN 645 B17E\",\"ru\":\"BOSCH\\tPKN 645 B17E\"}', 780.00, 1, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 11:12:26', '2020-06-23 11:12:26', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (347, '{\"az\":\"BOSCH\\tPKE 645 Q14E\",\"en\":\"BOSCH\\tPKE 645 Q14E\",\"ru\":\"BOSCH\\tPKE 645 Q14E\"}', '{\"az\":\"BOSCH\\tPKE 645 Q14E\",\"en\":\"BOSCH\\tPKE 645 Q14E\",\"ru\":\"BOSCH\\tPKE 645 Q14E\"}', 799.00, 1, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 11:14:56', '2020-06-23 11:14:56', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (348, '{\"az\":\"BOSCH\\tPKN 811 FP1E\",\"en\":\"BOSCH\\tPKN 811 FP1E\",\"ru\":\"BOSCH\\tPKN 811 FP1E\"}', '{\"az\":\"BOSCH\\tPKN 811 FP1E\",\"en\":\"BOSCH\\tPKN 811 FP1E\",\"ru\":\"BOSCH\\tPKN 811 FP1E\"}', 1290.00, 1, 802, 45, 522, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 11:19:01', '2020-06-23 11:19:01', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (349, '{\"az\":\"BOSCH\\tPKE 645 B17 E\",\"en\":\"BOSCH\\tPKE 645 B17 E\",\"ru\":\"BOSCH\\tPKE 645 B17 E\"}', '{\"az\":\"BOSCH\\tPKE 645 B17 E\",\"en\":\"BOSCH\\tPKE 645 B17 E\",\"ru\":\"BOSCH\\tPKE 645 B17 E\"}', 760.00, 1, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 13:59:00', '2020-06-23 13:59:00', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (350, '{\"az\":\"BOSCH\\tPKE 611 D17E\",\"en\":\"BOSCH\\tPKE 611 D17E\",\"ru\":\"BOSCH\\tPKE 611 D17E\"}', '{\"az\":\"BOSCH\\tPKE 611 D17E\",\"en\":\"BOSCH\\tPKE 611 D17E\",\"ru\":\"BOSCH\\tPKE 611 D17E\"}', 699.00, 1, 560, 0, 490, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:03:48', '2020-06-23 14:03:48', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (351, '{\"az\":\"BOSCH\\tPNP 6B 6B 90\",\"en\":\"BOSCH\\tPNP 6B 6B 90\",\"ru\":\"BOSCH\\tPNP 6B 6B 90\"}', '{\"az\":\"BOSCH\\tPNP 6B 6B 90\",\"en\":\"BOSCH\\tPNP 6B 6B 90\",\"ru\":\"BOSCH\\tPNP 6B 6B 90\"}', 799.00, 1, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:10:00', '2020-06-23 14:10:00', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (352, '{\"az\":\"BOSCH\\tPRP 6A 6N 70\",\"en\":\"BOSCH\\tPRP 6A 6N 70\",\"ru\":\"BOSCH\\tPRP 6A 6N 70\"}', '{\"az\":\"BOSCH\\tPRP 6A 6N 70\",\"en\":\"BOSCH\\tPRP 6A 6N 70\",\"ru\":\"BOSCH\\tPRP 6A 6N 70\"}', 1860.00, 1, 610, 0, 530, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:15:44', '2020-06-23 14:15:44', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (353, '{\"az\":\"BOSCH\\tPCQ 7A 5M 90\",\"en\":\"BOSCH\\tPCQ 7A 5M 90\",\"ru\":\"BOSCH\\tPCQ 7A 5M 90\"}', '{\"az\":\"BOSCH\\tPCQ 7A 5M 90\",\"en\":\"BOSCH\\tPCQ 7A 5M 90\",\"ru\":\"BOSCH\\tPCQ 7A 5M 90\"}', 1190.00, 1, 750, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:21:24', '2020-06-23 14:21:24', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (354, '{\"az\":\"BOSCH\\tPGQ 7B 5B 90\",\"en\":\"BOSCH\\tPGQ 7B 5B 90\",\"ru\":\"BOSCH\\tPGQ 7B 5B 90\"}', '{\"az\":\"BOSCH\\tPGQ 7B 5B 90\",\"en\":\"BOSCH\\tPGQ 7B 5B 90\",\"ru\":\"BOSCH\\tPGQ 7B 5B 90\"}', 955.00, 1, 750, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:33:38', '2020-06-23 14:33:38', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (355, '{\"az\":\"BOSCH\\tPRA 3A 6D 70\",\"en\":\"BOSCH\\tPRA 3A 6D 70\",\"ru\":\"BOSCH\\tPRA 3A 6D 70\"}', '{\"az\":\"BOSCH\\tPRA 3A 6D 70\",\"en\":\"BOSCH\\tPRA 3A 6D 70\",\"ru\":\"BOSCH\\tPRA 3A 6D 70\"}', 1250.00, 1, 306, 45, 527, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:44:54', '2020-06-23 14:44:54', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (356, '{\"az\":\"SIEMIENS\\tHB 534 AERO\",\"en\":\"SIEMIENS\\tHB 534 AERO\",\"ru\":\"SIEMIENS\\tHB 534 AERO\"}', '{\"az\":\"SIEMIENS\\tHB 534 AERO\",\"en\":\"SIEMIENS\\tHB 534 AERO\",\"ru\":\"SIEMIENS\\tHB 534 AERO\"}', 1550.00, 7, 0, 0, 0, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:49:58', '2020-06-23 14:49:58', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, 7, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (357, '{\"az\":\"SIEMIENS\\tEC 645 PB 90 E1\",\"en\":\"SIEMIENS\\tEC 645 PB 90 E1\",\"ru\":\"SIEMIENS\\tEC 645 PB 90 E1\"}', '{\"az\":\"SIEMIENS\\tEC 645 PB 90 E1\",\"en\":\"SIEMIENS\\tEC 645 PB 90 E1\",\"ru\":\"SIEMIENS\\tEC 645 PB 90 E1\"}', 899.00, 7, 582, 45, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 14:55:29', '2020-06-23 14:55:29', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (358, '{\"az\":\"SIEMIENS\\tEP 6A 6PB 20\",\"en\":\"SIEMIENS\\tEP 6A 6PB 20\",\"ru\":\"SIEMIENS\\tEP 6A 6PB 20\"}', '{\"az\":\"SIEMIENS\\tEP 6A 6PB 20\",\"en\":\"SIEMIENS\\tEP 6A 6PB 20\",\"ru\":\"SIEMIENS\\tEP 6A 6PB 20\"}', 899.00, 7, 590, 45, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 15:06:05', '2020-06-23 15:06:05', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (359, '{\"az\":\"SIEMENS\\tEC 7A 5RB 90\",\"en\":\"SIEMENS\\tEC 7A 5RB 90\",\"ru\":\"SIEMENS\\tEC 7A 5RB 90\"}', '{\"az\":\"SIEMENS\\tEC 7A 5RB 90\",\"en\":\"SIEMENS\\tEC 7A 5RB 90\",\"ru\":\"SIEMENS\\tEC 7A 5RB 90\"}', 1190.00, 7, 750, 45, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 15:13:56', '2020-06-23 15:13:56', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (360, '{\"az\":\"AEG\\tRCB 747 11N\",\"en\":\"AEG\\tRCB 747 11N\",\"ru\":\"AEG\\tRCB 747 11N\"}', '{\"az\":\"AEG\\tRCB 747 11N\",\"en\":\"AEG\\tRCB 747 11N\",\"ru\":\"AEG\\tRCB 747 11N\"}', 2790.00, 8, 790, 1760, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 15:19:16', '2020-06-23 15:19:16', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (361, '{\"az\":\"AMICA\\tFM 104.4\",\"en\":\"AMICA\\tFM 104.4\",\"ru\":\"AMICA\\tFM 104.4\"}', '{\"az\":\"AMICA\\tFM 104.4\",\"en\":\"AMICA\\tFM 104.4\",\"ru\":\"AMICA\\tFM 104.4\"}', 560.00, 6, 480, 840, 510, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 15:22:25', '2020-06-23 15:22:25', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (362, '{\"az\":\"AMICA\\tFK 2965.3 RAA\",\"en\":\"AMICA\\tFK 2965.3 RAA\",\"ru\":\"AMICA\\tFK 2965.3 RAA\"}', '{\"az\":\"AMICA\\tFK 2965.3 RAA\",\"en\":\"AMICA\\tFK 2965.3 RAA\",\"ru\":\"AMICA\\tFK 2965.3 RAA\"}', 1990.00, 6, 550, 1810, 615, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 16:24:43', '2020-06-23 16:24:43', NULL, 1, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (363, '{\"az\":\"BOSCH\\tKGN86AI30U\",\"en\":\"BOSCH\\tKGN86AI30U\",\"ru\":\"BOSCH\\tKGN86AI30U\"}', '{\"az\":\"BOSCH\\tKGN86AI30U\",\"en\":\"BOSCH\\tKGN86AI30U\",\"ru\":\"BOSCH\\tKGN86AI30U\"}', 2400.00, 1, 860, 1860, 810, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 16:41:25', '2020-06-23 16:41:25', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (364, '{\"az\":\"BOSCH\\tKGN57VI22N\",\"en\":\"BOSCH\\tKGN57VI22N\",\"ru\":\"BOSCH\\tKGN57VI22N\"}', '{\"az\":\"BOSCH\\tKGN57VI22N\",\"en\":\"BOSCH\\tKGN57VI22N\",\"ru\":\"BOSCH\\tKGN57VI22N\"}', 1649.00, 1, 700, 1850, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-23 16:47:03', '2020-06-23 16:47:03', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (365, '{\"az\":\"CATA\\tCI 54177 NF\",\"en\":\"CATA\\tCI 54177 NF\",\"ru\":\"CATA\\tCI 54177 NF\"}', '{\"az\":\"CATA\\tCI 54177 NF\",\"en\":\"CATA\\tCI 54177 NF\",\"ru\":\"CATA\\tCI 54177 NF\"}', 1399.00, 9, 540, 1773, 540, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 07:55:35', '2020-06-24 07:55:35', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (366, '{\"az\":\"CATA\\tVI 59087\",\"en\":\"CATA\\tVI 59087\",\"ru\":\"CATA\\tVI 59087\"}', '{\"az\":\"CATA\\tVI 59087\",\"en\":\"CATA\\tVI 59087\",\"ru\":\"CATA\\tVI 59087\"}', 1620.00, 9, 595, 870, 595, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 07:59:35', '2020-06-24 07:59:35', NULL, 8, 29, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (367, '{\"az\":\"HAIER\\tAFD 626 TGB\",\"en\":\"HAIER\\tAFD 626 TGB\",\"ru\":\"HAIER\\tAFD 626 TGB\"}', '{\"az\":\"HAIER\\tAFD 626 TGB\",\"en\":\"HAIER\\tAFD 626 TGB\",\"ru\":\"HAIER\\tAFD 626 TGB\"}', 2650.00, 10, 747, 1855, 717, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 08:05:08', '2020-06-24 08:05:08', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (368, '{\"az\":\"HITACHI\\tR-W 660 PUC 7 GBK\",\"en\":\"HITACHI\\tR-W 660 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-W 660 PUC 7 GBK\"}', '{\"az\":\"HITACHI\\tR-W 660 PUC 7 GBK\",\"en\":\"HITACHI\\tR-W 660 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-W 660 PUC 7 GBK\"}', 2290.00, 11, 855, 1835, 744, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:29:47', '2020-06-24 09:29:47', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (369, '{\"az\":\"HITACHI\\tR-W 660 PUC 7 GPW\",\"en\":\"HITACHI\\tR-W 660 PUC 7 GPW\",\"ru\":\"HITACHI\\tR-W 660 PUC 7 GPW\"}', '{\"az\":\"HITACHI\\tR-W 660 PUC 7 GPW\",\"en\":\"HITACHI\\tR-W 660 PUC 7 GPW\",\"ru\":\"HITACHI\\tR-W 660 PUC 7 GPW\"}', 2320.00, 11, 855, 1835, 744, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:32:53', '2020-06-24 09:32:53', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (370, '{\"az\":\"HITACHI\\tR-V 540 PUC 7 BBK\",\"en\":\"HITACHI\\tR-V 540 PUC 7 BBK\",\"ru\":\"HITACHI\\tR-V 540 PUC 7 BBK\"}', '{\"az\":\"HITACHI\\tR-V 540 PUC 7 BBK\",\"en\":\"HITACHI\\tR-V 540 PUC 7 BBK\",\"ru\":\"HITACHI\\tR-V 540 PUC 7 BBK\"}', 1730.00, 11, 715, 1840, 750, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:38:18', '2020-06-24 09:38:18', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (371, '{\"az\":\"HITACHI\\tR-VG 540 PUC 7 GBK\",\"en\":\"HITACHI\\tR-VG 540 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-VG 540 PUC 7 GBK\"}', '{\"az\":\"HITACHI\\tR-VG 540 PUC 7 GBK\",\"en\":\"HITACHI\\tR-VG 540 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-VG 540 PUC 7 GBK\"}', 1820.00, 11, 720, 1840, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:40:37', '2020-06-24 09:40:37', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (372, '{\"az\":\"HITACHI\\tR-W 720 PUC 1 GBK\",\"en\":\"HITACHI\\tR-W 720 PUC 1 GBK\",\"ru\":\"HITACHI\\tR-W 720 PUC 1 GBK\"}', '{\"az\":\"HITACHI\\tR-W 720 PUC 1 GBK\",\"en\":\"HITACHI\\tR-W 720 PUC 1 GBK\",\"ru\":\"HITACHI\\tR-W 720 PUC 1 GBK\"}', 2650.00, 11, 910, 1835, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:43:12', '2020-06-24 09:43:12', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'yes', NULL, 2, NULL);
INSERT INTO `product` VALUES (373, '{\"az\":\"HITACHI\\tR-WB 730 PUC 5 XGR\",\"en\":\"HITACHI\\tR-WB 730 PUC 5 XGR\",\"ru\":\"HITACHI\\tR-WB 730 PUC 5 XGR\"}', '{\"az\":\"HITACHI\\tR-WB 730 PUC 5 XGR\",\"en\":\"HITACHI\\tR-WB 730 PUC 5 XGR\",\"ru\":\"HITACHI\\tR-WB 730 PUC 5 XGR\"}', 3400.00, 11, 860, 1840, 780, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:47:05', '2020-06-24 09:47:05', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (374, '{\"az\":\"HITACHI\\tR-WB 480 PUC 2 GBW\",\"en\":\"HITACHI\\tR-WB 480 PUC 2 GBW\",\"ru\":\"HITACHI\\tR-WB 480 PUC 2 GBW\"}', '{\"az\":\"HITACHI\\tR-WB 480 PUC 2 GBW\",\"en\":\"HITACHI\\tR-WB 480 PUC 2 GBW\",\"ru\":\"HITACHI\\tR-WB 480 PUC 2 GBW\"}', 1890.00, 11, 680, 1780, 760, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:50:40', '2020-06-24 09:50:40', NULL, 7, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (375, '{\"az\":\"HITACHI\\tR-BG 410 PUC 6 XGR\",\"en\":\"HITACHI\\tR-BG 410 PUC 6 XGR\",\"ru\":\"HITACHI\\tR-BG 410 PUC 6 XGR\"}', '{\"az\":\"HITACHI\\tR-BG 410 PUC 6 XGR\",\"en\":\"HITACHI\\tR-BG 410 PUC 6 XGR\",\"ru\":\"HITACHI\\tR-BG 410 PUC 6 XGR\"}', 1590.00, 11, 595, 1900, 650, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:56:32', '2020-06-24 09:56:32', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (376, '{\"az\":\"HITACHI\\tR-V 540 PUC 7 BSL\",\"en\":\"HITACHI\\tR-V 540 PUC 7 BSL\",\"ru\":\"HITACHI\\tR-V 540 PUC 7 BSL\"}', '{\"az\":\"HITACHI\\tR-V 540 PUC 7 BSL\",\"en\":\"HITACHI\\tR-V 540 PUC 7 BSL\",\"ru\":\"HITACHI\\tR-V 540 PUC 7 BSL\"}', 1590.00, 11, 715, 1835, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 09:59:50', '2020-06-24 09:59:50', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (377, '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BSL\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BSL\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BSL\"}', '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BSL\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BSL\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BSL\"}', 1990.00, 11, 855, 1835, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:02:02', '2020-06-24 10:02:02', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (378, '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GGR\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GGR\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GGR\"}', '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GGR\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GGR\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GGR\"}', 2190.00, 11, 855, 1835, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:08:19', '2020-06-24 10:08:19', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (379, '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GBK\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GBK\"}', '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GBK\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GBK\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GBK\"}', 2190.00, 11, 860, 1840, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:11:10', '2020-06-24 10:11:10', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (380, '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GPW\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GPW\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GPW\"}', '{\"az\":\"HITACHI\\tR-VG 660 PUC 7 GPW\",\"en\":\"HITACHI\\tR-VG 660 PUC 7 GPW\",\"ru\":\"HITACHI\\tR-VG 660 PUC 7 GPW\"}', 2190.00, 11, 860, 1840, 750, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:14:44', '2020-06-24 10:14:44', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (381, '{\"az\":\"HITACHI\\tR-SG 31B PUC GBK\",\"en\":\"HITACHI\\tR-SG 31B PUC GBK\",\"ru\":\"HITACHI\\tR-SG 31B PUC GBK\"}', '{\"az\":\"HITACHI\\tR-SG 31B PUC GBK\",\"en\":\"HITACHI\\tR-SG 31B PUC GBK\",\"ru\":\"HITACHI\\tR-SG 31B PUC GBK\"}', 1670.00, 11, 650, 1750, 580, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:19:43', '2020-06-24 10:19:43', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (382, '{\"az\":\"HITACHI\\tR-SG 37B PUC GS\",\"en\":\"HITACHI\\tR-SG 37B PUC GS\",\"ru\":\"HITACHI\\tR-SG 37B PUC GS\"}', '{\"az\":\"HITACHI\\tR-SG 37B PUC GS\",\"en\":\"HITACHI\\tR-SG 37B PUC GS\",\"ru\":\"HITACHI\\tR-SG 37B PUC GS\"}', 1670.00, 11, 590, 1816, 630, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:27:17', '2020-06-24 10:27:17', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (383, '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BBK\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BBK\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BBK\"}', '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BBK\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BBK\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BBK\"}', 1990.00, 11, 860, 1840, 750, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:34:00', '2020-06-24 10:34:00', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (384, '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BEG\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BEG\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BEG\"}', '{\"az\":\"HITACHI\\tR-V 660 PUC 7 BEG\",\"en\":\"HITACHI\\tR-V 660 PUC 7 BEG\",\"ru\":\"HITACHI\\tR-V 660 PUC 7 BEG\"}', 2080.00, 11, 855, 1835, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:36:32', '2020-06-24 10:36:32', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (385, '{\"az\":\"HOTPOINT\\tBF 1801 EF AA\",\"en\":\"HOTPOINT\\tBF 1801 EF AA\",\"ru\":\"HOTPOINT\\tBF 1801 EF AA\"}', '{\"az\":\"HOTPOINT\\tBF 1801 EF AA\",\"en\":\"HOTPOINT\\tBF 1801 EF AA\",\"ru\":\"HOTPOINT\\tBF 1801 EF AA\"}', 1850.00, 12, 540, 1770, 545, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:45:02', '2020-06-24 10:45:02', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (386, '{\"az\":\"HOTPOINT\\tBS 1801 AA\",\"en\":\"HOTPOINT\\tBS 1801 AA\",\"ru\":\"HOTPOINT\\tBS 1801 AA\"}', '{\"az\":\"HOTPOINT\\tBS 1801 AA\",\"en\":\"HOTPOINT\\tBS 1801 AA\",\"ru\":\"HOTPOINT\\tBS 1801 AA\"}', 1590.00, 12, 540, 1770, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:47:43', '2020-06-24 10:47:43', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (387, '{\"az\":\"HOTPOINT\\tBFS 121\",\"en\":\"HOTPOINT\\tBFS 121\",\"ru\":\"HOTPOINT\\tBFS 121\"}', '{\"az\":\"HOTPOINT\\tBFS 121\",\"en\":\"HOTPOINT\\tBFS 121\",\"ru\":\"HOTPOINT\\tBFS 121\"}', 760.00, 12, 580, 820, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:49:59', '2020-06-24 10:49:59', NULL, 4, 30, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (388, '{\"az\":\"HOTPOINT\\tBCB 7030 AAA FC\",\"en\":\"HOTPOINT\\tBCB 7030 AAA FC\",\"ru\":\"HOTPOINT\\tBCB 7030 AAA FC\"}', '{\"az\":\"HOTPOINT\\tBCB 7030 AAA FC\",\"en\":\"HOTPOINT\\tBCB 7030 AAA FC\",\"ru\":\"HOTPOINT\\tBCB 7030 AAA FC\"}', 1450.00, 12, 540, 1770, 560, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:56:27', '2020-06-24 10:56:27', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (389, '{\"az\":\"K\\u00d6RTING\\tKSI 17850 CF\",\"en\":\"K\\u00d6RTING\\tKSI 17850 CF\",\"ru\":\"K\\u00d6RTING\\tKSI 17850 CF\"}', '{\"az\":\"K\\u00d6RTING\\tKSI 17850 CF\",\"en\":\"K\\u00d6RTING\\tKSI 17850 CF\",\"ru\":\"K\\u00d6RTING\\tKSI 17850 CF\"}', 1590.00, 2, 540, 1770, 546, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 10:59:59', '2020-06-24 10:59:59', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (390, '{\"az\":\"K\\u00d6RTING\\tKSI 17875 CNF\",\"en\":\"K\\u00d6RTING\\tKSI 17875 CNF\",\"ru\":\"K\\u00d6RTING\\tKSI 17875 CNF\"}', '{\"az\":\"K\\u00d6RTING\\tKSI 17875 CNF\",\"en\":\"K\\u00d6RTING\\tKSI 17875 CNF\",\"ru\":\"K\\u00d6RTING\\tKSI 17875 CNF\"}', 2190.00, 2, 540, 1770, 546, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:03:07', '2020-06-24 11:03:07', NULL, 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (391, '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 GN\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 GN\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 GN\"}', '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 GN\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 GN\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 GN\"}', 3080.00, 2, 895, 1788, 690, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:05:58', '2020-06-24 11:05:58', NULL, 3, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (392, '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 GW\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 GW\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 GW\"}', '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 GW\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 GW\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 GW\"}', 3080.00, 2, 895, 1788, 690, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:09:56', '2020-06-24 11:11:37', NULL, 13, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (393, '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 X\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 X\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 X\"}', '{\"az\":\"K\\u00d6RTING\\tKNFS 91797 X\",\"en\":\"K\\u00d6RTING\\tKNFS 91797 X\",\"ru\":\"K\\u00d6RTING\\tKNFS 91797 X\"}', 2740.00, 2, 895, 1788, 745, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:16:28', '2020-06-24 11:16:28', NULL, 8, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (394, '{\"az\":\"MPM\\t117 CW 46\",\"en\":\"MPM\\t117 CW 46\",\"ru\":\"MPM\\t117 CW 46\"}', '{\"az\":\"MPM\\t117 CW 46\",\"en\":\"MPM\\t117 CW 46\",\"ru\":\"MPM\\t117 CW 46\"}', 960.00, 13, 500, 840, 590, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:20:52', '2020-06-24 11:20:52', NULL, 8, 29, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (395, '{\"az\":\"NODOR\\tV 41 B\",\"en\":\"NODOR\\tV 41 B\",\"ru\":\"NODOR\\tV 41 B\"}', '{\"az\":\"NODOR\\tV 41 B\",\"en\":\"NODOR\\tV 41 B\",\"ru\":\"NODOR\\tV 41 B\"}', 2490.00, 14, 540, 884, 537, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:23:39', '2020-06-24 11:23:39', NULL, 8, 29, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (396, '{\"az\":\"SAMSUNG\\tRF 62 HERS\",\"en\":\"SAMSUNG\\tRF 62 HERS\",\"ru\":\"SAMSUNG\\tRF 62 HERS\"}', '{\"az\":\"SAMSUNG\\tRF 62 HERS\",\"en\":\"SAMSUNG\\tRF 62 HERS\",\"ru\":\"SAMSUNG\\tRF 62 HERS\"}', 3980.00, 15, 817, 1820, 774, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:28:57', '2020-06-24 11:28:57', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (397, '{\"az\":\"SAMSUNG\\tBRB 260030 WW\",\"en\":\"SAMSUNG\\tBRB 260030 WW\",\"ru\":\"SAMSUNG\\tBRB 260030 WW\"}', '{\"az\":\"SAMSUNG\\tBRB 260030 WW\",\"en\":\"SAMSUNG\\tBRB 260030 WW\",\"ru\":\"SAMSUNG\\tBRB 260030 WW\"}', 1850.00, 15, 540, 1775, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:34:59', '2020-06-24 11:34:59', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (398, '{\"az\":\"SHARP\\tSJXG 690 MSL\",\"en\":\"SHARP\\tSJXG 690 MSL\",\"ru\":\"SHARP\\tSJXG 690 MSL\"}', '{\"az\":\"SHARP\\tSJXG 690 MSL\",\"en\":\"SHARP\\tSJXG 690 MSL\",\"ru\":\"SHARP\\tSJXG 690 MSL\"}', 2455.00, 16, 820, 1770, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:39:32', '2020-06-24 11:39:32', NULL, 8, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (399, '{\"az\":\"SHARP\\tSJXG 640 MBE\",\"en\":\"SHARP\\tSJXG 640 MBE\",\"ru\":\"SHARP\\tSJXG 640 MBE\"}', '{\"az\":\"SHARP\\tSJXG 640 MBE\",\"en\":\"SHARP\\tSJXG 640 MBE\",\"ru\":\"SHARP\\tSJXG 640 MBE\"}', 2290.00, 16, 866, 1770, 773, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:47:40', '2020-06-24 11:47:40', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (400, '{\"az\":\"SHARP\\tSJXG 640 MBK\",\"en\":\"SHARP\\tSJXG 640 MBK\",\"ru\":\"SHARP\\tSJXG 640 MBK\"}', '{\"az\":\"SHARP\\tSJXG 640 MBK\",\"en\":\"SHARP\\tSJXG 640 MBK\",\"ru\":\"SHARP\\tSJXG 640 MBK\"}', 2350.00, 16, 820, 1770, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 11:51:23', '2020-06-24 11:51:23', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (401, '{\"az\":\"SHARP\\tSJFP 810 VBE\",\"en\":\"SHARP\\tSJFP 810 VBE\",\"ru\":\"SHARP\\tSJFP 810 VBE\"}', '{\"az\":\"SHARP\\tSJFP 810 VBE\",\"en\":\"SHARP\\tSJFP 810 VBE\",\"ru\":\"SHARP\\tSJFP 810 VBE\"}', 3999.00, 16, 892, 1830, 771, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:00:16', '2020-06-24 12:00:16', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (402, '{\"az\":\"SHARP\\tSJXE 680 MBE\",\"en\":\"SHARP\\tSJXE 680 MBE\",\"ru\":\"SHARP\\tSJXE 680 MBE\"}', '{\"az\":\"SHARP\\tSJXE 680 MBE\",\"en\":\"SHARP\\tSJXE 680 MBE\",\"ru\":\"SHARP\\tSJXE 680 MBE\"}', 2490.00, 16, 800, 1750, 735, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:03:30', '2020-06-24 12:03:30', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (403, '{\"az\":\"SHARP\\tSJXG 690 MBK\",\"en\":\"SHARP\\tSJXG 690 MBK\",\"ru\":\"SHARP\\tSJXG 690 MBK\"}', '{\"az\":\"SHARP\\tSJXG 690 MBK\",\"en\":\"SHARP\\tSJXG 690 MBK\",\"ru\":\"SHARP\\tSJXG 690 MBK\"}', 2690.00, 16, 820, 1860, 720, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:06:27', '2020-06-24 12:06:27', NULL, 3, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (404, '{\"az\":\"SHARP\\tSJXG 690 MBE\",\"en\":\"SHARP\\tSJXG 690 MBE\",\"ru\":\"SHARP\\tSJXG 690 MBE\"}', '{\"az\":\"SHARP\\tSJXG 690 MBE\",\"en\":\"SHARP\\tSJXG 690 MBE\",\"ru\":\"SHARP\\tSJXG 690 MBE\"}', 2390.00, 16, 820, 1870, 740, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:09:38', '2020-06-24 12:09:38', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (405, '{\"az\":\"SMEG\\tFQ 60 CPO\",\"en\":\"SMEG\\tFQ 60 CPO\",\"ru\":\"SMEG\\tFQ 60 CPO\"}', '{\"az\":\"SMEG\\tFQ 60 CPO\",\"en\":\"SMEG\\tFQ 60 CPO\",\"ru\":\"SMEG\\tFQ 60 CPO\"}', 9890.00, 4, 922, 1870, 765, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:12:20', '2020-06-24 12:12:20', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (406, '{\"az\":\"SMEG\\tFAB 50 RCRB\",\"en\":\"SMEG\\tFAB 50 RCRB\",\"ru\":\"SMEG\\tFAB 50 RCRB\"}', '{\"az\":\"SMEG\\tFAB 50 RCRB\",\"en\":\"SMEG\\tFAB 50 RCRB\",\"ru\":\"SMEG\\tFAB 50 RCRB\"}', 6390.00, 4, 804, 1875, 766, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:16:15', '2020-06-24 12:16:15', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (407, '{\"az\":\"SMEG\\tFA 8003 P\",\"en\":\"SMEG\\tFA 8003 P\",\"ru\":\"SMEG\\tFA 8003 P\"}', '{\"az\":\"SMEG\\tFA 8003 P\",\"en\":\"SMEG\\tFA 8003 P\",\"ru\":\"SMEG\\tFA 8003 P\"}', 7890.00, 4, 700, 1820, 630, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:18:37', '2020-06-24 12:18:37', NULL, 6, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (408, '{\"az\":\"WHIRLPOOL\\tART 6502\",\"en\":\"WHIRLPOOL\\tART 6502\",\"ru\":\"WHIRLPOOL\\tART 6502\"}', '{\"az\":\"WHIRLPOOL\\tART 6502\",\"en\":\"WHIRLPOOL\\tART 6502\",\"ru\":\"WHIRLPOOL\\tART 6502\"}', 1150.00, 17, 540, 1770, 545, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:23:02', '2020-06-24 12:23:02', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (409, '{\"az\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\",\"en\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\",\"ru\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\"}', '{\"az\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\",\"en\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\",\"ru\":\"WHIRLPOOL\\tART 880 \\/ A+ \\/NF\"}', 1455.00, 17, 540, 1770, 545, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 12:26:08', '2020-06-24 12:26:08', NULL, 4, 28, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (410, '{\"az\":\"WHIRLPOOL\\tART 9812\\/A+SF\",\"en\":\"WHIRLPOOL\\tART 9812\\/A+SF\",\"ru\":\"WHIRLPOOL\\tART 9812\\/A+SF\"}', '{\"az\":\"WHIRLPOOL\\tART 9812\\/A+SF\",\"en\":\"WHIRLPOOL\\tART 9812\\/A+SF\",\"ru\":\"WHIRLPOOL\\tART 9812\\/A+SF\"}', 1620.00, 17, 540, 1935, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 13:38:39', '2020-06-24 13:38:39', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (411, '{\"az\":\"WHIRLPOOL\\tSP 40801\",\"en\":\"WHIRLPOOL\\tSP 40801\",\"ru\":\"WHIRLPOOL\\tSP 40801\"}', '{\"az\":\"WHIRLPOOL\\tSP 40801\",\"en\":\"WHIRLPOOL\\tSP 40801\",\"ru\":\"WHIRLPOOL\\tSP 40801\"}', 2380.00, 17, 710, 1940, 550, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 13:52:23', '2020-06-24 13:52:23', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (412, '{\"az\":\"WHIRLPOOL\\tAND 231 BK\",\"en\":\"WHIRLPOOL\\tAND 231 BK\",\"ru\":\"WHIRLPOOL\\tAND 231 BK\"}', '{\"az\":\"WHIRLPOOL\\tAND 231 BK\",\"en\":\"WHIRLPOOL\\tAND 231 BK\",\"ru\":\"WHIRLPOOL\\tAND 231 BK\"}', 2400.00, 17, 600, 1730, 600, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 13:58:56', '2020-06-24 13:58:56', NULL, 3, 29, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (413, '{\"az\":\"WHIRLPOOL\\tBLF 8121 X\",\"en\":\"WHIRLPOOL\\tBLF 8121 X\",\"ru\":\"WHIRLPOOL\\tBLF 8121 X\"}', '{\"az\":\"WHIRLPOOL\\tBLF 8121 X\",\"en\":\"WHIRLPOOL\\tBLF 8121 X\",\"ru\":\"WHIRLPOOL\\tBLF 8121 X\"}', 1099.00, 17, 595, 1885, 655, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:10:41', '2020-06-24 14:10:41', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (414, '{\"az\":\"Barazza 1KP90AN\",\"en\":\"Barazza 1KP90AN\",\"ru\":\"Barazza 1KP90AN\"}', '{\"az\":\"Barazza 1KP90AN\",\"en\":\"Barazza 1KP90AN\",\"ru\":\"Barazza 1KP90AN\"}', 2200.00, 18, 900, 830, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:22:10', '2020-06-24 14:22:10', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (415, '{\"az\":\"Barazza 1KP90AV\",\"en\":\"Barazza 1KP90AV\",\"ru\":\"Barazza 1KP90AV\"}', '{\"az\":\"Barazza 1KP90AV\",\"en\":\"Barazza 1KP90AV\",\"ru\":\"Barazza 1KP90AV\"}', 2200.00, 18, 900, 830, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:25:28', '2020-06-24 14:25:28', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (416, '{\"az\":\"Barazza 1B90M5AVO\",\"en\":\"Barazza 1B90M5AVO\",\"ru\":\"Barazza 1B90M5AVO\"}', '{\"az\":\"Barazza 1B90M5AVO\",\"en\":\"Barazza 1B90M5AVO\",\"ru\":\"Barazza 1B90M5AVO\"}', 4500.00, 18, 0, 0, 0, 3, 1, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:30:35', '2020-06-24 14:30:35', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (417, '{\"az\":\"Barazza 1PLB5\",\"en\":\"Barazza 1PLB5\",\"ru\":\"Barazza 1PLB5\"}', '{\"az\":\"Barazza 1PLB5\",\"en\":\"Barazza 1PLB5\",\"ru\":\"Barazza 1PLB5\"}', 1800.00, 18, 870, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:34:06', '2020-06-24 14:34:06', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (418, '{\"az\":\"Barazza 1POF90\",\"en\":\"Barazza 1POF90\",\"ru\":\"Barazza 1POF90\"}', '{\"az\":\"Barazza 1POF90\",\"en\":\"Barazza 1POF90\",\"ru\":\"Barazza 1POF90\"}', 1200.00, 18, 900, 0, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-24 14:37:25', '2020-06-24 14:37:25', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (419, '{\"az\":\"CATA\\tADARI 600 XGBK\",\"en\":\"CATA\\tADARI 600 XGBK\",\"ru\":\"CATA\\tADARI 600 XGBK\"}', '{\"az\":\"CATA\\tADARI 600 XGBK\",\"en\":\"CATA\\tADARI 600 XGBK\",\"ru\":\"CATA\\tADARI 600 XGBK\"}', 650.00, 9, 600, 1165, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-25 09:50:36', '2020-06-25 09:50:36', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (420, '{\"az\":\"CATA\\tANTARES 600 A BK\",\"en\":\"CATA\\tANTARES 600 A BK\",\"ru\":\"CATA\\tANTARES 600 A BK\"}', '{\"az\":\"CATA\\tANTARES 600 A BK\",\"en\":\"CATA\\tANTARES 600 A BK\",\"ru\":\"CATA\\tANTARES 600 A BK\"}', 490.00, 9, 600, 920, 470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-25 09:53:07', '2020-06-25 09:53:07', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (421, '{\"az\":\"CATA\\tATLAS 90 WH\",\"en\":\"CATA\\tATLAS 90 WH\",\"ru\":\"CATA\\tATLAS 90 WH\"}', '{\"az\":\"CATA\\tATLAS 90 WH\",\"en\":\"CATA\\tATLAS 90 WH\",\"ru\":\"CATA\\tATLAS 90 WH\"}', 1190.00, 9, 900, 1120, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-25 09:55:54', '2020-06-25 09:55:54', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (422, '{\"az\":\"CATA\\tAURA 90 BK\",\"en\":\"CATA\\tAURA 90 BK\",\"ru\":\"CATA\\tAURA 90 BK\"}', '{\"az\":\"CATA\\tAURA 90 BK\",\"en\":\"CATA\\tAURA 90 BK\",\"ru\":\"CATA\\tAURA 90 BK\"}', 1890.00, 9, 900, 1300, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-25 10:01:59', '2020-06-25 10:01:59', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (423, '{\"az\":\"CATA\\tBRISA WH\",\"en\":\"CATA\\tBRISA WH\",\"ru\":\"CATA\\tBRISA WH\"}', '{\"az\":\"CATA\\tBRISA WH\",\"en\":\"CATA\\tBRISA WH\",\"ru\":\"CATA\\tBRISA WH\"}', 960.00, 9, 900, 1020, 510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-25 10:05:53', '2020-06-25 10:05:53', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (424, '{\"az\":\"CATA\\tCLASSICA 60 BK\",\"en\":\"CATA\\tCLASSICA 60 BK\",\"ru\":\"CATA\\tCLASSICA 60 BK\"}', '{\"az\":\"CATA\\tCLASSICA 60 BK\",\"en\":\"CATA\\tCLASSICA 60 BK\",\"ru\":\"CATA\\tCLASSICA 60 BK\"}', 670.00, 9, 600, 1180, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 12:47:00', '2020-06-26 12:47:00', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (425, '{\"az\":\"CATA\\tCLASSICA 90 BK\",\"en\":\"CATA\\tCLASSICA 90 BK\",\"ru\":\"CATA\\tCLASSICA 90 BK\"}', '{\"az\":\"CATA\\tCLASSICA 90 BK\",\"en\":\"CATA\\tCLASSICA 90 BK\",\"ru\":\"CATA\\tCLASSICA 90 BK\"}', 820.00, 9, 900, 1045, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 13:40:01', '2020-06-26 13:40:01', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (426, '{\"az\":\"CATA\\tDALIA 90 BK\",\"en\":\"CATA\\tDALIA 90 BK\",\"ru\":\"CATA\\tDALIA 90 BK\"}', '{\"az\":\"CATA\\tDALIA 90 BK\",\"en\":\"CATA\\tDALIA 90 BK\",\"ru\":\"CATA\\tDALIA 90 BK\"}', 1860.00, 9, 900, 1210, 450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 13:44:44', '2020-06-26 13:44:44', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (427, '{\"az\":\"CATA\\tFARO ISLA\",\"en\":\"CATA\\tFARO ISLA\",\"ru\":\"CATA\\tFARO ISLA\"}', '{\"az\":\"CATA\\tFARO ISLA\",\"en\":\"CATA\\tFARO ISLA\",\"ru\":\"CATA\\tFARO ISLA\"}', 1880.00, 9, 400, 1090, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 13:55:47', '2020-06-26 13:55:47', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (428, '{\"az\":\"CATA\\tGC DUAL 75 BK\",\"en\":\"CATA\\tGC DUAL 75 BK\",\"ru\":\"CATA\\tGC DUAL 75 BK\"}', '{\"az\":\"CATA\\tGC DUAL 75 BK\",\"en\":\"CATA\\tGC DUAL 75 BK\",\"ru\":\"CATA\\tGC DUAL 75 BK\"}', 1230.00, 9, 754, 300, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:11:09', '2020-06-26 14:11:09', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (429, '{\"az\":\"CATA\\tGC DUAL 75 WH\",\"en\":\"CATA\\tGC DUAL 75 WH\",\"ru\":\"CATA\\tGC DUAL 75 WH\"}', '{\"az\":\"CATA\\tGC DUAL 75 WH\",\"en\":\"CATA\\tGC DUAL 75 WH\",\"ru\":\"CATA\\tGC DUAL 75 WH\"}', 1280.00, 9, 792, 300, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:15:47', '2020-06-26 14:15:47', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (430, '{\"az\":\"CATA\\tGL 45\",\"en\":\"CATA\\tGL 45\",\"ru\":\"CATA\\tGL 45\"}', '{\"az\":\"CATA\\tGL 45\",\"en\":\"CATA\\tGL 45\",\"ru\":\"CATA\\tGL 45\"}', 645.00, 9, 490, 320, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:28:02', '2020-06-26 14:28:02', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (431, '{\"az\":\"CATA\\tGOYA 90 BK\",\"en\":\"CATA\\tGOYA 90 BK\",\"ru\":\"CATA\\tGOYA 90 BK\"}', '{\"az\":\"CATA\\tGOYA 90 BK\",\"en\":\"CATA\\tGOYA 90 BK\",\"ru\":\"CATA\\tGOYA 90 BK\"}', 1299.00, 9, 900, 845, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:34:34', '2020-06-26 14:34:34', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (432, '{\"az\":\"CATA\\tGRH 900\",\"en\":\"CATA\\tGRH 900\",\"ru\":\"CATA\\tGRH 900\"}', '{\"az\":\"CATA\\tGRH 900\",\"en\":\"CATA\\tGRH 900\",\"ru\":\"CATA\\tGRH 900\"}', 1280.00, 9, 900, 1050, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:42:32', '2020-06-26 14:42:32', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (433, '{\"az\":\"CATA\\tGRH 900\",\"en\":\"CATA\\tGRH 900\",\"ru\":\"CATA\\tGRH 900\"}', '{\"az\":\"CATA\\tGRH 900\",\"en\":\"CATA\\tGRH 900\",\"ru\":\"CATA\\tGRH 900\"}', 1280.00, 9, 900, 1050, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:42:37', '2020-06-26 14:43:22', '2020-06-26 14:43:22', 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (434, '{\"az\":\"CATA\\tGRH 900 BK\",\"en\":\"CATA\\tGRH 900 BK\",\"ru\":\"CATA\\tGRH 900 BK\"}', '{\"az\":\"CATA\\tGRH 900 BK\",\"en\":\"CATA\\tGRH 900 BK\",\"ru\":\"CATA\\tGRH 900 BK\"}', 1280.00, 9, 900, 1050, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 14:53:54', '2020-06-26 14:53:54', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (435, '{\"az\":\"GT PLUS 45 BK\",\"en\":\"GT PLUS 45 BK\",\"ru\":\"GT PLUS 45 BK\"}', '{\"az\":\"GT PLUS 45 BK\",\"en\":\"GT PLUS 45 BK\",\"ru\":\"GT PLUS 45 BK\"}', 440.00, 9, 500, 0, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 15:15:38', '2020-06-26 15:15:38', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (436, '{\"az\":\"CATA\\tGT PLUS 45 X\",\"en\":\"CATA\\tGT PLUS 45 X\",\"ru\":\"CATA\\tGT PLUS 45 X\"}', '{\"az\":\"CATA\\tGT PLUS 45 X\",\"en\":\"CATA\\tGT PLUS 45 X\",\"ru\":\"CATA\\tGT PLUS 45 X\"}', 465.00, 9, 454, 280, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 19:51:15', '2020-06-26 19:51:15', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (437, '{\"az\":\"CATA\\tGT PLUS 75 INOX\",\"en\":\"CATA\\tGT PLUS 75 INOX\",\"ru\":\"CATA\\tGT PLUS 75 INOX\"}', '{\"az\":\"CATA\\tGT PLUS 75 INOX\",\"en\":\"CATA\\tGT PLUS 75 INOX\",\"ru\":\"CATA\\tGT PLUS 75 INOX\"}', 580.00, 9, 792, 315, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 20:15:14', '2020-06-26 20:15:14', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (438, '{\"az\":\"CATA\\tLEGENDA 900 XGBK\",\"en\":\"CATA\\tLEGENDA 900 XGBK\",\"ru\":\"CATA\\tLEGENDA 900 XGBK\"}', '{\"az\":\"CATA\\tLEGENDA 900 XGBK\",\"en\":\"CATA\\tLEGENDA 900 XGBK\",\"ru\":\"CATA\\tLEGENDA 900 XGBK\"}', 920.00, 9, 900, 1040, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 20:20:15', '2020-06-26 20:20:15', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (439, '{\"az\":\"CATA\\tMELINA BK ISLA\",\"en\":\"CATA\\tMELINA BK ISLA\",\"ru\":\"CATA\\tMELINA BK ISLA\"}', '{\"az\":\"CATA\\tMELINA BK ISLA\",\"en\":\"CATA\\tMELINA BK ISLA\",\"ru\":\"CATA\\tMELINA BK ISLA\"}', 2780.00, 9, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 20:29:48', '2020-06-26 20:29:48', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (440, '{\"az\":\"CATA\\tNUEVA OMEGA 60 INOX\",\"en\":\"CATA\\tNUEVA OMEGA 60 INOX\",\"ru\":\"CATA\\tNUEVA OMEGA 60 INOX\"}', '{\"az\":\"CATA\\tNUEVA OMEGA 60 INOX\",\"en\":\"CATA\\tNUEVA OMEGA 60 INOX\",\"ru\":\"CATA\\tNUEVA OMEGA 60 INOX\"}', 390.00, 9, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 20:48:25', '2020-06-26 20:48:25', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (441, '{\"az\":\"CATA\\tP 3290 INOX\",\"en\":\"CATA\\tP 3290 INOX\",\"ru\":\"CATA\\tP 3290 INOX\"}', '{\"az\":\"CATA\\tP 3290 INOX\",\"en\":\"CATA\\tP 3290 INOX\",\"ru\":\"CATA\\tP 3290 INOX\"}', 365.00, 9, 900, 170, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-26 21:07:33', '2020-06-26 21:07:33', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (442, '{\"az\":\"CATA\\tPV L3 BL 900 INOX\",\"en\":\"CATA\\tPV L3 BL 900 INOX\",\"ru\":\"CATA\\tPV L3 BL 900 INOX\"}', '{\"az\":\"CATA\\tPV L3 BL 900 INOX\",\"en\":\"CATA\\tPV L3 BL 900 INOX\",\"ru\":\"CATA\\tPV L3 BL 900 INOX\"}', 430.00, 9, 600, 1190, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 06:57:44', '2020-06-27 06:57:44', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (443, '{\"az\":\"CATA\\tS 900 INOX\",\"en\":\"CATA\\tS 900 INOX\",\"ru\":\"CATA\\tS 900 INOX\"}', '{\"az\":\"CATA\\tS 900 INOX\",\"en\":\"CATA\\tS 900 INOX\",\"ru\":\"CATA\\tS 900 INOX\"}', 510.00, 9, 900, 982, 470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:03:27', '2020-06-27 07:03:27', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (444, '{\"az\":\"CATA\\tSELENA 90 ISLA\",\"en\":\"CATA\\tSELENA 90 ISLA\",\"ru\":\"CATA\\tSELENA 90 ISLA\"}', '{\"az\":\"CATA\\tSELENA 90 ISLA\",\"en\":\"CATA\\tSELENA 90 ISLA\",\"ru\":\"CATA\\tSELENA 90 ISLA\"}', 1480.00, 9, 610, 1040, 900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:08:50', '2020-06-27 07:08:50', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (445, '{\"az\":\"CATA\\tSELENE 600 IX\",\"en\":\"CATA\\tSELENE 600 IX\",\"ru\":\"CATA\\tSELENE 600 IX\"}', '{\"az\":\"CATA\\tSELENE 600 IX\",\"en\":\"CATA\\tSELENE 600 IX\",\"ru\":\"CATA\\tSELENE 600 IX\"}', 675.00, 9, 600, 1035, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:13:40', '2020-06-27 07:13:40', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (446, '{\"az\":\"CATA\\tSELENE 900 INOX\",\"en\":\"CATA\\tSELENE 900 INOX\",\"ru\":\"CATA\\tSELENE 900 INOX\"}', '{\"az\":\"CATA\\tSELENE 900 INOX\",\"en\":\"CATA\\tSELENE 900 INOX\",\"ru\":\"CATA\\tSELENE 900 INOX\"}', 1350.00, 9, 900, 1035, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:20:12', '2020-06-27 07:20:12', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (447, '{\"az\":\"CATA\\tS PLUS 600 X\",\"en\":\"CATA\\tS PLUS 600 X\",\"ru\":\"CATA\\tS PLUS 600 X\"}', '{\"az\":\"CATA\\tS PLUS 600 X\",\"en\":\"CATA\\tS PLUS 600 X\",\"ru\":\"CATA\\tS PLUS 600 X\"}', 450.00, 9, 600, 1045, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:23:32', '2020-06-27 07:23:32', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (448, '{\"az\":\"CATA\\tSYGMA 700\",\"en\":\"CATA\\tSYGMA 700\",\"ru\":\"CATA\\tSYGMA 700\"}', '{\"az\":\"CATA\\tSYGMA 700\",\"en\":\"CATA\\tSYGMA 700\",\"ru\":\"CATA\\tSYGMA 700\"}', 560.00, 9, 700, 1045, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:27:22', '2020-06-27 07:27:22', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (449, '{\"az\":\"CATA\\tSYGMA VL 3 700\\/B\",\"en\":\"CATA\\tSYGMA VL 3 700\\/B\",\"ru\":\"CATA\\tSYGMA VL 3 700\\/B\"}', '{\"az\":\"CATA\\tSYGMA VL 3 700\\/B\",\"en\":\"CATA\\tSYGMA VL 3 700\\/B\",\"ru\":\"CATA\\tSYGMA VL 3 700\\/B\"}', 560.00, 9, 700, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:31:34', '2020-06-27 07:31:34', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (450, '{\"az\":\"CATA\\tTF 2003 60 BK\",\"en\":\"CATA\\tTF 2003 60 BK\",\"ru\":\"CATA\\tTF 2003 60 BK\"}', '{\"az\":\"CATA\\tTF 2003 60 BK\",\"en\":\"CATA\\tTF 2003 60 BK\",\"ru\":\"CATA\\tTF 2003 60 BK\"}', 345.00, 9, 600, 140, 440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 07:35:15', '2020-06-27 07:35:15', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (451, '{\"az\":\"CATA\\tTF 2003 60 WH\",\"en\":\"CATA\\tTF 2003 60 WH\",\"ru\":\"CATA\\tTF 2003 60 WH\"}', '{\"az\":\"CATA\\tTF 2003 60 WH\",\"en\":\"CATA\\tTF 2003 60 WH\",\"ru\":\"CATA\\tTF 2003 60 WH\"}', 360.00, 9, 600, 140, 440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 10:47:25', '2020-06-27 10:47:25', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (452, '{\"az\":\"CATA\\tTF 2003 70\",\"en\":\"CATA\\tTF 2003 70\",\"ru\":\"CATA\\tTF 2003 70\"}', '{\"az\":\"CATA\\tTF 2003 70\",\"en\":\"CATA\\tTF 2003 70\",\"ru\":\"CATA\\tTF 2003 70\"}', 280.00, 9, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 10:51:50', '2020-06-27 10:51:50', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (453, '{\"az\":\"CATA\\tTF 5260 IX\",\"en\":\"CATA\\tTF 5260 IX\",\"ru\":\"CATA\\tTF 5260 IX\"}', '{\"az\":\"CATA\\tTF 5260 IX\",\"en\":\"CATA\\tTF 5260 IX\",\"ru\":\"CATA\\tTF 5260 IX\"}', 240.00, 9, 600, 140, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 10:56:30', '2020-06-27 10:56:30', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (454, '{\"az\":\"CATA\\tTHALASSA 60 BK\",\"en\":\"CATA\\tTHALASSA 60 BK\",\"ru\":\"CATA\\tTHALASSA 60 BK\"}', '{\"az\":\"CATA\\tTHALASSA 60 BK\",\"en\":\"CATA\\tTHALASSA 60 BK\",\"ru\":\"CATA\\tTHALASSA 60 BK\"}', 870.00, 9, 600, 1170, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:07:21', '2020-06-27 11:07:21', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (455, '{\"az\":\"CATA\\tTHALASSA 60 WH\",\"en\":\"CATA\\tTHALASSA 60 WH\",\"ru\":\"CATA\\tTHALASSA 60 WH\"}', '{\"az\":\"CATA\\tTHALASSA 60 WH\",\"en\":\"CATA\\tTHALASSA 60 WH\",\"ru\":\"CATA\\tTHALASSA 60 WH\"}', 890.00, 9, 600, 700, 490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:11:36', '2020-06-27 11:11:36', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (456, '{\"az\":\"CATA\\tTHALASSA 90 BK\",\"en\":\"CATA\\tTHALASSA 90 BK\",\"ru\":\"CATA\\tTHALASSA 90 BK\"}', '{\"az\":\"CATA\\tTHALASSA 90 BK\",\"en\":\"CATA\\tTHALASSA 90 BK\",\"ru\":\"CATA\\tTHALASSA 90 BK\"}', 1090.00, 9, 900, 1120, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:14:54', '2020-06-27 11:14:54', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (457, '{\"az\":\"CATA\\tTHALASSA 90 SD\",\"en\":\"CATA\\tTHALASSA 90 SD\",\"ru\":\"CATA\\tTHALASSA 90 SD\"}', '{\"az\":\"CATA\\tTHALASSA 90 SD\",\"en\":\"CATA\\tTHALASSA 90 SD\",\"ru\":\"CATA\\tTHALASSA 90 SD\"}', 1130.00, 9, 900, 1170, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:18:50', '2020-06-27 11:18:50', NULL, 7, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (458, '{\"az\":\"CATA\\tTHALASSA 90 WH\",\"en\":\"CATA\\tTHALASSA 90 WH\",\"ru\":\"CATA\\tTHALASSA 90 WH\"}', '{\"az\":\"CATA\\tTHALASSA 90 WH\",\"en\":\"CATA\\tTHALASSA 90 WH\",\"ru\":\"CATA\\tTHALASSA 90 WH\"}', 1280.00, 9, 900, 1120, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:21:21', '2020-06-27 11:21:21', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (459, '{\"az\":\"CATA\\tVENERA VL3 600 XGBK\",\"en\":\"CATA\\tVENERA VL3 600 XGBK\",\"ru\":\"CATA\\tVENERA VL3 600 XGBK\"}', '{\"az\":\"CATA\\tVENERA VL3 600 XGBK\",\"en\":\"CATA\\tVENERA VL3 600 XGBK\",\"ru\":\"CATA\\tVENERA VL3 600 XGBK\"}', 730.00, 9, 600, 1240, 460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:41:59', '2020-06-27 11:41:59', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (460, '{\"az\":\"CATA\\tFS 20 IX\",\"en\":\"CATA\\tFS 20 IX\",\"ru\":\"CATA\\tFS 20 IX\"}', '{\"az\":\"CATA\\tFS 20 IX\",\"en\":\"CATA\\tFS 20 IX\",\"ru\":\"CATA\\tFS 20 IX\"}', 345.00, 9, 461, 289, 373, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:51:29', '2020-06-27 11:51:29', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (461, '{\"az\":\"CATA\\tMC 20 D\",\"en\":\"CATA\\tMC 20 D\",\"ru\":\"CATA\\tMC 20 D\"}', '{\"az\":\"CATA\\tMC 20 D\",\"en\":\"CATA\\tMC 20 D\",\"ru\":\"CATA\\tMC 20 D\"}', 535.00, 9, 600, 390, 350, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 11:57:07', '2020-06-27 11:57:07', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (462, '{\"az\":\"CATA\\tMC 25 D\",\"en\":\"CATA\\tMC 25 D\",\"ru\":\"CATA\\tMC 25 D\"}', '{\"az\":\"CATA\\tMC 25 D\",\"en\":\"CATA\\tMC 25 D\",\"ru\":\"CATA\\tMC 25 D\"}', 580.00, 9, 595, 388, 410, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 12:03:45', '2020-06-27 12:03:45', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (463, '{\"az\":\"CATA\\tMC 28 D BK\",\"en\":\"CATA\\tMC 28 D BK\",\"ru\":\"CATA\\tMC 28 D BK\"}', '{\"az\":\"CATA\\tMC 28 D BK\",\"en\":\"CATA\\tMC 28 D BK\",\"ru\":\"CATA\\tMC 28 D BK\"}', 810.00, 9, 600, 390, 410, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 12:13:37', '2020-06-27 12:13:37', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (464, '{\"az\":\"CATA\\tMC 28 D BK\",\"en\":\"CATA\\tMC 28 D BK\",\"ru\":\"CATA\\tMC 28 D BK\"}', '{\"az\":\"CATA\\tMC 28 D BK\",\"en\":\"CATA\\tMC 28 D BK\",\"ru\":\"CATA\\tMC 28 D BK\"}', 810.00, 9, 600, 390, 410, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 12:14:55', '2020-06-27 12:14:55', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (465, '{\"az\":\"CATA\\tMC 28 D WH\",\"en\":\"CATA\\tMC 28 D WH\",\"ru\":\"CATA\\tMC 28 D WH\"}', '{\"az\":\"CATA\\tMC 28 D WH\",\"en\":\"CATA\\tMC 28 D WH\",\"ru\":\"CATA\\tMC 28 D WH\"}', 810.00, 9, 600, 390, 410, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 12:15:59', '2020-06-27 12:15:59', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (466, '{\"az\":\"CATA\\tMC 32 DC\",\"en\":\"CATA\\tMC 32 DC\",\"ru\":\"CATA\\tMC 32 DC\"}', '{\"az\":\"CATA\\tMC 32 DC\",\"en\":\"CATA\\tMC 32 DC\",\"ru\":\"CATA\\tMC 32 DC\"}', 845.00, 9, 595, 388, 410, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 12:22:23', '2020-06-27 12:22:23', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (467, '{\"az\":\"CATA\\tCM 760\",\"en\":\"CATA\\tCM 760\",\"ru\":\"CATA\\tCM 760\"}', '{\"az\":\"CATA\\tCM 760\",\"en\":\"CATA\\tCM 760\",\"ru\":\"CATA\\tCM 760\"}', 699.00, 9, 560, 583, 550, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:14:04', '2020-06-27 13:14:04', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (468, '{\"az\":\"CATA\\tCMD 7109 X\",\"en\":\"CATA\\tCMD 7109 X\",\"ru\":\"CATA\\tCMD 7109 X\"}', '{\"az\":\"CATA\\tCMD 7109 X\",\"en\":\"CATA\\tCMD 7109 X\",\"ru\":\"CATA\\tCMD 7109 X\"}', 835.00, 9, 592, 595, 575, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:21:59', '2020-06-27 13:21:59', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (469, '{\"az\":\"CATA\\tCPR 8109 X\",\"en\":\"CATA\\tCPR 8109 X\",\"ru\":\"CATA\\tCPR 8109 X\"}', '{\"az\":\"CATA\\tCPR 8109 X\",\"en\":\"CATA\\tCPR 8109 X\",\"ru\":\"CATA\\tCPR 8109 X\"}', 990.00, 9, 595, 595, 555, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:29:06', '2020-06-27 13:29:06', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (470, '{\"az\":\"CATA\\tHG 600 BK\",\"en\":\"CATA\\tHG 600 BK\",\"ru\":\"CATA\\tHG 600 BK\"}', '{\"az\":\"CATA\\tHG 600 BK\",\"en\":\"CATA\\tHG 600 BK\",\"ru\":\"CATA\\tHG 600 BK\"}', 1070.00, 9, 595, 595, 570, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:39:44', '2020-06-27 13:39:44', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (471, '{\"az\":\"CATA\\tHGR 110 WH\",\"en\":\"CATA\\tHGR 110 WH\",\"ru\":\"CATA\\tHGR 110 WH\"}', '{\"az\":\"CATA\\tHGR 110 WH\",\"en\":\"CATA\\tHGR 110 WH\",\"ru\":\"CATA\\tHGR 110 WH\"}', 1350.00, 9, 560, 586, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:44:19', '2020-06-27 13:44:19', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (472, '{\"az\":\"CATA\\tLC 8110 PYRO BK\",\"en\":\"CATA\\tLC 8110 PYRO BK\",\"ru\":\"CATA\\tLC 8110 PYRO BK\"}', '{\"az\":\"CATA\\tLC 8110 PYRO BK\",\"en\":\"CATA\\tLC 8110 PYRO BK\",\"ru\":\"CATA\\tLC 8110 PYRO BK\"}', 1260.00, 9, 595, 595, 575, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:48:08', '2020-06-27 13:48:08', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (473, '{\"az\":\"CATA\\tLCMD 8008 X\",\"en\":\"CATA\\tLCMD 8008 X\",\"ru\":\"CATA\\tLCMD 8008 X\"}', '{\"az\":\"CATA\\tLCMD 8008 X\",\"en\":\"CATA\\tLCMD 8008 X\",\"ru\":\"CATA\\tLCMD 8008 X\"}', 945.00, 9, 595, 595, 530, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:52:35', '2020-06-27 13:52:35', NULL, 7, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (474, '{\"az\":\"CATA\\tMD 7010 BK\",\"en\":\"CATA\\tMD 7010 BK\",\"ru\":\"CATA\\tMD 7010 BK\"}', '{\"az\":\"CATA\\tMD 7010 BK\",\"en\":\"CATA\\tMD 7010 BK\",\"ru\":\"CATA\\tMD 7010 BK\"}', 899.00, 9, 600, 600, 570, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 13:56:45', '2020-06-27 13:56:45', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (475, '{\"az\":\"CATA\\tME 606 PYRO\",\"en\":\"CATA\\tME 606 PYRO\",\"ru\":\"CATA\\tME 606 PYRO\"}', '{\"az\":\"CATA\\tME 606 PYRO\",\"en\":\"CATA\\tME 606 PYRO\",\"ru\":\"CATA\\tME 606 PYRO\"}', 940.00, 9, 592, 595, 552, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 14:02:41', '2020-06-27 14:02:41', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (476, '{\"az\":\"CATA\\tME 7107 BK\",\"en\":\"CATA\\tME 7107 BK\",\"ru\":\"CATA\\tME 7107 BK\"}', '{\"az\":\"CATA\\tME 7107 BK\",\"en\":\"CATA\\tME 7107 BK\",\"ru\":\"CATA\\tME 7107 BK\"}', 690.00, 9, 595, 595, 553, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 14:05:27', '2020-06-27 14:05:27', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (477, '{\"az\":\"CATA\\tMR 608 WH\",\"en\":\"CATA\\tMR 608 WH\",\"ru\":\"CATA\\tMR 608 WH\"}', '{\"az\":\"CATA\\tMR 608 WH\",\"en\":\"CATA\\tMR 608 WH\",\"ru\":\"CATA\\tMR 608 WH\"}', 799.00, 9, 595, 595, 480, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:31:45', '2020-06-27 15:31:45', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (478, '{\"az\":\"CATA\\tMRA 7108 BK\",\"en\":\"CATA\\tMRA 7108 BK\",\"ru\":\"CATA\\tMRA 7108 BK\"}', '{\"az\":\"CATA\\tMRA 7108 BK\",\"en\":\"CATA\\tMRA 7108 BK\",\"ru\":\"CATA\\tMRA 7108 BK\"}', 980.00, 9, 596, 595, 566, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:34:26', '2020-06-27 15:34:26', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (479, '{\"az\":\"CATA\\tMRA 7108 IV\",\"en\":\"CATA\\tMRA 7108 IV\",\"ru\":\"CATA\\tMRA 7108 IV\"}', '{\"az\":\"CATA\\tMRA 7108 IV\",\"en\":\"CATA\\tMRA 7108 IV\",\"ru\":\"CATA\\tMRA 7108 IV\"}', 845.00, 9, 600, 600, 560, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:37:33', '2020-06-27 15:37:33', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (480, '{\"az\":\"CATA\\tOMD 7009 X\",\"en\":\"CATA\\tOMD 7009 X\",\"ru\":\"CATA\\tOMD 7009 X\"}', '{\"az\":\"CATA\\tOMD 7009 X\",\"en\":\"CATA\\tOMD 7009 X\",\"ru\":\"CATA\\tOMD 7009 X\"}', 840.00, 9, 595, 595, 530, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:38:42', '2020-06-27 15:38:42', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (481, '{\"az\":\"CATA\\tSE 6204 BK\",\"en\":\"CATA\\tSE 6204 BK\",\"ru\":\"CATA\\tSE 6204 BK\"}', '{\"az\":\"CATA\\tSE 6204 BK\",\"en\":\"CATA\\tSE 6204 BK\",\"ru\":\"CATA\\tSE 6204 BK\"}', 665.00, 9, 595, 595, 560, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:41:00', '2020-06-27 15:41:00', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (482, '{\"az\":\"CATA\\tSE 7105 WH\",\"en\":\"CATA\\tSE 7105 WH\",\"ru\":\"CATA\\tSE 7105 WH\"}', '{\"az\":\"CATA\\tSE 7105 WH\",\"en\":\"CATA\\tSE 7105 WH\",\"ru\":\"CATA\\tSE 7105 WH\"}', 890.00, 9, 595, 595, 553, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:44:06', '2020-06-27 15:44:06', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (483, '{\"az\":\"CATA\\tCB 2\",\"en\":\"CATA\\tCB 2\",\"ru\":\"CATA\\tCB 2\"}', '{\"az\":\"CATA\\tCB 2\",\"en\":\"CATA\\tCB 2\",\"ru\":\"CATA\\tCB 2\"}', 560.00, 9, 0, 0, 0, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:49:40', '2020-06-27 15:49:40', NULL, 4, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (484, '{\"az\":\"CATA\\t721 GEI\",\"en\":\"CATA\\t721 GEI\",\"ru\":\"CATA\\t721 GEI\"}', '{\"az\":\"CATA\\t721 GEI\",\"en\":\"CATA\\t721 GEI\",\"ru\":\"CATA\\t721 GEI\"}', 260.00, 9, 660, 500, 470, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 15:51:44', '2020-06-27 15:51:44', NULL, 8, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 8, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (485, '{\"az\":\"CATA\\tGI 302\",\"en\":\"CATA\\tGI 302\",\"ru\":\"CATA\\tGI 302\"}', '{\"az\":\"CATA\\tGI 302\",\"en\":\"CATA\\tGI 302\",\"ru\":\"CATA\\tGI 302\"}', 285.00, 9, 266, 0, 478, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:01:07', '2020-06-27 16:01:07', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (486, '{\"az\":\"CATA\\tIF 6002 BK\",\"en\":\"CATA\\tIF 6002 BK\",\"ru\":\"CATA\\tIF 6002 BK\"}', '{\"az\":\"CATA\\tIF 6002 BK\",\"en\":\"CATA\\tIF 6002 BK\",\"ru\":\"CATA\\tIF 6002 BK\"}', 860.00, 9, 590, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:05:55', '2020-06-27 16:06:24', '2020-06-27 16:06:24', 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (487, '{\"az\":\"CATA\\tIF 6002 BK\",\"en\":\"CATA\\tIF 6002 BK\",\"ru\":\"CATA\\tIF 6002 BK\"}', '{\"az\":\"CATA\\tIF 6002 BK\",\"en\":\"CATA\\tIF 6002 BK\",\"ru\":\"CATA\\tIF 6002 BK\"}', 860.00, 9, 590, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:07:38', '2020-06-27 16:07:38', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (488, '{\"az\":\"CATA\\tL 604 TRI\",\"en\":\"CATA\\tL 604 TRI\",\"ru\":\"CATA\\tL 604 TRI\"}', '{\"az\":\"CATA\\tL 604 TRI\",\"en\":\"CATA\\tL 604 TRI\",\"ru\":\"CATA\\tL 604 TRI\"}', 530.00, 9, 580, 0, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:18:29', '2020-06-27 16:18:29', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (489, '{\"az\":\"CATA\\tL 604 TRI\",\"en\":\"CATA\\tL 604 TRI\",\"ru\":\"CATA\\tL 604 TRI\"}', '{\"az\":\"CATA\\tL 604 TRI\",\"en\":\"CATA\\tL 604 TRI\",\"ru\":\"CATA\\tL 604 TRI\"}', 530.00, 9, 580, 0, 500, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:24:49', '2020-06-27 16:24:49', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (490, '{\"az\":\"CATA\\tL 705 TI IX\",\"en\":\"CATA\\tL 705 TI IX\",\"ru\":\"CATA\\tL 705 TI IX\"}', '{\"az\":\"CATA\\tL 705 TI IX\",\"en\":\"CATA\\tL 705 TI IX\",\"ru\":\"CATA\\tL 705 TI IX\"}', 660.00, 9, 700, 0, 530, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:31:18', '2020-06-27 16:31:18', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (491, '{\"az\":\"CATA\\tLCI 6031 WH\",\"en\":\"CATA\\tLCI 6031 WH\",\"ru\":\"CATA\\tLCI 6031 WH\"}', '{\"az\":\"CATA\\tLCI 6031 WH\",\"en\":\"CATA\\tLCI 6031 WH\",\"ru\":\"CATA\\tLCI 6031 WH\"}', 699.00, 9, 640, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:44:43', '2020-06-27 16:44:43', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (492, '{\"az\":\"CATA\\tLCI 631 BK\",\"en\":\"CATA\\tLCI 631 BK\",\"ru\":\"CATA\\tLCI 631 BK\"}', '{\"az\":\"CATA\\tLCI 631 BK\",\"en\":\"CATA\\tLCI 631 BK\",\"ru\":\"CATA\\tLCI 631 BK\"}', 680.00, 9, 584, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 16:58:55', '2020-06-27 16:58:55', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (493, '{\"az\":\"CATA\\tLCI 631 BK\",\"en\":\"CATA\\tLCI 631 BK\",\"ru\":\"CATA\\tLCI 631 BK\"}', '{\"az\":\"CATA\\tLCI 631 BK\",\"en\":\"CATA\\tLCI 631 BK\",\"ru\":\"CATA\\tLCI 631 BK\"}', 680.00, 9, 584, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:04:08', '2020-06-27 17:04:08', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (494, '{\"az\":\"CATA\\tLGD 631 A\",\"en\":\"CATA\\tLGD 631 A\",\"ru\":\"CATA\\tLGD 631 A\"}', '{\"az\":\"CATA\\tLGD 631 A\",\"en\":\"CATA\\tLGD 631 A\",\"ru\":\"CATA\\tLGD 631 A\"}', 599.00, 9, 600, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:07:43', '2020-06-27 17:07:43', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (495, '{\"az\":\"CATA\\tLGI 631 IX\",\"en\":\"CATA\\tLGI 631 IX\",\"ru\":\"CATA\\tLGI 631 IX\"}', '{\"az\":\"CATA\\tLGI 631 IX\",\"en\":\"CATA\\tLGI 631 IX\",\"ru\":\"CATA\\tLGI 631 IX\"}', 565.00, 9, 590, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:13:45', '2020-06-27 17:13:45', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (496, '{\"az\":\"CATA\\tLGI 631 IX\",\"en\":\"CATA\\tLGI 631 IX\",\"ru\":\"CATA\\tLGI 631 IX\"}', '{\"az\":\"CATA\\tLGI 631 IX\",\"en\":\"CATA\\tLGI 631 IX\",\"ru\":\"CATA\\tLGI 631 IX\"}', 565.00, 9, 590, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:19:47', '2020-06-27 17:19:47', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (497, '{\"az\":\"CATA\\tMVG 604\",\"en\":\"CATA\\tMVG 604\",\"ru\":\"CATA\\tMVG 604\"}', '{\"az\":\"CATA\\tMVG 604\",\"en\":\"CATA\\tMVG 604\",\"ru\":\"CATA\\tMVG 604\"}', 675.00, 9, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:23:24', '2020-06-27 17:23:24', NULL, 3, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (498, '{\"az\":\"CATA\\tRDI 631 IVORY\",\"en\":\"CATA\\tRDI 631 IVORY\",\"ru\":\"CATA\\tRDI 631 IVORY\"}', '{\"az\":\"CATA\\tRDI 631 IVORY\",\"en\":\"CATA\\tRDI 631 IVORY\",\"ru\":\"CATA\\tRDI 631 IVORY\"}', 640.00, 9, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:25:45', '2020-06-27 17:25:45', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (499, '{\"az\":\"CATA\\tRGI 6031 BK\",\"en\":\"CATA\\tRGI 6031 BK\",\"ru\":\"CATA\\tRGI 6031 BK\"}', '{\"az\":\"CATA\\tRGI 6031 BK\",\"en\":\"CATA\\tRGI 6031 BK\",\"ru\":\"CATA\\tRGI 6031 BK\"}', 590.00, 9, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:30:48', '2020-06-27 17:30:48', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (500, '{\"az\":\"CATA\\tRDI 631 IVORY\",\"en\":\"CATA\\tRDI 631 IVORY\",\"ru\":\"CATA\\tRDI 631 IVORY\"}', '{\"az\":\"CATA\\tRDI 631 IVORY\",\"en\":\"CATA\\tRDI 631 IVORY\",\"ru\":\"CATA\\tRDI 631 IVORY\"}', 640.00, 9, 580, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:32:48', '2020-06-27 17:32:48', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (501, '{\"az\":\"CATA\\tRGI 631 BK\",\"en\":\"CATA\\tRGI 631 BK\",\"ru\":\"CATA\\tRGI 631 BK\"}', '{\"az\":\"CATA\\tRGI 631 BK\",\"en\":\"CATA\\tRGI 631 BK\",\"ru\":\"CATA\\tRGI 631 BK\"}', 680.00, 9, 590, 0, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:33:12', '2020-06-27 17:33:12', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (502, '{\"az\":\"CATA\\tT 604 HVI\",\"en\":\"CATA\\tT 604 HVI\",\"ru\":\"CATA\\tT 604 HVI\"}', '{\"az\":\"CATA\\tT 604 HVI\",\"en\":\"CATA\\tT 604 HVI\",\"ru\":\"CATA\\tT 604 HVI\"}', 690.00, 9, 590, 0, 520, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:36:29', '2020-06-27 17:36:29', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (503, '{\"az\":\"CATA\\tT 604 WH\",\"en\":\"CATA\\tT 604 WH\",\"ru\":\"CATA\\tT 604 WH\"}', '{\"az\":\"CATA\\tT 604 WH\",\"en\":\"CATA\\tT 604 WH\",\"ru\":\"CATA\\tT 604 WH\"}', 799.00, 8, 590, 68, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:40:42', '2020-06-27 17:40:42', NULL, 4, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (504, '{\"az\":\"CATA\\tT 604 X\",\"en\":\"CATA\\tT 604 X\",\"ru\":\"CATA\\tT 604 X\"}', '{\"az\":\"CATA\\tT 604 X\",\"en\":\"CATA\\tT 604 X\",\"ru\":\"CATA\\tT 604 X\"}', 680.00, 9, 590, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:45:29', '2020-06-27 17:45:29', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (505, '{\"az\":\"CATA\\tTCDO 604 BV\",\"en\":\"CATA\\tTCDO 604 BV\",\"ru\":\"CATA\\tTCDO 604 BV\"}', '{\"az\":\"CATA\\tTCDO 604 BV\",\"en\":\"CATA\\tTCDO 604 BV\",\"ru\":\"CATA\\tTCDO 604 BV\"}', 760.00, 9, 580, 0, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 17:49:09', '2020-06-27 17:49:09', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (506, '{\"az\":\"CATA\\tTCDO 704\",\"en\":\"CATA\\tTCDO 704\",\"ru\":\"CATA\\tTCDO 704\"}', '{\"az\":\"CATA\\tTCDO 704\",\"en\":\"CATA\\tTCDO 704\",\"ru\":\"CATA\\tTCDO 704\"}', 925.00, 9, 770, 67, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:32:57', '2020-06-27 19:32:57', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (507, '{\"az\":\"CATA\\tTCT 302\",\"en\":\"CATA\\tTCT 302\",\"ru\":\"CATA\\tTCT 302\"}', '{\"az\":\"CATA\\tTCT 302\",\"en\":\"CATA\\tTCT 302\",\"ru\":\"CATA\\tTCT 302\"}', 420.00, 9, 298, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:37:16', '2020-06-27 19:37:16', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (508, '{\"az\":\"CATA\\tTD 302\",\"en\":\"CATA\\tTD 302\",\"ru\":\"CATA\\tTD 302\"}', '{\"az\":\"CATA\\tTD 302\",\"en\":\"CATA\\tTD 302\",\"ru\":\"CATA\\tTD 302\"}', 435.00, 9, 300, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:44:26', '2020-06-27 19:44:26', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (509, '{\"az\":\"CATA\\tTD 302\",\"en\":\"CATA\\tTD 302\",\"ru\":\"CATA\\tTD 302\"}', '{\"az\":\"CATA\\tTD 302\",\"en\":\"CATA\\tTD 302\",\"ru\":\"CATA\\tTD 302\"}', 435.00, 9, 300, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:45:04', '2020-06-27 19:45:04', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (510, '{\"az\":\"CATA\\tTN 604\\/A\",\"en\":\"CATA\\tTN 604\\/A\",\"ru\":\"CATA\\tTN 604\\/A\"}', '{\"az\":\"CATA\\tTN 604\\/A\",\"en\":\"CATA\\tTN 604\\/A\",\"ru\":\"CATA\\tTN 604\\/A\"}', 540.00, 9, 590, 0, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:47:25', '2020-06-27 19:49:24', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (511, '{\"az\":\"CATA\\tCI 54177 NF\",\"en\":\"CATA\\tCI 54177 NF\",\"ru\":\"CATA\\tCI 54177 NF\"}', '{\"az\":\"CATA\\tCI 54177 NF\",\"en\":\"CATA\\tCI 54177 NF\",\"ru\":\"CATA\\tCI 54177 NF\"}', 1480.00, 9, 560, 1780, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 19:55:42', '2020-06-27 19:55:42', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'no', NULL, 2, NULL);
INSERT INTO `product` VALUES (512, '{\"az\":\"CATA\\tCB 2\",\"en\":\"CATA\\tCB 2\",\"ru\":\"CATA\\tCB 2\"}', '{\"az\":\"CATA\\tCB 2\",\"en\":\"CATA\\tCB 2\",\"ru\":\"CATA\\tCB 2\"}', 560.00, 9, 450, 785, 200, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 20:04:28', '2020-06-27 20:04:28', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (513, '{\"az\":\"CATA\\tCB 40-40 INOX\",\"en\":\"CATA\\tCB 40-40 INOX\",\"ru\":\"CATA\\tCB 40-40 INOX\"}', '{\"az\":\"CATA\\tCB 40-40 INOX\",\"en\":\"CATA\\tCB 40-40 INOX\",\"ru\":\"CATA\\tCB 40-40 INOX\"}', 275.00, 9, 406, 406, 20, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 20:07:53', '2020-06-27 20:07:53', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (514, '{\"az\":\"CATA\\tCB 45-40\",\"en\":\"CATA\\tCB 45-40\",\"ru\":\"CATA\\tCB 45-40\"}', '{\"az\":\"CATA\\tCB 45-40\",\"en\":\"CATA\\tCB 45-40\",\"ru\":\"CATA\\tCB 45-40\"}', 290.00, 9, 0, 0, 0, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 20:24:10', '2020-06-27 20:24:10', NULL, 8, 41, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (515, '{\"az\":\"CATA\\tCB 50-40\",\"en\":\"CATA\\tCB 50-40\",\"ru\":\"CATA\\tCB 50-40\"}', '{\"az\":\"CATA\\tCB 50-40\",\"en\":\"CATA\\tCB 50-40\",\"ru\":\"CATA\\tCB 50-40\"}', 330.00, 9, 400, 400, 120, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 20:29:53', '2020-06-27 20:29:53', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (516, '{\"az\":\"CATA\\tR-1 INOX\",\"en\":\"CATA\\tR-1 INOX\",\"ru\":\"CATA\\tR-1 INOX\"}', '{\"az\":\"CATA\\tR-1 INOX\",\"en\":\"CATA\\tR-1 INOX\",\"ru\":\"CATA\\tR-1 INOX\"}', 245.00, 9, 0, 0, 0, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 20:55:20', '2020-06-27 20:55:20', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (517, '{\"az\":\"CATA\\tRS 1 INOX\",\"en\":\"CATA\\tRS 1 INOX\",\"ru\":\"CATA\\tRS 1 INOX\"}', '{\"az\":\"CATA\\tRS 1 INOX\",\"en\":\"CATA\\tRS 1 INOX\",\"ru\":\"CATA\\tRS 1 INOX\"}', 140.00, 9, 385, 385, 180, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-27 21:24:17', '2020-06-27 21:24:17', NULL, 8, 41, NULL, 0, NULL, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (518, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRC\"}', 1040.00, 2, 580, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 08:11:20', '2020-06-28 08:11:20', NULL, 7, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (519, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRI\"}', 1040.00, 2, 580, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 08:29:28', '2020-06-28 08:29:28', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (520, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 6115 CTRN\"}', 1040.00, 2, 560, 30, 480, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 08:35:42', '2020-06-28 08:35:42', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (521, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 62001 B\"}', 640.00, 2, 580, 52, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 08:56:59', '2020-06-28 08:56:59', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (522, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSB\"}', 760.00, 2, 600, 65, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:01:54', '2020-06-28 09:01:54', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (523, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 630 CTSN\"}', 760.00, 2, 600, 65, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:05:00', '2020-06-28 09:05:00', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (524, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 665 CTRB\"}', 640.00, 2, 580, 44, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:11:46', '2020-06-28 09:11:46', NULL, 6, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (525, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRI\"}', 1290.00, 2, 700, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:20:46', '2020-06-28 09:20:46', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (526, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRN\"}', 1290.00, 2, 700, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:29:28', '2020-06-28 09:29:28', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (527, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTRR\"}', 1290.00, 2, 700, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:39:32', '2020-06-28 09:39:32', NULL, 1, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (528, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 7115 CTR\\u0421\"}', 1290.00, 2, 700, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 09:51:28', '2020-06-28 09:51:28', NULL, 7, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (529, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\"}', 1640.00, 2, 860, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:33:39', '2020-06-28 10:33:39', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (530, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRI\"}', 1640.00, 2, 860, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:34:33', '2020-06-28 10:34:33', NULL, 4, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (531, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 9115 CTRN\"}', 1640.00, 2, 860, 67, 500, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:40:54', '2020-06-28 10:40:54', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (532, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRB\"}', 980.00, 2, 850, 54, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:50:28', '2020-06-28 10:50:28', NULL, 6, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (533, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTRN\"}', 980.00, 2, 850, 54, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:54:09', '2020-06-28 10:54:09', NULL, 3, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (534, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\",\"en\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHG 965 CTX\"}', 990.00, 2, 850, 54, 510, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 10:57:27', '2020-06-28 10:57:27', NULL, 8, 31, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (535, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 32033 BW\"}', 620.00, 2, 286, 45, 506, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 11:00:53', '2020-06-28 11:00:53', NULL, 4, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (536, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 6205 RN\"}', 930.00, 2, 580, 50, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 11:03:59', '2020-06-28 11:03:59', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (537, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 63552 B\"}', 860.00, 2, 595, 54, 520, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 11:14:48', '2020-06-28 11:14:48', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (538, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 93551 B\"}', 1560.00, 2, 880, 40, 510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 12:33:50', '2020-06-28 12:33:50', NULL, 3, 32, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (539, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRB\"}', 2150.00, 1, 890, 0, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 12:45:14', '2020-06-28 12:45:14', NULL, 6, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (540, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMRN\"}', 2150.00, 2, 890, 0, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 15:53:36', '2020-06-28 15:53:36', NULL, 3, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (541, '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\",\"en\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tHK 9414 GMX\"}', 1320.00, 2, 890, 0, 510, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 16:24:37', '2020-06-28 16:24:37', NULL, 10, 34, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (542, '{\"az\":\"K\\u00d6RT\\u0130NG\\tK 1226\",\"en\":\"K\\u00d6RT\\u0130NG\\tK 1226\",\"ru\":\"K\\u00d6RT\\u0130NG\\tK 1226\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tK 1226\",\"en\":\"K\\u00d6RT\\u0130NG\\tK 1226\",\"ru\":\"K\\u00d6RT\\u0130NG\\tK 1226\"}', 160.00, 2, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, '2020-06-28 16:43:52', '2020-06-28 16:43:52', NULL, 3, 53, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (543, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHA 9770 X\"}', 1450.00, 2, 900, 1067, 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 16:51:10', '2020-06-28 16:51:10', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (544, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHC 9770 X\"}', 690.00, 2, 900, 995, 490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 16:55:20', '2020-06-28 16:55:20', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (545, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\"}', 290.00, 2, 528, 210, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 17:37:13', '2020-06-28 17:37:13', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (546, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6410 X\"}', 290.00, 2, 528, 210, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 17:39:38', '2020-06-28 17:39:38', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (547, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6530 X\"}', 320.00, 2, 520, 216, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 17:42:59', '2020-06-28 17:42:59', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (548, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RB\"}', 345.00, 2, 525, 165, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 17:49:50', '2020-06-28 17:49:50', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (549, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6638 RN\"}', 345.00, 2, 525, 165, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 18:05:31', '2020-06-28 18:05:31', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (550, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 6997 GB\"}', 890.00, 2, 518, 307, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:02:35', '2020-06-28 19:02:35', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (551, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKH\\u0130 9997 GN\"}', 980.00, 2, 798, 307, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:09:03', '2020-06-28 19:09:03', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (552, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 B\"}', 240.00, 2, 600, 155, 489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:15:41', '2020-06-28 19:15:41', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (553, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 N\"}', 210.00, 2, 600, 155, 489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:18:22', '2020-06-28 19:18:22', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (554, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKHT 6334 X\"}', 245.00, 2, 600, 155, 489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:20:50', '2020-06-28 19:20:50', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (555, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RC\"}', 2780.00, 2, 596, 455, 575, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:26:19', '2020-06-28 19:26:19', NULL, 10, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (556, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RI\"}', 2780.00, 2, 596, 455, 575, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:30:00', '2020-06-28 19:30:00', NULL, 4, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (557, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 1082 RN\"}', 2780.00, 2, 596, 455, 575, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:33:42', '2020-06-28 19:33:42', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (558, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RB\"}', 2760.00, 2, 596, 455, 575, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:36:03', '2020-06-28 19:36:03', NULL, 6, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (559, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RC\"}', 2760.00, 2, 596, 455, 575, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:38:35', '2020-06-28 19:38:35', NULL, 10, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (560, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RI\"}', 2760.00, 2, 596, 455, 575, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:41:29', '2020-06-28 19:41:29', NULL, 4, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (561, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 482 RN\"}', 2760.00, 2, 596, 455, 575, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:43:04', '2020-06-28 19:43:04', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (562, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 720 X\"}', 690.00, 2, 595, 390, 350, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:45:50', '2020-06-28 19:45:50', NULL, 8, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (563, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGN\"}', 880.00, 2, 595, 390, 410, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:53:32', '2020-06-28 19:53:32', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (564, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\",\"en\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKMI 825 TGW\"}', 880.00, 2, 595, 390, 410, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 19:57:59', '2020-06-28 19:57:59', NULL, 4, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (565, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\",\"en\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\",\"en\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKSI 17850 CF\"}', 1590.00, 2, 540, 1770, 546, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:02:43', '2020-06-28 20:02:43', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (566, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\",\"en\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\",\"en\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKSI 17875 CNF\"}', 2190.00, 2, 540, 1770, 546, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:10:35', '2020-06-28 20:10:35', NULL, 4, 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (567, '{\"az\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\",\"en\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\",\"en\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\",\"ru\":\"K\\u00d6RT\\u0130NG\\tKWM 55F 1285\"}', 1460.00, 2, 595, 850, 550, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:23:34', '2020-06-28 20:23:34', NULL, 4, 24, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (568, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOGG 541 CFX\"}', 890.00, 2, 595, 596, 585, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:33:49', '2020-06-28 20:33:49', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (569, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOGG 771 CFX\"}', 970.00, 2, 595, 596, 585, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:37:05', '2020-06-28 20:37:05', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (570, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRC\"}', 2350.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 20:51:09', '2020-06-28 20:51:09', NULL, 7, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (571, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRI\"}', 2350.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:01:56', '2020-06-28 21:01:56', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (572, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 1082 CRN\"}', 2350.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:29:08', '2020-06-28 21:29:08', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (573, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RB\"}', 970.00, 2, 595, 595, 580, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:36:21', '2020-06-28 21:36:21', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (574, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 460 RN\"}', 960.00, 2, 595, 595, 580, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:38:38', '2020-06-28 21:38:38', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (575, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEN\"}', 810.00, 2, 595, 595, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:41:06', '2020-06-28 21:41:06', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (576, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 480 CEX\"}', 810.00, 2, 595, 595, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:44:00', '2020-06-28 21:44:00', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (577, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 481 CRN\"}', 990.00, 2, 595, 595, 580, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:48:28', '2020-06-28 21:48:28', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (578, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSB\"}', 1950.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:51:04', '2020-06-28 21:51:04', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (579, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSC\"}', 1950.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 21:58:25', '2020-06-28 21:58:25', NULL, 7, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (580, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRS\\u0130\"}', 1950.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:01:58', '2020-06-28 22:01:58', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (581, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 482 CRSN\"}', 1950.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:07:00', '2020-06-28 22:07:00', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (582, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 793 CMX\"}', 1288.00, 2, 595, 598, 572, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:10:53', '2020-06-28 22:10:53', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (583, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 8101 M STEAM\"}', 2260.00, 2, 597, 595, 570, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:17:26', '2020-06-28 22:17:26', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (584, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 892 PEN\"}', 1780.00, 2, 595, 595, 566, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:22:33', '2020-06-28 22:22:33', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (585, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGN\"}', 1610.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:27:14', '2020-06-28 22:27:14', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (586, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSGW\"}', 1610.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:31:29', '2020-06-28 22:31:29', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (587, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9102 CSX\"}', 1590.00, 2, 595, 593, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:34:29', '2020-06-28 22:34:29', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (588, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEN\"}', 1390.00, 2, 595, 595, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:42:37', '2020-06-28 22:42:37', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (589, '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\"}', '{\"az\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\",\"en\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\",\"ru\":\"K\\u00d6RT\\u0130NG\\tOKB 9133 CEW\"}', 1390.00, 2, 595, 595, 565, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-06-28 22:46:24', '2020-06-28 22:46:24', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (590, '{\"az\":\"GORENJE\\tHBX603RL\",\"en\":\"GORENJE\\tHBX603RL\",\"ru\":\"GORENJE\\tHBX603RL\"}', '{\"az\":\"GORENJE\\tHBX603RL\",\"en\":\"GORENJE\\tHBX603RL\",\"ru\":\"GORENJE\\tHBX603RL\"}', 159.00, 19, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 05:28:59', '2020-07-01 05:28:59', NULL, 4, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (591, '{\"az\":\"KITCHENAID\\t5KSB1585EAC\",\"en\":\"KITCHENAID\\t5KSB1585EAC\",\"ru\":\"KITCHENAID\\t5KSB1585EAC\"}', '{\"az\":\"KITCHENAID\\t5KSB1585EAC\",\"en\":\"KITCHENAID\\t5KSB1585EAC\",\"ru\":\"KITCHENAID\\t5KSB1585EAC\"}', 529.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 05:47:04', '2020-07-01 05:47:04', NULL, 6, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (592, '{\"az\":\"KITCHENAID\\t5KHB2571EAC\",\"en\":\"KITCHENAID\\t5KHB2571EAC\",\"ru\":\"KITCHENAID\\t5KHB2571EAC\"}', '{\"az\":\"KITCHENAID\\t5KHB2571EAC\",\"en\":\"KITCHENAID\\t5KHB2571EAC\",\"ru\":\"KITCHENAID\\t5KHB2571EAC\"}', 469.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 05:54:30', '2020-07-01 05:54:30', NULL, 4, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (593, '{\"az\":\"KITCHENAID\\t5KSB1585EOB\",\"en\":\"KITCHENAID\\t5KSB1585EOB\",\"ru\":\"KITCHENAID\\t5KSB1585EOB\"}', '{\"az\":\"KITCHENAID\\t5KSB1585EOB\",\"en\":\"KITCHENAID\\t5KSB1585EOB\",\"ru\":\"KITCHENAID\\t5KSB1585EOB\"}', 529.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 06:14:23', '2020-07-01 06:14:23', NULL, 3, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (594, '{\"az\":\"KITCHENAID\\t5KHB2571EER\",\"en\":\"KITCHENAID\\t5KHB2571EER\",\"ru\":\"KITCHENAID\\t5KHB2571EER\"}', '{\"az\":\"KITCHENAID\\t5KHB2571EER\",\"en\":\"KITCHENAID\\t5KHB2571EER\",\"ru\":\"KITCHENAID\\t5KHB2571EER\"}', 469.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 06:17:44', '2020-07-01 06:17:44', NULL, 1, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (595, '{\"az\":\"KITCHENAID\\t5KHB2571EOB\",\"en\":\"KITCHENAID\\t5KHB2571EOB\",\"ru\":\"KITCHENAID\\t5KHB2571EOB\"}', '{\"az\":\"KITCHENAID\\t5KHB2571EOB\",\"en\":\"KITCHENAID\\t5KHB2571EOB\",\"ru\":\"KITCHENAID\\t5KHB2571EOB\"}', 469.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 06:23:55', '2020-07-01 06:23:55', NULL, 3, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (596, '{\"az\":\"GORENJE\\tK15RL\",\"en\":\"GORENJE\\tK15RL\",\"ru\":\"GORENJE\\tK15RL\"}', '{\"az\":\"GORENJE\\tK15RL\",\"en\":\"GORENJE\\tK15RL\",\"ru\":\"GORENJE\\tK15RL\"}', 179.00, 19, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 06:27:55', '2020-07-01 06:27:55', NULL, 6, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (597, '{\"az\":\"KITCHENAID\\t1522 EAC\",\"en\":\"KITCHENAID\\t1522 EAC\",\"ru\":\"KITCHENAID\\t1522 EAC\"}', '{\"az\":\"KITCHENAID\\t1522 EAC\",\"en\":\"KITCHENAID\\t1522 EAC\",\"ru\":\"KITCHENAID\\t1522 EAC\"}', 499.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 06:44:11', '2020-07-01 06:44:11', NULL, 6, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (598, '{\"az\":\"KITCHENAID\\t5KEK1032ESS\",\"en\":\"KITCHENAID\\t5KEK1032ESS\",\"ru\":\"KITCHENAID\\t5KEK1032ESS\"}', '{\"az\":\"KITCHENAID\\t5KEK1032ESS\",\"en\":\"KITCHENAID\\t5KEK1032ESS\",\"ru\":\"KITCHENAID\\t5KEK1032ESS\"}', 469.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 08:18:54', '2020-07-01 08:18:54', NULL, 8, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (599, '{\"az\":\"KITCHENAID\\t5KEK1522ECA\",\"en\":\"KITCHENAID\\t5KEK1522ECA\",\"ru\":\"KITCHENAID\\t5KEK1522ECA\"}', '{\"az\":\"KITCHENAID\\t5KEK1522ECA\",\"en\":\"KITCHENAID\\t5KEK1522ECA\",\"ru\":\"KITCHENAID\\t5KEK1522ECA\"}', 499.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 08:36:43', '2020-07-01 08:36:43', NULL, 1, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (600, '{\"az\":\"KITCHENAID\\t5KEK1522EMS\",\"en\":\"KITCHENAID\\t5KEK1522EMS\",\"ru\":\"KITCHENAID\\t5KEK1522EMS\"}', '{\"az\":\"KITCHENAID\\t5KEK1522EMS\",\"en\":\"KITCHENAID\\t5KEK1522EMS\",\"ru\":\"KITCHENAID\\t5KEK1522EMS\"}', 499.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 08:51:36', '2020-07-01 08:51:36', NULL, 3, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (601, '{\"az\":\"KITCHENAID\\t5KEK1522EOB\",\"en\":\"KITCHENAID\\t5KEK1522EOB\",\"ru\":\"KITCHENAID\\t5KEK1522EOB\"}', '{\"az\":\"KITCHENAID\\t5KEK1522EOB\",\"en\":\"KITCHENAID\\t5KEK1522EOB\",\"ru\":\"KITCHENAID\\t5KEK1522EOB\"}', 499.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 09:02:58', '2020-07-01 09:02:58', NULL, 3, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (602, '{\"az\":\"KITCHENAID\\t5KEK1565EER\",\"en\":\"KITCHENAID\\t5KEK1565EER\",\"ru\":\"KITCHENAID\\t5KEK1565EER\"}', '{\"az\":\"KITCHENAID\\t5KEK1565EER\",\"en\":\"KITCHENAID\\t5KEK1565EER\",\"ru\":\"KITCHENAID\\t5KEK1565EER\"}', 359.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-01 09:55:36', '2020-07-01 09:55:36', NULL, 1, 45, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (603, '{\"az\":\"KITCHENAID\\t5KCM0802EER\",\"en\":\"KITCHENAID\\t5KCM0802EER\",\"ru\":\"KITCHENAID\\t5KCM0802EER\"}', '{\"az\":\"KITCHENAID\\t5KCM0802EER\",\"en\":\"KITCHENAID\\t5KCM0802EER\",\"ru\":\"KITCHENAID\\t5KCM0802EER\"}', 569.00, 20, 0, 0, 0, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, 0, '2020-07-02 07:41:52', '2020-07-02 07:41:52', NULL, 1, 46, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (604, '{\"az\":\"BLANCO\\tTORRE  512593\",\"en\":\"BLANCO\\tTORRE  512593\",\"ru\":\"BLANCO\\tTORRE  512593\"}', '{\"az\":\"BLANCO\\tTORRE  512593\",\"en\":\"BLANCO\\tTORRE  512593\",\"ru\":\"BLANCO\\tTORRE  512593\"}', 270.00, 21, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 07:45:02', '2020-07-02 07:45:02', NULL, 8, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (605, '{\"az\":\"BLANCO\\tTORRE  512594\",\"en\":\"BLANCO\\tTORRE  512594\",\"ru\":\"BLANCO\\tTORRE  512594\"}', '{\"az\":\"BLANCO\\tTORRE  512594\",\"en\":\"BLANCO\\tTORRE  512594\",\"ru\":\"BLANCO\\tTORRE  512594\"}', 270.00, 21, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 07:46:44', '2020-07-02 07:46:44', NULL, 8, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (606, '{\"az\":\"BLANCO\\tLATO 525789\",\"en\":\"BLANCO\\tLATO  525789\",\"ru\":\"BLANCO\\tLATO  525789\"}', '{\"az\":\"BLANCO\\tLATO  525789\",\"en\":\"BLANCO\\tLATO  525789\",\"ru\":\"BLANCO\\tLATO  525789\"}', 350.00, 21, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 07:49:27', '2020-07-02 07:49:27', NULL, 3, 42, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (607, '{\"az\":\"FRANKE\\tElite  TE- 75\",\"en\":\"FRANKE\\tElite  TE- 75\",\"ru\":\"FRANKE\\tElite  TE- 75\"}', '{\"az\":\"FRANKE\\tElite  TE- 75\",\"en\":\"FRANKE\\tElite  TE- 75\",\"ru\":\"FRANKE\\tElite  TE- 75\"}', 799.00, 22, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 07:54:53', '2020-07-02 07:54:53', NULL, 1, 43, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (608, '{\"az\":\"TEKA\\tTR-50.4\",\"en\":\"TEKA\\tTR-50.4\",\"ru\":\"TEKA\\tTR-50.4\"}', '{\"az\":\"TEKA\\tTR-50.4\",\"en\":\"TEKA\\tTR-50.4\",\"ru\":\"TEKA\\tTR-50.4\"}', 699.00, 23, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 08:00:07', '2020-07-02 08:00:07', NULL, 3, 43, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (609, '{\"az\":\"ARISTON\\tFA 4 841 JC X\",\"en\":\"ARISTON\\tFA 4 841 JC X\",\"ru\":\"ARISTON\\tFA 4 841 JC X\"}', '{\"az\":\"ARISTON\\tFA 4 841 JC X\",\"en\":\"ARISTON\\tFA 4 841 JC X\",\"ru\":\"ARISTON\\tFA 4 841 JC X\"}', 870.00, 24, 600, 600, 560, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 09:16:09', '2020-07-02 09:16:09', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (610, '{\"az\":\"ARISTON\\tFI 6 861 SH IX\",\"en\":\"ARISTON\\tFI 6 861 SH IX\",\"ru\":\"ARISTON\\tFI 6 861 SH IX\"}', '{\"az\":\"ARISTON\\tFI 6 861 SH IX\",\"en\":\"ARISTON\\tFI 6 861 SH IX\",\"ru\":\"ARISTON\\tFI 6 861 SH IX\"}', 950.00, 24, 595, 595, 558, 8, 1, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 09:19:55', '2020-07-02 09:19:55', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (611, '{\"az\":\"BOSCH\\t HBG 635 BB1\",\"en\":\"BOSCH\\t HBG 635 BB1\",\"ru\":\"BOSCH\\t HBG 635 BB1\"}', '{\"az\":\"BOSCH\\t HBG 635 BB1\",\"en\":\"BOSCH\\t HBG 635 BB1\",\"ru\":\"BOSCH\\t HBG 635 BB1\"}', 1899.00, 1, 600, 600, 570, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 09:27:57', '2020-07-02 09:27:57', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (612, '{\"az\":\"BOSCH\\t HBG 634 BS1\",\"en\":\"BOSCH\\t HBG 634 BS1\",\"ru\":\"BOSCH\\t HBG 634 BS1\"}', '{\"az\":\"BOSCH\\t HBG 634 BS1\",\"en\":\"BOSCH\\t HBG 634 BS1\",\"ru\":\"BOSCH\\t HBG 634 BS1\"}', 1999.00, 1, 600, 600, 570, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 09:33:18', '2020-07-02 09:33:18', NULL, 8, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (613, '{\"az\":\"BOSCH\\tHBG 635 BS1\",\"en\":\"BOSCH\\tHBG 635 BS1\",\"ru\":\"BOSCH\\tHBG 635 BS1\"}', '{\"az\":\"BOSCH\\tHBG 635 BS1\",\"en\":\"BOSCH\\tHBG 635 BS1\",\"ru\":\"BOSCH\\tHBG 635 BS1\"}', 2199.00, 1, 595, 595, 548, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 09:44:37', '2020-07-02 09:44:37', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (614, '{\"az\":\"BOSCH\\tHBG 675 BW1\",\"en\":\"BOSCH\\tHBG 675 BW1\",\"ru\":\"BOSCH\\tHBG 675 BW1\"}', '{\"az\":\"BOSCH\\tHBG 675 BW1\",\"en\":\"BOSCH\\tHBG 675 BW1\",\"ru\":\"BOSCH\\tHBG 675 BW1\"}', 2599.00, 1, 560, 595, 550, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 10:59:10', '2020-07-02 10:59:10', NULL, 4, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (615, '{\"az\":\"CATA\\tME 7207 BK\",\"en\":\"CATA\\tME 7207 BK\",\"ru\":\"CATA\\tME 7207 BK\"}', '{\"az\":\"CATA\\tME 7207 BK\",\"en\":\"CATA\\tME 7207 BK\",\"ru\":\"CATA\\tME 7207 BK\"}', 799.00, 9, 595, 595, 547, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:08:23', '2020-07-02 11:08:23', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (616, '{\"az\":\"CATA\\tCDP 780 AS BK\",\"en\":\"CATA\\tCDP 780 AS BK\",\"ru\":\"CATA\\tCDP 780 AS BK\"}', '{\"az\":\"CATA\\tCDP 780 AS BK\",\"en\":\"CATA\\tCDP 780 AS BK\",\"ru\":\"CATA\\tCDP 780 AS BK\"}', 970.00, 9, 595, 595, 480, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:11:36', '2020-07-02 11:11:36', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (617, '{\"az\":\"CATA\\tLC 860 BK\",\"en\":\"CATA\\tLC 860 BK\",\"ru\":\"CATA\\tLC 860 BK\"}', '{\"az\":\"CATA\\tLC 860 BK\",\"en\":\"CATA\\tLC 860 BK\",\"ru\":\"CATA\\tLC 860 BK\"}', 799.00, 9, 595, 595, 530, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:17:30', '2020-07-02 11:17:30', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (618, '{\"az\":\"SMEG\\tSF 700 PO\",\"en\":\"SMEG\\tSF 700 PO\",\"ru\":\"SMEG\\tSF 700 PO\"}', '{\"az\":\"SMEG\\tSF 700 PO\",\"en\":\"SMEG\\tSF 700 PO\",\"ru\":\"SMEG\\tSF 700 PO\"}', 2399.00, 4, 597, 592, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:22:47', '2020-07-02 11:22:47', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (619, '{\"az\":\"SMEG\\tSF 800 PO\",\"en\":\"SMEG\\tSF 800 PO\",\"ru\":\"SMEG\\tSF 800 PO\"}', '{\"az\":\"SMEG\\tSF 800 PO\",\"en\":\"SMEG\\tSF 800 PO\",\"ru\":\"SMEG\\tSF 800 PO\"}', 1699.00, 4, 597, 588, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:26:11', '2020-07-02 11:26:11', NULL, 6, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (620, '{\"az\":\"SMEG\\tSF 800 AO\",\"en\":\"SMEG\\tSF 800 AO\",\"ru\":\"SMEG\\tSF 800 AO\"}', '{\"az\":\"SMEG\\tSF 800 AO\",\"en\":\"SMEG\\tSF 800 AO\",\"ru\":\"SMEG\\tSF 800 AO\"}', 1699.00, 4, 597, 592, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:35:32', '2020-07-02 11:35:32', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (621, '{\"az\":\"WHIRLPOOL\\tAKP 446 IX\",\"en\":\"WHIRLPOOL\\tAKP 446 IX\",\"ru\":\"WHIRLPOOL\\tAKP 446 IX\"}', '{\"az\":\"WHIRLPOOL\\tAKP 446 IX\",\"en\":\"WHIRLPOOL\\tAKP 446 IX\",\"ru\":\"WHIRLPOOL\\tAKP 446 IX\"}', 659.00, 17, 595, 595, 564, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:46:20', '2020-07-02 11:46:20', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (622, '{\"az\":\"WHIRLPOOL\\tAKP 458 NB\",\"en\":\"WHIRLPOOL\\tAKP 458 NB\",\"ru\":\"WHIRLPOOL\\tAKP 458 NB\"}', '{\"az\":\"WHIRLPOOL\\tAKP 458 NB\",\"en\":\"WHIRLPOOL\\tAKP 458 NB\",\"ru\":\"WHIRLPOOL\\tAKP 458 NB\"}', 689.00, 17, 595, 595, 564, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-02 11:49:40', '2020-07-02 11:49:40', NULL, 3, 38, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (623, '{\"az\":\"CATA\\tS 600\",\"en\":\"CATA\\tS 600\",\"ru\":\"CATA\\tS 600\"}', '{\"az\":\"CATA\\tS 600\",\"en\":\"CATA\\tS 600\",\"ru\":\"CATA\\tS 600\"}', 460.00, 9, 600, 920, 470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:30:28', '2020-07-03 10:30:28', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (624, '{\"az\":\"CATA\\tGT PLUS 45 WH\",\"en\":\"CATA\\tGT PLUS 45 WH\",\"ru\":\"CATA\\tGT PLUS 45 WH\"}', '{\"az\":\"CATA\\tGT PLUS 45 WH\",\"en\":\"CATA\\tGT PLUS 45 WH\",\"ru\":\"CATA\\tGT PLUS 45 WH\"}', 450.00, 9, 500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:35:30', '2020-07-03 10:35:30', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (625, '{\"az\":\"CATA\\tGRECO 90 BK\",\"en\":\"CATA\\tGRECO 90 BK\",\"ru\":\"CATA\\tGRECO 90 BK\"}', '{\"az\":\"CATA\\tGRECO 90 BK\",\"en\":\"CATA\\tGRECO 90 BK\",\"ru\":\"CATA\\tGRECO 90 BK\"}', 1599.00, 9, 900, 1070, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:40:31', '2020-07-03 10:40:31', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (626, '{\"az\":\"CATA\\tGOYA PRO 90 BK\",\"en\":\"CATA\\tGOYA PRO 90 BK\",\"ru\":\"CATA\\tGOYA PRO 90 BK\"}', '{\"az\":\"CATA\\tGOYA PRO 90 BK\",\"en\":\"CATA\\tGOYA PRO 90 BK\",\"ru\":\"CATA\\tGOYA PRO 90 BK\"}', 1399.00, 9, 900, 1160, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:44:20', '2020-07-03 10:44:20', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (627, '{\"az\":\"CATA\\tGOYA 90 WH\",\"en\":\"CATA\\tGOYA 90 WH\",\"ru\":\"CATA\\tGOYA 90 WH\"}', '{\"az\":\"CATA\\tGOYA 90 WH\",\"en\":\"CATA\\tGOYA 90 WH\",\"ru\":\"CATA\\tGOYA 90 WH\"}', 1499.00, 9, 900, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:48:33', '2020-07-03 10:48:33', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (628, '{\"az\":\"CATA\\tCATA GL 75 X\",\"en\":\"CATA\\tCATA GL 75 X\",\"ru\":\"CATA\\tCATA GL 75 X\"}', '{\"az\":\"CATA\\tCATA GL 75 X\",\"en\":\"CATA\\tCATA GL 75 X\",\"ru\":\"CATA\\tCATA GL 75 X\"}', 999.00, 9, 790, 320, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:55:47', '2020-07-03 10:55:47', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (629, '{\"az\":\"CATA\\tCATA GC DUAL 45 WH\",\"en\":\"CATA\\tCATA GC DUAL 45 WH\",\"ru\":\"CATA\\tCATA GC DUAL 45 WH\"}', '{\"az\":\"CATA\\tCATA GC DUAL 45 WH\",\"en\":\"CATA\\tCATA GC DUAL 45 WH\",\"ru\":\"CATA\\tCATA GC DUAL 45 WH\"}', 980.00, 9, 490, 300, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 10:57:39', '2020-07-03 10:57:39', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (630, '{\"az\":\"EL\\u0130CA\\tERA 72\",\"en\":\"EL\\u0130CA\\tERA 72\",\"ru\":\"EL\\u0130CA\\tERA 72\"}', '{\"az\":\"EL\\u0130CA\\tERA 72\",\"en\":\"EL\\u0130CA\\tERA 72\",\"ru\":\"EL\\u0130CA\\tERA 72\"}', 320.00, 25, 735, 177, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 11:03:19', '2020-07-03 11:03:19', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (631, '{\"az\":\"NODOR\\tGAT 850 60\",\"en\":\"NODOR\\tGAT 850 60\",\"ru\":\"NODOR\\tGAT 850 60\"}', '{\"az\":\"NODOR\\tGAT 850 60\",\"en\":\"NODOR\\tGAT 850 60\",\"ru\":\"NODOR\\tGAT 850 60\"}', 550.00, 14, 600, 280, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 11:11:11', '2020-07-03 11:11:11', NULL, 8, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (632, '{\"az\":\"SMEG\\tKC 19 AOE\",\"en\":\"SMEG\\tKC 19 AOE\",\"ru\":\"SMEG\\tKC 19 AOE\"}', '{\"az\":\"SMEG\\tKC 19 AOE\",\"en\":\"SMEG\\tKC 19 AOE\",\"ru\":\"SMEG\\tKC 19 AOE\"}', 3200.00, 4, 895, 1200, 520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 11:24:00', '2020-07-03 11:24:00', NULL, 3, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (633, '{\"az\":\"SMEG\\tKC 19 POE\",\"en\":\"SMEG\\tKC 19 POE\",\"ru\":\"SMEG\\tKC 19 POE\"}', '{\"az\":\"SMEG\\tKC 19 POE\",\"en\":\"SMEG\\tKC 19 POE\",\"ru\":\"SMEG\\tKC 19 POE\"}', 3200.00, 4, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 11:28:59', '2020-07-03 11:28:59', NULL, 4, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (634, '{\"az\":\"SMEG\\tKCM 900 POE\",\"en\":\"SMEG\\tKCM 900 POE\",\"ru\":\"SMEG\\tKCM 900 POE\"}', '{\"az\":\"SMEG\\tKCM 900 POE\",\"en\":\"SMEG\\tKCM 900 POE\",\"ru\":\"SMEG\\tKCM 900 POE\"}', 4550.00, 4, 896, 1450, 473, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 11:36:39', '2020-07-03 11:36:39', NULL, 6, 35, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (635, '{\"az\":\"KITCHENAID\\t5KFP0719EER\",\"en\":\"KITCHENAID\\t5KFP0719EER\",\"ru\":\"KITCHENAID\\t5KFP0719EER\"}', '{\"az\":\"KITCHENAID\\t5KFP0719EER\",\"en\":\"KITCHENAID\\t5KFP0719EER\",\"ru\":\"KITCHENAID\\t5KFP0719EER\"}', 349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 13:39:04', '2020-07-03 13:39:04', NULL, 1, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (636, '{\"az\":\"KITCHENAID\\t5KFC3516EER\",\"en\":\"KITCHENAID\\t5KFC3516EER\",\"ru\":\"KITCHENAID\\t5KFC3516EER\"}', '{\"az\":\"KITCHENAID\\t5KFC3516EER\",\"en\":\"KITCHENAID\\t5KFC3516EER\",\"ru\":\"KITCHENAID\\t5KFC3516EER\"}', 199.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:30:05', '2020-07-03 16:30:05', NULL, 1, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (637, '{\"az\":\"KITCHENAID\\t5KFC3516EAC\",\"en\":\"KITCHENAID\\t5KFC3516EAC\",\"ru\":\"KITCHENAID\\t5KFC3516EAC\"}', '{\"az\":\"KITCHENAID\\t5KFC3516EAC\",\"en\":\"KITCHENAID\\t5KFC3516EAC\",\"ru\":\"KITCHENAID\\t5KFC3516EAC\"}', 199.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:32:34', '2020-07-03 16:32:34', NULL, 6, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (638, '{\"az\":\"KITCHENAID\\t5KFP1644ECA\",\"en\":\"KITCHENAID\\t5KFP1644ECA\",\"ru\":\"KITCHENAID\\t5KFP1644ECA\"}', '{\"az\":\"KITCHENAID\\t5KFP1644ECA\",\"en\":\"KITCHENAID\\t5KFP1644ECA\",\"ru\":\"KITCHENAID\\t5KFP1644ECA\"}', 1349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:35:37', '2020-07-03 16:35:37', NULL, 1, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (639, '{\"az\":\"KITCHENAID\\t5KFP1644EAC\",\"en\":\"KITCHENAID\\t5KFP1644EAC\",\"ru\":\"KITCHENAID\\t5KFP1644EAC\"}', '{\"az\":\"KITCHENAID\\t5KFP1644EAC\",\"en\":\"KITCHENAID\\t5KFP1644EAC\",\"ru\":\"KITCHENAID\\t5KFP1644EAC\"}', 1349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:46:11', '2020-07-03 16:46:11', NULL, 6, 51, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (640, '{\"az\":\"ARISTON\\tMWKX 222X\",\"en\":\"ARISTON\\tMWKX 222X\",\"ru\":\"ARISTON\\tMWKX 222X\"}', '{\"az\":\"ARISTON\\tMWKX 222X\",\"en\":\"ARISTON\\tMWKX 222X\",\"ru\":\"ARISTON\\tMWKX 222X\"}', 1170.00, 24, 368, 595, 550, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:50:33', '2020-07-03 16:50:33', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (641, '{\"az\":\"BOSCH\\tBosch BFR 634GB1\",\"en\":\"BOSCH\\tBosch BFR 634GB1\",\"ru\":\"BOSCH\\tBosch BFR 634GB1\"}', '{\"az\":\"BOSCH\\tBosch BFR 634GB1\",\"en\":\"BOSCH\\tBosch BFR 634GB1\",\"ru\":\"BOSCH\\tBosch BFR 634GB1\"}', 1499.00, 1, 594, 382, 318, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:57:54', '2020-07-03 16:57:54', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (642, '{\"az\":\"CATA\\tCATA MC 25 GTC BK\",\"en\":\"CATA\\tCATA MC 25 GTC BK\",\"ru\":\"CATA\\tCATA MC 25 GTC BK\"}', '{\"az\":\"CATA\\tCATA MC 25 GTC BK\",\"en\":\"CATA\\tCATA MC 25 GTC BK\",\"ru\":\"CATA\\tCATA MC 25 GTC BK\"}', 990.00, 9, 595, 388, 410, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 16:59:30', '2020-07-03 16:59:30', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (643, '{\"az\":\"SMEG\\tSF 4800 MAO\",\"en\":\"SMEG\\tSF 4800 MAO\",\"ru\":\"SMEG\\tSF 4800 MAO\"}', '{\"az\":\"SMEG\\tSF 4800 MAO\",\"en\":\"SMEG\\tSF 4800 MAO\",\"ru\":\"SMEG\\tSF 4800 MAO\"}', 3199.00, 4, 0, 0, 0, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 17:09:56', '2020-07-03 17:09:56', NULL, 3, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (644, '{\"az\":\"SMEG\\tSF4750MPO\",\"en\":\"SMEG\\tSF4750MPO\",\"ru\":\"SMEG\\tSF4750MPO\"}', '{\"az\":\"SMEG\\tSF4750MPO\",\"en\":\"SMEG\\tSF4750MPO\",\"ru\":\"SMEG\\tSF4750MPO\"}', 3299.00, 4, 597, 456, 548, 8, 2, 7, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 17:15:28', '2020-07-03 17:15:28', NULL, 6, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (645, '{\"az\":\"SMEG\\tSF 4800 MPO\",\"en\":\"SMEG\\tSF 4800 MPO\",\"ru\":\"SMEG\\tSF 4800 MPO\"}', '{\"az\":\"SMEG\\tSF 4800 MPO\",\"en\":\"SMEG\\tSF 4800 MPO\",\"ru\":\"SMEG\\tSF 4800 MPO\"}', 3199.00, 4, 597, 456, 548, 8, 2, 6, NULL, NULL, NULL, NULL, 0, 0, '2020-07-03 17:19:24', '2020-07-03 17:19:24', NULL, 6, 39, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (646, '{\"az\":\"GORENJE\\tMMC1000RL\",\"en\":\"GORENJE\\tMMC1000RL\",\"ru\":\"GORENJE\\tMMC1000RL\"}', '{\"az\":\"GORENJE\\tMMC1000RL\",\"en\":\"GORENJE\\tMMC1000RL\",\"ru\":\"GORENJE\\tMMC1000RL\"}', 730.00, 19, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-03 17:21:08', '2020-07-03 17:21:08', NULL, 4, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (647, '{\"az\":\"GORENJE\\tMMC1000RL\",\"en\":\"GORENJE\\tMMC1000RL\",\"ru\":\"GORENJE\\tMMC1000RL\"}', '{\"az\":\"GORENJE\\tMMC1000RL\",\"en\":\"GORENJE\\tMMC1000RL\",\"ru\":\"GORENJE\\tMMC1000RL\"}', 730.00, 19, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-03 17:25:06', '2020-07-03 17:25:06', NULL, 4, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (648, '{\"az\":\"KITCHENAID\\t5KHM9212EER\",\"en\":\"KITCHENAID\\t5KHM9212EER\",\"ru\":\"KITCHENAID\\t5KHM9212EER\"}', '{\"az\":\"KITCHENAID\\t5KHM9212EER\",\"en\":\"KITCHENAID\\t5KHM9212EER\",\"ru\":\"KITCHENAID\\t5KHM9212EER\"}', 349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, '2020-07-03 17:25:37', '2020-07-03 17:25:37', NULL, 1, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (649, '{\"az\":\"KITCHENAID\\t5KHM9212EAC\",\"en\":\"KITCHENAID\\t5KHM9212EAC\",\"ru\":\"KITCHENAID\\t5KHM9212EAC\"}', '{\"az\":\"KITCHENAID\\t5KHM9212EAC\",\"en\":\"KITCHENAID\\t5KHM9212EAC\",\"ru\":\"KITCHENAID\\t5KHM9212EAC\"}', 349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, '2020-07-03 17:30:39', '2020-07-03 17:30:39', NULL, 6, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (650, '{\"az\":\"KITCHENAID\\t5KHM9212EOB\",\"en\":\"KITCHENAID\\t5KHM9212EOB\",\"ru\":\"KITCHENAID\\t5KHM9212EOB\"}', '{\"az\":\"KITCHENAID\\t5KHM9212EOB\",\"en\":\"KITCHENAID\\t5KHM9212EOB\",\"ru\":\"KITCHENAID\\t5KHM9212EOB\"}', 349.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, '2020-07-03 17:41:01', '2020-07-03 17:41:01', NULL, 3, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (651, '{\"az\":\"KITCHENAID\\t5KSM125EER\",\"en\":\"KITCHENAID\\t5KSM125EER\",\"ru\":\"KITCHENAID\\t5KSM125EER\"}', '{\"az\":\"KITCHENAID\\t5KSM125EER\",\"en\":\"KITCHENAID\\t5KSM125EER\",\"ru\":\"KITCHENAID\\t5KSM125EER\"}', 1399.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-03 17:49:14', '2020-07-03 17:49:14', NULL, 1, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (652, '{\"az\":\"KITCHENAID\\t5KSM125EAC\",\"en\":\"KITCHENAID\\t5KSM125EAC\",\"ru\":\"KITCHENAID\\t5KSM125EAC\"}', '{\"az\":\"KITCHENAID\\t5KSM125EAC\",\"en\":\"KITCHENAID\\t5KSM125EAC\",\"ru\":\"KITCHENAID\\t5KSM125EAC\"}', 1399.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-04 13:47:16', '2020-07-04 13:47:16', NULL, 6, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (653, '{\"az\":\"KITCHENAID\\t5KSM125EOB\",\"en\":\"KITCHENAID\\t5KSM125EOB\",\"ru\":\"KITCHENAID\\t5KSM125EOB\"}', '{\"az\":\"KITCHENAID\\t5KSM125EOB\",\"en\":\"KITCHENAID\\t5KSM125EOB\",\"ru\":\"KITCHENAID\\t5KSM125EOB\"}', 1399.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-04 14:00:36', '2020-07-04 14:00:36', NULL, 3, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO `product` VALUES (654, '{\"az\":\"KITCHENAID\\t5KSM175PSEAC\",\"en\":\"KITCHENAID\\t5KSM175PSEAC\",\"ru\":\"KITCHENAID\\t5KSM175PSEAC\"}', '{\"az\":\"KITCHENAID\\t5KSM175PSEAC\",\"en\":\"KITCHENAID\\t5KSM175PSEAC\",\"ru\":\"KITCHENAID\\t5KSM175PSEAC\"}', 1599.00, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, '2020-07-04 14:24:47', '2020-07-04 14:24:47', NULL, 6, 50, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, NULL);

-- ----------------------------
-- Table structure for product_photo
-- ----------------------------
DROP TABLE IF EXISTS `product_photo`;
CREATE TABLE `product_photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1171 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_photo
-- ----------------------------
INSERT INTO `product_photo` VALUES (69, '15918575531-02.jpg', 44, '1');
INSERT INTO `product_photo` VALUES (70, '15918575532-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (71, '15918575543-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (72, '15918575544-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (73, '15918575545-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (74, '15918575556-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (75, '15918575557-02.jpg', 44, '0');
INSERT INTO `product_photo` VALUES (76, '15918581871-01.jpg', 45, '1');
INSERT INTO `product_photo` VALUES (77, '15918581872-01.jpg', 45, '0');
INSERT INTO `product_photo` VALUES (78, '15918581883-01.jpg', 45, '0');
INSERT INTO `product_photo` VALUES (79, '15918581884-01.jpg', 45, '0');
INSERT INTO `product_photo` VALUES (80, '15918581885-01.jpg', 45, '0');
INSERT INTO `product_photo` VALUES (81, '15918581896-01.jpg', 45, '0');
INSERT INTO `product_photo` VALUES (82, '15918594624-01.jpg', 46, '1');
INSERT INTO `product_photo` VALUES (83, '15918594631-01.jpg', 46, '0');
INSERT INTO `product_photo` VALUES (84, '15918594632-01.jpg', 46, '0');
INSERT INTO `product_photo` VALUES (85, '15918594643-01.jpg', 46, '0');
INSERT INTO `product_photo` VALUES (86, '15918599341-01.jpg', 47, '1');
INSERT INTO `product_photo` VALUES (87, '15918599352-01.jpg', 47, '0');
INSERT INTO `product_photo` VALUES (88, '15918599353-01.jpg', 47, '0');
INSERT INTO `product_photo` VALUES (89, '15922391614-01.jpg', 48, '1');
INSERT INTO `product_photo` VALUES (90, '15922395903-01.jpg', 49, '1');
INSERT INTO `product_photo` VALUES (92, '15922397062-01.jpg', 51, '1');
INSERT INTO `product_photo` VALUES (95, '1592240241AQUASANITA 2581-110-01.jpg', 54, '1');
INSERT INTO `product_photo` VALUES (96, '1592291498AQUASANITA 2581-601-01.jpg', 55, '1');
INSERT INTO `product_photo` VALUES (97, '1592291607AQUASANITA 2813-110-01.jpg', 56, '1');
INSERT INTO `product_photo` VALUES (98, '1592291692AQUASANITA 2813-111-01.jpg', 57, '1');
INSERT INTO `product_photo` VALUES (99, '1592291764AQUASANITA 2813-112-01.jpg', 58, '1');
INSERT INTO `product_photo` VALUES (100, '1592293204AQUASANITA 2813-112-01.jpg', 59, '1');
INSERT INTO `product_photo` VALUES (101, '1592293251AQUASANITA 2813-601-01.jpg', 60, '1');
INSERT INTO `product_photo` VALUES (102, '1592293335AQUASANITA 5523 -111-01.jpg', 61, '1');
INSERT INTO `product_photo` VALUES (103, '1592293444AQUASANITA 5523 -112-01.jpg', 62, '1');
INSERT INTO `product_photo` VALUES (104, '1592293507AQUASANITA 5523 -601-01.jpg', 63, '1');
INSERT INTO `product_photo` VALUES (105, '1592293583AQUASANITA 5523 -710-01.jpg', 64, '1');
INSERT INTO `product_photo` VALUES (106, '1592293671AQUASANITA AKVADUO 2663-001-01.jpg', 65, '1');
INSERT INTO `product_photo` VALUES (107, '1592293709AQUASANITA AKVADUO 2663-002-01.jpg', 66, '1');
INSERT INTO `product_photo` VALUES (108, '1592293753AQUASANITA AKVADUO 2663-110-01.jpg', 67, '1');
INSERT INTO `product_photo` VALUES (109, '1592293838AQUASANITA AKVADUO 2663-111-01.jpg', 68, '1');
INSERT INTO `product_photo` VALUES (110, '1592294037AQUASANITA AKVADUO 2663-601-01.jpg', 69, '1');
INSERT INTO `product_photo` VALUES (111, '1592294097AQUASANITA AKVADUO 2663-710-01.jpg', 70, '1');
INSERT INTO `product_photo` VALUES (112, '1592294165AQUASANITA HERA 2473-311-01.jpg', 71, '1');
INSERT INTO `product_photo` VALUES (113, '1592294508AQUASANITA MIRRUS 5063-111-01.jpg', 72, '1');
INSERT INTO `product_photo` VALUES (114, '1592294537AQUASANITA MIRRUS 5063-601-01.jpg', 73, '1');
INSERT INTO `product_photo` VALUES (115, '1592294572AQUASANITA MIRRUS 5063-710-01.jpg', 74, '1');
INSERT INTO `product_photo` VALUES (116, '1592294664AQUASANITA MODUS 2383-001-01.jpg', 75, '1');
INSERT INTO `product_photo` VALUES (117, '1592294703AQUASANITA MODUS 2383-111-01.jpg', 76, '1');
INSERT INTO `product_photo` VALUES (118, '1592294741AQUASANITA MODUS 2383-601-01.jpg', 77, '1');
INSERT INTO `product_photo` VALUES (119, '1592294839AQUASANITA SABIADUO 2963 -710-01.jpg', 78, '1');
INSERT INTO `product_photo` VALUES (120, '1592294884AQUASANITA SABIADUO 2963-001-01.jpg', 79, '1');
INSERT INTO `product_photo` VALUES (121, '1592294929AQUASANITA SABIADUO 2963-002-01.jpg', 80, '1');
INSERT INTO `product_photo` VALUES (122, '1592294986AQUASANITA SABIADUO 2963-110-01.jpg', 81, '1');
INSERT INTO `product_photo` VALUES (123, '1592295025AQUASANITA SABIADUO 2963-111-01.jpg', 82, '1');
INSERT INTO `product_photo` VALUES (124, '1592295060AQUASANITA SABIADUO 2963-112-01.jpg', 83, '1');
INSERT INTO `product_photo` VALUES (125, '1592295107AQUASANITA SABIADUO 2963-601-01.jpg', 84, '1');
INSERT INTO `product_photo` VALUES (126, '15922954332-01.jpg', 85, '0');
INSERT INTO `product_photo` VALUES (127, '15922954331-01.jpg', 85, '1');
INSERT INTO `product_photo` VALUES (128, '15922954343-01.jpg', 85, '0');
INSERT INTO `product_photo` VALUES (129, '15922954344-01.jpg', 85, '0');
INSERT INTO `product_photo` VALUES (134, '15922957971-01.jpg', 87, '1');
INSERT INTO `product_photo` VALUES (135, '15922957982-01.jpg', 87, '0');
INSERT INTO `product_photo` VALUES (136, '15922959081-01.jpg', 88, '1');
INSERT INTO `product_photo` VALUES (137, '15922959092-01.jpg', 88, '0');
INSERT INTO `product_photo` VALUES (138, '15922959093-01.jpg', 88, '0');
INSERT INTO `product_photo` VALUES (139, '15922959094-01.jpg', 88, '0');
INSERT INTO `product_photo` VALUES (140, '15922962114-01.jpg', 89, '1');
INSERT INTO `product_photo` VALUES (141, '15922962121-01.jpg', 89, '0');
INSERT INTO `product_photo` VALUES (142, '15922962122-01.jpg', 89, '0');
INSERT INTO `product_photo` VALUES (143, '15922962123-01.jpg', 89, '0');
INSERT INTO `product_photo` VALUES (148, '15922965121-01.jpg', 91, '1');
INSERT INTO `product_photo` VALUES (149, '15922965124-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (150, '15922965133-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (151, '15922965135-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (152, '15922965136-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (153, '15922965148-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (154, '15922965149-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (155, '159229651412-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (156, '159229651511-01.jpg', 91, '0');
INSERT INTO `product_photo` VALUES (157, '15922974851-01.jpg', 92, '1');
INSERT INTO `product_photo` VALUES (158, '15922974852-01.jpg', 92, '0');
INSERT INTO `product_photo` VALUES (159, '15922974853-01.jpg', 92, '0');
INSERT INTO `product_photo` VALUES (160, '15922977291-01.jpg', 93, '1');
INSERT INTO `product_photo` VALUES (161, '15922977302-01.jpg', 93, '0');
INSERT INTO `product_photo` VALUES (162, '15922977303-01.jpg', 93, '0');
INSERT INTO `product_photo` VALUES (163, '15922979021-01.jpg', 94, '1');
INSERT INTO `product_photo` VALUES (164, '15922979032-01.jpg', 94, '0');
INSERT INTO `product_photo` VALUES (165, '15922979033-01.jpg', 94, '0');
INSERT INTO `product_photo` VALUES (166, '15922979901-01.jpg', 95, '1');
INSERT INTO `product_photo` VALUES (167, '15922979902-01.jpg', 95, '0');
INSERT INTO `product_photo` VALUES (168, '15922979903-01.jpg', 95, '0');
INSERT INTO `product_photo` VALUES (169, '15922980591-01.jpg', 96, '1');
INSERT INTO `product_photo` VALUES (170, '15922980602-01.jpg', 96, '0');
INSERT INTO `product_photo` VALUES (171, '15922981371-01.jpg', 97, '1');
INSERT INTO `product_photo` VALUES (172, '15922981372-01.jpg', 97, '0');
INSERT INTO `product_photo` VALUES (173, '15922982881-01.jpg', 98, '1');
INSERT INTO `product_photo` VALUES (174, '15922982882-01.jpg', 98, '0');
INSERT INTO `product_photo` VALUES (175, '15922982884-01.jpg', 98, '0');
INSERT INTO `product_photo` VALUES (176, '15922982895-01.jpg', 98, '0');
INSERT INTO `product_photo` VALUES (177, '15922982896-01.jpg', 98, '0');
INSERT INTO `product_photo` VALUES (178, '15922982893-01.jpg', 98, '0');
INSERT INTO `product_photo` VALUES (179, '15922984701-01.jpg', 99, '1');
INSERT INTO `product_photo` VALUES (180, '15922984712-01.jpg', 99, '0');
INSERT INTO `product_photo` VALUES (181, '15922984713-01.jpg', 99, '0');
INSERT INTO `product_photo` VALUES (182, '15922984724-01.jpg', 99, '0');
INSERT INTO `product_photo` VALUES (183, '15922985461-01.jpg', 100, '1');
INSERT INTO `product_photo` VALUES (184, '15922985462-01.jpg', 100, '0');
INSERT INTO `product_photo` VALUES (185, '15922985473-01.jpg', 100, '0');
INSERT INTO `product_photo` VALUES (186, '15922985474-01.jpg', 100, '0');
INSERT INTO `product_photo` VALUES (187, '15922985485-01.jpg', 100, '0');
INSERT INTO `product_photo` VALUES (188, '15922993161-01.jpg', 101, '1');
INSERT INTO `product_photo` VALUES (189, '15922995981-01.jpg', 102, '1');
INSERT INTO `product_photo` VALUES (190, '15922995982-01.jpg', 102, '0');
INSERT INTO `product_photo` VALUES (191, '15922995993-01.jpg', 102, '0');
INSERT INTO `product_photo` VALUES (192, '15922995994-01.jpg', 102, '0');
INSERT INTO `product_photo` VALUES (193, '15922995995-01.jpg', 102, '0');
INSERT INTO `product_photo` VALUES (194, '15922996006-01.jpg', 102, '0');
INSERT INTO `product_photo` VALUES (195, '15922996911-01.jpg', 103, '1');
INSERT INTO `product_photo` VALUES (196, '15922996922-01.jpg', 103, '0');
INSERT INTO `product_photo` VALUES (197, '15922996923-01.jpg', 103, '0');
INSERT INTO `product_photo` VALUES (198, '15922996934-01.jpg', 103, '0');
INSERT INTO `product_photo` VALUES (199, '15922996935-01.jpg', 103, '0');
INSERT INTO `product_photo` VALUES (200, '15922996936-01.jpg', 103, '0');
INSERT INTO `product_photo` VALUES (201, '15922997441-01.jpg', 104, '1');
INSERT INTO `product_photo` VALUES (202, '15922997452-01.jpg', 104, '0');
INSERT INTO `product_photo` VALUES (203, '1592300468AQUASANITA BELLA SQB101-710AW-01.jpg', 105, '1');
INSERT INTO `product_photo` VALUES (204, '1592304085AQUASANITA CLARUS SR100-111W-01.jpg', 106, '1');
INSERT INTO `product_photo` VALUES (205, '1592304150AQUASANITA CLARUS SR100-112W-01.jpg', 107, '1');
INSERT INTO `product_photo` VALUES (206, '1592304211AQUASANITA CLARUS SR100-120W-01.jpg', 108, '1');
INSERT INTO `product_photo` VALUES (207, '1592304278AQUASANITA CLARUS SR100-601W-01.jpg', 109, '1');
INSERT INTO `product_photo` VALUES (208, '1592304311AQUASANITA CLARUS SR100-710W-01.jpg', 110, '1');
INSERT INTO `product_photo` VALUES (209, '1592304525AQUASANITA DELICIA PLUS GQD150B-110AW-01.jpg', 111, '1');
INSERT INTO `product_photo` VALUES (210, '1592304609AQUASANITA DELICIA PLUS GQD150B-111AW-01.jpg', 112, '1');
INSERT INTO `product_photo` VALUES (211, '1592304645AQUASANITA DELICIA PLUS GQD150B-112AW-01.jpg', 113, '1');
INSERT INTO `product_photo` VALUES (212, '1592304693AQUASANITA DELICIA PLUS GQD150B-120AW-01.jpg', 114, '1');
INSERT INTO `product_photo` VALUES (213, '1592304801AQUASANITA DELICIA PLUS GQD150B-601AW-01.jpg', 115, '1');
INSERT INTO `product_photo` VALUES (214, '1592304840AQUASANITA DELICIA PLUS GQD150B-710AW-01.jpg', 116, '1');
INSERT INTO `product_photo` VALUES (215, '1592358564AQUASANITA SQA100-110W-01.jpg', 117, '1');
INSERT INTO `product_photo` VALUES (216, '1592358623AQUASANITA SQA100-111W-01.jpg', 118, '1');
INSERT INTO `product_photo` VALUES (217, '1592358676AQUASANITA SQA100-112W-01.jpg', 119, '1');
INSERT INTO `product_photo` VALUES (218, '1592358719AQUASANITA SQA100-120W-01.jpg', 120, '1');
INSERT INTO `product_photo` VALUES (219, '1592358757AQUASANITA SQA100-601W-01.jpg', 121, '1');
INSERT INTO `product_photo` VALUES (220, '1592358803AQUASANITA SQA100-710W-01.jpg', 122, '1');
INSERT INTO `product_photo` VALUES (221, '1592358873AQUASANITA SQA101-110W-01.jpg', 123, '1');
INSERT INTO `product_photo` VALUES (222, '1592358932AQUASANITA SQA101-111W-01.jpg', 124, '1');
INSERT INTO `product_photo` VALUES (223, '1592358970AQUASANITA SQA101-112W-01.jpg', 125, '1');
INSERT INTO `product_photo` VALUES (224, '1592359012AQUASANITA SQA101-120W-01.jpg', 126, '1');
INSERT INTO `product_photo` VALUES (225, '1592359061AQUASANITA SQA101-601W-01.jpg', 127, '1');
INSERT INTO `product_photo` VALUES (226, '1592359101AQUASANITA SQA101-710W-01.jpg', 128, '1');
INSERT INTO `product_photo` VALUES (227, '1592359158AQUASANITA SQA102-110W-01.jpg', 129, '1');
INSERT INTO `product_photo` VALUES (228, '1592359205AQUASANITA SQA102-112W-01.jpg', 130, '1');
INSERT INTO `product_photo` VALUES (229, '1592359252AQUASANITA SQA102-120W-01.jpg', 131, '1');
INSERT INTO `product_photo` VALUES (230, '1592366921AQUASANITA SQA102-601W-01.jpg', 132, '1');
INSERT INTO `product_photo` VALUES (231, '1592359359AQUASANITA SQA102-710W-01.jpg', 133, '1');
INSERT INTO `product_photo` VALUES (232, '1592359408AQUASANITA SQA104-111W-01.jpg', 134, '1');
INSERT INTO `product_photo` VALUES (233, '1592367034AQUASANITA SQA104-112W-01.jpg', 135, '1');
INSERT INTO `product_photo` VALUES (234, '1592367090AQUASANITA SQA104-710W-01.jpg', 136, '1');
INSERT INTO `product_photo` VALUES (235, '1592367145AQUASANITA SQA200-110W-01.jpg', 137, '1');
INSERT INTO `product_photo` VALUES (236, '1592367191AQUASANITA SQA200-111W-01.jpg', 138, '1');
INSERT INTO `product_photo` VALUES (237, '1592367305AQUASANITA SQA200-112W-01.jpg', 139, '1');
INSERT INTO `product_photo` VALUES (238, '1592367346AQUASANITA SQA200-601W-01.jpg', 140, '1');
INSERT INTO `product_photo` VALUES (239, '1592367394AQUASANITA SQA200-710W-01.jpg', 141, '1');
INSERT INTO `product_photo` VALUES (240, '1592367434AQUASANITA SQA210-110W-01.jpg', 142, '1');
INSERT INTO `product_photo` VALUES (241, '1592367474AQUASANITA SQA210-111W-01.jpg', 143, '1');
INSERT INTO `product_photo` VALUES (242, '1592367512AQUASANITA SQA210-112W-01.jpg', 144, '1');
INSERT INTO `product_photo` VALUES (243, '1592367555AQUASANITA SQA210-120W-01.jpg', 145, '1');
INSERT INTO `product_photo` VALUES (244, '1592367621AQUASANITA SQA210-601W-01.jpg', 146, '1');
INSERT INTO `product_photo` VALUES (245, '1592367666AQUASANITA SQA210-710W-01.jpg', 147, '1');
INSERT INTO `product_photo` VALUES (246, '1592367712AQUASANITA SQA230L-111W-01.jpg', 148, '1');
INSERT INTO `product_photo` VALUES (247, '1592367767AQUASANITA SQA230L-112W-01.jpg', 149, '1');
INSERT INTO `product_photo` VALUES (248, '1592367839AQUASANITA SQA230L-601W-01.jpg', 150, '1');
INSERT INTO `product_photo` VALUES (249, '1592367880AQUASANITA SQA230L-710W-01.jpg', 151, '1');
INSERT INTO `product_photo` VALUES (250, '1592367928AQUASANITA SQA230R-111W-01.jpg', 152, '1');
INSERT INTO `product_photo` VALUES (251, '1592367979AQUASANITA SQA230R-111W-01.jpg', 153, '1');
INSERT INTO `product_photo` VALUES (252, '1592368096AQUASANITA SQA230L-601W-01.jpg', 154, '1');
INSERT INTO `product_photo` VALUES (253, '1592368176AQUASANITA SQA230R-710W-01.jpg', 155, '1');
INSERT INTO `product_photo` VALUES (254, '1592368287Shablon AQUASANITA SQA104-601W-01.jpg', 156, '1');
INSERT INTO `product_photo` VALUES (255, '1592379385AQUASANITA SQD100-111W-01.jpg', 157, '1');
INSERT INTO `product_photo` VALUES (256, '1592379446AQUASANITA SQD100-112W-01.jpg', 158, '1');
INSERT INTO `product_photo` VALUES (257, '1592379528AQUASANITA SQQ100-601W-01.jpg', 159, '1');
INSERT INTO `product_photo` VALUES (258, '1592379595AQUASANITA SQD100-710W-01.jpg', 160, '1');
INSERT INTO `product_photo` VALUES (259, '1592379660AQUASANITA SQD101-111W-01.jpg', 161, '1');
INSERT INTO `product_photo` VALUES (260, '1592379718AQUASANITA SQD101-112W-01.jpg', 162, '1');
INSERT INTO `product_photo` VALUES (261, '1592379769AQUASANITA SQD101-601W-01.jpg', 163, '1');
INSERT INTO `product_photo` VALUES (262, '1592379821AQUASANITA SQD101-710W-01.jpg', 164, '1');
INSERT INTO `product_photo` VALUES (263, '1592379892AQUASANITA SQL101-111AW-01.jpg', 165, '1');
INSERT INTO `product_photo` VALUES (264, '1592379955AQUASANITA SQL101-112AW-01.jpg', 166, '1');
INSERT INTO `product_photo` VALUES (265, '1592380105AQUASANITA SQL101-710AW-01.jpg', 167, '1');
INSERT INTO `product_photo` VALUES (266, '1592380186AQUASANITA SQM200-110W-01.jpg', 168, '1');
INSERT INTO `product_photo` VALUES (267, '1592380238AQUASANITA SQM200-111W-01.jpg', 169, '1');
INSERT INTO `product_photo` VALUES (268, '1592380286AQUASANITA SQM200-112W-01.jpg', 170, '1');
INSERT INTO `product_photo` VALUES (269, '1592380350AQUASANITA SQM200-120W-01.jpg', 171, '1');
INSERT INTO `product_photo` VALUES (270, '1592380423AQUASANITA SQM200-601W-01.jpg', 172, '1');
INSERT INTO `product_photo` VALUES (271, '1592380471AQUASANITA SQM200-710W-01.jpg', 173, '1');
INSERT INTO `product_photo` VALUES (272, '1592380531AQUASANITA SQQ100-110W-01.jpg', 174, '1');
INSERT INTO `product_photo` VALUES (273, '1592380714AQUASANITA SQQ100-111W-01.jpg', 175, '1');
INSERT INTO `product_photo` VALUES (274, '1592380787AQUASANITA SQS100-112W-01.jpg', 176, '1');
INSERT INTO `product_photo` VALUES (275, '1592380976AQUASANITA SQQ100-120W-01.jpg', 177, '1');
INSERT INTO `product_photo` VALUES (276, '1592381099AQUASANITA SQQ100-601W-01.jpg', 178, '1');
INSERT INTO `product_photo` VALUES (277, '1592381216AQUASANITA SQQ100-710W-01.jpg', 179, '1');
INSERT INTO `product_photo` VALUES (278, '1592381338AQUASANITA SQS100-110W-01.jpg', 180, '1');
INSERT INTO `product_photo` VALUES (279, '1592381412AQUASANITA SQS100-111W-01.jpg', 181, '1');
INSERT INTO `product_photo` VALUES (280, '1592381471AQUASANITA SQS100-112W-01.jpg', 182, '1');
INSERT INTO `product_photo` VALUES (281, '1592381529AQUASANITA SQS100-120W-01.jpg', 183, '1');
INSERT INTO `product_photo` VALUES (282, '1592381687AQUASANITA SQS100-601W-01.jpg', 184, '1');
INSERT INTO `product_photo` VALUES (283, '1592381736AQUASANITA SQS100-710W-01.jpg', 185, '1');
INSERT INTO `product_photo` VALUES (284, '1592381777AQUASANITA SQT100-111W-01.jpg', 186, '1');
INSERT INTO `product_photo` VALUES (285, '1592381822AQUASANITA SQT101-112W-01.jpg', 187, '1');
INSERT INTO `product_photo` VALUES (286, '1592381876AQUASANITA SQT100-601W-01.jpg', 188, '1');
INSERT INTO `product_photo` VALUES (287, '1592381924AQUASANITA SQT100-710W-01.jpg', 189, '1');
INSERT INTO `product_photo` VALUES (288, '1592381986AQUASANITA SQT101-110W-01.jpg', 190, '1');
INSERT INTO `product_photo` VALUES (289, '1592382029AQUASANITA SQT101-111W-01.jpg', 191, '1');
INSERT INTO `product_photo` VALUES (290, '1592382075AQUASANITA SQT101-112W-01.jpg', 192, '1');
INSERT INTO `product_photo` VALUES (291, '1592382121AQUASANITA SQT101-601W-01.jpg', 193, '1');
INSERT INTO `product_photo` VALUES (292, '1592382179AQUASANITA SQT101-710W-01.jpg', 194, '1');
INSERT INTO `product_photo` VALUES (293, '1592382238AQUASANITA SQT150-111W-01.jpg', 195, '1');
INSERT INTO `product_photo` VALUES (294, '1592382277AQUASANITA SQT150-112W-01.jpg', 196, '1');
INSERT INTO `product_photo` VALUES (295, '1592382324AQUASANITA SQT150-120W-01.jpg', 197, '1');
INSERT INTO `product_photo` VALUES (296, '1592382368AQUASANITA SQT150-601W-01.jpg', 198, '1');
INSERT INTO `product_photo` VALUES (297, '1592382410AQUASANITA SQT150-710W-01.jpg', 199, '1');
INSERT INTO `product_photo` VALUES (298, '1592382476AQUASANITA SQT151-111W-01.jpg', 200, '1');
INSERT INTO `product_photo` VALUES (299, '1592382537AQUASANITA SQT151-112W-01.jpg', 201, '1');
INSERT INTO `product_photo` VALUES (300, '1592382583AQUASANITA SQT151-601W-01.jpg', 202, '1');
INSERT INTO `product_photo` VALUES (301, '1592382619AQUASANITA SQT151-710W-01.jpg', 203, '1');
INSERT INTO `product_photo` VALUES (302, '1592384317AQUASANITA AIR100N-01.jpg', 204, '1');
INSERT INTO `product_photo` VALUES (303, '1592384364AQUASANITA AIR100N-C-01.jpg', 205, '1');
INSERT INTO `product_photo` VALUES (304, '1592384450AQUASANITA AIR100N-G-01.jpg', 206, '1');
INSERT INTO `product_photo` VALUES (305, '1592385814AQUASANITA AIR100N-T-01.jpg', 207, '1');
INSERT INTO `product_photo` VALUES (306, '1592385898AQUASANITA AIR100X-01.jpg', 208, '1');
INSERT INTO `product_photo` VALUES (307, '1592386180AQUASANITA DER100L-T-01.jpg', 209, '1');
INSERT INTO `product_photo` VALUES (308, '1592386259AQUASANITA DER100X-01.jpg', 210, '1');
INSERT INTO `product_photo` VALUES (309, '1592386295AQUASANITA DER100X-T-01.jpg', 211, '1');
INSERT INTO `product_photo` VALUES (310, '1592386339AQUASANITA DERA DER100L-C-01.jpg', 212, '1');
INSERT INTO `product_photo` VALUES (311, '1592386372AQUASANITA DERA DER100L-G-01.jpg', 213, '1');
INSERT INTO `product_photo` VALUES (312, '1592386411AQUASANITA ENN100B-01.jpg', 214, '1');
INSERT INTO `product_photo` VALUES (313, '1592386477AQUASANITA ENN100L-01.jpg', 215, '1');
INSERT INTO `product_photo` VALUES (314, '1592386521AQUASANITA ENN100M-01.jpg', 216, '1');
INSERT INTO `product_photo` VALUES (315, '1592386562AQUASANITA ENN100S-01.jpg', 217, '1');
INSERT INTO `product_photo` VALUES (316, '1592386615AQUASANITA ENN100X-01.jpg', 218, '1');
INSERT INTO `product_photo` VALUES (317, '1592386698AQUASANITA ENN200L-01.jpg', 219, '1');
INSERT INTO `product_photo` VALUES (318, '1592386800AQUASANITA LUN100M-01.jpg', 220, '1');
INSERT INTO `product_photo` VALUES (319, '1592386838AQUASANITA LUN100N-01.jpg', 221, '1');
INSERT INTO `product_photo` VALUES (320, '1592386881AQUASANITA LUN100X-01.jpg', 222, '1');
INSERT INTO `product_photo` VALUES (321, '1592386924AQUASANITA LUN101N-L-01.jpg', 223, '1');
INSERT INTO `product_photo` VALUES (322, '1592386972AQUASANITA LUN101N-R-01.jpg', 224, '1');
INSERT INTO `product_photo` VALUES (323, '1592387016AQUASANITA LUN151N-L-01.jpg', 225, '1');
INSERT INTO `product_photo` VALUES (324, '1592387052AQUASANITA LUN151N-R-01.jpg', 226, '1');
INSERT INTO `product_photo` VALUES (325, '1592387523Shablon (1)-01.jpg', 227, '1');
INSERT INTO `product_photo` VALUES (326, '1592387627Shablon (1)-01.jpg', 228, '1');
INSERT INTO `product_photo` VALUES (327, '1592387731Shablon (1)-01.jpg', 229, '1');
INSERT INTO `product_photo` VALUES (328, '1592388488Shablon (1)-01.jpg', 230, '1');
INSERT INTO `product_photo` VALUES (329, '1592390194Shablon (1)-01.jpg', 231, '1');
INSERT INTO `product_photo` VALUES (330, '1592390394Shablon (1)-01.jpg', 232, '1');
INSERT INTO `product_photo` VALUES (331, '1592390529Shablon (1)-01.jpg', 233, '1');
INSERT INTO `product_photo` VALUES (332, '1592390653Shablon (1)-01.jpg', 234, '1');
INSERT INTO `product_photo` VALUES (333, '1592390775Shablon (1)-01.jpg', 235, '1');
INSERT INTO `product_photo` VALUES (334, '1592390974Shablon (1)-01.jpg', 236, '1');
INSERT INTO `product_photo` VALUES (335, '1592391300Shablon (1)-01.jpg', 237, '1');
INSERT INTO `product_photo` VALUES (336, '1592391423Shablon (1)-01.jpg', 238, '1');
INSERT INTO `product_photo` VALUES (337, '1592391552Shablon (1)-01.jpg', 239, '1');
INSERT INTO `product_photo` VALUES (338, '1592391655Shablon (1)-01.jpg', 240, '1');
INSERT INTO `product_photo` VALUES (339, '1592391837Shablon (1)-01.jpg', 241, '1');
INSERT INTO `product_photo` VALUES (340, '1592391924Shablon (1)-01.jpg', 242, '1');
INSERT INTO `product_photo` VALUES (341, '1592486502BOSCH-01.jpg', 243, '1');
INSERT INTO `product_photo` VALUES (342, '1592486766d-01.jpg', 244, '1');
INSERT INTO `product_photo` VALUES (343, '15924872401-01.jpg', 245, '1');
INSERT INTO `product_photo` VALUES (344, '15924872402-01.jpg', 245, '0');
INSERT INTO `product_photo` VALUES (345, '15924872403-01.jpg', 245, '0');
INSERT INTO `product_photo` VALUES (346, '1592487429BOSChTWK60088-01.jpg', 246, '1');
INSERT INTO `product_photo` VALUES (347, '1592487630BOSCHTWK7007-01.jpg', 247, '1');
INSERT INTO `product_photo` VALUES (348, '15924881944-01.jpg', 248, '1');
INSERT INTO `product_photo` VALUES (349, '15924881953-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (350, '15924881959-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (351, '15924881955-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (352, '15924881957-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (353, '1592488195Shablon (1)-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (354, '15924881956-01.jpg', 248, '0');
INSERT INTO `product_photo` VALUES (355, '1592551287BOSCHTWK7506-01.jpg', 249, '1');
INSERT INTO `product_photo` VALUES (356, '1592551562BOSCHTWK 7808-01.jpg', 250, '1');
INSERT INTO `product_photo` VALUES (357, '15925518842-01.jpg', 251, '1');
INSERT INTO `product_photo` VALUES (358, '15925518843-01.jpg', 251, '0');
INSERT INTO `product_photo` VALUES (359, '1592551884Shablon (1)-01.jpg', 251, '0');
INSERT INTO `product_photo` VALUES (360, '1592552416Shablon (1)-01.jpg', 252, '1');
INSERT INTO `product_photo` VALUES (361, '15925524171-01.jpg', 252, '0');
INSERT INTO `product_photo` VALUES (362, '15925524172-01.jpg', 252, '0');
INSERT INTO `product_photo` VALUES (363, '15925524175-01.jpg', 252, '0');
INSERT INTO `product_photo` VALUES (364, '1592552827BOSCHTWK 70A03-01.jpg', 253, '1');
INSERT INTO `product_photo` VALUES (365, '1592553192BOSCHTWK 6303-01.jpg', 254, '1');
INSERT INTO `product_photo` VALUES (366, '1592553193Shablon (1)-01.jpg', 254, '0');
INSERT INTO `product_photo` VALUES (367, '1592554027BOSCHTWK 8612P-01.jpg', 255, '1');
INSERT INTO `product_photo` VALUES (368, '15925540272-01.jpg', 255, '0');
INSERT INTO `product_photo` VALUES (369, '1592554027Shablon (1)-01.jpg', 255, '0');
INSERT INTO `product_photo` VALUES (370, '1592554450Shablon (1)-01.jpg', 256, '1');
INSERT INTO `product_photo` VALUES (371, '15925544501-01.jpg', 256, '0');
INSERT INTO `product_photo` VALUES (372, '15925544502-01.jpg', 256, '0');
INSERT INTO `product_photo` VALUES (373, '15925544503-01.jpg', 256, '0');
INSERT INTO `product_photo` VALUES (374, '15925544504-01.jpg', 256, '0');
INSERT INTO `product_photo` VALUES (375, '1592554451BOSCHTWK 8613P-01.jpg', 256, '0');
INSERT INTO `product_photo` VALUES (380, '15925555801-01.jpg', 258, '1');
INSERT INTO `product_photo` VALUES (381, '15925555802-01.jpg', 258, '0');
INSERT INTO `product_photo` VALUES (382, '15925555803-01.jpg', 258, '0');
INSERT INTO `product_photo` VALUES (383, '15925555814-01.jpg', 258, '0');
INSERT INTO `product_photo` VALUES (388, '15925563761-01.jpg', 260, '1');
INSERT INTO `product_photo` VALUES (389, '15925563762-01.jpg', 260, '0');
INSERT INTO `product_photo` VALUES (390, '15925563763-01.jpg', 260, '0');
INSERT INTO `product_photo` VALUES (391, '1592557030BOSCHHBFN10BAO-01.jpg', 261, '1');
INSERT INTO `product_photo` VALUES (392, '1592557596BOSCHHBA313ORO-01.jpg', 262, '1');
INSERT INTO `product_photo` VALUES (393, '15925582581-01.jpg', 263, '1');
INSERT INTO `product_photo` VALUES (394, '15925582592-01.jpg', 263, '0');
INSERT INTO `product_photo` VALUES (395, '15925582593-01.jpg', 263, '0');
INSERT INTO `product_photo` VALUES (396, '15925582594-01.jpg', 263, '0');
INSERT INTO `product_photo` VALUES (397, '1592558442BOSCHHBA334YBO-01.jpg', 264, '1');
INSERT INTO `product_photo` VALUES (398, '15925592094-01.jpg', 265, '1');
INSERT INTO `product_photo` VALUES (399, '15925592091-01.jpg', 265, '0');
INSERT INTO `product_photo` VALUES (400, '15925592092-01.jpg', 265, '0');
INSERT INTO `product_photo` VALUES (401, '15925592103-01.jpg', 265, '0');
INSERT INTO `product_photo` VALUES (402, '15925595693-01.jpg', 266, '1');
INSERT INTO `product_photo` VALUES (403, '15925595692-01.jpg', 266, '0');
INSERT INTO `product_photo` VALUES (404, '15925595691-01.jpg', 266, '0');
INSERT INTO `product_photo` VALUES (405, '1592559790BOSCHHBG36T650-01.jpg', 267, '1');
INSERT INTO `product_photo` VALUES (406, '15925604732-01.jpg', 268, '1');
INSERT INTO `product_photo` VALUES (407, '15925604741-01.jpg', 268, '0');
INSERT INTO `product_photo` VALUES (408, '15925604743-01.jpg', 268, '0');
INSERT INTO `product_photo` VALUES (409, '15925604744-01.jpg', 268, '0');
INSERT INTO `product_photo` VALUES (410, '15925604745-01.jpg', 268, '0');
INSERT INTO `product_photo` VALUES (411, '15925615562-01.jpg', 269, '1');
INSERT INTO `product_photo` VALUES (412, '15925615561-01.jpg', 269, '0');
INSERT INTO `product_photo` VALUES (413, '15925615563-01.jpg', 269, '0');
INSERT INTO `product_photo` VALUES (414, '15925619241-01.jpg', 270, '1');
INSERT INTO `product_photo` VALUES (415, '15925619252-01.jpg', 270, '0');
INSERT INTO `product_photo` VALUES (416, '15925619253-01.jpg', 270, '0');
INSERT INTO `product_photo` VALUES (417, '15925619254-01.jpg', 270, '0');
INSERT INTO `product_photo` VALUES (418, '1592562304BOSCHHBN434551E-01.jpg', 271, '1');
INSERT INTO `product_photo` VALUES (419, '15925635321-01.jpg', 272, '1');
INSERT INTO `product_photo` VALUES (420, '15925635322-01.jpg', 272, '0');
INSERT INTO `product_photo` VALUES (421, '15925635323-01.jpg', 272, '0');
INSERT INTO `product_photo` VALUES (422, '15925635324-01.jpg', 272, '0');
INSERT INTO `product_photo` VALUES (423, '1592563807BOSCHMFW1501-01.jpg', 273, '1');
INSERT INTO `product_photo` VALUES (424, '15925663373-01.jpg', 274, '1');
INSERT INTO `product_photo` VALUES (425, '15925663382-01.jpg', 274, '0');
INSERT INTO `product_photo` VALUES (426, '15925663384-01.jpg', 274, '0');
INSERT INTO `product_photo` VALUES (427, '15925663381-01.jpg', 274, '0');
INSERT INTO `product_photo` VALUES (428, '1592566685BOSCHDKE965P-01.jpg', 275, '1');
INSERT INTO `product_photo` VALUES (429, '15925670082-01.jpg', 276, '1');
INSERT INTO `product_photo` VALUES (430, '15925670081-01.jpg', 276, '0');
INSERT INTO `product_photo` VALUES (438, '1592568200Shablon (1)-01.jpg', 279, '1');
INSERT INTO `product_photo` VALUES (439, '15925682013-01.jpg', 279, '0');
INSERT INTO `product_photo` VALUES (440, '15925682011-01.jpg', 279, '0');
INSERT INTO `product_photo` VALUES (441, '15925683061-01.jpg', 280, '1');
INSERT INTO `product_photo` VALUES (442, '15925683062-01.jpg', 280, '0');
INSERT INTO `product_photo` VALUES (443, '15925683063-01.jpg', 280, '0');
INSERT INTO `product_photo` VALUES (444, '15925683064-01.jpg', 280, '0');
INSERT INTO `product_photo` VALUES (445, '15925691922-01.jpg', 281, '1');
INSERT INTO `product_photo` VALUES (446, '15925691921-01.jpg', 281, '0');
INSERT INTO `product_photo` VALUES (447, '15925691923-01.jpg', 281, '0');
INSERT INTO `product_photo` VALUES (448, '15925697152-01.jpg', 282, '1');
INSERT INTO `product_photo` VALUES (449, '15925697151-01.jpg', 282, '0');
INSERT INTO `product_photo` VALUES (450, '15925697153-01.jpg', 282, '0');
INSERT INTO `product_photo` VALUES (451, '15925697164-01.jpg', 282, '0');
INSERT INTO `product_photo` VALUES (452, '1592624215BOSCHWTN 86201-01.jpg', 283, '1');
INSERT INTO `product_photo` VALUES (453, '1592624683Shablon (1)-01.jpg', 284, '1');
INSERT INTO `product_photo` VALUES (454, '15926246834-01.jpg', 284, '0');
INSERT INTO `product_photo` VALUES (455, '15926246833-01.jpg', 284, '0');
INSERT INTO `product_photo` VALUES (456, '15926246835-01.jpg', 284, '0');
INSERT INTO `product_photo` VALUES (457, '15926246832-01.jpg', 284, '0');
INSERT INTO `product_photo` VALUES (458, '15926249991-01.jpg', 285, '1');
INSERT INTO `product_photo` VALUES (459, '15926249993-01.jpg', 285, '0');
INSERT INTO `product_photo` VALUES (460, '15926249992-01.jpg', 285, '0');
INSERT INTO `product_photo` VALUES (461, '15926250004-01.jpg', 285, '0');
INSERT INTO `product_photo` VALUES (462, '15926253851-01.jpg', 286, '1');
INSERT INTO `product_photo` VALUES (463, '15926253862-01.jpg', 286, '0');
INSERT INTO `product_photo` VALUES (464, '15926259264-01.jpg', 287, '1');
INSERT INTO `product_photo` VALUES (465, '15926259262-01.jpg', 287, '0');
INSERT INTO `product_photo` VALUES (466, '15926259263-01.jpg', 287, '0');
INSERT INTO `product_photo` VALUES (467, '15926259261-01.jpg', 287, '0');
INSERT INTO `product_photo` VALUES (468, '15926264711-01.jpg', 288, '1');
INSERT INTO `product_photo` VALUES (469, '15926264712-01.jpg', 288, '0');
INSERT INTO `product_photo` VALUES (470, '15926264713-01.jpg', 288, '0');
INSERT INTO `product_photo` VALUES (471, '15926264714-01.jpg', 288, '0');
INSERT INTO `product_photo` VALUES (472, '15926264725-01.jpg', 288, '0');
INSERT INTO `product_photo` VALUES (473, '15926264726-01.jpg', 288, '0');
INSERT INTO `product_photo` VALUES (474, '15926268511-01.jpg', 289, '1');
INSERT INTO `product_photo` VALUES (475, '15926268512-01.jpg', 289, '0');
INSERT INTO `product_photo` VALUES (476, '15926268523-01.jpg', 289, '0');
INSERT INTO `product_photo` VALUES (477, '15926268524-01.jpg', 289, '0');
INSERT INTO `product_photo` VALUES (478, '15926268525-01.jpg', 289, '0');
INSERT INTO `product_photo` VALUES (479, '15926276911-01.jpg', 290, '1');
INSERT INTO `product_photo` VALUES (480, '15926276912-01.jpg', 290, '0');
INSERT INTO `product_photo` VALUES (481, '15926276913-01.jpg', 290, '0');
INSERT INTO `product_photo` VALUES (482, '15926276914-01.jpg', 290, '0');
INSERT INTO `product_photo` VALUES (483, '15926276925-01.jpg', 290, '0');
INSERT INTO `product_photo` VALUES (484, '15926279681-01.jpg', 291, '1');
INSERT INTO `product_photo` VALUES (485, '15926279692-01.jpg', 291, '0');
INSERT INTO `product_photo` VALUES (486, '15926279693-01.jpg', 291, '0');
INSERT INTO `product_photo` VALUES (487, '15926279694-01.jpg', 291, '0');
INSERT INTO `product_photo` VALUES (488, '1592628111BOSCHWAN2416EPL-01.jpg', 292, '1');
INSERT INTO `product_photo` VALUES (489, '15926283531-01.jpg', 293, '1');
INSERT INTO `product_photo` VALUES (490, '15926283532-01.jpg', 293, '0');
INSERT INTO `product_photo` VALUES (491, '15926283533-01.jpg', 293, '0');
INSERT INTO `product_photo` VALUES (492, '15926288451-01.jpg', 294, '1');
INSERT INTO `product_photo` VALUES (493, '15926288452-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (494, '15926288463-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (495, '15926288464-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (496, '15926288465-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (497, '15926288466-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (498, '15926288467-01.jpg', 294, '0');
INSERT INTO `product_photo` VALUES (499, '15926291561-01.jpg', 295, '1');
INSERT INTO `product_photo` VALUES (500, '15926291562-01.jpg', 295, '0');
INSERT INTO `product_photo` VALUES (501, '15926291563-01.jpg', 295, '0');
INSERT INTO `product_photo` VALUES (502, '15926291574-01.jpg', 295, '0');
INSERT INTO `product_photo` VALUES (503, '15926291575-01.jpg', 295, '0');
INSERT INTO `product_photo` VALUES (504, '15926296554-01.jpg', 296, '1');
INSERT INTO `product_photo` VALUES (505, '15926296551-01.jpg', 296, '0');
INSERT INTO `product_photo` VALUES (506, '15926296552-01.jpg', 296, '0');
INSERT INTO `product_photo` VALUES (507, '15926296553-01.jpg', 296, '0');
INSERT INTO `product_photo` VALUES (508, '15926296565-01.jpg', 296, '0');
INSERT INTO `product_photo` VALUES (509, '15926319885-01.jpg', 297, '1');
INSERT INTO `product_photo` VALUES (510, '15926319881-01.jpg', 297, '0');
INSERT INTO `product_photo` VALUES (511, '15926319882-01.jpg', 297, '0');
INSERT INTO `product_photo` VALUES (512, '15926319883-01.jpg', 297, '0');
INSERT INTO `product_photo` VALUES (513, '15926319884-01.jpg', 297, '0');
INSERT INTO `product_photo` VALUES (514, '15926319886-01.jpg', 297, '0');
INSERT INTO `product_photo` VALUES (515, '15926322431-01.jpg', 298, '1');
INSERT INTO `product_photo` VALUES (516, '15926322432-01.jpg', 298, '0');
INSERT INTO `product_photo` VALUES (517, '15926322433-01.jpg', 298, '0');
INSERT INTO `product_photo` VALUES (518, '15926322434-01.jpg', 298, '0');
INSERT INTO `product_photo` VALUES (519, '15926327726-01.jpg', 299, '1');
INSERT INTO `product_photo` VALUES (520, '15926327721-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (521, '15926327722-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (522, '15926327733-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (523, '15926327734-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (524, '15926327735-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (525, '15926327737-01.jpg', 299, '0');
INSERT INTO `product_photo` VALUES (526, '15926331675-01.jpg', 300, '1');
INSERT INTO `product_photo` VALUES (527, '15926331682-01.jpg', 300, '0');
INSERT INTO `product_photo` VALUES (528, '15926331681-01.jpg', 300, '0');
INSERT INTO `product_photo` VALUES (529, '15926331683-01.jpg', 300, '0');
INSERT INTO `product_photo` VALUES (530, '15926331684-01.jpg', 300, '0');
INSERT INTO `product_photo` VALUES (531, '15926331686-01.jpg', 300, '0');
INSERT INTO `product_photo` VALUES (532, '15926335967-01.jpg', 301, '1');
INSERT INTO `product_photo` VALUES (533, '15926335971-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (534, '15926335972-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (535, '15926335973-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (536, '15926335974-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (537, '15926335975-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (538, '15926335976-01.jpg', 301, '0');
INSERT INTO `product_photo` VALUES (539, '15926340721-01.jpg', 302, '1');
INSERT INTO `product_photo` VALUES (540, '15926340722-01.jpg', 302, '0');
INSERT INTO `product_photo` VALUES (541, '15926340723-01.jpg', 302, '0');
INSERT INTO `product_photo` VALUES (542, '15926340724-01.jpg', 302, '0');
INSERT INTO `product_photo` VALUES (543, '15926340735-01.jpg', 302, '0');
INSERT INTO `product_photo` VALUES (544, '15926340736-01.jpg', 302, '0');
INSERT INTO `product_photo` VALUES (545, '1592634451BOSCHSMI 40 M 65-01.jpg', 303, '1');
INSERT INTO `product_photo` VALUES (546, '1592634651BOSCHSMI69N45-01.jpg', 304, '1');
INSERT INTO `product_photo` VALUES (547, '1592634924BOSCHSPI 53M55-01.jpg', 305, '1');
INSERT INTO `product_photo` VALUES (548, '15926351672-01.jpg', 306, '1');
INSERT INTO `product_photo` VALUES (549, '15926351671-01.jpg', 306, '0');
INSERT INTO `product_photo` VALUES (550, '15926351673-01.jpg', 306, '0');
INSERT INTO `product_photo` VALUES (551, '15926354903-01.jpg', 307, '1');
INSERT INTO `product_photo` VALUES (552, '15926354901-01.jpg', 307, '0');
INSERT INTO `product_photo` VALUES (553, '15926354902-01.jpg', 307, '0');
INSERT INTO `product_photo` VALUES (554, '15926354914-01.jpg', 307, '0');
INSERT INTO `product_photo` VALUES (555, '15926357632-01.jpg', 308, '1');
INSERT INTO `product_photo` VALUES (556, '15926357631-01.jpg', 308, '0');
INSERT INTO `product_photo` VALUES (557, '15926357643-01.jpg', 308, '0');
INSERT INTO `product_photo` VALUES (558, '15926360201-01.jpg', 309, '1');
INSERT INTO `product_photo` VALUES (559, '15926360202-01.jpg', 309, '0');
INSERT INTO `product_photo` VALUES (560, '15926364291-01.jpg', 310, '1');
INSERT INTO `product_photo` VALUES (561, '15926364292-01.jpg', 310, '0');
INSERT INTO `product_photo` VALUES (562, '15926364293-01.jpg', 310, '0');
INSERT INTO `product_photo` VALUES (563, '15926364294-01.jpg', 310, '0');
INSERT INTO `product_photo` VALUES (564, '15926370531-01.jpg', 311, '1');
INSERT INTO `product_photo` VALUES (565, '15926370532-01.jpg', 311, '0');
INSERT INTO `product_photo` VALUES (566, '15926370533-01.jpg', 311, '0');
INSERT INTO `product_photo` VALUES (567, '15926370534-01.jpg', 311, '0');
INSERT INTO `product_photo` VALUES (568, '15926373594-01.jpg', 312, '1');
INSERT INTO `product_photo` VALUES (569, '15926373591-01.jpg', 312, '0');
INSERT INTO `product_photo` VALUES (570, '15926373592-01.jpg', 312, '0');
INSERT INTO `product_photo` VALUES (571, '15926373593-01.jpg', 312, '0');
INSERT INTO `product_photo` VALUES (572, '15926377761-01.jpg', 313, '1');
INSERT INTO `product_photo` VALUES (573, '15926377762-01.jpg', 313, '0');
INSERT INTO `product_photo` VALUES (574, '15926377763-01.jpg', 313, '0');
INSERT INTO `product_photo` VALUES (575, '15926377774-01.jpg', 313, '0');
INSERT INTO `product_photo` VALUES (576, '15926377775-01.jpg', 313, '0');
INSERT INTO `product_photo` VALUES (577, '1592637865BOSCHKIN86KF 31-01.jpg', 314, '1');
INSERT INTO `product_photo` VALUES (578, '15926397924-01.jpg', 315, '1');
INSERT INTO `product_photo` VALUES (579, '15926397921-01.jpg', 315, '0');
INSERT INTO `product_photo` VALUES (580, '15926397922-01.jpg', 315, '0');
INSERT INTO `product_photo` VALUES (581, '15926397923-01.jpg', 315, '0');
INSERT INTO `product_photo` VALUES (584, '1592640399BOSCHBSGL5PRO 5-01.jpg', 318, '1');
INSERT INTO `product_photo` VALUES (585, '15926408304-01.jpg', 319, '1');
INSERT INTO `product_photo` VALUES (586, '1592640831BOSCHBGS2UPWER1-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (587, '15926408312-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (588, '15926408313-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (589, '15926408315-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (590, '15926408316-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (591, '15926408317-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (592, '15926408328-01.jpg', 319, '0');
INSERT INTO `product_photo` VALUES (593, '15926413174-01.jpg', 320, '1');
INSERT INTO `product_photo` VALUES (594, '15926413172-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (595, '15926413183-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (596, '15926413186-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (597, '15926413185-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (598, '15926413187-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (599, '15926413188-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (600, '1592641319BOSCHBGS2UPWER1-01.jpg', 320, '0');
INSERT INTO `product_photo` VALUES (601, '1592641736BOSCHTDN1700P-01.jpg', 321, '1');
INSERT INTO `product_photo` VALUES (602, '1592642243BOSCHTDA1024110-01.jpg', 322, '1');
INSERT INTO `product_photo` VALUES (603, '15926422432-01.jpg', 322, '0');
INSERT INTO `product_photo` VALUES (604, '15926422433-01.jpg', 322, '0');
INSERT INTO `product_photo` VALUES (605, '15926422434-01.jpg', 322, '0');
INSERT INTO `product_photo` VALUES (606, '15926422435-01.jpg', 322, '0');
INSERT INTO `product_photo` VALUES (607, '1592642589BOSCHTDA2630-01.jpg', 323, '1');
INSERT INTO `product_photo` VALUES (608, '15926425892-01.jpg', 323, '0');
INSERT INTO `product_photo` VALUES (609, '15926425893-01.jpg', 323, '0');
INSERT INTO `product_photo` VALUES (610, '1592642754BOSCHTDA2365-01.jpg', 324, '1');
INSERT INTO `product_photo` VALUES (611, '15926431172-01.jpg', 325, '1');
INSERT INTO `product_photo` VALUES (612, '15926431183-01.jpg', 325, '0');
INSERT INTO `product_photo` VALUES (613, '15926431184-01.jpg', 325, '0');
INSERT INTO `product_photo` VALUES (614, '1592643118BOSCHTDA3026110-01.jpg', 325, '0');
INSERT INTO `product_photo` VALUES (615, '1592643232BOSCHTDA2620-01.jpg', 326, '1');
INSERT INTO `product_photo` VALUES (616, '1592643528BOSCHTDA102411C-01.jpg', 327, '1');
INSERT INTO `product_photo` VALUES (617, '15926435282-01.jpg', 327, '0');
INSERT INTO `product_photo` VALUES (618, '15926435283-01.jpg', 327, '0');
INSERT INTO `product_photo` VALUES (619, '15926435284-01.jpg', 327, '0');
INSERT INTO `product_photo` VALUES (620, '15926435295-01.jpg', 327, '0');
INSERT INTO `product_photo` VALUES (621, '1592644165BOSCHTDA46MOVE 5-01.jpg', 328, '1');
INSERT INTO `product_photo` VALUES (622, '15926530823-01.jpg', 329, '1');
INSERT INTO `product_photo` VALUES (623, '15926530832-01.jpg', 329, '0');
INSERT INTO `product_photo` VALUES (624, '15926530831-01.jpg', 329, '0');
INSERT INTO `product_photo` VALUES (625, '15926533441-01.jpg', 330, '1');
INSERT INTO `product_photo` VALUES (626, '15926533442-01.jpg', 330, '0');
INSERT INTO `product_photo` VALUES (627, '15926533443-01.jpg', 330, '0');
INSERT INTO `product_photo` VALUES (628, '15926536584-01.jpg', 331, '1');
INSERT INTO `product_photo` VALUES (629, '15926536581-01.jpg', 331, '0');
INSERT INTO `product_photo` VALUES (630, '15926536582-01.jpg', 331, '0');
INSERT INTO `product_photo` VALUES (631, '15926536593-01.jpg', 331, '0');
INSERT INTO `product_photo` VALUES (632, '15926545731-01.jpg', 332, '1');
INSERT INTO `product_photo` VALUES (633, '15926545732-01.jpg', 332, '0');
INSERT INTO `product_photo` VALUES (634, '15926545743-01.jpg', 332, '0');
INSERT INTO `product_photo` VALUES (635, '1592654574Shablon (1)-01.jpg', 332, '0');
INSERT INTO `product_photo` VALUES (636, '15926549642-01.jpg', 333, '1');
INSERT INTO `product_photo` VALUES (637, '15926549641-01.jpg', 333, '0');
INSERT INTO `product_photo` VALUES (638, '15926549643-01.jpg', 333, '0');
INSERT INTO `product_photo` VALUES (639, '15926549644-01.jpg', 333, '0');
INSERT INTO `product_photo` VALUES (640, '15926563474-01.jpg', 334, '1');
INSERT INTO `product_photo` VALUES (641, '15926563471-01.jpg', 334, '0');
INSERT INTO `product_photo` VALUES (642, '15926563472-01.jpg', 334, '0');
INSERT INTO `product_photo` VALUES (643, '15926563483-01.jpg', 334, '0');
INSERT INTO `product_photo` VALUES (644, '15926566443-01.jpg', 335, '1');
INSERT INTO `product_photo` VALUES (645, '15926566441-01.jpg', 335, '0');
INSERT INTO `product_photo` VALUES (646, '15926566442-01.jpg', 335, '0');
INSERT INTO `product_photo` VALUES (647, '15926566444-01.jpg', 335, '0');
INSERT INTO `product_photo` VALUES (649, '1592812379download.jpg', 338, '1');
INSERT INTO `product_photo` VALUES (650, '1592813160movcud_proq.jpg', 339, '1');
INSERT INTO `product_photo` VALUES (652, '15929012851-01.jpg', 340, '1');
INSERT INTO `product_photo` VALUES (653, '15929012852-01.jpg', 340, '0');
INSERT INTO `product_photo` VALUES (654, '15929012853-01.jpg', 340, '0');
INSERT INTO `product_photo` VALUES (655, '15929012854-01.jpg', 340, '0');
INSERT INTO `product_photo` VALUES (656, '15929016903-01.jpg', 341, '1');
INSERT INTO `product_photo` VALUES (657, '15929016901-01.jpg', 341, '0');
INSERT INTO `product_photo` VALUES (658, '15929016912-01.jpg', 341, '0');
INSERT INTO `product_photo` VALUES (659, '15929016914-01.jpg', 341, '0');
INSERT INTO `product_photo` VALUES (660, '15929021781-01.jpg', 342, '1');
INSERT INTO `product_photo` VALUES (661, '15929021782-01.jpg', 342, '0');
INSERT INTO `product_photo` VALUES (662, '15929021783-01.jpg', 342, '0');
INSERT INTO `product_photo` VALUES (663, '15929021784-01.jpg', 342, '0');
INSERT INTO `product_photo` VALUES (664, '15929021785-01.jpg', 342, '0');
INSERT INTO `product_photo` VALUES (665, '15929021796-01.jpg', 342, '0');
INSERT INTO `product_photo` VALUES (666, '15929027373-01.jpg', 343, '1');
INSERT INTO `product_photo` VALUES (667, '15929027371-01.jpg', 343, '0');
INSERT INTO `product_photo` VALUES (668, '15929027372-01.jpg', 343, '0');
INSERT INTO `product_photo` VALUES (669, '15929027384-01.jpg', 343, '0');
INSERT INTO `product_photo` VALUES (670, '15929027385-01.jpg', 343, '0');
INSERT INTO `product_photo` VALUES (671, '15929029891-01.jpg', 344, '1');
INSERT INTO `product_photo` VALUES (672, '15929029892-01.jpg', 344, '0');
INSERT INTO `product_photo` VALUES (673, '15929033011-01.jpg', 345, '0');
INSERT INTO `product_photo` VALUES (674, '15929033012-01.jpg', 345, '0');
INSERT INTO `product_photo` VALUES (675, '15929033013-01.jpg', 345, '0');
INSERT INTO `product_photo` VALUES (676, '1592903301Shablon (1)-01.jpg', 345, '1');
INSERT INTO `product_photo` VALUES (677, '15929035461-01.jpg', 346, '1');
INSERT INTO `product_photo` VALUES (678, '15929036961-01.jpg', 347, '1');
INSERT INTO `product_photo` VALUES (679, '15929039411-01.jpg', 348, '1');
INSERT INTO `product_photo` VALUES (680, '15929135402-01.jpg', 349, '1');
INSERT INTO `product_photo` VALUES (681, '15929135401-01.jpg', 349, '0');
INSERT INTO `product_photo` VALUES (682, '15929135403-01.jpg', 349, '0');
INSERT INTO `product_photo` VALUES (683, '15929138283-01.jpg', 350, '1');
INSERT INTO `product_photo` VALUES (684, '15929138281-01.jpg', 350, '0');
INSERT INTO `product_photo` VALUES (685, '15929138282-01.jpg', 350, '0');
INSERT INTO `product_photo` VALUES (686, '15929138284-01.jpg', 350, '0');
INSERT INTO `product_photo` VALUES (687, '15929142002-01.jpg', 351, '1');
INSERT INTO `product_photo` VALUES (688, '15929142001-01.jpg', 351, '0');
INSERT INTO `product_photo` VALUES (689, '15929142003-01.jpg', 351, '0');
INSERT INTO `product_photo` VALUES (690, '15929142004-01.jpg', 351, '0');
INSERT INTO `product_photo` VALUES (691, '15929142015-01.jpg', 351, '0');
INSERT INTO `product_photo` VALUES (692, '15929145454-01.jpg', 352, '1');
INSERT INTO `product_photo` VALUES (693, '15929145463-01.jpg', 352, '0');
INSERT INTO `product_photo` VALUES (694, '15929145462-01.jpg', 352, '0');
INSERT INTO `product_photo` VALUES (695, '15929145461-01.jpg', 352, '0');
INSERT INTO `product_photo` VALUES (696, '15929148841-01.jpg', 353, '1');
INSERT INTO `product_photo` VALUES (697, '15929148852-01.jpg', 353, '0');
INSERT INTO `product_photo` VALUES (698, '15929148853-01.jpg', 353, '0');
INSERT INTO `product_photo` VALUES (699, '15929148854-01.jpg', 353, '0');
INSERT INTO `product_photo` VALUES (700, '15929156185-01.jpg', 354, '1');
INSERT INTO `product_photo` VALUES (701, '15929156181-01.jpg', 354, '0');
INSERT INTO `product_photo` VALUES (702, '15929156192-01.jpg', 354, '0');
INSERT INTO `product_photo` VALUES (703, '15929156193-01.jpg', 354, '0');
INSERT INTO `product_photo` VALUES (704, '15929156194-01.jpg', 354, '0');
INSERT INTO `product_photo` VALUES (705, '15929156196-01.jpg', 354, '0');
INSERT INTO `product_photo` VALUES (706, '15929162942-01.jpg', 355, '1');
INSERT INTO `product_photo` VALUES (707, '15929162941-01.jpg', 355, '0');
INSERT INTO `product_photo` VALUES (708, '15929162943-01.jpg', 355, '0');
INSERT INTO `product_photo` VALUES (709, '15929162944-01.jpg', 355, '0');
INSERT INTO `product_photo` VALUES (710, '15929162945-01.jpg', 355, '0');
INSERT INTO `product_photo` VALUES (711, '1592916598SIEMIENSHB534AERO-01.jpg', 356, '1');
INSERT INTO `product_photo` VALUES (712, '1592916929SIEMIENSEC645PB90E1-01.jpg', 357, '1');
INSERT INTO `product_photo` VALUES (713, '15929175652-01.jpg', 358, '1');
INSERT INTO `product_photo` VALUES (714, '15929175653-01.jpg', 358, '0');
INSERT INTO `product_photo` VALUES (715, '15929175654-01.jpg', 358, '0');
INSERT INTO `product_photo` VALUES (716, '15929175655-01.jpg', 358, '0');
INSERT INTO `product_photo` VALUES (717, '1592917566SIEMIENSEP6A6PB20-01.jpg', 358, '0');
INSERT INTO `product_photo` VALUES (718, '15929180362-01.jpg', 359, '1');
INSERT INTO `product_photo` VALUES (719, '15929180373-01.jpg', 359, '0');
INSERT INTO `product_photo` VALUES (720, '15929180374-01.jpg', 359, '0');
INSERT INTO `product_photo` VALUES (721, '15929180375-01.jpg', 359, '0');
INSERT INTO `product_photo` VALUES (722, '1592918037EC 7A5RB90-01.jpg', 359, '0');
INSERT INTO `product_photo` VALUES (723, '15929183562-01.jpg', 360, '1');
INSERT INTO `product_photo` VALUES (724, '15929183571-01.jpg', 360, '0');
INSERT INTO `product_photo` VALUES (725, '1592918545AMICAFM104.4-01.jpg', 361, '1');
INSERT INTO `product_photo` VALUES (726, '15929222834-01.jpg', 362, '1');
INSERT INTO `product_photo` VALUES (727, '15929222831-01.jpg', 362, '0');
INSERT INTO `product_photo` VALUES (728, '15929222832-01.jpg', 362, '0');
INSERT INTO `product_photo` VALUES (729, '15929222833-01.jpg', 362, '0');
INSERT INTO `product_photo` VALUES (730, '15929222845-01.jpg', 362, '0');
INSERT INTO `product_photo` VALUES (731, '15929222846-01.jpg', 362, '0');
INSERT INTO `product_photo` VALUES (732, '15929232851-01.jpg', 363, '1');
INSERT INTO `product_photo` VALUES (733, '15929232862-01.jpg', 363, '0');
INSERT INTO `product_photo` VALUES (734, '15929232863-01.jpg', 363, '0');
INSERT INTO `product_photo` VALUES (735, '15929236235-01.jpg', 364, '1');
INSERT INTO `product_photo` VALUES (736, '15929236231-01.jpg', 364, '0');
INSERT INTO `product_photo` VALUES (737, '15929236232-01.jpg', 364, '0');
INSERT INTO `product_photo` VALUES (738, '15929236233-01.jpg', 364, '0');
INSERT INTO `product_photo` VALUES (739, '15929236234-01.jpg', 364, '0');
INSERT INTO `product_photo` VALUES (740, '15929781351-01.jpg', 365, '1');
INSERT INTO `product_photo` VALUES (741, '15929781352-01.jpg', 365, '0');
INSERT INTO `product_photo` VALUES (742, '1592978375CATAVI59087-01.jpg', 366, '1');
INSERT INTO `product_photo` VALUES (743, '1592978708HAIERAFD626TGB-01.jpg', 367, '1');
INSERT INTO `product_photo` VALUES (744, '1592983787HITACHIR-W660PUC7GBK-01.jpg', 368, '1');
INSERT INTO `product_photo` VALUES (745, '1592983973HITACHIR-W660PUC7GPW-01.jpg', 369, '1');
INSERT INTO `product_photo` VALUES (746, '15929842982-01.jpg', 370, '1');
INSERT INTO `product_photo` VALUES (747, '1592984298HITACHIR-V540PUC7BBK-01.jpg', 370, '0');
INSERT INTO `product_photo` VALUES (748, '1592984437HITACHIR-VG540PUC7GBK-01.jpg', 371, '1');
INSERT INTO `product_photo` VALUES (749, '1592984592HITACHIR-W 720PUC1GBK-01.jpg', 372, '1');
INSERT INTO `product_photo` VALUES (750, '15929848262-01.jpg', 373, '1');
INSERT INTO `product_photo` VALUES (751, '15929848261-01.jpg', 373, '0');
INSERT INTO `product_photo` VALUES (752, '15929850401-01.jpg', 374, '1');
INSERT INTO `product_photo` VALUES (753, '15929850402-01.jpg', 374, '0');
INSERT INTO `product_photo` VALUES (754, '15929853932-01.jpg', 375, '1');
INSERT INTO `product_photo` VALUES (755, '15929853931-01.jpg', 375, '0');
INSERT INTO `product_photo` VALUES (756, '1592985591HITACHIR-V 540PUC7BSL-01.jpg', 376, '1');
INSERT INTO `product_photo` VALUES (757, '1592985722HITACHIR-V660PUC7BSL-01.jpg', 377, '1');
INSERT INTO `product_photo` VALUES (758, '15929860992-01.jpg', 378, '1');
INSERT INTO `product_photo` VALUES (759, '15929861001-01.jpg', 378, '0');
INSERT INTO `product_photo` VALUES (760, '1592986270HITACHIR-VG660PUC7GBK-01.jpg', 379, '1');
INSERT INTO `product_photo` VALUES (761, '1592986484HITACHIR-VG660PUC7GPW-01.jpg', 380, '1');
INSERT INTO `product_photo` VALUES (762, '15929867831-01.jpg', 381, '1');
INSERT INTO `product_photo` VALUES (763, '15929867832-01.jpg', 381, '0');
INSERT INTO `product_photo` VALUES (764, '15929872371-01.jpg', 382, '1');
INSERT INTO `product_photo` VALUES (765, '15929872382-01.jpg', 382, '0');
INSERT INTO `product_photo` VALUES (766, '15929872383-01.jpg', 382, '0');
INSERT INTO `product_photo` VALUES (767, '15929872384-01.jpg', 382, '0');
INSERT INTO `product_photo` VALUES (768, '15929872385-01.jpg', 382, '0');
INSERT INTO `product_photo` VALUES (769, '15929876412-01.jpg', 383, '1');
INSERT INTO `product_photo` VALUES (770, '15929876411-01.jpg', 383, '0');
INSERT INTO `product_photo` VALUES (771, '1592987793HITACHIR-V660PUC7BEG-01.jpg', 384, '1');
INSERT INTO `product_photo` VALUES (772, '1592988302HOTPOINTBF1801EFAA-01.jpg', 385, '1');
INSERT INTO `product_photo` VALUES (773, '1592988463HOTPOINTBS1801AA-01.jpg', 386, '1');
INSERT INTO `product_photo` VALUES (774, '1592988600HOTPOINTBFS121-01.jpg', 387, '1');
INSERT INTO `product_photo` VALUES (775, '15929889874-01.jpg', 388, '1');
INSERT INTO `product_photo` VALUES (776, '15929889871-01.jpg', 388, '0');
INSERT INTO `product_photo` VALUES (777, '15929889872-01.jpg', 388, '0');
INSERT INTO `product_photo` VALUES (778, '15929889883-01.jpg', 388, '0');
INSERT INTO `product_photo` VALUES (779, '15929889885-01.jpg', 388, '0');
INSERT INTO `product_photo` VALUES (780, '15929892001-01.jpg', 389, '1');
INSERT INTO `product_photo` VALUES (781, '15929892002-01.jpg', 389, '0');
INSERT INTO `product_photo` VALUES (782, '15929893871-01.jpg', 390, '1');
INSERT INTO `product_photo` VALUES (783, '15929893872-01.jpg', 390, '0');
INSERT INTO `product_photo` VALUES (784, '15929895591-01.jpg', 391, '1');
INSERT INTO `product_photo` VALUES (785, '15929895592-01.jpg', 391, '0');
INSERT INTO `product_photo` VALUES (786, '15929897971-01.jpg', 392, '1');
INSERT INTO `product_photo` VALUES (787, '15929897972-01.jpg', 392, '0');
INSERT INTO `product_photo` VALUES (788, '15929901881-01.jpg', 393, '1');
INSERT INTO `product_photo` VALUES (789, '15929901882-01.jpg', 393, '0');
INSERT INTO `product_photo` VALUES (790, '1592990452MPM117CW46-01.jpg', 394, '1');
INSERT INTO `product_photo` VALUES (791, '1592990620NODORV41B-01.jpg', 395, '1');
INSERT INTO `product_photo` VALUES (792, '15929909381-01.jpg', 396, '1');
INSERT INTO `product_photo` VALUES (793, '15929909382-01.jpg', 396, '0');
INSERT INTO `product_photo` VALUES (794, '15929912993-01.jpg', 397, '1');
INSERT INTO `product_photo` VALUES (795, '15929912991-01.jpg', 397, '0');
INSERT INTO `product_photo` VALUES (796, '15929912992-01.jpg', 397, '0');
INSERT INTO `product_photo` VALUES (797, '15929912994-01.jpg', 397, '0');
INSERT INTO `product_photo` VALUES (798, '1592991572SHARPSJXG690MSL-01.jpg', 398, '1');
INSERT INTO `product_photo` VALUES (799, '1592992060SHARPSJXG640MBE-01.jpg', 399, '1');
INSERT INTO `product_photo` VALUES (800, '15929922832-01.jpg', 400, '1');
INSERT INTO `product_photo` VALUES (801, '15929922831-01.jpg', 400, '0');
INSERT INTO `product_photo` VALUES (802, '15929922833-01.jpg', 400, '0');
INSERT INTO `product_photo` VALUES (803, '15929928161-01.jpg', 401, '1');
INSERT INTO `product_photo` VALUES (804, '15929928162-01.jpg', 401, '0');
INSERT INTO `product_photo` VALUES (805, '1592993011SHARPSJXE680MBE-01.jpg', 402, '1');
INSERT INTO `product_photo` VALUES (806, '15929931871-01.jpg', 403, '1');
INSERT INTO `product_photo` VALUES (807, '15929931882-01.jpg', 403, '0');
INSERT INTO `product_photo` VALUES (808, '15929933781-01.jpg', 404, '1');
INSERT INTO `product_photo` VALUES (809, '15929933782-01.jpg', 404, '0');
INSERT INTO `product_photo` VALUES (810, '1592993540SMEGFQ60CPO-01.jpg', 405, '1');
INSERT INTO `product_photo` VALUES (811, '15929937751-01.jpg', 406, '1');
INSERT INTO `product_photo` VALUES (812, '15929937752-01.jpg', 406, '0');
INSERT INTO `product_photo` VALUES (813, '15929937763-01.jpg', 406, '0');
INSERT INTO `product_photo` VALUES (814, '1592993917SMEGFA8003P-01.jpg', 407, '1');
INSERT INTO `product_photo` VALUES (815, '15929941821-01.jpg', 408, '1');
INSERT INTO `product_photo` VALUES (816, '15929941822-01.jpg', 408, '0');
INSERT INTO `product_photo` VALUES (817, '1592994368WHIRLPOOLART880-01.jpg', 409, '1');
INSERT INTO `product_photo` VALUES (818, '1592998719WHIRLPOOLART9812-01.jpg', 410, '1');
INSERT INTO `product_photo` VALUES (819, '1592999543WHIRLPOOLSP40801-01.jpg', 411, '1');
INSERT INTO `product_photo` VALUES (820, '1592999937WHIRLPOOLAND231BK-01.jpg', 412, '1');
INSERT INTO `product_photo` VALUES (821, '15930006411-01.jpg', 413, '1');
INSERT INTO `product_photo` VALUES (822, '15930006412-01.jpg', 413, '0');
INSERT INTO `product_photo` VALUES (823, '1593001330Shablon (1)-01.jpg', 414, '1');
INSERT INTO `product_photo` VALUES (824, '15930013302-01.jpg', 414, '0');
INSERT INTO `product_photo` VALUES (825, '15930015282-01.jpg', 415, '1');
INSERT INTO `product_photo` VALUES (826, '15930015281-01.jpg', 415, '0');
INSERT INTO `product_photo` VALUES (827, '15930015293-01.jpg', 415, '0');
INSERT INTO `product_photo` VALUES (828, '15930018351B90M5AVO-01.jpg', 416, '1');
INSERT INTO `product_photo` VALUES (829, '15930020461PLB5-01.jpg', 417, '1');
INSERT INTO `product_photo` VALUES (830, '15930022451POF90-01.jpg', 418, '1');
INSERT INTO `product_photo` VALUES (831, '15930714364-01.jpg', 419, '1');
INSERT INTO `product_photo` VALUES (832, '15930714361-01.jpg', 419, '0');
INSERT INTO `product_photo` VALUES (833, '15930714362-01.jpg', 419, '0');
INSERT INTO `product_photo` VALUES (834, '15930714373-01.jpg', 419, '0');
INSERT INTO `product_photo` VALUES (835, '15930714375-01.jpg', 419, '0');
INSERT INTO `product_photo` VALUES (836, '1593071587CATAANTARES600ABK-01.jpg', 420, '1');
INSERT INTO `product_photo` VALUES (837, '1593071754CATAATLAS90WH-01.jpg', 421, '1');
INSERT INTO `product_photo` VALUES (838, '1593072120CATAAURA90BK-01.jpg', 422, '1');
INSERT INTO `product_photo` VALUES (839, '1593072353CATABRISAWH-01.jpg', 423, '1');
INSERT INTO `product_photo` VALUES (840, '1593168420CATACLASSICA60BK-01.jpg', 424, '1');
INSERT INTO `product_photo` VALUES (841, '1593171601CATACLASSICA90BK-01.jpg', 425, '1');
INSERT INTO `product_photo` VALUES (842, '1593171884CATADALIA90BK-01.jpg', 426, '1');
INSERT INTO `product_photo` VALUES (843, '1593172548CATAFAROISLA-01.jpg', 427, '1');
INSERT INTO `product_photo` VALUES (844, '1593173470CATAGCDUAL75 BK-01.jpg', 428, '1');
INSERT INTO `product_photo` VALUES (845, '1593173747CATAGC DUAL75WH-01.jpg', 429, '1');
INSERT INTO `product_photo` VALUES (846, '1593174482CATAGL45-01.jpg', 430, '1');
INSERT INTO `product_photo` VALUES (847, '1593174874CATAGOYA90BK-01.jpg', 431, '1');
INSERT INTO `product_photo` VALUES (848, '1593175352CATAGRH900-01.jpg', 432, '1');
INSERT INTO `product_photo` VALUES (850, '1593176034CATAGRH900BK-01.jpg', 434, '1');
INSERT INTO `product_photo` VALUES (851, '1593177338CATAGT PLUS45BK-01.jpg', 435, '1');
INSERT INTO `product_photo` VALUES (852, '1593193875CATAGT PLUS45X-01.jpg', 436, '1');
INSERT INTO `product_photo` VALUES (853, '1593195314CATAGT PLUS75INOX-01.jpg', 437, '1');
INSERT INTO `product_photo` VALUES (854, '1593195615CATALEGENDA900XGBK-01.jpg', 438, '1');
INSERT INTO `product_photo` VALUES (855, '1593196188CATAMELINABKISLA-01.jpg', 439, '1');
INSERT INTO `product_photo` VALUES (856, '1593197305CATANUEVAOMEGA60INOX-01.jpg', 440, '1');
INSERT INTO `product_photo` VALUES (857, '1593198453CATAP3290INOX-01.jpg', 441, '1');
INSERT INTO `product_photo` VALUES (858, '1593233864CATAPV L3BL900INOX-01.jpg', 442, '1');
INSERT INTO `product_photo` VALUES (859, '15932342071-01.jpg', 443, '1');
INSERT INTO `product_photo` VALUES (860, '15932342072-01.jpg', 443, '0');
INSERT INTO `product_photo` VALUES (861, '15932342083-01.jpg', 443, '0');
INSERT INTO `product_photo` VALUES (862, '1593234530CATASELENA90ISLA-01.jpg', 444, '1');
INSERT INTO `product_photo` VALUES (863, '1593234820CATASELENE600IX-01.jpg', 445, '1');
INSERT INTO `product_photo` VALUES (864, '1593235212CATASELENE900INOX-01.jpg', 446, '1');
INSERT INTO `product_photo` VALUES (865, '1593235412CATASPLUS600X-01.jpg', 447, '1');
INSERT INTO `product_photo` VALUES (866, '1593235642CATASYGMA700-01.jpg', 448, '1');
INSERT INTO `product_photo` VALUES (867, '1593235895CATASYGMAVL3700B-01.jpg', 449, '1');
INSERT INTO `product_photo` VALUES (868, '1593236116CATATF200360BK-01.jpg', 450, '1');
INSERT INTO `product_photo` VALUES (869, '1593247646CATATF200360WH-01.jpg', 451, '1');
INSERT INTO `product_photo` VALUES (870, '1593247911CATATF200370-01.jpg', 452, '1');
INSERT INTO `product_photo` VALUES (871, '1593248190CATATF5260IX-01.jpg', 453, '1');
INSERT INTO `product_photo` VALUES (872, '1593248841CATATHALASSA60BK-01.jpg', 454, '1');
INSERT INTO `product_photo` VALUES (873, '1593249096CATATHALASSA60WH-01.jpg', 455, '1');
INSERT INTO `product_photo` VALUES (874, '1593249294CATATHALASSA90BK-01.jpg', 456, '1');
INSERT INTO `product_photo` VALUES (875, '1593249530CATATHALASSA90SD-01.jpg', 457, '1');
INSERT INTO `product_photo` VALUES (876, '1593249681CATATHALASSA90WH-01.jpg', 458, '1');
INSERT INTO `product_photo` VALUES (877, '15932509195-01.jpg', 459, '1');
INSERT INTO `product_photo` VALUES (878, '15932509192-01.jpg', 459, '0');
INSERT INTO `product_photo` VALUES (879, '15932509191-01.jpg', 459, '0');
INSERT INTO `product_photo` VALUES (880, '1593251489CATAFS20IX-01.jpg', 460, '1');
INSERT INTO `product_photo` VALUES (881, '1593251827CATAMC20D-01.jpg', 461, '1');
INSERT INTO `product_photo` VALUES (882, '1593252225CATAMC25D-01.jpg', 462, '1');
INSERT INTO `product_photo` VALUES (883, '1593252817CATAMC28DBK-01.jpg', 463, '1');
INSERT INTO `product_photo` VALUES (884, '1593252896CATAMC28DBK-01.jpg', 464, '1');
INSERT INTO `product_photo` VALUES (885, '1593252959CATAMC28DWH-01.jpg', 465, '1');
INSERT INTO `product_photo` VALUES (886, '1593253343CATAMC32DC-01.jpg', 466, '1');
INSERT INTO `product_photo` VALUES (887, '1593256444CATACM760-01.jpg', 467, '1');
INSERT INTO `product_photo` VALUES (888, '1593256919CATACMD7109X-01.jpg', 468, '1');
INSERT INTO `product_photo` VALUES (889, '1593257346CATACPR8109X-01.jpg', 469, '1');
INSERT INTO `product_photo` VALUES (890, '1593257984CATAHG600BK-01.jpg', 470, '1');
INSERT INTO `product_photo` VALUES (891, '1593258260CATAHGR110WH-01.jpg', 471, '1');
INSERT INTO `product_photo` VALUES (892, '1593258488CATALC 8110 PYROBK-01.jpg', 472, '1');
INSERT INTO `product_photo` VALUES (893, '1593258755CATALCMD8008X-01.jpg', 473, '1');
INSERT INTO `product_photo` VALUES (894, '1593259005CATAMD 7010BK-01.jpg', 474, '1');
INSERT INTO `product_photo` VALUES (895, '1593259361CATAME 606PYRO-01.jpg', 475, '1');
INSERT INTO `product_photo` VALUES (896, '1593259528CATAME 7107BK-01.jpg', 476, '1');
INSERT INTO `product_photo` VALUES (897, '1593264705CATAMR 608WH-01.jpg', 477, '1');
INSERT INTO `product_photo` VALUES (898, '1593264866CATAMRA 7108BK-01.jpg', 478, '1');
INSERT INTO `product_photo` VALUES (899, '1593265054CATAMRA 7108IV-01.jpg', 479, '1');
INSERT INTO `product_photo` VALUES (900, '1593265123CATAOMD 7009X-01.jpg', 480, '1');
INSERT INTO `product_photo` VALUES (901, '1593265261CATASE 6204BK-01.jpg', 481, '1');
INSERT INTO `product_photo` VALUES (902, '1593265446CATASE 7105WH-01.jpg', 482, '1');
INSERT INTO `product_photo` VALUES (903, '1593265780CATACB2-01.jpg', 483, '1');
INSERT INTO `product_photo` VALUES (904, '1593265904CATA721 GEI-01.jpg', 484, '1');
INSERT INTO `product_photo` VALUES (905, '1593266467CATAGI 302-01.jpg', 485, '1');
INSERT INTO `product_photo` VALUES (907, '1593266858CATAIF 6002BK-01.jpg', 487, '1');
INSERT INTO `product_photo` VALUES (908, '1593267509CATAL 604 TRI-01.jpg', 488, '1');
INSERT INTO `product_photo` VALUES (909, '1593267890CATAL 604 TRI-01.jpg', 489, '1');
INSERT INTO `product_photo` VALUES (910, '1593268278CATL 705 TI IX-01.jpg', 490, '1');
INSERT INTO `product_photo` VALUES (911, '1593269083CATALCI 6031 WH-01.jpg', 491, '1');
INSERT INTO `product_photo` VALUES (912, '1593269935CATALCI 631BK-01.jpg', 492, '1');
INSERT INTO `product_photo` VALUES (913, '1593270248CATALCI 631BK-01.jpg', 493, '1');
INSERT INTO `product_photo` VALUES (914, '1593270463CATALGD631A-01.jpg', 494, '1');
INSERT INTO `product_photo` VALUES (915, '1593270825CATALGI 631IX-01.jpg', 495, '1');
INSERT INTO `product_photo` VALUES (916, '1593271187CATALGI 631IX-01.jpg', 496, '1');
INSERT INTO `product_photo` VALUES (917, '1593271404CATAMVG604-01.jpg', 497, '1');
INSERT INTO `product_photo` VALUES (918, '1593271546CATARDI 631 IVORY-01.jpg', 498, '1');
INSERT INTO `product_photo` VALUES (919, '1593271848CATARGI 6031 BK-01.jpg', 499, '1');
INSERT INTO `product_photo` VALUES (920, '1593271968CATARDI 631 IVORY-01.jpg', 500, '1');
INSERT INTO `product_photo` VALUES (921, '1593271993CATARGI 631 BK-01.jpg', 501, '1');
INSERT INTO `product_photo` VALUES (922, '1593272190CATAT 604 HVI-01.jpg', 502, '1');
INSERT INTO `product_photo` VALUES (923, '1593272442CATAT 604 WH-01.jpg', 503, '1');
INSERT INTO `product_photo` VALUES (924, '1593272730CATAT 604 X-01.jpg', 504, '1');
INSERT INTO `product_photo` VALUES (925, '1593272949CATATCDO 604 BV-01.jpg', 505, '1');
INSERT INTO `product_photo` VALUES (926, '1593279177CATATCDO 704-01.jpg', 506, '1');
INSERT INTO `product_photo` VALUES (927, '1593279436CATATCT302-01.jpg', 507, '1');
INSERT INTO `product_photo` VALUES (928, '1593279866CATATD 302-01.jpg', 508, '1');
INSERT INTO `product_photo` VALUES (929, '1593279904CATATD 302-01.jpg', 509, '1');
INSERT INTO `product_photo` VALUES (930, '1593280260CATATN 604-01.jpg', 510, '1');
INSERT INTO `product_photo` VALUES (931, '1593280542CATACI 54177 NF-01.jpg', 511, '1');
INSERT INTO `product_photo` VALUES (932, '1593281068CATACB2-01.jpg', 512, '1');
INSERT INTO `product_photo` VALUES (933, '1593281273CATACB 4040 INOX-01.jpg', 513, '1');
INSERT INTO `product_photo` VALUES (934, '1593282250CATACB 45-40-01.jpg', 514, '1');
INSERT INTO `product_photo` VALUES (935, '1593282594CATACB 50-40-01.jpg', 515, '1');
INSERT INTO `product_photo` VALUES (936, '1593284120CATAR-1 INOX-01.jpg', 516, '1');
INSERT INTO `product_photo` VALUES (937, '1593285857CATARS 1 INOX-01.jpg', 517, '1');
INSERT INTO `product_photo` VALUES (938, '15933246811-01.jpg', 518, '1');
INSERT INTO `product_photo` VALUES (939, '15933246812-01.jpg', 518, '0');
INSERT INTO `product_photo` VALUES (940, '15933257681-01.jpg', 519, '1');
INSERT INTO `product_photo` VALUES (941, '15933257692-01.jpg', 519, '0');
INSERT INTO `product_photo` VALUES (942, '1593326142KÖRTİNGHG6115CTRN-01.jpg', 520, '1');
INSERT INTO `product_photo` VALUES (943, '1593327419KÖRTİNGHG62001B-01.jpg', 521, '1');
INSERT INTO `product_photo` VALUES (944, '1593327714KÖRTİNGHG630CTSB-01.jpg', 522, '1');
INSERT INTO `product_photo` VALUES (945, '1593327900KÖRTİNGHG630CTSN-01.jpg', 523, '1');
INSERT INTO `product_photo` VALUES (946, '1593328307KÖRTİNGHG665CTRB-01.jpg', 524, '1');
INSERT INTO `product_photo` VALUES (947, '1593328846KÖRTİNGHG 7115CTRI-01.jpg', 525, '1');
INSERT INTO `product_photo` VALUES (948, '1593329368KÖRTİNGHG 7115CTRN-01.jpg', 526, '1');
INSERT INTO `product_photo` VALUES (949, '1593329972KÖRTİNGHG7115CTRR-01.jpg', 527, '1');
INSERT INTO `product_photo` VALUES (950, '1593330689KÖRTİNGHG7115CTRС-01.jpg', 528, '1');
INSERT INTO `product_photo` VALUES (951, '15933332191-01.jpg', 529, '1');
INSERT INTO `product_photo` VALUES (952, '15933332192-01.jpg', 529, '0');
INSERT INTO `product_photo` VALUES (953, '15933332193-01.jpg', 529, '0');
INSERT INTO `product_photo` VALUES (954, '15933332731-01.jpg', 530, '1');
INSERT INTO `product_photo` VALUES (955, '15933332742-01.jpg', 530, '0');
INSERT INTO `product_photo` VALUES (956, '15933332743-01.jpg', 530, '0');
INSERT INTO `product_photo` VALUES (957, '15933336542-01.jpg', 531, '1');
INSERT INTO `product_photo` VALUES (958, '15933336551-01.jpg', 531, '0');
INSERT INTO `product_photo` VALUES (959, '15933336553-01.jpg', 531, '0');
INSERT INTO `product_photo` VALUES (960, '1593334229KÖRTİNGHG965CTRB-01.jpg', 532, '1');
INSERT INTO `product_photo` VALUES (961, '1593334449KÖRTİNGHG965CTRN-01.jpg', 533, '1');
INSERT INTO `product_photo` VALUES (962, '15933346472-01.jpg', 534, '1');
INSERT INTO `product_photo` VALUES (963, '15933346471-01.jpg', 534, '0');
INSERT INTO `product_photo` VALUES (964, '15933346483-01.jpg', 534, '0');
INSERT INTO `product_photo` VALUES (965, '1593334853KÖRTİNGHK32033BW-01.jpg', 535, '1');
INSERT INTO `product_photo` VALUES (966, '1593335039KÖRTİNGHK6205RN-01.jpg', 536, '1');
INSERT INTO `product_photo` VALUES (967, '1593335688KÖRTİNGHK63552B-01.jpg', 537, '1');
INSERT INTO `product_photo` VALUES (968, '1593340430KÖRTİNGHK93551B-01.jpg', 538, '1');
INSERT INTO `product_photo` VALUES (969, '1593341114KÖRTİNGHK9414GMRB-01.jpg', 539, '1');
INSERT INTO `product_photo` VALUES (970, '1593352417KÖRTİNGHK9414GMRN-01.jpg', 540, '1');
INSERT INTO `product_photo` VALUES (971, '1593354277KÖRTİNGHK9414GMX-01.jpg', 541, '1');
INSERT INTO `product_photo` VALUES (972, '15933554321-01.jpg', 542, '1');
INSERT INTO `product_photo` VALUES (973, '15933554322-01.jpg', 542, '0');
INSERT INTO `product_photo` VALUES (974, '15933554323-01.jpg', 542, '0');
INSERT INTO `product_photo` VALUES (975, '15933554324-01.jpg', 542, '0');
INSERT INTO `product_photo` VALUES (976, '1593355870KÖRTİNGKHA9770X-01.jpg', 543, '1');
INSERT INTO `product_photo` VALUES (977, '1593356120KÖRTİNGKHC9770 X-01.jpg', 544, '1');
INSERT INTO `product_photo` VALUES (978, '1593358634KÖRTİNGKHİ6410X-01.jpg', 545, '1');
INSERT INTO `product_photo` VALUES (979, '1593358778KÖRTİNGKHİ6410X-01.jpg', 546, '1');
INSERT INTO `product_photo` VALUES (980, '1593358979KÖRTİNGKHİ6530 X-01.jpg', 547, '1');
INSERT INTO `product_photo` VALUES (981, '1593359390KÖRTİNGKHİ6638 RB-01.jpg', 548, '1');
INSERT INTO `product_photo` VALUES (982, '1593360331KÖRTİNGKHİ6638RN-01.jpg', 549, '1');
INSERT INTO `product_photo` VALUES (983, '15933637551-01.jpg', 550, '1');
INSERT INTO `product_photo` VALUES (984, '15933637552-01.jpg', 550, '0');
INSERT INTO `product_photo` VALUES (985, '15933641431-01.jpg', 551, '1');
INSERT INTO `product_photo` VALUES (986, '15933641432-01.jpg', 551, '0');
INSERT INTO `product_photo` VALUES (987, '1593364541KÖRTİNGKHT6334B-01.jpg', 552, '1');
INSERT INTO `product_photo` VALUES (988, '1593364702KÖRTİNGKHT6334N-01.jpg', 553, '1');
INSERT INTO `product_photo` VALUES (989, '1593364851KÖRTİNGKHT6334X-01.jpg', 554, '1');
INSERT INTO `product_photo` VALUES (990, '1593365179KÖRTİNGKMI1082RC-01.jpg', 555, '1');
INSERT INTO `product_photo` VALUES (991, '1593365400KÖRTİNGKMI1082RI-01.jpg', 556, '1');
INSERT INTO `product_photo` VALUES (992, '1593365622KÖRTİNGKMI1082RN-01.jpg', 557, '1');
INSERT INTO `product_photo` VALUES (993, '1593365763KÖRTİNGKMI482RB-01.jpg', 558, '1');
INSERT INTO `product_photo` VALUES (994, '1593365915KÖRTİNGKMI482RC-01.jpg', 559, '1');
INSERT INTO `product_photo` VALUES (995, '1593366089KÖRTİNGKMI482RI-01.jpg', 560, '1');
INSERT INTO `product_photo` VALUES (996, '1593366184KÖRTİNGKMI482RN-01.jpg', 561, '1');
INSERT INTO `product_photo` VALUES (997, '1593366351KÖRTİNGKMI720X-01.jpg', 562, '1');
INSERT INTO `product_photo` VALUES (998, '15933668122-01.jpg', 563, '1');
INSERT INTO `product_photo` VALUES (999, '15933668123-01.jpg', 563, '0');
INSERT INTO `product_photo` VALUES (1000, '15933668121-01.jpg', 563, '0');
INSERT INTO `product_photo` VALUES (1001, '15933670791-01.jpg', 564, '1');
INSERT INTO `product_photo` VALUES (1002, '15933670792-01.jpg', 564, '0');
INSERT INTO `product_photo` VALUES (1003, '15933673631-01.jpg', 565, '1');
INSERT INTO `product_photo` VALUES (1004, '15933673632-01.jpg', 565, '0');
INSERT INTO `product_photo` VALUES (1005, '15933678361-01.jpg', 566, '1');
INSERT INTO `product_photo` VALUES (1006, '15933678362-01.jpg', 566, '0');
INSERT INTO `product_photo` VALUES (1007, '15933686142-01.jpg', 567, '1');
INSERT INTO `product_photo` VALUES (1008, '15933686141-01.jpg', 567, '0');
INSERT INTO `product_photo` VALUES (1009, '15933686153-01.jpg', 567, '0');
INSERT INTO `product_photo` VALUES (1010, '15933692292-01.jpg', 568, '1');
INSERT INTO `product_photo` VALUES (1011, '15933692291-01.jpg', 568, '0');
INSERT INTO `product_photo` VALUES (1012, '15933692303-01.jpg', 568, '0');
INSERT INTO `product_photo` VALUES (1013, '1593369425KÖRTİNGOGG771CFX-01.jpg', 569, '1');
INSERT INTO `product_photo` VALUES (1014, '15933702693-01.jpg', 570, '1');
INSERT INTO `product_photo` VALUES (1015, '15933702691-01.jpg', 570, '0');
INSERT INTO `product_photo` VALUES (1016, '15933702692-01.jpg', 570, '0');
INSERT INTO `product_photo` VALUES (1017, '15933709163-01.jpg', 571, '1');
INSERT INTO `product_photo` VALUES (1018, '15933709161-01.jpg', 571, '0');
INSERT INTO `product_photo` VALUES (1019, '15933709172-01.jpg', 571, '0');
INSERT INTO `product_photo` VALUES (1020, '15933725483-01.jpg', 572, '1');
INSERT INTO `product_photo` VALUES (1021, '15933725481-01.jpg', 572, '0');
INSERT INTO `product_photo` VALUES (1022, '15933725482-01.jpg', 572, '0');
INSERT INTO `product_photo` VALUES (1023, '1593372981KÖRTİNGOKB460RB-01.jpg', 573, '1');
INSERT INTO `product_photo` VALUES (1024, '1593373118KÖRTİNGOKB460RN-01.jpg', 574, '1');
INSERT INTO `product_photo` VALUES (1025, '1593373266KÖRTİNGOKB480CEN-01.jpg', 575, '1');
INSERT INTO `product_photo` VALUES (1026, '1593373440KÖRTİNGOKB480CEX-01.jpg', 576, '1');
INSERT INTO `product_photo` VALUES (1027, '1593373709KÖRTİNGOKB481CRN-01.jpg', 577, '1');
INSERT INTO `product_photo` VALUES (1028, '1593373864KÖRTİNGOKB482CRSB-01.jpg', 578, '1');
INSERT INTO `product_photo` VALUES (1029, '1593374305KÖRTİNGOKB482CRSC-01.jpg', 579, '1');
INSERT INTO `product_photo` VALUES (1030, '1593374518KÖRTİNGOKB482CRSİ-01.jpg', 580, '1');
INSERT INTO `product_photo` VALUES (1031, '1593374820KÖRTİNGOKB482CRSN-01.jpg', 581, '1');
INSERT INTO `product_photo` VALUES (1032, '1593375053KÖRTİNGOKB793CMX-01.jpg', 582, '1');
INSERT INTO `product_photo` VALUES (1033, '1593375446KÖRTİNGOKB8101MSTEAM-01.jpg', 583, '1');
INSERT INTO `product_photo` VALUES (1034, '1593375753KÖRTİNGOKB892PEN-01.jpg', 584, '1');
INSERT INTO `product_photo` VALUES (1035, '1593376034KÖRTİNGOKB9102CSGN-01.jpg', 585, '1');
INSERT INTO `product_photo` VALUES (1036, '1593376289KÖRTİNGOKB9102CSGW-01.jpg', 586, '1');
INSERT INTO `product_photo` VALUES (1037, '1593376469KÖRTİNGOKB9102CSX-01.jpg', 587, '1');
INSERT INTO `product_photo` VALUES (1038, '1593376957KÖRTİNGOKB9133CEN-01.jpg', 588, '1');
INSERT INTO `product_photo` VALUES (1039, '1593377185KÖRTİNGOKB9133CEW-01.jpg', 589, '1');
INSERT INTO `product_photo` VALUES (1040, '1593574140GORENJEHBX603RL-01.jpg', 590, '1');
INSERT INTO `product_photo` VALUES (1041, '15935752241-01.jpg', 591, '1');
INSERT INTO `product_photo` VALUES (1042, '15935752252-01.jpg', 591, '0');
INSERT INTO `product_photo` VALUES (1043, '15935756703-01.jpg', 592, '1');
INSERT INTO `product_photo` VALUES (1044, '15935756711-01.jpg', 592, '0');
INSERT INTO `product_photo` VALUES (1045, '15935756712-01.jpg', 592, '0');
INSERT INTO `product_photo` VALUES (1046, '15935756714-01.jpg', 592, '0');
INSERT INTO `product_photo` VALUES (1047, '15935768631-01.jpg', 593, '1');
INSERT INTO `product_photo` VALUES (1048, '15935768632-01.jpg', 593, '0');
INSERT INTO `product_photo` VALUES (1049, '15935770642-01.jpg', 594, '1');
INSERT INTO `product_photo` VALUES (1050, '15935770641-01.jpg', 594, '0');
INSERT INTO `product_photo` VALUES (1051, '15935770653-01.jpg', 594, '0');
INSERT INTO `product_photo` VALUES (1052, '15935770655-01.jpg', 594, '0');
INSERT INTO `product_photo` VALUES (1053, '15935774351-01.jpg', 595, '1');
INSERT INTO `product_photo` VALUES (1054, '15935774352-01.jpg', 595, '0');
INSERT INTO `product_photo` VALUES (1055, '15935774353-01.jpg', 595, '0');
INSERT INTO `product_photo` VALUES (1056, '15935774354-01.jpg', 595, '0');
INSERT INTO `product_photo` VALUES (1057, '15935774355-01.jpg', 595, '0');
INSERT INTO `product_photo` VALUES (1058, '15935774366-01.jpg', 595, '0');
INSERT INTO `product_photo` VALUES (1059, '1593577675GORENJEK15RL-01.jpg', 596, '1');
INSERT INTO `product_photo` VALUES (1060, '15935786511-01.jpg', 597, '1');
INSERT INTO `product_photo` VALUES (1061, '15935786512-01.jpg', 597, '0');
INSERT INTO `product_photo` VALUES (1062, '15935786513-01.jpg', 597, '0');
INSERT INTO `product_photo` VALUES (1063, '15935843342-01.jpg', 598, '1');
INSERT INTO `product_photo` VALUES (1064, '15935843341-01.jpg', 598, '0');
INSERT INTO `product_photo` VALUES (1065, '15935843343-01.jpg', 598, '0');
INSERT INTO `product_photo` VALUES (1066, '15935854031-01.jpg', 599, '1');
INSERT INTO `product_photo` VALUES (1067, '15935854032-01.jpg', 599, '0');
INSERT INTO `product_photo` VALUES (1068, '15935854033-01.jpg', 599, '0');
INSERT INTO `product_photo` VALUES (1069, '15935862962-01.jpg', 600, '1');
INSERT INTO `product_photo` VALUES (1070, '15935862971-01.jpg', 600, '0');
INSERT INTO `product_photo` VALUES (1071, '15935862973-01.jpg', 600, '0');
INSERT INTO `product_photo` VALUES (1072, '15935869782-01.jpg', 601, '1');
INSERT INTO `product_photo` VALUES (1073, '15935869781-01.jpg', 601, '0');
INSERT INTO `product_photo` VALUES (1074, '15935869783-01.jpg', 601, '0');
INSERT INTO `product_photo` VALUES (1075, '15935901371-01.jpg', 602, '1');
INSERT INTO `product_photo` VALUES (1076, '15935901372-01.jpg', 602, '0');
INSERT INTO `product_photo` VALUES (1077, '15936685121-01.jpg', 603, '1');
INSERT INTO `product_photo` VALUES (1078, '15936687031-01.jpg', 604, '1');
INSERT INTO `product_photo` VALUES (1079, '1593668805BLANCOTORRE512594-01.jpg', 605, '1');
INSERT INTO `product_photo` VALUES (1080, '1593668968BLANCOLATO525789-01.jpg', 606, '1');
INSERT INTO `product_photo` VALUES (1081, '1593669293FRANKEEliteTE- 75-01.jpg', 607, '1');
INSERT INTO `product_photo` VALUES (1082, '1593669607TEKATR-50.4-01.jpg', 608, '1');
INSERT INTO `product_photo` VALUES (1083, '1593674170ARISTONFA4841JC X-01.jpg', 609, '1');
INSERT INTO `product_photo` VALUES (1084, '1593674395ARISTONFI 6861SH IX-01.jpg', 610, '1');
INSERT INTO `product_photo` VALUES (1085, '15936748772-01.jpg', 611, '1');
INSERT INTO `product_photo` VALUES (1086, '15936748771-01.jpg', 611, '0');
INSERT INTO `product_photo` VALUES (1087, '15936748773-01.jpg', 611, '0');
INSERT INTO `product_photo` VALUES (1088, '15936751992-01.jpg', 612, '1');
INSERT INTO `product_photo` VALUES (1089, '15936751991-01.jpg', 612, '0');
INSERT INTO `product_photo` VALUES (1090, '15936751993-01.jpg', 612, '0');
INSERT INTO `product_photo` VALUES (1091, '15936758771-01.jpg', 613, '1');
INSERT INTO `product_photo` VALUES (1092, '15936758772-01.jpg', 613, '0');
INSERT INTO `product_photo` VALUES (1093, '15936758783-01.jpg', 613, '0');
INSERT INTO `product_photo` VALUES (1094, '15936803501-01.jpg', 614, '1');
INSERT INTO `product_photo` VALUES (1095, '15936803502-01.jpg', 614, '0');
INSERT INTO `product_photo` VALUES (1096, '15936803503-01.jpg', 614, '0');
INSERT INTO `product_photo` VALUES (1097, '1593680903CATAME7207BK-01.jpg', 615, '1');
INSERT INTO `product_photo` VALUES (1098, '1593681096CATACDP 780ASBK-01.jpg', 616, '1');
INSERT INTO `product_photo` VALUES (1099, '1593681450CATALC 860BK-01.jpg', 617, '1');
INSERT INTO `product_photo` VALUES (1100, '1593681767SMEGSF700PO-01.jpg', 618, '1');
INSERT INTO `product_photo` VALUES (1101, '1593681972SMEGSF 800PO-01.jpg', 619, '1');
INSERT INTO `product_photo` VALUES (1102, '1593682532SMEGSF 800AO-01.jpg', 620, '1');
INSERT INTO `product_photo` VALUES (1103, '1593683180WHIRLPOOLAKP 446IX-01.jpg', 621, '1');
INSERT INTO `product_photo` VALUES (1104, '1593683380WHIRLPOOLAKP 458 NB-01.jpg', 622, '1');
INSERT INTO `product_photo` VALUES (1105, '15937650283-01.jpg', 623, '1');
INSERT INTO `product_photo` VALUES (1106, '15937650291-01.jpg', 623, '0');
INSERT INTO `product_photo` VALUES (1107, '15937650292-01.jpg', 623, '0');
INSERT INTO `product_photo` VALUES (1108, '15937650294-01.jpg', 623, '0');
INSERT INTO `product_photo` VALUES (1109, '1593765330CATAGT PLUS45WH-01.jpg', 624, '1');
INSERT INTO `product_photo` VALUES (1110, '1593765631CATAGRECO90BK-01.jpg', 625, '1');
INSERT INTO `product_photo` VALUES (1111, '1593765860CATAGOYAPRO90BK-01.jpg', 626, '1');
INSERT INTO `product_photo` VALUES (1112, '1593766114CATAGOYA90WH-01.jpg', 627, '1');
INSERT INTO `product_photo` VALUES (1113, '1593766547CATACATAGL 75X-01.jpg', 628, '1');
INSERT INTO `product_photo` VALUES (1114, '1593766659CATACATAGCDUAL 45WH-01.jpg', 629, '1');
INSERT INTO `product_photo` VALUES (1115, '1593766999ELİCAERA72-01.jpg', 630, '1');
INSERT INTO `product_photo` VALUES (1116, '1593767471NODORGAT85 60-01.jpg', 631, '1');
INSERT INTO `product_photo` VALUES (1117, '1593768240SMEGKC19AOE-01.jpg', 632, '1');
INSERT INTO `product_photo` VALUES (1118, '1593768540SMEGKC19POE-01.jpg', 633, '1');
INSERT INTO `product_photo` VALUES (1119, '1593769000SMEGKCM900POE-01.jpg', 634, '1');
INSERT INTO `product_photo` VALUES (1120, '15937763444-01.jpg', 635, '1');
INSERT INTO `product_photo` VALUES (1121, '15937763441-01.jpg', 635, '0');
INSERT INTO `product_photo` VALUES (1122, '15937763452-01.jpg', 635, '0');
INSERT INTO `product_photo` VALUES (1123, '15937763453-01.jpg', 635, '0');
INSERT INTO `product_photo` VALUES (1124, '15937763455-01.jpg', 635, '0');
INSERT INTO `product_photo` VALUES (1125, '1593786606KITCHENAID5KFC3516EER-01.jpg', 636, '1');
INSERT INTO `product_photo` VALUES (1126, '1593786754KITCHENAID5KFC3516EAC-01.jpg', 637, '1');
INSERT INTO `product_photo` VALUES (1127, '1593786938KITCHENAID5KFP1644ECA-01.jpg', 638, '1');
INSERT INTO `product_photo` VALUES (1128, '15937875723-01.jpg', 639, '1');
INSERT INTO `product_photo` VALUES (1129, '15937875721-01.jpg', 639, '0');
INSERT INTO `product_photo` VALUES (1130, '15937875722-01.jpg', 639, '0');
INSERT INTO `product_photo` VALUES (1131, '15937875724-01.jpg', 639, '0');
INSERT INTO `product_photo` VALUES (1132, '15937875725-01.jpg', 639, '0');
INSERT INTO `product_photo` VALUES (1133, '1593787834ARISTONMWKX222X-01.jpg', 640, '1');
INSERT INTO `product_photo` VALUES (1134, '15937882744-01.jpg', 641, '1');
INSERT INTO `product_photo` VALUES (1135, '15937882741-01.jpg', 641, '0');
INSERT INTO `product_photo` VALUES (1136, '15937882742-01.jpg', 641, '0');
INSERT INTO `product_photo` VALUES (1137, '15937882743-01.jpg', 641, '0');
INSERT INTO `product_photo` VALUES (1138, '1593788371CATACATA MC 25GTC BK-01.jpg', 642, '1');
INSERT INTO `product_photo` VALUES (1139, '1593788996SMEGSF4800MAO-01.jpg', 643, '1');
INSERT INTO `product_photo` VALUES (1140, '15937893292-01.jpg', 644, '1');
INSERT INTO `product_photo` VALUES (1141, '15937893291-01.jpg', 644, '0');
INSERT INTO `product_photo` VALUES (1142, '15937893293-01.jpg', 644, '0');
INSERT INTO `product_photo` VALUES (1143, '1593789564SMEGSF4800MPO-01.jpg', 645, '1');
INSERT INTO `product_photo` VALUES (1144, '1593789668GORENJEMMC1000RL-01.jpg', 646, '1');
INSERT INTO `product_photo` VALUES (1145, '1593789906GORENJEMMC1000RL-01.jpg', 647, '1');
INSERT INTO `product_photo` VALUES (1146, '15937899371-01.jpg', 648, '1');
INSERT INTO `product_photo` VALUES (1147, '15937899382-01.jpg', 648, '0');
INSERT INTO `product_photo` VALUES (1148, '15937899383-01.jpg', 648, '0');
INSERT INTO `product_photo` VALUES (1149, '15937899384-01.jpg', 648, '0');
INSERT INTO `product_photo` VALUES (1150, '15937899385-01.jpg', 648, '0');
INSERT INTO `product_photo` VALUES (1151, '15937902393-01.jpg', 649, '1');
INSERT INTO `product_photo` VALUES (1152, '15937902391-01.jpg', 649, '0');
INSERT INTO `product_photo` VALUES (1153, '15937902392-01.jpg', 649, '0');
INSERT INTO `product_photo` VALUES (1154, '15937902394-01.jpg', 649, '0');
INSERT INTO `product_photo` VALUES (1155, '15937908612-01.jpg', 650, '1');
INSERT INTO `product_photo` VALUES (1156, '15937908621-01.jpg', 650, '0');
INSERT INTO `product_photo` VALUES (1157, '15937908623-01.jpg', 650, '0');
INSERT INTO `product_photo` VALUES (1158, '15937913543-01.jpg', 651, '1');
INSERT INTO `product_photo` VALUES (1159, '15937913544-01.jpg', 651, '0');
INSERT INTO `product_photo` VALUES (1160, '15937913545-01.jpg', 651, '0');
INSERT INTO `product_photo` VALUES (1161, '15937913552-01.jpg', 651, '0');
INSERT INTO `product_photo` VALUES (1162, '15937913551-01.jpg', 651, '0');
INSERT INTO `product_photo` VALUES (1163, '15938632361-01.jpg', 652, '1');
INSERT INTO `product_photo` VALUES (1164, '15938632362-01.jpg', 652, '0');
INSERT INTO `product_photo` VALUES (1165, '15938632373-01.jpg', 652, '0');
INSERT INTO `product_photo` VALUES (1166, '15938640371-01.jpg', 653, '1');
INSERT INTO `product_photo` VALUES (1167, '15938640372-01.jpg', 653, '0');
INSERT INTO `product_photo` VALUES (1168, '15938640373-01.jpg', 653, '0');
INSERT INTO `product_photo` VALUES (1169, '15938654871-01.jpg', 654, '1');
INSERT INTO `product_photo` VALUES (1170, '15938654872-01.jpg', 654, '0');

-- ----------------------------
-- Table structure for profil
-- ----------------------------
DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil`  (
  `id` int(11) NOT NULL COMMENT ' ',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adress1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adress2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profil
-- ----------------------------
INSERT INTO `profil` VALUES (1, '+994(77)-277-00-55', 'info@premierestore.az', 'premierestore.az', 'premierestore.az', 'Həsən Əliyev 439', '1590388156.png', '/images/banner/15824962931575453441logo.png', 'Baku', 'test', 'test');

-- ----------------------------
-- Table structure for reklam
-- ----------------------------
DROP TABLE IF EXISTS `reklam`;
CREATE TABLE `reklam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reklam
-- ----------------------------
INSERT INTO `reklam` VALUES (1, '1589140666.jpeg');
INSERT INTO `reklam` VALUES (2, '1589140682.jpeg');
INSERT INTO `reklam` VALUES (3, '15891406991589064237.jpeg');

-- ----------------------------
-- Table structure for sub_filter
-- ----------------------------
DROP TABLE IF EXISTS `sub_filter`;
CREATE TABLE `sub_filter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filter_id` int(11) NULL DEFAULT NULL,
  `min` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 639 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_filter
-- ----------------------------
INSERT INTO `sub_filter` VALUES (99, 'bosch', 128, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (100, 'samsung', 128, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (101, 'capasity', 129, '0', '15', NULL);
INSERT INTO `sub_filter` VALUES (102, 'Price Range', 130, '110.00', '45455.00', NULL);
INSERT INTO `sub_filter` VALUES (103, 'white', 131, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (104, 'red', 131, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (105, 'bosch', 132, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (106, 'capasity', 133, '9', '15', NULL);
INSERT INTO `sub_filter` VALUES (107, 'Price Range', 134, '3000.00', '6500.00', NULL);
INSERT INTO `sub_filter` VALUES (108, 'white', 135, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (109, 'bosch', 136, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (110, 'samsung', 136, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (111, 'capasity', 137, '0', '5', NULL);
INSERT INTO `sub_filter` VALUES (112, 'Price Range', 138, '1456.00', '6850.00', NULL);
INSERT INTO `sub_filter` VALUES (113, 'white', 139, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (114, 'red', 139, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (115, 'capasity', 141, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (116, 'Price Range', 142, '7000.00', '7000.00', NULL);
INSERT INTO `sub_filter` VALUES (117, 'capasity', 145, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (118, 'Price Range', 146, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (119, 'capasity', 149, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (120, 'Price Range', 150, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (121, 'samsung', 152, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (122, 'bosch', 152, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (123, 'Price Range', 153, '45.00', '57657.00', NULL);
INSERT INTO `sub_filter` VALUES (124, 'red', 154, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (125, 'green', 154, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (126, 'drying capasity', 155, '0', '666', NULL);
INSERT INTO `sub_filter` VALUES (127, 'washing capasity', 155, '0', '546', NULL);
INSERT INTO `sub_filter` VALUES (128, 'bosch', 156, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (129, 'Price Range', 157, '45.00', '57657.00', NULL);
INSERT INTO `sub_filter` VALUES (130, 'green', 158, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (131, 'drying capasity', 159, '0', '5', NULL);
INSERT INTO `sub_filter` VALUES (132, 'washing capasity', 159, '0', '45', NULL);
INSERT INTO `sub_filter` VALUES (133, 'samsung', 160, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (134, 'bosch', 160, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (135, 'capasity', 161, '0', '666', NULL);
INSERT INTO `sub_filter` VALUES (136, 'Price Range', 162, '145.00', '4245.00', NULL);
INSERT INTO `sub_filter` VALUES (137, 'drying capasity', 163, '0', '666', NULL);
INSERT INTO `sub_filter` VALUES (138, 'washing capasity', 163, '0', '546', NULL);
INSERT INTO `sub_filter` VALUES (139, 'capasity', 165, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (140, 'Price Range', 166, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (141, 'capasity', 169, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (142, 'Price Range', 170, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (143, 'capasity', 173, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (144, 'Price Range', 174, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (145, 'Price Range', 177, '560.00', '2680.00', NULL);
INSERT INTO `sub_filter` VALUES (146, 'width', 180, '50', '550', NULL);
INSERT INTO `sub_filter` VALUES (147, 'height', 180, '0', '1810', NULL);
INSERT INTO `sub_filter` VALUES (148, 'depth', 180, '0', '615', NULL);
INSERT INTO `sub_filter` VALUES (149, 'Price Range', 183, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (150, 'width', 186, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (151, 'height', 186, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (152, 'depth', 186, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (153, 'Price Range', 189, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (154, 'width', 192, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (155, 'height', 192, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (156, 'depth', 192, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (157, 'Price Range', 195, '2400.00', '2400.00', NULL);
INSERT INTO `sub_filter` VALUES (158, 'width', 198, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (159, 'height', 198, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (160, 'depth', 198, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (161, 'Price Range', 201, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (162, 'width', 204, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (163, 'height', 204, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (164, 'depth', 204, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (165, 'Price Range', 207, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (166, 'width', 210, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (167, 'height', 210, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (168, 'depth', 210, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (169, 'Price Range', 213, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (170, 'width', 214, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (171, 'height', 214, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (172, 'depth', 214, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (173, 'Price Range', 217, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (174, 'width', 218, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (175, 'height', 218, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (176, 'depth', 218, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (177, 'Price Range', 221, '760.00', '760.00', NULL);
INSERT INTO `sub_filter` VALUES (178, 'width', 224, '580', '580', NULL);
INSERT INTO `sub_filter` VALUES (179, 'height', 224, '820', '820', NULL);
INSERT INTO `sub_filter` VALUES (180, 'depth', 224, '550', '550', NULL);
INSERT INTO `sub_filter` VALUES (181, 'Price Range', 227, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (182, 'width', 230, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (183, 'height', 230, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (184, 'depth', 230, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (185, 'Price Range', 233, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (186, 'width', 234, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (187, 'height', 234, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (188, 'depth', 234, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (189, 'capasity', 237, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (190, 'Price Range', 238, '1230.00', '2950.00', NULL);
INSERT INTO `sub_filter` VALUES (191, 'width', 239, '0', '650', NULL);
INSERT INTO `sub_filter` VALUES (192, 'height', 239, '0', '870', NULL);
INSERT INTO `sub_filter` VALUES (193, 'depth', 239, '0', '600', NULL);
INSERT INTO `sub_filter` VALUES (194, 'capasity', 241, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (195, 'Price Range', 242, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (196, 'width', 243, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (197, 'height', 243, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (198, 'depth', 243, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (199, 'capasity', 245, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (200, 'Price Range', 246, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (201, 'width', 247, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (202, 'height', 247, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (203, 'depth', 247, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (204, 'Price Range', 249, '285.00', '1860.00', NULL);
INSERT INTO `sub_filter` VALUES (205, 'width', 251, '0', '900', NULL);
INSERT INTO `sub_filter` VALUES (206, 'height', 251, '0', '510', NULL);
INSERT INTO `sub_filter` VALUES (207, 'depth', 251, '0', '530', NULL);
INSERT INTO `sub_filter` VALUES (208, 'Price Range', 254, '420.00', '1560.00', NULL);
INSERT INTO `sub_filter` VALUES (209, 'width', 256, '0', '880', NULL);
INSERT INTO `sub_filter` VALUES (210, 'height', 256, '0', '68', NULL);
INSERT INTO `sub_filter` VALUES (211, 'depth', 256, '0', '522', NULL);
INSERT INTO `sub_filter` VALUES (212, 'Price Range', 259, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (213, 'width', 261, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (214, 'height', 261, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (215, 'depth', 261, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (216, 'Price Range', 264, '260.00', '2150.00', NULL);
INSERT INTO `sub_filter` VALUES (217, 'width', 266, '582', '890', NULL);
INSERT INTO `sub_filter` VALUES (218, 'height', 266, '0', '500', NULL);
INSERT INTO `sub_filter` VALUES (219, 'depth', 266, '470', '527', NULL);
INSERT INTO `sub_filter` VALUES (220, 'Price Range', 269, '210.00', '4550.00', NULL);
INSERT INTO `sub_filter` VALUES (221, 'width', 271, '0', '900', NULL);
INSERT INTO `sub_filter` VALUES (222, 'height', 271, '0', '1450', NULL);
INSERT INTO `sub_filter` VALUES (223, 'depth', 271, '0', '900', NULL);
INSERT INTO `sub_filter` VALUES (224, 'gucu', 272, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (225, 'Price Range', 274, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (226, 'width', 276, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (227, 'height', 276, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (228, 'depth', 276, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (229, 'gucu', 277, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (230, 'Price Range', 279, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (231, 'width', 281, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (232, 'height', 281, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (233, 'depth', 281, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (234, 'gucu', 282, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (235, 'Price Range', 284, '240.00', '240.00', NULL);
INSERT INTO `sub_filter` VALUES (236, 'Price Range', 288, '320.00', '1560.00', NULL);
INSERT INTO `sub_filter` VALUES (237, 'Price Range', 293, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (238, 'Price Range', 298, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (239, 'Price Range', 303, '84.25', '350.00', NULL);
INSERT INTO `sub_filter` VALUES (240, 'Price Range', 305, '699.00', '799.00', NULL);
INSERT INTO `sub_filter` VALUES (241, 'Price Range', 308, '385.00', '530.00', NULL);
INSERT INTO `sub_filter` VALUES (242, 'gucu', 310, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (243, 'Price Range', 313, '106.00', '499.00', NULL);
INSERT INTO `sub_filter` VALUES (244, 'Price Range', 316, '85.00', '569.00', NULL);
INSERT INTO `sub_filter` VALUES (245, 'Price Range', 320, '99.00', '530.00', NULL);
INSERT INTO `sub_filter` VALUES (246, 'Price Range', 323, '355.00', '355.00', NULL);
INSERT INTO `sub_filter` VALUES (247, 'Price Range', 326, '210.00', '245.00', NULL);
INSERT INTO `sub_filter` VALUES (248, 'gucu', 328, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (249, 'Price Range', 330, '148.00', '1599.00', NULL);
INSERT INTO `sub_filter` VALUES (250, 'Price Range', 334, '95.00', '1349.00', NULL);
INSERT INTO `sub_filter` VALUES (251, 'Price Range', 338, '135.00', '600.00', NULL);
INSERT INTO `sub_filter` VALUES (252, 'gucu', 340, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (253, 'Price Range', 342, '160.00', '160.00', NULL);
INSERT INTO `sub_filter` VALUES (254, 'Price Range', 346, '954.00', '954.00', NULL);
INSERT INTO `sub_filter` VALUES (255, 'Price Range', 349, '240.00', '240.00', NULL);
INSERT INTO `sub_filter` VALUES (256, 'Price Range', 352, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (257, 'bosch', 176, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (258, 'white', 178, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (259, 'bosch', 194, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (260, 'black', 196, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (261, 'green', 131, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (262, 'lg', 128, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (263, 'hotpoint', 140, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (264, 'red', 143, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (265, 'bosch', 354, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (266, 'körting', 354, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (267, 'smeg', 354, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (268, 'capasity', 355, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (269, 'Price Range', 356, '742.00', '2780.00', NULL);
INSERT INTO `sub_filter` VALUES (270, 'white', 357, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (271, 'green', 357, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (272, 'red', 357, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (273, 'bosch', 358, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (274, 'smeg', 358, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (275, 'capasity', 359, '0', '15', NULL);
INSERT INTO `sub_filter` VALUES (276, 'Price Range', 360, '110.00', '6500.00', NULL);
INSERT INTO `sub_filter` VALUES (277, 'white', 361, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (278, 'green', 361, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (279, 'bosch', 362, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (280, 'körting', 362, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (281, 'capasity', 363, '0', '5', NULL);
INSERT INTO `sub_filter` VALUES (282, 'Price Range', 364, '454.00', '45455.00', NULL);
INSERT INTO `sub_filter` VALUES (283, 'white', 365, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (284, 'green', 365, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (285, 'red', 365, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (286, 'aquasanita', 366, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (287, 'capasity', 367, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (288, 'Price Range', 368, '1620.00', '1799.00', NULL);
INSERT INTO `sub_filter` VALUES (289, 'red', 369, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (290, 'capasity', 371, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (291, 'Price Range', 372, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (292, 'aquasanita', 374, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (293, 'capasity', 375, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (294, 'Price Range', 376, '7000.00', '7000.00', NULL);
INSERT INTO `sub_filter` VALUES (295, 'red', 377, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (296, 'körting', 378, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (297, 'bosch', 378, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (298, 'Price Range', 379, '2690.00', '3290.00', NULL);
INSERT INTO `sub_filter` VALUES (299, 'red', 380, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (300, 'green', 380, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (301, 'drying capasity', 381, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (302, 'washing capasity', 381, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (303, 'bosch', 382, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (304, 'Price Range', 383, '45.00', '57657.00', NULL);
INSERT INTO `sub_filter` VALUES (305, 'green', 384, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (306, 'drying capasity', 385, '0', '5', NULL);
INSERT INTO `sub_filter` VALUES (307, 'washing capasity', 385, '0', '45', NULL);
INSERT INTO `sub_filter` VALUES (308, 'körting', 386, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (309, 'bosch', 386, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (310, 'capasity', 387, '0', '666', NULL);
INSERT INTO `sub_filter` VALUES (311, 'Price Range', 388, '145.00', '4245.00', NULL);
INSERT INTO `sub_filter` VALUES (312, 'drying capasity', 389, '0', '666', NULL);
INSERT INTO `sub_filter` VALUES (313, 'washing capasity', 389, '0', '546', NULL);
INSERT INTO `sub_filter` VALUES (314, 'capasity', 391, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (315, 'Price Range', 392, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (316, 'capasity', 395, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (317, 'Price Range', 396, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (318, 'capasity', 399, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (319, 'Price Range', 400, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (320, 'aquasanita', 176, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (321, 'smeg', 176, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (322, 'red', 178, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (323, 'amica', 176, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (324, 'bej', 178, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (325, 'black', 178, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (326, 'aquasanita', 287, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (327, 'black', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (328, 'brown', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (329, 'beige', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (330, 'metal', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (331, 'aquasanita', 348, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (332, 'beige', 350, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (333, 'black', 350, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (334, 'aquasanita', 283, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (335, 'white', 285, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (336, 'aquasanita', 402, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (337, 'Price Range', 403, '240.00', '240.00', NULL);
INSERT INTO `sub_filter` VALUES (338, 'white', 404, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (339, 'aquasanita', 406, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (340, 'Price Range', 407, '240.00', '590.00', NULL);
INSERT INTO `sub_filter` VALUES (341, 'white', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (342, 'bosch', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (343, 'amica', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (344, 'Price Range', 411, '560.00', '9890.00', NULL);
INSERT INTO `sub_filter` VALUES (345, 'white', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (346, 'red', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (347, 'black', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (348, 'width', 414, '480', '1810', NULL);
INSERT INTO `sub_filter` VALUES (349, 'height', 414, '840', '1940', NULL);
INSERT INTO `sub_filter` VALUES (350, 'depth', 414, '510', '1810', NULL);
INSERT INTO `sub_filter` VALUES (351, 'amica', 416, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (352, 'Price Range', 417, '560.00', '1990.00', NULL);
INSERT INTO `sub_filter` VALUES (353, 'red', 418, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (354, 'white', 418, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (355, 'black', 418, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (356, 'width', 420, '480', '550', NULL);
INSERT INTO `sub_filter` VALUES (357, 'height', 420, '840', '1810', NULL);
INSERT INTO `sub_filter` VALUES (358, 'depth', 420, '510', '615', NULL);
INSERT INTO `sub_filter` VALUES (359, 'bosch', 422, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (360, 'Price Range', 423, '2680.00', '2680.00', NULL);
INSERT INTO `sub_filter` VALUES (361, 'width', 424, '50', '50', NULL);
INSERT INTO `sub_filter` VALUES (362, 'height', 424, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (363, 'depth', 424, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (364, 'bosch', 426, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (365, 'Price Range', 427, '960.00', '2490.00', NULL);
INSERT INTO `sub_filter` VALUES (366, 'black', 428, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (367, 'width', 430, '500', '600', NULL);
INSERT INTO `sub_filter` VALUES (368, 'height', 430, '840', '1730', NULL);
INSERT INTO `sub_filter` VALUES (369, 'depth', 430, '537', '600', NULL);
INSERT INTO `sub_filter` VALUES (370, 'bosch', 432, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (371, 'Price Range', 433, '2400.00', '2400.00', NULL);
INSERT INTO `sub_filter` VALUES (372, 'black', 434, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (373, 'width', 436, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (374, 'height', 436, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (375, 'depth', 436, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (376, 'Price Range', 439, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (377, 'width', 440, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (378, 'height', 440, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (379, 'depth', 440, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (380, 'black', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (381, 'beige', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (382, 'green', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (383, 'metal', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (384, 'gray', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (385, 'brown', 408, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (386, 'bosch', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (387, 'metal', 270, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (388, 'bosch', 315, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (389, 'black', 317, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (390, 'bosch', 325, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (391, 'white', 327, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (392, 'bosch', 366, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (393, 'gray', 369, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (394, 'white', 369, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (395, 'bosch', 248, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (396, 'white', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (397, 'white', 380, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (398, 'red', 289, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (399, 'aquasanita', 302, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (400, 'aquasanita', 442, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (401, 'Price Range', 443, '140.00', '1560.00', NULL);
INSERT INTO `sub_filter` VALUES (402, 'black', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (403, 'brown', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (404, 'metal', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (405, 'white', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (406, 'beige', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (407, 'red', 444, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (408, 'width', 445, '0', '860', NULL);
INSERT INTO `sub_filter` VALUES (409, 'height', 445, '0', '785', NULL);
INSERT INTO `sub_filter` VALUES (410, 'depth', 445, '0', '230', NULL);
INSERT INTO `sub_filter` VALUES (411, 'aquasanita', 448, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (412, 'Price Range', 449, '320.00', '1100.00', NULL);
INSERT INTO `sub_filter` VALUES (413, 'black', 450, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (414, 'metal', 450, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (415, 'brown', 450, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (416, 'beige', 450, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (417, 'red', 450, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (418, 'width', 451, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (419, 'height', 451, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (420, 'depth', 451, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (421, 'aquasanita', 454, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (422, 'Price Range', 455, '330.00', '1560.00', NULL);
INSERT INTO `sub_filter` VALUES (423, 'brown', 456, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (424, 'metal', 456, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (425, 'white', 456, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (426, 'beige', 456, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (427, 'black', 456, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (428, 'width', 457, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (429, 'height', 457, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (430, 'depth', 457, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (431, 'bosch', 333, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (432, 'white', 335, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (433, 'red', 335, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (434, 'bosch', 312, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (435, 'red', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (436, 'beige', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (437, 'green', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (438, 'gold', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (439, 'metal', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (440, 'black', 314, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (441, 'beige', 270, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (442, 'black', 270, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (443, 'beige', 317, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (444, 'metal', 357, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (445, 'bosch', 236, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (446, 'bosch', 322, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (447, 'black', 324, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (448, 'beige', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (449, 'gray', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (450, 'bosch', 319, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (451, 'black', 321, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (452, 'bosch', 307, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (453, 'black', 309, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (454, 'bosch', 337, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (455, 'black', 339, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (456, 'violet', 339, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (457, 'blue', 339, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (458, 'gold', 339, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (459, 'gray', 339, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (460, 'bosch', 329, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (461, 'white', 331, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (462, 'bosch', 253, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (463, 'black', 357, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (464, 'bosch', 345, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (465, 'green', 347, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (466, 'bosch', 460, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (467, 'capasity', 461, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (468, 'Price Range', 462, '742.00', '2780.00', NULL);
INSERT INTO `sub_filter` VALUES (469, 'white', 463, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (470, 'metal', 463, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (471, 'green', 463, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (472, 'bosch', 464, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (473, 'capasity', 465, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (474, 'Price Range', 466, '742.00', '2640.00', NULL);
INSERT INTO `sub_filter` VALUES (475, 'white', 467, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (476, 'metal', 467, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (477, 'green', 467, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (478, 'bosch', 468, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (479, 'capasity', 469, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (480, 'Price Range', 470, '2780.00', '2780.00', NULL);
INSERT INTO `sub_filter` VALUES (481, 'white', 471, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (482, 'bosch', 472, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (483, 'capasity', 473, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (484, 'Price Range', 474, '1620.00', '1799.00', NULL);
INSERT INTO `sub_filter` VALUES (485, 'gray', 475, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (486, 'white', 475, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (487, 'capasity', 477, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (488, 'Price Range', 478, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (489, 'bosch', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (490, 'Price Range', 481, '659.00', '4500.00', NULL);
INSERT INTO `sub_filter` VALUES (491, 'black', 482, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (492, 'metal', 482, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (493, 'white', 482, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (494, 'width', 484, '0', '600', NULL);
INSERT INTO `sub_filter` VALUES (495, 'height', 484, '0', '600', NULL);
INSERT INTO `sub_filter` VALUES (496, 'depth', 484, '0', '585', NULL);
INSERT INTO `sub_filter` VALUES (497, 'microvare volume', 487, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (498, 'Price Range', 489, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (499, 'width', 492, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (500, 'height', 492, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (501, 'depth', 492, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (502, 'microvare volume', 495, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (503, 'bosch', 496, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (504, 'Price Range', 497, '825.00', '2650.00', NULL);
INSERT INTO `sub_filter` VALUES (505, 'black', 498, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (506, 'metal', 498, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (507, 'white', 498, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (508, 'width', 500, '0', '597', NULL);
INSERT INTO `sub_filter` VALUES (509, 'height', 500, '0', '600', NULL);
INSERT INTO `sub_filter` VALUES (510, 'depth', 500, '0', '570', NULL);
INSERT INTO `sub_filter` VALUES (511, 'microvare volume', 503, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (512, 'bosch', 263, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (513, 'siemens', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (514, 'siemens', 248, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (515, 'aeg', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (516, 'metal', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (517, 'cata', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (518, 'cata', 426, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (519, 'metal', 428, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (520, 'haier', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (521, 'hitachi', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (522, 'brown', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (523, 'hotpoint', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (524, 'hotpoint', 220, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (525, 'white', 222, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (526, 'körting', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (527, 'white glass', 412, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (528, 'mpm', 426, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (529, 'nodor', 426, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (530, 'samsung', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (531, 'sharp', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (532, 'smeg', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (533, 'whirlpool', 410, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (534, 'whirlpool', 426, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (535, 'barazza', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (536, 'barazza', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (537, 'beige', 482, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (538, 'barazza', 248, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (539, 'cata', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (540, 'white', 270, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (541, 'brown', 270, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (542, 'cata', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (543, 'brown', 482, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (544, 'cata', 442, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (545, 'cata', 263, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (546, 'cata', 248, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (547, 'cata', 253, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (548, 'aeg', 253, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (549, 'körting', 248, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (550, 'körting', 253, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (551, 'körting', 263, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (552, 'körting', 341, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (553, 'black', 343, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (554, 'körting', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (555, 'körting', 460, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (556, 'körting', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (557, 'gorenje', 333, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (558, 'kitchenaid', 333, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (559, 'beige', 335, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (560, 'black', 335, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (561, 'gorenje', 312, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (562, 'kitchenaid', 312, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (563, 'bosch', 504, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (564, 'körting', 504, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (565, 'capasity', 505, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (566, 'Price Range', 506, '742.00', '2780.00', NULL);
INSERT INTO `sub_filter` VALUES (567, 'white', 507, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (568, 'metal', 507, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (569, 'green', 507, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (570, 'bosch', 508, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (571, 'körting', 508, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (572, 'capasity', 509, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (573, 'Price Range', 510, '742.00', '2640.00', NULL);
INSERT INTO `sub_filter` VALUES (574, 'white', 511, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (575, 'metal', 511, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (576, 'green', 511, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (577, 'bosch', 512, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (578, 'capasity', 513, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (579, 'Price Range', 514, '2780.00', '2780.00', NULL);
INSERT INTO `sub_filter` VALUES (580, 'white', 515, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (581, 'bosch', 516, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (582, 'capasity', 517, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (583, 'Price Range', 518, '1620.00', '1799.00', NULL);
INSERT INTO `sub_filter` VALUES (584, 'gray', 519, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (585, 'white', 519, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (586, 'bosch', 520, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (587, 'capasity', 521, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (588, 'Price Range', 522, '1620.00', '1799.00', NULL);
INSERT INTO `sub_filter` VALUES (589, 'gray', 523, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (590, 'white', 523, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (591, 'capasity', 525, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (592, 'Price Range', 526, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (593, 'bosch', 528, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (594, 'Price Range', 529, '2690.00', '3290.00', NULL);
INSERT INTO `sub_filter` VALUES (595, 'white', 530, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (596, 'drying capasity', 531, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (597, 'washing capasity', 531, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (598, 'bosch', 532, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (599, 'Price Range', 533, '2690.00', '3290.00', NULL);
INSERT INTO `sub_filter` VALUES (600, 'white', 534, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (601, 'drying capasity', 535, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (602, 'washing capasity', 535, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (603, 'capasity', 537, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (604, 'Price Range', 538, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (605, 'drying capasity', 539, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (606, 'washing capasity', 539, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (607, 'bosch', 540, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (608, 'Price Range', 541, '2690.00', '3290.00', NULL);
INSERT INTO `sub_filter` VALUES (609, 'white', 542, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (610, 'drying capasity', 543, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (611, 'washing capasity', 543, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (612, 'bosch', 544, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (613, 'Price Range', 545, '2690.00', '3290.00', NULL);
INSERT INTO `sub_filter` VALUES (614, 'white', 546, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (615, 'drying capasity', 547, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (616, 'washing capasity', 547, '0', '0', NULL);
INSERT INTO `sub_filter` VALUES (617, 'capasity', 549, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (618, 'Price Range', 550, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (619, 'drying capasity', 551, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (620, 'washing capasity', 551, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (621, 'kitchenaid', 315, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (622, 'red', 317, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (623, 'blanco', 302, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (624, 'franke', 304, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (625, 'red', 306, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (626, 'teka', 304, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (627, 'black', 306, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (628, 'ariston', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (629, 'smeg', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (630, 'whirlpool', 480, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (631, 'elİca', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (632, 'nodor', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (633, 'smeg', 268, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (634, 'gorenje', 329, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (635, 'kitchenaid', 329, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (636, 'red', 331, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (637, 'beige', 331, NULL, NULL, NULL);
INSERT INTO `sub_filter` VALUES (638, 'black', 331, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (0, 'All Products');
INSERT INTO `types` VALUES (1, 'Stasionar');
INSERT INTO `types` VALUES (2, 'Build in');
INSERT INTO `types` VALUES (3, 'Nerjaveyka');
INSERT INTO `types` VALUES (4, 'Qranit');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_admin` tinyint(1) NULL DEFAULT 0,
  `is_active` tinyint(1) NULL DEFAULT 0,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (27, 'Nicat', 'Memmedzade', 'nicatmemmedzade@hotmail.com', '$2y$10$bsGjQnpatqsxQGubMYGDle0Z140ood7owd9QL3w9xNBNP.EhSr2/e', 1, 1, 'UDzLPIeSlCDbOCKYX0Cwrl4UK2tDR4djKf5xF1ISDwGtTT4cgbijC1aky1V8', 'hgfhfg', '2020-04-10 00:00:14', '2020-04-10 00:00:14', NULL, NULL);
INSERT INTO `users` VALUES (60, 'test123.', NULL, 'nicatmemmedzade.phptdev@gmail.com', NULL, 0, 0, NULL, '', NULL, NULL, NULL, '0515133109');
INSERT INTO `users` VALUES (61, 'Məmmədzadə', NULL, 'nicatmemmedzade.phpdev@gmail.com', NULL, 0, 0, NULL, '', NULL, NULL, NULL, '0515133109');
INSERT INTO `users` VALUES (62, 'meshque', NULL, 'nicatmemmedzade@hotmail.com', NULL, 0, 0, NULL, '', NULL, NULL, NULL, '4678439303');

SET FOREIGN_KEY_CHECKS = 1;
