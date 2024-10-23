/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 29/05/2024 20:40:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 3, '张三丰', '上海市浦东新区888号', '18899997777');
INSERT INTO `address` VALUES (3, 3, '张大嘴', '北京市海淀区999号', '18800001111');
INSERT INTO `address` VALUES (4, 6, '李大嘴', '山东省烟台市福山区超级大楼888', '14455559999');
INSERT INTO `address` VALUES (5, 3, '丁真', '山东省烟台市芝罘区百货大楼', '11122223333');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (2, 'meshe', '123', 'ifashion', 'http://localhost:9090/files/1711523225687-avatar.png', 'BUSINESS', '18899990000', 'meshe@xm.com', 'MsShe(慕姗.诗怡)--始创于2010年，定义“欧美简约、奢华风格 致力传播丰盈女性自信优雅之美 诠释现代丰盈女性独立自主，淡然优雅的淑女气 享受生活，拒绝平庸，于时尚与生活中挥洒自如，淡淡演绎完美生活', '审核通过');
INSERT INTO `business` VALUES (3, 'perfume', '123', '香水之家', 'http://localhost:9090/files/1711703153205-1.jpg', 'BUSINESS', '18877776666', 'perfume@xm.com', '111111111111111111111111111', '审核通过');
INSERT INTO `business` VALUES (4, 'beiens', '123', 'beiens', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (5, 'lingshi', '123', 'lingshi', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(0) NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (5, 3, 10, 2, 2);
INSERT INTO `cart` VALUES (10, 3, 12, 2, 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(0) NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 3, 9, 2);
INSERT INTO `collect` VALUES (3, 3, 10, 2);
INSERT INTO `collect` VALUES (4, 3, 12, 2);
INSERT INTO `collect` VALUES (5, 3, 11, 2);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(0) NULL DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (3, 3, 10, 2, '包好看的，穿上须佐都会扫地了', '2024-04-16 01:49:57');
INSERT INTO `comment` VALUES (4, 6, 9, 2, '这就是第三之力，须佐能乎！', '2024-04-16 02:20:35');
INSERT INTO `comment` VALUES (5, 3, 9, 2, '好东西不多说了，包好的老弟', '2024-04-25 06:03:06');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品主图',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int(0) NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int(0) NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (9, '设计感修身短款t恤女夏季新款圆领薄款短袖白色高腰紧身露脐上衣', 'http://localhost:9090/files/1711702535771-1.png', '<p><br/></p><p><img src=\"http://localhost:9090/files/1711723513475-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711723529335-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711723537828-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711723540887-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711723547624-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59.00, '件', 4, 16, 2);
INSERT INTO `goods` VALUES (10, '美式复古短袖T恤女纯棉夏ins潮半袖2023年新款设计感小众v领体桖', 'http://localhost:9090/files/1711982501772-1.png', '<p><img src=\"http://localhost:9090/files/1711982599885-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711982609046-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711982612236-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711982617770-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711982621017-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 49.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (11, 'MsShe大码女装新款冬季老钱风立领调节收腰菱格夹棉长款外套', 'http://localhost:9090/files/1713995547780-z1.png', '<p><img src=\"http://localhost:9090/files/1713995587067-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995591095-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995594507-3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995597912-4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995602527-5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995605620-6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995608978-7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 499.00, '件', 2, 16, 2);
INSERT INTO `goods` VALUES (12, '【赠送延长扣】MsShe大码外穿无钢圈防震内衣聚拢一体式运动文胸', 'http://localhost:9090/files/1713995627202-1.png', '<p><img src=\"http://localhost:9090/files/1713995647428-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995651943-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995655216-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995658116-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995660953-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995664177-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995667478-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713995670339-d8.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 69.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (13, 'MsShe大码女装新款胖mm夏装遮肚子200斤裹胸显瘦碎花连体泳衣', 'http://localhost:9090/files/1716978880976-1.png', '<p><img src=\"http://localhost:9090/files/1716980560642-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980563953-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980575086-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980583265-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980587538-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980590712-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716980594653-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 159.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (14, '大码女装夏装胖妹妹简约OL轻熟配腰带V领衬衫连衣裙', 'http://localhost:9090/files/1716983172294-z1.png', '<p><img src=\"http://localhost:9090/files/1716983182389-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983186098-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983189422-3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983192176-4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983197719-5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983201802-6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983205201-7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983210556-8.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 100.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (15, 'JEEP吉普休闲夹克男士外套春秋季潮牌工装宽松青年潮流连帽上衣服', 'http://localhost:9090/files/1716983413306-1.png', '<p><img src=\"http://localhost:9090/files/1716983436226-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983441206-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983447192-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716983454875-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 109.00, '件', 0, 15, 2);
INSERT INTO `goods` VALUES (16, '单两件大码长袖t恤男秋季休闲圆领印花上衣潮流ins百搭体恤上衣', 'http://localhost:9090/files/1716984055518-1.png', '<p><img src=\"http://localhost:9090/files/1716984082289-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984086123-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984088976-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984093642-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984096351-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 99.00, '件', 0, 15, 2);
INSERT INTO `goods` VALUES (17, '清仓捡漏商场撤回外贸男装休闲运动裤潮牌束脚宽松大码灯芯绒卫裤', 'http://localhost:9090/files/1716984110937-1.png', '<p><img src=\"http://localhost:9090/files/1716984128463-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984132860-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984135740-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984149881-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984155882-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984159582-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 129.00, '件', 0, 15, 2);
INSERT INTO `goods` VALUES (18, '啄木鸟灯芯绒外套男秋冬季加绒加厚中老年羊羔绒棉衣休闲夹克男装', 'http://localhost:9090/files/1716984799884-1.png', '<p><img src=\"http://localhost:9090/files/1716984825149-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984829696-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984833395-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984838397-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984843451-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984846915-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 150.00, '件', 0, 15, 2);
INSERT INTO `goods` VALUES (19, '森马集团GENIOLAMODE连帽外套男开衫熊猫春秋季大码灰色薄款卫衣', 'http://localhost:9090/files/1716984902082-1.png', '<p><img src=\"http://localhost:9090/files/1716984922537-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984925813-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984931046-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1716984937782-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 129.00, '件', 0, 15, 2);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(0) NULL DEFAULT NULL COMMENT '商家ID',
  `num` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `address_id` int(0) NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, '20240412204759', 10, 2, 2, 3, 98.00, 1, '已评价');
INSERT INTO `orders` VALUES (5, '20240412205033', 9, 2, 4, 3, 236.00, 1, '已评价');
INSERT INTO `orders` VALUES (6, '20240412212520', 9, 2, 1, 6, 59.00, 4, '已评价');
INSERT INTO `orders` VALUES (7, '20240412212520', 10, 2, 2, 6, 98.00, 4, '已完成');
INSERT INTO `orders` VALUES (8, '20240412223458', 9, 2, 1, 6, 59.00, 4, '待发货');
INSERT INTO `orders` VALUES (9, '20240425070327', 9, 2, 4, 3, 236.00, 1, '待发货');
INSERT INTO `orders` VALUES (10, '20240529202057', 11, 2, 2, 3, 998.00, 1, '待收货');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '图书音像', '这是图书音像', 'http://localhost:9090/files/1711349920895-图书音像.png');
INSERT INTO `type` VALUES (2, '厨具/收纳/宠物', '这是厨具/收纳/宠物', 'http://localhost:9090/files/1711350468665-居家.png');
INSERT INTO `type` VALUES (3, '医药/保健品', '这是医药/保健品', 'http://localhost:9090/files/1711350551267-医药保健.png');
INSERT INTO `type` VALUES (4, '家纺/家饰/鲜花', '这是家纺/家饰/鲜花', 'http://localhost:9090/files/1711350599182-家纺家饰.png');
INSERT INTO `type` VALUES (5, '汽车/配件/用品', '这是汽车/配件/用品', 'http://localhost:9090/files/1711350625697-汽车配件.png');
INSERT INTO `type` VALUES (6, '家具/灯具/卫浴', '这是家具/灯具/卫浴', 'http://localhost:9090/files/1711350654662-家具建材.png');
INSERT INTO `type` VALUES (7, '生活电器/生活用品', '这是生活电器/生活用品', 'http://localhost:9090/files/1711350698169-家用电器.png');
INSERT INTO `type` VALUES (8, '水果/生鲜', '这是水果/生鲜', 'http://localhost:9090/files/1711350721842-喵鲜生.png');
INSERT INTO `type` VALUES (9, '零食/茶酒/进口食品', '这是零食/茶酒/进口食品', 'http://localhost:9090/files/1711350784069-食品.png');
INSERT INTO `type` VALUES (10, '母婴/玩具', '这是母婴/玩具', 'http://localhost:9090/files/1711350943021-母婴玩具.png');
INSERT INTO `type` VALUES (11, '手机/数码/配件', '这是手机/数码/配件', 'http://localhost:9090/files/1711350962491-数码手机.png');
INSERT INTO `type` VALUES (12, '电脑/电子办公/配件', '这是电脑/电子办公/配件', 'http://localhost:9090/files/1711350992475-电脑.png');
INSERT INTO `type` VALUES (13, '珠宝/护肤/饰品', '这是珠宝/护肤/饰品', 'http://localhost:9090/files/1711351021068-珠宝饰品.png');
INSERT INTO `type` VALUES (14, '女鞋/男鞋/箱包', '这是女鞋/男鞋/箱包', 'http://localhost:9090/files/1711351048427-鞋_箱包.png');
INSERT INTO `type` VALUES (15, '精品男装/运动户外', '这是精品男装/运动户外', 'http://localhost:9090/files/1711351071557-男装.png');
INSERT INTO `type` VALUES (16, '靓丽女装/内衣', '这是靓丽女装/内衣', 'http://localhost:9090/files/1711351089139-女装内衣.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'zhangsan', '123', '张三', 'http://localhost:9090/files/1711782320222-狗头.jpg', 'USER', '18811112222', 'zhangsan@xm.com');
INSERT INTO `user` VALUES (6, 'lisi', '123', 'lisi', 'http://localhost:9090/files/1712135088002-lisi.jpg', 'USER', '17788889999', 'lisi@xm.com');
INSERT INTO `user` VALUES (7, 'wangwu', '123', 'wangwu', NULL, 'USER', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
