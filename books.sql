/*
 Navicat Premium Data Transfer

 Source Server         : rootlocalhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : book-manage-sys

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 10/08/2025 17:28:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书籍表主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍名',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍封面',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '出版社',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍的作者',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '国际标准书号',
  `num` int NULL DEFAULT NULL COMMENT '馆藏数量',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书籍简介',
  `bookshelf_id` int NULL DEFAULT NULL COMMENT '书架ID',
  `category_id` int NULL DEFAULT NULL COMMENT '书籍类别ID',
  `is_plan_buy` tinyint(1) NULL DEFAULT NULL COMMENT '是否计划购买',
  `plan_buy_time` date NULL DEFAULT NULL COMMENT '计划购买时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` (`id`, `name`, `cover`, `publisher`, `author`, `isbn`, `num`, `detail`, `bookshelf_id`, `category_id`, `is_plan_buy`, `plan_buy_time`, `create_time`) VALUES (17, 'The Book of Healing', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=01cb24f9786267532898.jpg', 'Happiness Culture', 'Wan Tete', '30451414', 7, 'The Book of Healing: Life will never end, and people who have healed themselves will grow into a new self! (A collection of insights from the ten years of creation by million-selling author Wan Tete)', 1, 11, 0, NULL, '2025-04-30 12:06:55'), (18, 'Making Days Better Slowly', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=994854c9786263585003.webp', 'Eurasian Press', 'Huang Shanliao', '29002064', 7, 'The book cover uses two adjacent circles to represent the two voices in the author\'s heart.', 4, 3, 0, NULL, '2025-04-30 12:08:06'), (19, 'Who Is the Strongest?', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=596259b9786267586181.jpg', 'Dayi Culture - Dazhong International Bookstore', 'Za Ba Ren Studio', '30177138', 9, 'The amazing little-known facts that are not taught in school and that your classmates don\'t know are here!\nIt will help you to uncover all kinds of strange little secrets in the vast world.', 3, 9, 0, NULL, '2025-04-30 12:09:32'), (22, 'The World\'s Most Transparent Story', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=829702c9789573342786.jpg', 'Crown Culture', 'Hikaru Sugii', '30451224', 7, 'Only paper books can make it happen,\nthe greatest respect and deepest love for trickery!', 3, 3, 0, NULL, '2025-05-14 12:30:54'), (23, 'Running Abroad Alone: Naoko Takagi\'s Overseas Happy Marathon ', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=66319789789861799438.jpg', 'Daitian', 'Naoko Takagi', '9789861799438', 8, 'Although marathon is just running, it is an interesting and fascinating sport.', 3, 9, 0, NULL, '2025-05-28 09:51:18'), (27, 'Records of the Grand Historian', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=5956adf41S7flsgO6L._SY445_SX342_.jpg', '艺雅中文社', 'Sima Qian', '7-101-00304-4', 10, 'The first chronicle-style general history of my country, it records major historical events and figures from the Yellow Emperor to the Taichu period of Emperor Wu of Han. ', 1, 1, 0, NULL, '2025-07-08 22:21:15'), (28, 'Comprehensive Mirror to Aid in Government', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=5e4e2a8917w-yiTj1L._AC_UY436_FMwebp_QL65_.webp', '吉林中国集团酒店安全公司', 'Sima Guang', '978-7-101-08112-1', 2, 'This is a chronological history masterpiece covering 16 dynasties and 1362 years, from the Warring States Period to the Five Dynasties and Ten Kingdoms. It summarizes the lessons learned from many historical events for the rulers to learn from.', 1, 1, 0, NULL, '2025-07-08 22:25:57'), (29, 'The Three-Body Problem', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=d32c4fb51GyhTOBD7L.jpg', '重庆出版社', 'Liu Cixin', '978-7-5366-9396-8', 13, 'The work mainly tells the information exchange, life-and-death struggle between the human civilization on Earth and the Three-Body Civilization, and the rise and fall of the two civilizations in the universe.', 5, 2, 0, NULL, '2025-07-08 22:33:59'), (30, 'Flowers in the Tibetan Sea ', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=74e7a7071hd9ZogIUL._SY522_.jpg', '北京联合出版公司', 'Nanpai Sanshu', '9787559624710', 12, 'Chasing clues: Wu Xie\'s five years of peaceful life were interrupted by Jin Wantang\'s sudden visit. Jin Wantang knew that the scorpion pattern on the moonstone brought out from the Zhang family\'s ancient building was related to the young Menyouping.', 5, 2, 0, NULL, '2025-07-08 22:41:49'), (31, 'Hamlet (Signet Classic Shakespeare)', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=4ec9846deda425f48334e135bc97c35dea1e80f@resize_w900_nl.webp', '五南圖書出版股份有限公司', 'William Shakespeare', '9780451526922', 3, 'It tells the story of Hamlet\'s uncle Claudius who murdered his father and usurped the throne, and Hamlet\'s revenge on his uncle for his father. This work explores themes such as revenge, morality, madness and human nature.', 6, 10, 0, NULL, '2025-07-08 22:47:59'), (32, 'Harry Potter', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=f03497e81DkH0yVw5L._SY522_.jpg', 'Scholastic', 'J.K. Rowling', '978-7-02-015326-1', 9, 'The Harry Potter series tells the story of an orphan named Harry Potter who learns that he is a wizard on his 11th birthday and enters Hogwarts School of Witchcraft and Wizardry to learn magic. ', 5, 2, 0, NULL, '2025-07-09 09:49:22'), (33, 'Foundation', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=1fc4be881njM8d5w3L._AC_UY436_FMwebp_QL65_.webp', 'Gnome Press', 'Isaac Asimov', '9780553290348', 2, '\"Foundation\" is a science fiction novel written by American writer Isaac Asimov, the first in the \"Foundation Series\". The story is set in the distant future, when the Galactic Empire is gradually declining.', 5, 2, 0, NULL, '2025-07-09 09:51:25'), (34, 'Charlotte\'s Web', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=c803b0871huq0raegL._AC_UY436_FMwebp_QL65_.webp', '新蕾出版社', 'E.B. White', '9787530758997', 10, 'Wilbur the pig was nearly slaughtered shortly after his birth, but fortunately, Fern saved and raised him. When Wilbur was sold to the barn of the Zuckerman family, he made many animal friends, including Charlotte, a smart and loving spider.', 6, 9, 0, NULL, '2025-07-09 09:54:19'), (35, 'Charlie and the Chocolate Factory ', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=37d8fb961r2drm7pmL._AC_UL640_FMwebp_QL65_.webp', '明天出版社', 'Roald Dahl', '9787533255944', 7, 'The poor boy Charlie gets a golden ticket and enters Willy Wonka\'s chocolate factory, where he experiences a wonderful adventure, satirizes greed, and conveys kindness and moderation.', 6, 9, 0, NULL, '2025-07-09 10:12:05'), (36, 'Psychology and Life ', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=2aedf4e71usfby1yHL._AC_UY436_FMwebp_QL65_.webp', '人民邮电出版社', 'Richard J. Gerrig', '9787115461650', 6, '\"Psychology and Life\" is a classic introductory textbook in the field of psychology and is widely used in many universities around the world. ', 6, 11, 0, NULL, '2025-07-09 10:14:53'), (37, 'Influence The Psychology of Persuasion', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=94dbc4d51Q4MLl75YL._AC_UY436_FMwebp_QL65_.webp', '中信出版社', 'Robert B. Cialdini', '9787508621250', 8, 'Influence is a classic in the field of psychology and marketing. ', 6, 11, 0, NULL, '2025-07-09 10:18:24'), (39, 'A Short History of Nearly Everything', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=627734f71xiJ4Iw0VL._SY522_.jpg', 'Crown', 'Bill Bryson', '0307885151', 7, 'A fascinating exploration of science, covering everything from the Big Bang to the rise of civilization, written in an accessible and engaging style by Bill Bryson.', 1, 1, 0, NULL, '2025-07-21 13:22:16'), (40, 'The Search for Modern China', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=5aa902661MJLHNMe1L._SX522_.jpg', 'Blackstone Audio, Inc.', 'Jonathan D. Spence', 'B009C5OLQI', 2, 'The history of China is as rich and strange as that of any country on earth. Yet for many, China’s history remains unknown, or known only through the stylized images that generations in the West have cherished or reviled as truth.', 1, 1, 0, NULL, '2025-07-21 13:26:24'), (41, 'Journey to the West ', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=38d9d1681-4GxHzFuL._SX522_.jpg', 'BOVCM', 'Wu Chengen', 'B075ZFF7MR', 7, 'Journey to the West is the first romantic chapter-by-chapter novel about gods and demons in ancient China. The book is based on the historical event of \"Tang Monk\'s Journey to the West\". ', 3, 2, 0, NULL, '2025-07-21 13:31:57'), (55, 'Ways of Seeing', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=3768a76756317f4c9f23c8f02e36baaabbc9e98.jpeg', 'Penguin Books', 'John Berger', '9780141189468', 5, 'Ways of Seeing explores the relationships between art, society, culture, and power. It analyzes the ideological and cultural connotations behind the act of seeing, challenging traditional art concepts, and guiding readers.', 3, 3, 0, NULL, '2025-08-09 10:04:28');
COMMIT;

-- ----------------------------
-- Table structure for book_order_history
-- ----------------------------
DROP TABLE IF EXISTS `book_order_history`;
CREATE TABLE `book_order_history`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书预约历史ID',
  `book_id` int NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `deadline_num` int NULL DEFAULT NULL COMMENT '借书的数量',
  `is_return` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经归还',
  `return_time` date NULL DEFAULT NULL COMMENT '归还时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '借书时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of book_order_history
-- ----------------------------
BEGIN;
INSERT INTO `book_order_history` (`id`, `book_id`, `user_id`, `deadline_num`, `is_return`, `return_time`, `create_time`) VALUES (30, 19, 16, 1, 1, '2025-05-22', '2025-05-14 11:46:57'), (34, 17, 16, 1, 1, '2025-06-26', '2025-05-27 10:10:42'), (35, 22, 16, 1, 0, '2025-06-26', '2025-05-27 14:56:54'), (39, 30, 16, 1, 0, '2025-08-07', '2025-07-08 22:49:40'), (40, 36, 16, 2, 0, '2025-08-13', '2025-07-14 14:59:47'), (49, 31, 16, 1, 0, '2025-08-13', '2025-07-14 18:47:25'), (50, 19, 16, 1, 0, '2025-08-13', '2025-07-14 19:15:01'), (51, 37, 16, 1, 0, '2025-08-13', '2025-07-14 19:15:14'), (53, 32, 16, 1, 0, '2025-08-14', '2025-07-15 12:09:44'), (54, 33, 16, 1, 0, '2025-08-14', '2025-07-15 12:09:49'), (55, 34, 16, 1, 0, '2025-08-14', '2025-07-15 12:09:53'), (56, 29, 16, 1, 0, '2025-08-14', '2025-07-15 12:09:57'), (57, 28, 16, 1, 0, '2025-08-14', '2025-07-15 12:09:59'), (58, 23, 16, 1, 0, '2025-08-14', '2025-07-15 12:10:03'), (59, 17, 16, 1, 1, '2025-08-14', '2025-07-15 12:30:32'), (91, 55, 47, 1, 0, '2025-09-08', '2025-08-09 10:06:48'), (93, 40, 47, 1, 0, '2025-09-08', '2025-08-09 10:07:54'), (94, 28, 47, 1, 0, '2025-09-08', '2025-08-09 10:10:18');
COMMIT;

-- ----------------------------
-- Table structure for book_rss_history
-- ----------------------------
DROP TABLE IF EXISTS `book_rss_history`;
CREATE TABLE `book_rss_history`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书订阅ID',
  `book_id` int NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订阅时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of book_rss_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for book_save
-- ----------------------------
DROP TABLE IF EXISTS `book_save`;
CREATE TABLE `book_save`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书收藏主键ID',
  `book_id` int NULL DEFAULT NULL COMMENT '图书ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of book_save
-- ----------------------------
BEGIN;
INSERT INTO `book_save` (`id`, `book_id`, `user_id`) VALUES (20, 23, 19), (21, 24, 20), (22, 26, 21), (27, 28, 27), (28, 36, 27), (29, 34, 27), (44, 17, 16), (46, 37, 16), (47, 36, 16), (48, 33, 16), (49, 31, 16), (50, 23, 16), (51, 22, 16), (52, 19, 16), (53, 18, 16), (54, 37, 28), (55, 28, 30), (57, 40, 33), (58, 39, 33), (59, 39, 37), (60, 40, 37), (61, 28, 37), (63, 28, 40), (65, 40, 41), (66, 28, 41), (68, 41, 42), (69, 28, 42), (70, 41, 16), (71, 41, 43), (73, 28, 43), (74, 41, 44), (75, 40, 44), (76, 27, 44), (77, 53, 45), (79, 28, 45), (80, 55, 47), (81, 40, 47), (82, 39, 47), (83, 28, 47), (84, 55, 16);
COMMIT;

-- ----------------------------
-- Table structure for bookshelf
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf`;
CREATE TABLE `bookshelf`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书架表主键ID',
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架所在的楼层',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架所属的区域',
  `frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '书架名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of bookshelf
-- ----------------------------
BEGIN;
INSERT INTO `bookshelf` (`id`, `floor`, `area`, `frame`) VALUES (1, 'Floor 1', 'East Zone', 'A2'), (3, 'Floor 2', 'North Zone', 'A1'), (4, 'Floor 1', 'West Zone', 'A1'), (5, 'Floor 3', 'West Zone', 'C3'), (6, 'Floor 4', 'West Zone', 'C2');
COMMIT;

-- ----------------------------
-- Table structure for bookshelf_category
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf_category`;
CREATE TABLE `bookshelf_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书架种类关联表主键',
  `bookshelf_id` int NULL DEFAULT NULL COMMENT '书架ID',
  `category_id` int NULL DEFAULT NULL COMMENT '书籍类别ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of bookshelf_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书籍类别主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `name`) VALUES (1, 'History'), (2, 'Fiction'), (3, 'Literature'), (9, 'Children\'s Books'), (10, 'Foreign Publications'), (11, 'Psychology'), (32, 'Science');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `name`, `content`, `create_time`) VALUES (15, '28.04.2025節日及公眾假期開放時間 [5.5.2025]', '<ul><li style=\"text-align: start;\"><a href=\"https://www.hkpl.gov.hk/tc/library-notices/notice_ml8_temporarysuspension_29-30.4.2025_revvpldhoim2273g8j1bg8rsca.html\" target=\"\">28.04.2025流動圖書館暫停服務 – 流動圖書館八 [暫停服務日期: 29-30.4.2025]</a></li></ul>', '2025-04-30 12:12:13'), (40, 'Mobile Library Service Suspension – Mobile Library No. 9 [Suspension Date: 22.7.2025]', '<p>Due to the urgent maintenance work of the mobile library, Mobile Library 9 will suspend its service on 22 July 2025 (Tuesday). We apologize for the inconvenience. Details of the affected service stations are as follows:</p><p>The affected service stations are as follows:</p><p>Service station Suspension date</p>', '2025-08-09 10:01:36');
COMMIT;

-- ----------------------------
-- Table structure for reader_proposal
-- ----------------------------
DROP TABLE IF EXISTS `reader_proposal`;
CREATE TABLE `reader_proposal`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '读者反馈ID',
  `user_id` int NULL DEFAULT NULL COMMENT '反馈者用户ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '反馈的问题内容',
  `is_publish` tinyint(1) NULL DEFAULT NULL COMMENT '是否公开',
  `reply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '回复内容',
  `reply_time` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `is_reply` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经回复',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of reader_proposal
-- ----------------------------
BEGIN;
INSERT INTO `reader_proposal` (`id`, `user_id`, `content`, `is_publish`, `reply_content`, `reply_time`, `is_reply`, `create_time`) VALUES (56, 16, 'kong\'s message', NULL, 'ok', '2025-07-23 13:52:01', 1, '2025-07-21 20:37:56'), (66, 47, 'I want to read the book Art and Objecthood.', NULL, NULL, NULL, 0, '2025-08-09 10:06:19');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_role` int NULL DEFAULT NULL COMMENT '用户角色',
  `is_login` tinyint(1) NULL DEFAULT NULL COMMENT '可登录状态(0：可用，1：不可用)',
  `is_word` tinyint(1) NULL DEFAULT NULL COMMENT '禁言状态(0：可用，1：不可用)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `user_account`, `user_name`, `user_pwd`, `user_avatar`, `user_email`, `user_role`, `is_login`, `is_word`, `create_time`) VALUES (16, 'kong', 'kong', '14e1b600b1fd579f47433b88e8d85291', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=4123d8aWechatIMG3112.jpeg', 'kong@163.com', 2, 0, 1, '2025-05-14 10:26:04'), (17, 'admin', 'lily', '14e1b600b1fd579f47433b88e8d85291', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=b31ec39活动维护中.png', 'lily@163.com', 1, 0, 0, '2025-05-14 11:54:40'), (47, 'maggie', 'maggie', '224cf2b695a5e8ecaecfb9015161fa4b', '/api/book-manage-sys-api/v1.0/file/getFile?fileName=f863864images1.png', 'maggie@gmail.com', 2, 0, 0, '2025-08-09 10:05:10');
COMMIT;

-- ----------------------------
-- Table structure for user_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_log`;
CREATE TABLE `user_operation_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户行为日志表主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '行为描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin;

-- ----------------------------
-- Records of user_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `user_operation_log` (`id`, `user_id`, `content`, `create_time`) VALUES (55, 16, '向系统提交建议', '2025-05-14 14:48:48'), (56, 16, '向系统提交建议', '2025-05-14 14:48:52'), (57, 16, '向系统提交建议', '2025-05-14 14:49:38'), (58, 16, '向系统提交建议', '2025-05-14 15:01:57'), (59, 16, '借阅书籍', '2025-05-14 15:02:19'), (60, 16, '借阅书籍', '2025-05-27 10:04:32'), (61, 16, '借阅书籍', '2025-05-27 10:10:42'), (62, 16, '归还书籍', '2025-05-27 10:26:53'), (63, 16, '归还书籍', '2025-05-27 14:14:28'), (64, 16, '借阅书籍', '2025-05-27 14:25:58'), (65, 16, '借阅书籍', '2025-05-27 14:55:15'), (66, 16, '借阅书籍', '2025-05-27 14:55:29'), (67, 16, '借阅书籍', '2025-05-27 14:56:30'), (68, 16, '归还书籍', '2025-05-27 14:56:41'), (69, 16, '归还书籍', '2025-05-27 14:56:44'), (70, 16, '归还书籍', '2025-05-27 14:56:45'), (71, 16, '借阅书籍', '2025-05-27 14:56:54'), (72, 16, '借阅书籍', '2025-05-27 14:57:00'), (73, 16, '借阅书籍', '2025-05-27 18:28:41'), (74, 18, '向系统提交建议', '2025-05-27 18:32:56'), (75, 18, '向系统提交建议', '2025-05-27 18:33:16'), (76, 16, '向系统提交建议', '2025-05-27 18:34:48'), (77, 16, '向系统提交建议', '2025-05-27 18:35:31'), (78, 16, '向系统提交建议', '2025-05-27 18:36:29'), (79, 16, '向系统提交建议', '2025-05-27 18:38:45'), (80, 16, '向系统提交建议', '2025-05-27 18:38:59'), (81, 18, '向系统提交建议', '2025-05-27 18:44:18'), (82, 19, '向系统提交建议', '2025-05-28 09:52:36'), (83, 19, '借阅书籍', '2025-05-28 09:52:58'), (84, 19, '借阅书籍', '2025-05-28 09:53:17'), (85, 20, '借阅书籍', '2025-05-28 11:58:36'), (86, 20, '向系统提交建议', '2025-05-28 11:59:02'), (87, 21, '借阅书籍', '2025-05-28 15:09:50'), (88, 21, '向系统提交建议', '2025-05-28 15:10:16'), (89, 16, '借阅书籍', '2025-07-08 22:49:40'), (90, 16, '借阅书籍', '2025-07-14 14:59:47'), (91, 27, '借阅书籍', '2025-07-14 17:33:59'), (92, 27, '借阅书籍', '2025-07-14 17:35:36'), (93, 27, '归还书籍', '2025-07-14 17:35:43'), (94, 27, '归还书籍', '2025-07-14 17:38:40'), (95, 27, '借阅书籍', '2025-07-14 17:38:47'), (96, 27, '借阅书籍', '2025-07-14 17:39:43'), (97, 27, '借阅书籍', '2025-07-14 17:41:37'), (98, 27, '借阅书籍', '2025-07-14 18:05:23'), (99, 27, '借阅书籍', '2025-07-14 18:07:30'), (100, 27, '借阅书籍', '2025-07-14 18:07:45'), (101, 27, '归还书籍', '2025-07-14 18:14:37'), (102, 27, '归还书籍', '2025-07-14 18:15:19'), (103, 27, '借阅书籍', '2025-07-14 18:15:30'), (104, 27, '归还书籍', '2025-07-14 18:15:37'), (105, 27, '借阅书籍', '2025-07-14 18:15:42'), (106, 16, '借阅书籍', '2025-07-14 18:47:25'), (107, 16, '借阅书籍', '2025-07-14 18:47:38'), (108, 16, '借阅书籍', '2025-07-14 18:48:51'), (109, 16, '借阅书籍', '2025-07-14 18:51:08'), (110, 16, '向系统提交建议', '2025-07-14 18:56:58'), (111, 16, '向系统提交建议', '2025-07-14 18:57:36'), (112, 16, '借阅书籍', '2025-07-14 19:15:01'), (113, 16, '借阅书籍', '2025-07-14 19:15:07'), (114, 16, '借阅书籍', '2025-07-14 19:15:14'), (115, 16, '借阅书籍', '2025-07-14 19:15:35'), (116, 16, '借阅书籍', '2025-07-14 19:16:01'), (117, 16, '借阅书籍', '2025-07-15 12:09:44'), (118, 16, '借阅书籍', '2025-07-15 12:09:49'), (119, 16, '借阅书籍', '2025-07-15 12:09:53'), (120, 16, '借阅书籍', '2025-07-15 12:09:57'), (121, 16, '借阅书籍', '2025-07-15 12:09:59'), (122, 16, '借阅书籍', '2025-07-15 12:10:03'), (123, 16, '借阅书籍', '2025-07-15 12:30:25'), (124, 16, '借阅书籍', '2025-07-15 12:30:32'), (125, 16, '借阅书籍', '2025-07-15 12:30:46'), (126, 16, '向系统提交建议', '2025-07-15 12:46:48'), (127, 28, '向系统提交建议', '2025-07-15 13:01:17'), (128, 28, '向系统提交建议', '2025-07-15 13:01:28'), (129, 28, '向系统提交建议', '2025-07-15 13:01:47'), (130, 28, '向系统提交建议', '2025-07-15 13:04:01'), (131, 28, '向系统提交建议', '2025-07-15 13:05:10'), (132, 28, '向系统提交建议', '2025-07-15 13:05:15'), (133, 28, '向系统提交建议', '2025-07-15 13:05:22'), (134, 29, '向系统提交建议', '2025-07-15 15:29:57'), (135, 30, '向系统提交建议', '2025-07-20 12:29:02'), (136, 30, '借阅书籍', '2025-07-20 12:29:43'), (137, 30, '借阅书籍', '2025-07-20 12:41:13'), (138, 30, '归还书籍', '2025-07-20 12:41:18'), (139, 16, '向系统提交建议', '2025-07-21 20:37:56'), (140, 16, '借阅书籍', '2025-07-21 20:38:40'), (141, 16, '借阅书籍', '2025-07-21 20:39:23'), (142, 16, '归还书籍', '2025-07-21 20:39:35'), (143, 16, '借阅书籍', '2025-07-21 20:39:41'), (144, 33, '向系统提交建议', '2025-07-22 08:48:18'), (145, 33, '借阅书籍', '2025-07-22 08:49:15'), (146, 33, '归还书籍', '2025-07-22 08:49:32'), (147, 33, '借阅书籍', '2025-07-22 08:52:14'), (148, 16, '向系统提交建议', '2025-07-22 15:36:13'), (149, 37, '向系统提交建议', '2025-07-22 21:03:30'), (150, 37, '借阅书籍', '2025-07-22 21:04:45'), (151, 37, '借阅书籍', '2025-07-22 21:05:01'), (152, 37, '借阅书籍', '2025-07-22 21:05:06'), (153, 37, '借阅书籍', '2025-07-22 21:07:44'), (154, 40, '向系统提交建议', '2025-07-23 13:58:23'), (155, 40, '借阅书籍', '2025-07-23 13:59:36'), (156, 40, '归还书籍', '2025-07-23 13:59:53'), (157, 40, '借阅书籍', '2025-07-23 14:02:48'), (158, 41, '借阅书籍', '2025-07-23 15:15:09'), (159, 41, '借阅书籍', '2025-07-23 15:15:16'), (160, 41, '归还书籍', '2025-07-23 15:15:32'), (161, 41, '借阅书籍', '2025-07-23 15:18:26'), (162, 42, '向系统提交建议', '2025-07-29 14:08:58'), (163, 42, '借阅书籍', '2025-07-29 14:09:51'), (164, 42, '归还书籍', '2025-07-29 14:10:09'), (165, 42, '借阅书籍', '2025-07-29 14:10:50'), (166, 42, '借阅书籍', '2025-07-29 14:14:27'), (167, 16, '向系统提交建议', '2025-07-29 20:52:06'), (168, 16, '借阅书籍', '2025-07-29 20:52:37'), (169, 16, '归还书籍', '2025-07-29 20:52:46'), (170, 16, '借阅书籍', '2025-07-29 20:53:08'), (171, 43, '向系统提交建议', '2025-07-30 09:41:56'), (172, 43, '借阅书籍', '2025-07-30 09:42:36'), (173, 43, '借阅书籍', '2025-07-30 09:42:45'), (174, 43, '归还书籍', '2025-07-30 09:42:58'), (175, 43, '借阅书籍', '2025-07-30 09:43:30'), (176, 43, '借阅书籍', '2025-07-30 09:45:37'), (177, 44, '向系统提交建议', '2025-07-30 09:57:05'), (178, 44, '借阅书籍', '2025-07-30 09:57:36'), (179, 44, '借阅书籍', '2025-07-30 09:57:49'), (180, 44, '归还书籍', '2025-07-30 09:57:54'), (181, 44, '借阅书籍', '2025-07-30 09:58:14'), (182, 44, '借阅书籍', '2025-07-30 10:00:22'), (183, 45, '向系统提交建议', '2025-07-30 15:14:57'), (184, 45, '借阅书籍', '2025-07-30 15:15:32'), (185, 45, '借阅书籍', '2025-07-30 15:15:41'), (186, 45, '归还书籍', '2025-07-30 15:15:44'), (187, 45, '借阅书籍', '2025-07-30 15:16:07'), (188, 45, '借阅书籍', '2025-07-30 15:16:16'), (189, 45, '借阅书籍', '2025-07-30 15:18:34'), (190, 47, '向系统提交建议', '2025-08-09 10:06:19'), (191, 47, '借阅书籍', '2025-08-09 10:06:48'), (192, 47, '借阅书籍', '2025-08-09 10:07:02'), (193, 47, '归还书籍', '2025-08-09 10:07:16'), (194, 47, '借阅书籍', '2025-08-09 10:07:35'), (195, 47, '借阅书籍', '2025-08-09 10:07:54'), (196, 47, '借阅书籍', '2025-08-09 10:10:18'), (197, 16, '向系统提交建议', '2025-08-10 12:27:20');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
