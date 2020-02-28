/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : xfz2

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 28/02/2020 09:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (3, '管理员');
INSERT INTO `auth_group` VALUES (1, '编辑');
INSERT INTO `auth_group` VALUES (2, '财务');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (25, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (26, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (27, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (28, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (29, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (30, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (31, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (32, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (38, 2, 61);
INSERT INTO `auth_group_permissions` VALUES (39, 2, 62);
INSERT INTO `auth_group_permissions` VALUES (40, 2, 63);
INSERT INTO `auth_group_permissions` VALUES (33, 2, 64);
INSERT INTO `auth_group_permissions` VALUES (34, 2, 65);
INSERT INTO `auth_group_permissions` VALUES (35, 2, 66);
INSERT INTO `auth_group_permissions` VALUES (36, 2, 67);
INSERT INTO `auth_group_permissions` VALUES (37, 2, 68);
INSERT INTO `auth_group_permissions` VALUES (41, 3, 29);
INSERT INTO `auth_group_permissions` VALUES (42, 3, 30);
INSERT INTO `auth_group_permissions` VALUES (43, 3, 31);
INSERT INTO `auth_group_permissions` VALUES (44, 3, 32);
INSERT INTO `auth_group_permissions` VALUES (45, 3, 33);
INSERT INTO `auth_group_permissions` VALUES (46, 3, 34);
INSERT INTO `auth_group_permissions` VALUES (47, 3, 35);
INSERT INTO `auth_group_permissions` VALUES (48, 3, 36);
INSERT INTO `auth_group_permissions` VALUES (49, 3, 37);
INSERT INTO `auth_group_permissions` VALUES (50, 3, 38);
INSERT INTO `auth_group_permissions` VALUES (51, 3, 39);
INSERT INTO `auth_group_permissions` VALUES (52, 3, 40);
INSERT INTO `auth_group_permissions` VALUES (53, 3, 41);
INSERT INTO `auth_group_permissions` VALUES (54, 3, 42);
INSERT INTO `auth_group_permissions` VALUES (55, 3, 43);
INSERT INTO `auth_group_permissions` VALUES (56, 3, 44);
INSERT INTO `auth_group_permissions` VALUES (57, 3, 45);
INSERT INTO `auth_group_permissions` VALUES (58, 3, 46);
INSERT INTO `auth_group_permissions` VALUES (59, 3, 47);
INSERT INTO `auth_group_permissions` VALUES (60, 3, 48);
INSERT INTO `auth_group_permissions` VALUES (61, 3, 49);
INSERT INTO `auth_group_permissions` VALUES (62, 3, 50);
INSERT INTO `auth_group_permissions` VALUES (63, 3, 51);
INSERT INTO `auth_group_permissions` VALUES (64, 3, 52);
INSERT INTO `auth_group_permissions` VALUES (65, 3, 53);
INSERT INTO `auth_group_permissions` VALUES (66, 3, 54);
INSERT INTO `auth_group_permissions` VALUES (67, 3, 55);
INSERT INTO `auth_group_permissions` VALUES (68, 3, 56);
INSERT INTO `auth_group_permissions` VALUES (69, 3, 57);
INSERT INTO `auth_group_permissions` VALUES (70, 3, 58);
INSERT INTO `auth_group_permissions` VALUES (71, 3, 59);
INSERT INTO `auth_group_permissions` VALUES (72, 3, 60);
INSERT INTO `auth_group_permissions` VALUES (73, 3, 61);
INSERT INTO `auth_group_permissions` VALUES (74, 3, 62);
INSERT INTO `auth_group_permissions` VALUES (75, 3, 63);
INSERT INTO `auth_group_permissions` VALUES (76, 3, 64);
INSERT INTO `auth_group_permissions` VALUES (77, 3, 65);
INSERT INTO `auth_group_permissions` VALUES (78, 3, 66);
INSERT INTO `auth_group_permissions` VALUES (79, 3, 67);
INSERT INTO `auth_group_permissions` VALUES (80, 3, 68);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add user', 6, 'add_user');
INSERT INTO `auth_permission` VALUES (17, 'Can change user', 6, 'change_user');
INSERT INTO `auth_permission` VALUES (18, 'Can delete user', 6, 'delete_user');
INSERT INTO `auth_permission` VALUES (19, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (20, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (21, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (22, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (23, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view user', 6, 'view_user');
INSERT INTO `auth_permission` VALUES (25, 'Can add news category', 7, 'add_newscategory');
INSERT INTO `auth_permission` VALUES (26, 'Can change news category', 7, 'change_newscategory');
INSERT INTO `auth_permission` VALUES (27, 'Can delete news category', 7, 'delete_newscategory');
INSERT INTO `auth_permission` VALUES (28, 'Can view news category', 7, 'view_newscategory');
INSERT INTO `auth_permission` VALUES (29, 'Can add news category', 8, 'add_newscategory');
INSERT INTO `auth_permission` VALUES (30, 'Can change news category', 8, 'change_newscategory');
INSERT INTO `auth_permission` VALUES (31, 'Can delete news category', 8, 'delete_newscategory');
INSERT INTO `auth_permission` VALUES (32, 'Can view news category', 8, 'view_newscategory');
INSERT INTO `auth_permission` VALUES (33, 'Can add news', 9, 'add_news');
INSERT INTO `auth_permission` VALUES (34, 'Can change news', 9, 'change_news');
INSERT INTO `auth_permission` VALUES (35, 'Can delete news', 9, 'delete_news');
INSERT INTO `auth_permission` VALUES (36, 'Can view news', 9, 'view_news');
INSERT INTO `auth_permission` VALUES (37, 'Can add comment', 10, 'add_comment');
INSERT INTO `auth_permission` VALUES (38, 'Can change comment', 10, 'change_comment');
INSERT INTO `auth_permission` VALUES (39, 'Can delete comment', 10, 'delete_comment');
INSERT INTO `auth_permission` VALUES (40, 'Can view comment', 10, 'view_comment');
INSERT INTO `auth_permission` VALUES (41, 'Can add banner', 11, 'add_banner');
INSERT INTO `auth_permission` VALUES (42, 'Can change banner', 11, 'change_banner');
INSERT INTO `auth_permission` VALUES (43, 'Can delete banner', 11, 'delete_banner');
INSERT INTO `auth_permission` VALUES (44, 'Can view banner', 11, 'view_banner');
INSERT INTO `auth_permission` VALUES (45, 'Can add course category', 12, 'add_coursecategory');
INSERT INTO `auth_permission` VALUES (46, 'Can change course category', 12, 'change_coursecategory');
INSERT INTO `auth_permission` VALUES (47, 'Can delete course category', 12, 'delete_coursecategory');
INSERT INTO `auth_permission` VALUES (48, 'Can view course category', 12, 'view_coursecategory');
INSERT INTO `auth_permission` VALUES (49, 'Can add teacher', 13, 'add_teacher');
INSERT INTO `auth_permission` VALUES (50, 'Can change teacher', 13, 'change_teacher');
INSERT INTO `auth_permission` VALUES (51, 'Can delete teacher', 13, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (52, 'Can view teacher', 13, 'view_teacher');
INSERT INTO `auth_permission` VALUES (53, 'Can add course', 14, 'add_course');
INSERT INTO `auth_permission` VALUES (54, 'Can change course', 14, 'change_course');
INSERT INTO `auth_permission` VALUES (55, 'Can delete course', 14, 'delete_course');
INSERT INTO `auth_permission` VALUES (56, 'Can view course', 14, 'view_course');
INSERT INTO `auth_permission` VALUES (57, 'Can add payinfo', 15, 'add_payinfo');
INSERT INTO `auth_permission` VALUES (58, 'Can change payinfo', 15, 'change_payinfo');
INSERT INTO `auth_permission` VALUES (59, 'Can delete payinfo', 15, 'delete_payinfo');
INSERT INTO `auth_permission` VALUES (60, 'Can view payinfo', 15, 'view_payinfo');
INSERT INTO `auth_permission` VALUES (61, 'Can add course order', 16, 'add_courseorder');
INSERT INTO `auth_permission` VALUES (62, 'Can change course order', 16, 'change_courseorder');
INSERT INTO `auth_permission` VALUES (63, 'Can delete course order', 16, 'delete_courseorder');
INSERT INTO `auth_permission` VALUES (64, 'Can view course order', 16, 'view_courseorder');
INSERT INTO `auth_permission` VALUES (65, 'Can add payinfo order', 17, 'add_payinfoorder');
INSERT INTO `auth_permission` VALUES (66, 'Can change payinfo order', 17, 'change_payinfoorder');
INSERT INTO `auth_permission` VALUES (67, 'Can delete payinfo order', 17, 'delete_payinfoorder');
INSERT INTO `auth_permission` VALUES (68, 'Can view payinfo order', 17, 'view_payinfoorder');

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `video_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cover_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `duration` int(11) NOT NULL,
  `profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_course_category_id_0b2127b9_fk_course_coursecategory_id`(`category_id`) USING BTREE,
  INDEX `course_course_teacher_id_f04a37b5_fk_course_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `course_course_category_id_0b2127b9_fk_course_coursecategory_id` FOREIGN KEY (`category_id`) REFERENCES `course_coursecategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_course_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `course_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES (5, '投资人教你如何成功融资', 'https://www.xfz.cn/course/206.html', 'https://static-image.xfz.cn/1554346383_8.png-course.list.small', 0.1, 120, '<p>课程讲师</p><p><span class=\"name\" style=\"margin: 0px; padding: 0px; display: block; color: rgb(85, 85, 85);\">乔继英</span><span class=\"position\" style=\"margin: 0px; padding: 0px; display: block; color: rgb(105, 105, 105);\">专业投资人；一线基金董事总经理</span></p><p>乔继英，专业投资人，一线基金董事总经理，十五年以上研发、市场销售、投资经验，投资领域覆盖天使投资、中早期风险投资、PE投资、并购、母基金FOF投资等领域。代表案例：华润凤凰（1515.HK）、微芯生物、二毛照护、九鼎美元基金等。个人间接投资摩拜单车、硅谷大数据公司Palantir等。曾在淡马锡祥峰投资、蓝驰创投、启迪创投等工作，世界五百强公司研发、市场销售主管。北京市高精尖产业基金评审组长、知名证券公司专业专家。清华大学本科、医学院博士、校友导师，曾与哈佛大学合作课题；香港中文大学金融MBA、客座讲师。</p><p><span style=\"margin: 0px; padding: 0px;\">课程简介</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">对于创业公司来说，融资是个系统工程。其中找到好的合伙人组建优秀的创始团队、写好清晰的商业计划书、无风险的股权结构以及合理的估值；这些环节缺一不可，哪个环节做不好也会影响整体融资计划的实施。一线基金董事总经理用近15年投资经验教你如何成功拿到钱！</p><p><span style=\"margin: 0px; padding: 0px;\">课程大纲</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">一、融资是系统工程</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">二、成功融资的四个核心点</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">三、融资计划的实施</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">四、融资需要注意的点有哪些？</p><p><span style=\"margin: 0px; padding: 0px;\">课程信息</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">课程主题：创业公司如何设计股权结构</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">上课方式：在线视频学习</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">课程时长：26分钟</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">收费：49元</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">时间：付费后可随时观看</p><p class=\"p1\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><p><span style=\"margin: 0px; padding: 0px;\">适宜人群</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">初创公司创始人及需要融资的创业者</p><p><span style=\"margin: 0px; padding: 0px;\">帮助中心</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">1. 购买后的课程在线可反复观看学习，视频有效期以具体课程信息为准。<br/>2. 课程暂不支持下载观看，均为在线观看视频。<br/>3. 课程一经购买，不可转让、不可退款；仅限购买账号观看。<br/>4. 如有问题请咨询客服饭桌君： 电话：18618172287 微信：fanzhuojun888<br/></p><p><span style=\"margin: 0px; padding: 0px;\">关于小饭桌创业课堂在线课堂</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">小饭桌创业课堂在线课堂是小饭桌旗下的线上视频课程产品，汇聚顶级创业大咖导师、行业资深专家，致力于用系统、垂直的知识体系让创业者认知升级、技能进阶。小饭桌创业课堂在线课堂用知识陪伴创业者从平凡到卓越！</p><p><br/></p>', '2020-02-25 10:25:14.781887', 1, 1);

-- ----------------------------
-- Table structure for course_coursecategory
-- ----------------------------
DROP TABLE IF EXISTS `course_coursecategory`;
CREATE TABLE `course_coursecategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_coursecategory
-- ----------------------------
INSERT INTO `course_coursecategory` VALUES (1, '投资人说');
INSERT INTO `course_coursecategory` VALUES (2, '明星案例');
INSERT INTO `course_coursecategory` VALUES (3, '创业知识');

-- ----------------------------
-- Table structure for course_courseorder
-- ----------------------------
DROP TABLE IF EXISTS `course_courseorder`;
CREATE TABLE `course_courseorder`  (
  `uid` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` double NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `istype` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `buyer_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `course_courseorder_buyer_id_2e7707af_fk_xfzauth_user_uid`(`buyer_id`) USING BTREE,
  INDEX `course_courseorder_course_id_5bb0f498_fk_course_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `course_courseorder_buyer_id_2e7707af_fk_xfzauth_user_uid` FOREIGN KEY (`buyer_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_courseorder_course_id_5bb0f498_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `course_teacher`;
CREATE TABLE `course_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_teacher
-- ----------------------------
INSERT INTO `course_teacher` VALUES (1, '乔继英', 'https://static-image.xfz.cn/1554346383_8.png-course.list.small', '专业投资人；一线基金董事总经理', '乔继英，专业投资人，一线基金董事总经理，十五年以上研发、市场销售、投资经验，投资领域覆盖天使投资、中早期风险投资、PE投资、并购、母基金FOF投资等领域。代表案例：华润凤凰（1515.HK）、微芯生物、二毛照护、九鼎美元基金等。个人间接投资摩拜单车、硅谷大数据公司Palantir等。曾在淡马锡祥峰投资、蓝驰创投、启迪创投等工作，世界五百强公司研发、市场销售主管。北京市高精尖产业基金评审组长、知名证券公司专业专家。清华大学本科、医学院博士、校友导师，曾与哈佛大学合作课题；香港中文大学金融MBA、客座讲师。');
INSERT INTO `course_teacher` VALUES (2, '龚世海', 'https://static-image.xfz.cn/1536563248_165.png', 'HiCTO创始人兼CEO', 'HiCTO创始人兼CEO');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_xfzauth_user_uid`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_xfzauth_user_uid` FOREIGN KEY (`user_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (7, 'cms', 'newscategory');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (14, 'course', 'course');
INSERT INTO `django_content_type` VALUES (12, 'course', 'coursecategory');
INSERT INTO `django_content_type` VALUES (16, 'course', 'courseorder');
INSERT INTO `django_content_type` VALUES (13, 'course', 'teacher');
INSERT INTO `django_content_type` VALUES (11, 'news', 'banner');
INSERT INTO `django_content_type` VALUES (10, 'news', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'news', 'news');
INSERT INTO `django_content_type` VALUES (8, 'news', 'newscategory');
INSERT INTO `django_content_type` VALUES (15, 'payinfo', 'payinfo');
INSERT INTO `django_content_type` VALUES (17, 'payinfo', 'payinfoorder');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'xfzauth', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-02-20 02:01:31.466967');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-02-20 02:01:31.582657');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-02-20 02:01:31.940700');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-02-20 02:01:32.019488');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-02-20 02:01:32.027467');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-02-20 02:01:32.036472');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-02-20 02:01:32.044460');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-02-20 02:01:32.049409');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-02-20 02:01:32.058413');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-02-20 02:01:32.067360');
INSERT INTO `django_migrations` VALUES (11, 'xfzauth', '0001_initial', '2020-02-20 02:01:32.576998');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2020-02-20 02:01:32.780453');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2020-02-20 02:01:32.788432');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2020-02-20 02:01:32.851264');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-21 07:37:28.672425');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2020-02-21 07:37:28.762162');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0010_alter_group_name_max_length', '2020-02-21 07:37:28.862892');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0011_update_proxy_permissions', '2020-02-21 07:37:28.873887');
INSERT INTO `django_migrations` VALUES (19, 'xfzauth', '0002_auto_20200221_1537', '2020-02-21 07:37:29.143141');
INSERT INTO `django_migrations` VALUES (20, 'cms', '0001_initial', '2020-02-22 01:31:27.919306');
INSERT INTO `django_migrations` VALUES (21, 'news', '0001_initial', '2020-02-22 01:37:22.818862');
INSERT INTO `django_migrations` VALUES (22, 'news', '0002_news', '2020-02-23 01:42:39.934482');
INSERT INTO `django_migrations` VALUES (23, 'news', '0003_auto_20200224_0939', '2020-02-24 01:39:15.450389');
INSERT INTO `django_migrations` VALUES (24, 'news', '0004_auto_20200224_1546', '2020-02-24 07:47:19.903570');
INSERT INTO `django_migrations` VALUES (25, 'news', '0005_auto_20200224_1547', '2020-02-24 07:47:19.921551');
INSERT INTO `django_migrations` VALUES (26, 'course', '0001_initial', '2020-02-25 08:56:36.043639');
INSERT INTO `django_migrations` VALUES (27, 'news', '0006_auto_20200225_1656', '2020-02-25 08:56:36.224157');
INSERT INTO `django_migrations` VALUES (28, 'payinfo', '0001_initial', '2020-02-26 07:10:00.951454');
INSERT INTO `django_migrations` VALUES (29, 'course', '0002_courseorder', '2020-02-26 07:26:39.877636');
INSERT INTO `django_migrations` VALUES (30, 'payinfo', '0002_payinfoorder', '2020-02-26 07:26:40.093060');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('k8i3ijmdoyt90oyoe6vdxlq6hzkx9rbz', 'OWJmNzBmNjUzZGJmNWEyOGNjN2E1MDQxNWEyNTg4Y2M4YjEyMWRkNTp7Il9hdXRoX3VzZXJfaWQiOiI2ZEtjajRIUmNmalFpTTZBVWltY2laIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMjU1N2RlMWEzYWI1NjBlYjBmODhjZWEzYzgyYTIyYjg0YjYzMDExIn0=', '2020-03-06 07:54:45.189413');
INSERT INTO `django_session` VALUES ('wa3s1t3123auyycodz43lwvmq3vh7o9z', 'OWUyNDI1MWUwODMzYWQxZDkyNmEwNmJhMTcwZGIxOTliMzk5YjU3Mzp7Il9hdXRoX3VzZXJfaWQiOiJmQnJWM3hueVB0Qm1OeVB2Szk4dGdVIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYTZkNjY3M2MxODZkZDhmNTkxNGUwZTZlMjYzZDY5M2NkMGI4ODczIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2020-03-05 11:46:25.755966');

-- ----------------------------
-- Table structure for news_banner
-- ----------------------------
DROP TABLE IF EXISTS `news_banner`;
CREATE TABLE `news_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL,
  `image_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link_to` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_banner
-- ----------------------------
INSERT INTO `news_banner` VALUES (1, 2, 'http://127.0.0.1:8002/media/3.jpg', 'https://www.xfz.cn/post/9464.html', '2020-02-24 08:46:12.967319');
INSERT INTO `news_banner` VALUES (3, 1, 'http://127.0.0.1:8002/media/001.jpg', 'https://mp.weixin.qq.com/s/jR9dhs3xcjuvGkUtngjj_A?adf=top.banner', '2020-02-24 12:12:57.089341');
INSERT INTO `news_banner` VALUES (4, 3, 'http://127.0.0.1:8002/media/002.jpg', 'https://server.9yuntu.com/doc/3sFe7obQ7CAx7DH35pUtvg?adf=top.banner', '2020-02-24 12:13:32.719002');
INSERT INTO `news_banner` VALUES (5, 4, 'http://127.0.0.1:8002/media/003.jpg', 'https://www.xfz.cn/post/9288.html', '2020-02-24 12:14:42.114366');

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_comment_author_id_088b3054_fk_xfzauth_user_uid`(`author_id`) USING BTREE,
  INDEX `news_comment_news_id_18ce08a8_fk_news_news_id`(`news_id`) USING BTREE,
  CONSTRAINT `news_comment_author_id_088b3054_fk_xfzauth_user_uid` FOREIGN KEY (`author_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `news_comment_news_id_18ce08a8_fk_news_news_id` FOREIGN KEY (`news_id`) REFERENCES `news_news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES (1, '沙发', '2020-02-24 01:39:30.903007', '6dKcj4HRcfjQiM6AUimciZ', 7);
INSERT INTO `news_comment` VALUES (2, '好文章，我喜欢', '2020-02-24 02:03:33.957793', '6dKcj4HRcfjQiM6AUimciZ', 7);

-- ----------------------------
-- Table structure for news_news
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_news_author_id_9f88be71_fk_xfzauth_user_uid`(`author_id`) USING BTREE,
  INDEX `news_news_category_id_f060a768_fk_news_newscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `news_news_author_id_9f88be71_fk_xfzauth_user_uid` FOREIGN KEY (`author_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `news_news_category_id_f060a768_fk_news_newscategory_id` FOREIGN KEY (`category_id`) REFERENCES `news_newscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES (4, '“上市前所有估值都毫无意义，企业重要的是融资速度”丨来自投资人的生存指南', '疫情加速了大企业成长，小公司则面临生死抉择', 'http://127.0.0.1:8002/media/3.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">2月19日，小饭桌全新栏目《卓见》线上版正式和大家见面。小饭桌CEO李晶同险峰长青合伙人赵阳、真格基金合伙人戴雨森、明势资本合伙人焦腾三位知名天使投资人开启“云圆桌”论坛，共同探讨疫情之下2020年创投市场的机遇和挑战。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">嘉宾精华观点如下：</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">1. 长远来看疫情不会影响投资趋势，但短期内则决定企业生死</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">2. “四化”领域将会出现系统性机会：管理在线化、流程可视化，业务少人化和决策智能化3. 企业在上市前所有的估值都毫无意义，更重要的是融资速度4. 疫期大企业会快速占领市场，小企业则要积蓄力量5. 创业者在不同的阶段需要做不同的事情，要持续学习持续进化</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">以下是《卓见》线上版第一期分享实录，小饭桌作了不影响原意的整理，以飨读者。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">谈投资：长远看疫情不会影响趋势，短期内则决定企业生死</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">▌李晶：新冠疫情给资本市场具体带来了哪些变化？</span></strong></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">焦腾：我很乐观认为疫情短期内就可以过去，但投资是看未来三五年的大趋势，所以在大方向上还是坚持原来的判断。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">赵阳：疫情对于经济的宏观且长期的影响还未释放，短期来看对创业者融资会有较大影响，所以要融资的新项目数量大幅衰减，正在融资的企业融资周期会更长，尽职调查没办法很快开展，投资机构也会对已经过会的企业重新评估风险。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">▌李晶：今年会更关注哪些赛道？</span></strong></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">戴雨森：首先我们坚信牛逼的创业者能够把不靠谱的事儿变靠谱，所以我们是看人而不是看赛道。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">从大的投资趋势来看，新消费、企业服务、半导体智能制造、出海、下沉市场是一直比较关注的。疫情过后市场回归常态是必然结果，所以我们关注的大趋势是不变的。就像2003年“非典”之后才有京东和淘宝，但并不是说没有非典就不会有电商，疫情只是给关键企业起到了催化作用，对市场起到了一定的教育作用。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">赵阳：险峰长青的投资逻辑是在大的市场里找最好的团队，我们更关注企业家的强度和团队的配合。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">近几年我们主要关注三个方向：第一是新技术的应用，比如IT技术、人工智能、5G等，所以我们投资了无人送货车和手术机器人等项目；第二是消费升级趋势下全产业链数字化的消费类公司，比如像Luckin、喜茶这样打法的企业，还有中国企业优质供应链出海；第三是以技术驱动为主，围绕钢铁、纺织、陶瓷等产业做交易的B2B企业，还有SaaS服务类的公司。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">焦腾：明势资本比较关注的方向是通过科技帮助传统行业提高效率。具体到这次疫情来看，SaaS、人工智能、大数据、在线教育等依赖信息流传播的行业都迎来爆发式增长，比如我们投资的协同办公软件石墨文档和做数据分析的神策数据。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">总的来说，今年这“四化”会继续成为我们重点关注的赛道：管理在线化、流程可视化，业务少人化和决策智能化。它的背后是从以劳动力堆砌为核心向效率提升为核心的转移，从人口红利向管理红利进行升级，会诞生系统性的机会。</span></p><p><br/></p>', '2020-02-23 03:40:18.704152', '6dKcj4HRcfjQiM6AUimciZ', 6);
INSERT INTO `news_news` VALUES (7, '致敬逆行者：互联网医疗企业“战疫”日记丨上篇', '导语：疫情面前考验的是企业家的社会责任，这次肺炎疫情也让我们看到原本站在幕后的互联网+医疗的科技公司冲到前线，成为“战疫”期间的逆行者', 'http://127.0.0.1:8002/media/6.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">疫情肆虐，却让“互联网+医疗”出圈了。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">以前大部分人说起“互联网+医疗”可能还只能联想到线上挂号、缴费等，而<strong style=\"margin: 0px; padding: 0px;\">通过这次疫情，更多人体验了在线问诊、送药到家、私人医生等服务，“互联网+医疗”的真正价值得以显现。</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">我国医生供需差异大，质量参差不齐的问题一直存在，疫情又再次将这个问题赤裸裸展开，而透过疫情我们看到的不仅仅是问题，更看到了一批试图触达问题最根部，给出了一部分解决方案的企业。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">疫情面前考验的是企业家的社会责任，这次肺炎疫情也让我们看到原本站在幕后的互联网+医疗的科技公司冲到前线，成为“战疫”期间的逆行者。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">近期，小饭桌采访了数家“互联网+医疗”行业的公司，它们在疫情来临时展现出了企业的责任与担当：<strong style=\"margin: 0px; padding: 0px;\">全员放弃假期，连夜迭代产品，做义诊为患者提供线上咨询，做课程为医生赋能，极大程度上缓解社会焦虑和医疗供需的不平衡。此为上篇，以飨读者。</strong></span></p><h2 style=\"margin: 20px auto; padding: 0px; font-size: 16px; color: rgb(255, 255, 255); text-align: center; height: 25px; width: 270px; border-radius: 18px; background: rgb(246, 118, 106); line-height: 25px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"margin: 0px; padding: 0px;\">微脉</span></h2><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 16px; color: rgb(63, 63, 63);\">鏖战3天上线义诊平台&nbsp; 为80余万人次提供免费医疗咨询</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">1月中旬，微脉平台湖北地区线上问诊的数量大增，尤其是对于呼吸、发热等问题的求诊。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">微脉成立于2015年，是一家“互联网+医疗健康”的第三方医疗健康服务入口平台。其从三四线城市切入，以城市为单位，连接本地所有医疗健康资源，帮助医院实现服务的互联网化，向用户提供互联网预约挂号、报告查询、全流程支付、医生咨询、健康档案管理、处方外配、妇幼及专病管理等一系列精准服务。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">立马与合作的医院联系确认之后，微脉团队才意识到疫情的严重性。但随着疫情的发展，医疗行业的问题也暴露了出来。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\"><strong style=\"margin: 0px; padding: 0px;\">疫情爆发让医院成为了“病毒”的代名词，很多人担心在医院会被感染，所以即便产生了一些新冠肺炎的症状也不愿到医院就诊。</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">这让不同地区医疗资源的差距被迅速拉大：重灾区医院的病人排队挂号就要几个小时，医护人员每天忙到只能睡三四个小时；而当地疫情并不严重的医院，医生每天诊治的病人可能比以往都要少。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\"><strong style=\"margin: 0px; padding: 0px;\">如何解决医院交叉感染问题，让用户都可以“敢看病”，如何让医生资源得到更合理的分配，成为了疫情对于整个医疗行业最大的考验。</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">针对这些问题，<strong style=\"margin: 0px; padding: 0px;\">微脉决定火速上线义诊服务平台。</strong>创始人裘加林第一时间对城市、运营、产品、技术等多个部门的员工排兵布阵，成立了抗击新冠冠状病毒肺炎专项小组。100多人的团队用了3天时间加班加点，在1月21日疫情开始普遍受到关注时，<strong style=\"margin: 0px; padding: 0px;\">微脉与第一家合作医院台州恩泽医疗集团共同推出了新冠肺炎义诊平台。&nbsp;</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">微脉之所以能够这么迅速上线产品，需要得益于其平台上所积累的医生和用户资源，在疫情发生之前，微脉平台上就已经集结了10万余名医生，每天为超过50万人提供各类医疗健康服务。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">据微脉市场部负责人张乐回忆，<strong style=\"margin: 0px; padding: 0px;\">微脉是当时国内第一家推出针对此次疫情的义诊服务平台。&nbsp;</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">有了基础服务平台之后，怎样触达全国更多其他地区的医生与患者，也成了微脉所面临的新问题。&nbsp;</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">尽管微脉平台有一定的医疗资源基础，但还是要与各家医院挨个联系，尤其又要在短时间内聚集起大批量义诊医生，挑战难度相当大。</span></p><p><br/></p>', '2020-02-23 03:43:05.543721', '6dKcj4HRcfjQiM6AUimciZ', 5);
INSERT INTO `news_news` VALUES (8, '瞄准80、90后带娃痛点，她打造亲子餐厅界的“爱马仕”，欲撬动万亿儿童消费市场', '亲子餐厅具有“虹吸效应”，能将家长带入更多的消费场景。', 'http://127.0.0.1:8002/media/1574907569_929.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">二孩政策一来，儿童消费市场再次成了香饽饽，亲子餐厅也愈发炙手可热。“2018年全上海陆续诞生了300家大大小小的亲子餐厅，而在2015-2016年全三年出现的亲子餐厅不到300家。”</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">但如雨后春笋般的亲子餐厅大多没有迎来预想中的春天。在同质化竞争中，一批亲子餐厅难以存活。twinkle耀童创始人李礼告诉小饭桌，2018年年底陆续有三四家亲子餐厅找她接盘。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">“砸钱开个夫妻店就能赚得满钵金归的时代早已过去”，在李礼看来，仅依赖于人口红利却没有解决家庭带娃痛点、拓展多元业态的亲子餐厅注定销声匿迹。作为红利期的第一批入场者，李礼一开始便意识到亲子餐厅的“虹吸效应”，即儿童能将家长带入更多的消费场景。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">2017年9月，李礼创办twinkle耀童，第一家直营店落地上海新天地。<strong style=\"margin: 0px; padding: 0px;\">定位中高端的twinkle耀童欲解决80、90后新生代辣妈的带娃痛点和社交需求，通过亲子游乐、餐饮、零售等多业态打造家庭消费的第三空间。</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">2018年6月，twinkle耀童获得华映资本1600万的天使轮投资。在资本助推下，截止到2019年10月，twinkle耀童已运营上海六家直营店，在深圳、奉贤、马鞍山、宁波等8个城市设有8个加盟店，加盟店将于2019年底陆续开业，香港和澳洲地区两家直营店也在筹备中。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 16px;\">打造亲子餐厅领域的“爱马仕”</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">当全职妈妈的那6年，李礼带孩子外出游玩成为她一大痛处，“坐着长条冷板凳刷手机是最大的无奈”。中国游乐场所不少，但真正能让家长放松陪伴的地方却寥寥无几。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">而反观有相似文化背景的新加坡、日本、韩国等亚太地区，为多胎家庭提供的游乐场所十分人性化，它们不单是以孩子角度出发的游乐场所，也满足了家长的休闲娱乐和社交需求。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">切身体会到中国全职妈妈带娃痛点后，李礼做亲子餐厅的想法初步萌芽。彼时二孩政策正全面放开，相关数据显示预计到2025年0-14岁儿童将达到峰值约2.72 亿人。<strong style=\"margin: 0px; padding: 0px;\">李礼盘算了一番发现，当2016年前后婴儿潮出生的孩子在2019-2020达到进入幼儿园后，中国儿童消费市场的活力将被彻底激发。</strong>中国儿童产业中心数据表示，2017年中国儿童消费市场规模已经接近4.5万亿元。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">政策带来的人口红利让李礼决定入场。机缘巧合下，李礼与一位韩国妈妈Elena在孩子们的<span style=\"margin: 0px; padding: 0px;\">幼儿园</span>相识，两人一拍集合，Elena成为李礼的首位合伙人。李礼曾在外企主管市场，擅长商业运营，而Elena擅长艺术设计，两人刚好互补。同时Elena在国外的生活经验，会有更前沿的视角协助李礼把想法落地。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">但两人一开始还是走了弯路。李礼和Elena 起初打算直接加盟韩国亲子品牌，不过与总部几番谈判下来，让李礼坚定了创立自有品牌的决心。李礼不想步韩国咖啡品牌加盟商的后尘，好不容易满足了各项加盟条件后，却因后期的运营上得不到总部支持而难以为继。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: center; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://static-image.xfz.cn/1574907469_932.jpg\" title=\"\" alt=\"微信图片_20191128101308.jpg\"/></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: center; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; text-align: justify; font-size: 12px;\">李礼（左一）和Elena （右一）</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">2017年twinkle耀童落地上海新天地，和以儿童为中心的业态不同的是，twinkle耀童在设计、运营、服务等所有环节都率先要解决的是家长的痛点。“<strong style=\"margin: 0px; padding: 0px;\">很多亲子餐厅设计的很童趣，却没想清楚到底谁来买单。”</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px;\">整体视觉设计上，twinkle耀童迎合家长的审美，主打简约的ins风。整体面积控制在300-500平以内，设有餐厅区和儿童区两大区域，确保孩子时刻在家长视线之内。</span></p><p><br/></p>', '2020-02-25 07:45:35.126029', '6dKcj4HRcfjQiM6AUimciZ', 4);
INSERT INTO `news_news` VALUES (9, '品牌战、渠道战下，还有哪些新消费品类可成功突围？', '大多数消费品都不值得再做一遍？', 'http://127.0.0.1:8002/media/1574860703_831.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">11月26日，由小饭桌和凡卓资本主办的“2019 全球青年创业者大会”在北京举行。天图投资合伙人李康林，nice创始人兼CEO周首，小仙炖燕窝CEO苗树，路图全球旅行摄影创始人兼CEO杭海军与小饭桌CEO李晶一同圆桌论道，起底新消费新品牌崛起。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"\" alt=\"12-消费.jpg\" src=\"https://static-image.xfz.cn/1574860721_230.jpg\"/></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(38, 38, 38);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">以下为圆桌论坛实录（小饭桌编辑）:&nbsp;</span></strong><span style=\"margin: 0px; padding: 0px;\"></span></span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-size: 16px; color: rgb(38, 38, 38);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">李晶：小饭桌发布的《什么值得投》报告里</span>提到，新消费品牌崛起的一个底层逻辑就是消费人群和消费需求在变化。三位嘉宾的公司都在各自领域实现了非常快的增长，所以你们是如何应对服务人群的需求变化，从而实现快速增长的？</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">苗树：</span></strong><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">小仙炖从2014年8月创立至今有5年的时间，我们连续两年实现三倍以上的增长。我们看到了消费者对燕窝消费需求的变化，在五年前我们刚创业的时候，总结了四大痛点一大难题，就是消费者想吃燕窝，但是没有时间炖，不知道怎么选、怎么做、怎么吃，而且一般炖煮难以确保营养。当时市场上，消费者可以选择的只有两种产品：一种是干燕窝，基本上买回去没法炖，另一种是保质期两年的即食类燕窝，里面有添加剂，主要是被当做送人的礼品，消费者自用的常态化难以打破。我太太林小仙是资深燕窝用户，也是国家一级健康管理师。我们发现了这个痛点并开创了一个新品类，在用户下单后，我们通过C2M柔性供应链给用户提供周期式解决方案。我们推出这个产品后发现有更多的用户开始选择燕窝。在十年前，我们看到燕窝的消费用户普遍是40岁-50岁的贵妇人群，因为她们家里有阿姨帮她炖，年轻人一般吃不到。但是现在，我们65%的用户是26-35岁，生活在一二线城市的白领和孕妈。在小红书和抖音方面，19-25岁用户增长超过10%，以上都能体现出消费者消费习惯和消费人群的变化。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">杭海军：</span></strong><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">路图2017年成立，当时我们发现传统摄影行业特别分散也特别大。每个城市有非常多的摄影师，但特别分散，没有技术的沉淀。我们当时想搭建一个平台从自营开始做，然后打造整个目的地的体系和标准化流程，再通过标准化</span><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">体系</span><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">复制到各个海外城市，现在我们在全球海外17个城市实现了直营。我觉得最重要的是给用户创造价值，我们采用To B和To C模式，不管是对摄影师还是合作方，我们先拿到国内旅行社的流量，做完沉淀后再去做To C。在旅行中，用户会遇到用车、司机、导游、领队、吃饭等等问题，这些过程中涉及的各方都能成为我们的分销商。我们把流量用技术的手段去做沉淀，通过我们拍的内容布局种草，我们搭建了一个平台，前端是类似滴滴摄影师的交易平台，同时也沉淀内容，我们围绕各个旅行目的地的PGC，当地吃喝玩乐的图片视频给用户带来价值后产生一些内容沉淀，未来通过这个平台再做二次的裂变是路图的方向。我们觉得是时代的机会造就了全球移动社交内容媒体，大家都会发朋友圈和抖音，包括外国人也一样，整个全球的内容都在影响用户未来旅行的决策。整个行业从跟团游逐步转变成自由行，用户更多是看内容的沉淀，这是从交易切到内容，这些好的内容反哺给当地商家。<span style=\"margin: 0px; padding: 0px;\">我们已经和十个国家的国外客户达成合作，</span></span></p><p><br/></p>', '2020-02-25 07:46:32.671596', '6dKcj4HRcfjQiM6AUimciZ', 4);
INSERT INTO `news_news` VALUES (10, '全场景打造学习闭环，互联网教育品牌伴鱼探索更有效学习方法', '1v1、小班、大班、AI优劣势明显，不同模式适合不同阶段的孩子，不同模式适合不同知识和技能的学习掌握。', 'http://127.0.0.1:8002/media/1576059182_114.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">2019年12月11日，一场主题为“专注效果，打造闭环”的2019伴鱼全场景产品升级发布会在北京举行。此次发布会主要聚焦在伴鱼旗下四大产品，伴鱼绘本、伴鱼少儿英语、伴鱼自然拼读、伴鱼绘本精读课。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63); font-size: 16px;\">互联网化、产品化、AI化加速，伴鱼全场景产品打造更有效学习</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">2019年，对教育行业来说，可能是被关注最多的一年。伴鱼创始人&amp;CEO黄河表示，“这一年，我们遇到了一系列的问题和挑战。但是，在教育部门和所有从业者不断的努力下，教育行业依然持续快速发展，特别是整个行业加速互联网化、产品化、AI化，这都是非常令人欣喜的。”</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">在教育行业成为热点的同时，大家讨论最多的是课程的模式问题。最常见的四种模式是：1v1、小班、大班、AI。围绕他们的讨论此起彼伏，比如最常见的一种讨论：1v1规模不经济，1v4、1v6的小班课可能更好，可小班课运营的复杂度高，相比之下大班课可能会更高效。但大班课互动好像又不够理想，不如彻底用AI解决互动和师资的问题。可目前的AI还不能完全替代真人老师，于是大家好像进入了无限纠结之中。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">对此，黄河认为都很好。1v1、小班、大班、AI优劣势明显，不同模式适合不同阶段的孩子，不同模式适合不同知识和技能的学习掌握。通过伴鱼的分析，如果要强化听力口语，1v1最好；如果要提高读写能力，小班课很不错；如果要学语法，中教的大班课最好；如果练发音背单词，AI一定最高效。比如3岁以前的孩子除语言天赋很好以外，并且家长意识非常超前的，1v1，小班，大班课可能都不是最适合的。而通过以童谣和动画结合的，双师模式的AI课，可能是最适合的，到了9、10岁，同步辅导的中教大班课就不可或缺。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: center; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://static-image.xfz.cn/1576058749_972.png\" title=\"\" alt=\"图片6.png\"/><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">&nbsp; 伴鱼创始人&amp;CEO黄河</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">单一模式的思考方式已经无法满足学生及家长日益提高的新需求，因此，为了让孩子得到更好的教育环境及学习效果，伴鱼通过全场景产品服务，可以打造一种更有效的学习闭环。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">“效果产生口碑，口碑建立品牌。”据悉，在当前大环境下，伴鱼持续保持着高速增长，两年多累计了2000多万注册用户，包括多条产品线的50多万付费用户。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63); font-size: 16px;\">母语学习环境+个性化教学，真正提高学生使用英语的能力</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">“伴鱼少儿英语的目标是为学生创造母语学习环境，通过学科+素质教育和个性化教学，真正提升的是学生使用语言的能力。”伴鱼少儿英语产品负责人许睿表示，从这点出发，面向中国3-12岁年龄孩子的在线一对一课程产品——伴鱼少儿英语，经过不断打磨，致力于深入研究语言能力模型和教学方法，引入国际知名旗舰教材 - 培生 BIGENGLISH（第二版）教材，提供完整成体系的语言点内容，通过一对一主修课学习闭环，加强学习效果。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">许睿介绍，这款产品采用课前听音识图&amp;游戏化输入，课中一对一视频互动教学，保证效果，课后课件配套+自适应练习的学习闭环，充分保障孩子的学习效果；并且打造的是全场景、沉浸式的英语学习环境；再加上高效趣味互动课堂，智能识别表情，根据课件内容生成AR效果，突破在线教学局限性，让教与学更生动；最后借助“大数据监控+自适应”保证学习效果，充分激发孩子学习兴趣，让孩子学英语更有效。<br/></span><img src=\"https://static-image.xfz.cn/1576058830_529.png\" title=\"\" alt=\"图片7.png\"/></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: center; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">伴鱼少儿英语产品负责人许睿</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">运营至今，伴鱼少儿英语正在进行从1到N的产品进化，学生每周在伴鱼保持2-3节课学习节奏的情况下，可以掌握40+个单词、9个常用句型，学习 3-4个跨学科知识，和外教对话达到200+次。&nbsp;</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">据悉，通过在伴鱼少儿英语平台的学习数据显示：孩子更喜欢开口说，平均开口时长和次数明显提高，实际水平也在不断提升。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63); font-size: 16px;\">通过沉浸式、高频互动式、实时社会化，让学习更有效、更有趣</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">另外，针对教学方式落后、学习主动性弱、学习效果不明显、学习持久性弱等问题，伴鱼全新推出了伴鱼绘本精读课程，旨在让学生在学习中实现沉浸式、高频互动式、实时社会化的课堂体验。据伴鱼绘本精读课产品负责人杨鹏跃介绍，精读绘本可以培养学生交流、文化、内容、认知四大方向10大能力，通过课前SAM导入法、课中TBL互动学习法、课后Big Five检测+思维与交流的教学方法，以及任务式剧情探索、主题游戏互动、伙伴学习、AI测评、专业老师全程辅导、线下随材等多维度教学，以此来满足“数字原住民”的核心需求，真正提升素质教学效果。</span></p><p><br/></p>', '2020-02-25 07:47:26.651128', '6dKcj4HRcfjQiM6AUimciZ', 4);
INSERT INTO `news_news` VALUES (11, '非常时期，2B公司“守正出奇”的思维方式', '创业者一定要把企业的业务、组织和资本统筹考虑，业务为核心，组织为根基，资本为手段。', 'http://127.0.0.1:8002/media/1582601918_765.jpg', '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">此次疫情，对2B创业公司无疑是一起“黑天鹅”事件，“战疫”成为各方关切的焦点。相关讨论近来层出不穷，常规的方法论或已广为人知晓，可对于创业者而言，创业本质上是一件走独木桥的事，转危为机的一些关键手段也许往往不在常规的操作之中。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">险峰·创邀请义柏资本创始合伙人侯杰超，从业务、组织和资本三个维度，探讨2B创业企业在疫情中乃至更长时期的“守正出奇”之道。将“守正”与“出奇”结合，在疫情这场大考中或更有助创业者寻到答案。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\"><img src=\"https://static-image.xfz.cn/1582601971_219.png\" title=\"\" alt=\"22.png\"/></span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">在企业成长规律的研究中，一个观点是，企业的成长就是业务、组织和资本三种力持续良性互动的过程。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">在义柏资本创始合伙人侯杰超的分享中，同样从这个三个维度出发，强调创业者一定要把企业的业务、组织和资本统筹考虑，业务为核心，组织为根基，资本为手段。尤其是在当前疫情下，创业者更需做好业务诊断、组织提升以及资本计划。</span></p><h3 style=\"margin: 20px auto; padding: 0px 0px 0px 15px; font-size: 18px; color: rgb(33, 33, 33); line-height: 30px; border-left: 5px solid rgb(246, 118, 106); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">业务诊断</span></h3><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">业务诊断方面，提供给企业四项实操要点，包括现金流的计算方法、销售规划的调整策略、换个角度看待业务目标以及行业整合机会的判断标准。这里面主要是“守正”之举，也包括“以终为始”的逆向思维。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">一、现金流测算：按中性到悲观计算回款率</span></strong></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">疫情给许多企业踩下急刹车，现金流入持续减少是不少CEO眼下最棘手的问题，甚至是部分企业的生死考验。因此，我们首先来看测算现金流回款的具体方法。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">对现金流回款测算方法，可以分乐观、中性、悲观三种假设。当下，我们最提倡的还是按照中性到悲观的角度去做测算。最悲观的情况就是假设除已经100%确定能收回的收入外，其他一分钱也回不来，那么公司能支撑多久？</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">中性的假设分为去年和今年两个部分。对于去年已经交付的部分（已开票或已开验收单），形成的应收账款回款率要根据客户质量判断，如果是那些口碑性比较好、现金流也很健康的客户，建议打5-7折；如果客户本身也遭受冲击或存在不确定性，一般建议打3-5折甚至更低。</span></p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 30px; text-align: justify; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; color: rgb(63, 63, 63);\">而关于今年的部分，包括新单和去年的单还没有交付完的部分。对于后者，一方面交付的整个周期会延后，同时叠加上述已开票部分本身的回款也会存在压力（5-7折或3-5折），所以平均下来是5折。对于新签，充分考虑疫情影响之后，在预计回款基础上，建议再打3-5折。</span></p><p><br/></p>', '2020-02-25 07:48:30.992962', '6dKcj4HRcfjQiM6AUimciZ', 7);

-- ----------------------------
-- Table structure for news_newscategory
-- ----------------------------
DROP TABLE IF EXISTS `news_newscategory`;
CREATE TABLE `news_newscategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_newscategory
-- ----------------------------
INSERT INTO `news_newscategory` VALUES (4, '新消费');
INSERT INTO `news_newscategory` VALUES (5, '教育');
INSERT INTO `news_newscategory` VALUES (6, '物流');
INSERT INTO `news_newscategory` VALUES (7, '产业互联网');

-- ----------------------------
-- Table structure for payinfo_payinfo
-- ----------------------------
DROP TABLE IF EXISTS `payinfo_payinfo`;
CREATE TABLE `payinfo_payinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payinfo_payinfo
-- ----------------------------
INSERT INTO `payinfo_payinfo` VALUES (1, 'python', '基础知识', 0, 'python.docx');

-- ----------------------------
-- Table structure for payinfo_payinfoorder
-- ----------------------------
DROP TABLE IF EXISTS `payinfo_payinfoorder`;
CREATE TABLE `payinfo_payinfoorder`  (
  `uid` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` double NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `istype` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `buyer_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `payinfo_payinfoorder_buyer_id_d5fa0de0_fk_xfzauth_user_uid`(`buyer_id`) USING BTREE,
  INDEX `payinfo_payinfoorder_payinfo_id_6e124fd9_fk_payinfo_payinfo_id`(`payinfo_id`) USING BTREE,
  CONSTRAINT `payinfo_payinfoorder_buyer_id_d5fa0de0_fk_xfzauth_user_uid` FOREIGN KEY (`buyer_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `payinfo_payinfoorder_payinfo_id_6e124fd9_fk_payinfo_payinfo_id` FOREIGN KEY (`payinfo_id`) REFERENCES `payinfo_payinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payinfo_payinfoorder
-- ----------------------------
INSERT INTO `payinfo_payinfoorder` VALUES ('tb6UjH66FHxCUuxvZ9MKTh', 0, '2020-02-26 07:55:22.595472', 0, 1, '6dKcj4HRcfjQiM6AUimciZ', 1);

-- ----------------------------
-- Table structure for xfzauth_user
-- ----------------------------
DROP TABLE IF EXISTS `xfzauth_user`;
CREATE TABLE `xfzauth_user`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uid` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_join` datetime(6) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone`) USING BTREE,
  UNIQUE INDEX `xfzauth_user_email_82f7eb6d_uniq`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xfzauth_user
-- ----------------------------
INSERT INTO `xfzauth_user` VALUES ('pbkdf2_sha256$180000$M67tLHgd64WU$7l1Sg/xJVfG1k/2YFsbYc6Js0zjlTLtoYHBvBPNlOok=', '2020-02-21 07:54:45.183429', 1, '6dKcj4HRcfjQiM6AUimciZ', '13721371402', NULL, 'admin', 1, 1, '2020-02-21 07:54:45.098744');
INSERT INTO `xfzauth_user` VALUES ('pbkdf2_sha256$180000$jmfXSlN7jiIP$a+sgRHOA+lj3kjQgy7cZku4DZF90Ocph8VP/m5ff2g0=', '2020-02-21 00:57:30.107792', 0, 'fBrV3xnyPtBmNyPvK98tgU', '18888888888', '', 'zhiliao', 1, 1, '2020-02-20 03:24:23.692626');

-- ----------------------------
-- Table structure for xfzauth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `xfzauth_user_groups`;
CREATE TABLE `xfzauth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xfzauth_user_groups_user_id_group_id_d2832b74_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `xfzauth_user_groups_group_id_d7c0ba51_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `xfzauth_user_groups_group_id_d7c0ba51_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xfzauth_user_groups_user_id_a55d6898_fk_xfzauth_user_uid` FOREIGN KEY (`user_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xfzauth_user_groups
-- ----------------------------
INSERT INTO `xfzauth_user_groups` VALUES (1, 'fBrV3xnyPtBmNyPvK98tgU', 3);

-- ----------------------------
-- Table structure for xfzauth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `xfzauth_user_user_permissions`;
CREATE TABLE `xfzauth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xfzauth_user_user_permis_user_id_permission_id_ee2ce3dd_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `xfzauth_user_user_pe_permission_id_38fd7164_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `xfzauth_user_user_pe_permission_id_38fd7164_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xfzauth_user_user_pe_user_id_bc7be476_fk_xfzauth_u` FOREIGN KEY (`user_id`) REFERENCES `xfzauth_user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
