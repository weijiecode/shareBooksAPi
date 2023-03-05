/*
 Navicat Premium Data Transfer

 Source Server         : t
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : sharebooks

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 05/03/2023 23:47:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `bookphoto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书图片',
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书名称',
  `bookthink` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书感想',
  `bookrate` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书评分',
  `booktype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书类型',
  `booktime` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '阅读时间',
  `createtime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (5, 'root', 'http://localhost:5001/public/upload/a37b5bd86bc5bc371fb102d2200ccb44', '观念的跃升', '继《枪炮、病菌与钢铁》《人类简史》之后，又一解答人类文明逻辑的巨作。“比肩汤因比、布罗代尔的历史学家”从思想视角阐述20万年人类大历史。带你领略人类知识版图全貌，认识我们自己实现思想跃升', '3', '文艺作品', '15', '2022-12-30 14:44:42');
INSERT INTO `book` VALUES (6, 'root', 'http://localhost:5001/public/upload/0378896ce48d02c66885d06b00a5b34a', '苏格拉底的申辩', '柏拉图是苏格拉底的学生，哲学名著。苏格拉底为哲学献身，此书内容记录了此段哲学历史并将大师学说著书给后人，西方哲学的起步对后人影响极大。', '3', '专业著作', '10', '2022-12-30 14:47:12');
INSERT INTO `book` VALUES (7, 'root', 'http://localhost:5001/public/upload/8979c783715711c044a044f3ce633f9f', '存在主义咖啡馆', '“我们无法完全了解或信任自己，我们无法为我们所做之事找到任何借口或解释；可是，我们又必须将自己的存在和关系建基于某种稳固的事物上，因为不这样的话，我们就不可能活下去。”所以我们需要某种存在主义。', '3', '文艺作品', '28', '2022-12-30 14:50:04');
INSERT INTO `book` VALUES (8, 'root', 'http://localhost:5001/public/upload/fb1ea4f25ec13c5391453d086c140fcd', '沉思录', '这是一部哲学经典。作者是斯多葛派著名哲学家，古罗马帝国皇帝马可·奥勒留·安东尼。这本书主要是从人与人，人与社会，人与神，人与自身之间的关系探讨生命，自然。读完这本书之后，你会从新审视自己的人生观，世界观，价值观。重视整体，和谐统一，对于自然的一切事物都要欣然接受，既然所有的一切快乐不幸都是不可避免的，那就让我们平静的面对。', '3', '个人传记', '13', '2022-12-30 14:51:50');
INSERT INTO `book` VALUES (9, 'root', 'http://localhost:5001/public/upload/2a3410c1fe656358773c1ed3f38120a8', ' 尘埃落定', '早在上高中的时候我就知道这本书了，但是当时只买了同属茅盾文学奖的《长恨歌》，这几年兜兜转转买了很多书，这次索性把这本书也买下来，说起来我也买了不少茅盾文学奖的作品了。\n', '3', '专业著作', '10', '2022-12-30 14:54:24');
INSERT INTO `book` VALUES (10, 'root', 'http://localhost:5001/public/upload/c3e3ecf90a47a60db2c9c73069bb8e57', '繁花', '似乎很久没读这么酣畅淋漓的小说了。一座城市的历史，或一座城市的百科全书。被革命、资本、消费淘尽了的对这座城市的记忆，仿佛突然回到了脑海里，潮潮翻翻。如果用绘画做比喻，《繁花》则是写意画，处处显露出作者对于笔下人事最深沉热烈的人生爱。', '3', '个人传记', '32', '2022-12-30 14:56:27');
INSERT INTO `book` VALUES (11, 'root', 'http://localhost:5001/public/upload/7a471062b1f8d330ccca0f280c00c36c', '活着', '虽然已经读过多遍，看到《活着》出了新版还是毫不犹豫地购买，毕竟是我的文学启蒙书之一。附赠手稿让人感受到文字的温度，值得收藏一下。', '3', '文艺作品', '15', '2022-12-30 14:59:22');
INSERT INTO `book` VALUES (12, 'root', 'http://localhost:5001/public/upload/abb2ccf219fe415618473e415ee9127c', '额尔古纳河右岸', '《额尔古纳河右岸》讲述的是鄂温克族人的变迁。他们敬畏山神，民风淳朴，以打猎和放养驯鹿为生。书中他们对于山川草木的热爱非同寻常。同时萨满为了救人而牺牲自己儿女的事情也实在是让人心酸。这是一本寓意十分深刻的书，它引起我们对了人与自然和谐相处的深刻反思', '3', '文艺作品', '10', '2022-12-30 15:01:33');
INSERT INTO `book` VALUES (13, 'root', 'http://localhost:5001/public/upload/4542f3b2e59b45f5d6ac506baa58ca5d', '自在', '我想，那是“找到自我”之后特有的样子，“寻找自我”的过程会经历很多事、见很多人，从迷茫到清晰不断调整自己，最终确信自我的存在感与价值感，在自己感兴趣的、认为重要和有意义的事情上有所成就。所以，《自在》也是一本陪伴你探索自我的小书，她有10个章节，分别是：自主、自省、自律、自修、自洽、自如、自然、自愈、自信和自在。', '3', '个人传记', '13', '2022-12-30 17:12:56');
INSERT INTO `book` VALUES (14, 'root', 'http://localhost:5001/public/upload/2eec3ac8d3dbef241c8d1b72d8f618f8', '一起泡泡', '特别累的时候，可以放松一下吗？水温越高越好吗?就要泡到大汗淋漓吗？网上热销的，适合所有人吗？答案全是NO！ 因为有诸多功效，老少皆宜，已日益成为一种养生风尚。但其实也存在很多误区，除了水温、时长以外，其实有很多门道。要知道，泡脚作为一种药浴手段，之所以有疗效，就是因为它有偏性，有针对性，想要效果好，就要辨证论治，不能不问药性、不知自身体质，随便就泡。', '3', '实用类大众图书', '26', '2022-12-30 17:18:17');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `username` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `booklist` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分享书单',
  `createtime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分享时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES (1, 'root', '测试书单', '[{\"value\":\"1\",\"csty\":\"border: 4px solid rgb(69,175,167);\"},{\"value\":\"2\",\"csty\":\"border: 4px solid rgb(164,97,186);\"},{\"value\":\"3\",\"csty\":\"border: 4px solid rgb(138,139,246);\"}]', '2022-12-30 14:27:58');
INSERT INTO `list` VALUES (2, 'root', '测试标题2', '[{\"value\":\"测试书名1\",\"csty\":\"border: 4px solid rgb(201,157,208);\"},{\"value\":\"测试书名2\",\"csty\":\"border: 4px solid rgb(184,254,116);\"},{\"value\":\"测试书名3\",\"csty\":\"border: 4px solid rgb(125,121,34);\"}]', '2022-12-30 18:12:21');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '唯一值',
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `nickname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '0：女，1：男',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '123456', 't', 'test@163.com', '19999999999', '暂无简介~', '1');
INSERT INTO `users` VALUES (2, 'test', '123456', 'Alice', '123', '123', NULL, '0');

SET FOREIGN_KEY_CHECKS = 1;
