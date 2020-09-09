-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- shopping_umchikin 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `shopping_umchikin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shopping_umchikin`;

-- 테이블 shopping_umchikin.auth_group 구조 내보내기
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.auth_group:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 테이블 shopping_umchikin.auth_group_permissions 구조 내보내기
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.auth_group_permissions:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 테이블 shopping_umchikin.auth_permission 구조 내보내기
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.auth_permission:~76 rows (대략적) 내보내기
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add user', 1, 'add_user'),
	(2, 'Can change user', 1, 'change_user'),
	(3, 'Can delete user', 1, 'delete_user'),
	(4, 'Can view user', 1, 'view_user'),
	(5, 'Can add log entry', 2, 'add_logentry'),
	(6, 'Can change log entry', 2, 'change_logentry'),
	(7, 'Can delete log entry', 2, 'delete_logentry'),
	(8, 'Can view log entry', 2, 'view_logentry'),
	(9, 'Can add permission', 3, 'add_permission'),
	(10, 'Can change permission', 3, 'change_permission'),
	(11, 'Can delete permission', 3, 'delete_permission'),
	(12, 'Can view permission', 3, 'view_permission'),
	(13, 'Can add group', 4, 'add_group'),
	(14, 'Can change group', 4, 'change_group'),
	(15, 'Can delete group', 4, 'delete_group'),
	(16, 'Can view group', 4, 'view_group'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add category', 7, 'add_category'),
	(26, 'Can change category', 7, 'change_category'),
	(27, 'Can delete category', 7, 'delete_category'),
	(28, 'Can view category', 7, 'view_category'),
	(29, 'Can add product', 8, 'add_product'),
	(30, 'Can change product', 8, 'change_product'),
	(31, 'Can delete product', 8, 'delete_product'),
	(32, 'Can view product', 8, 'view_product'),
	(33, 'Can add review', 9, 'add_review'),
	(34, 'Can change review', 9, 'change_review'),
	(35, 'Can delete review', 9, 'delete_review'),
	(36, 'Can view review', 9, 'view_review'),
	(37, 'Can add review attach file', 10, 'add_reviewattachfile'),
	(38, 'Can change review attach file', 10, 'change_reviewattachfile'),
	(39, 'Can delete review attach file', 10, 'delete_reviewattachfile'),
	(40, 'Can view review attach file', 10, 'view_reviewattachfile'),
	(41, 'Can add qna', 11, 'add_qna'),
	(42, 'Can change qna', 11, 'change_qna'),
	(43, 'Can delete qna', 11, 'delete_qna'),
	(44, 'Can view qna', 11, 'view_qna'),
	(45, 'Can add product attach file', 12, 'add_productattachfile'),
	(46, 'Can change product attach file', 12, 'change_productattachfile'),
	(47, 'Can delete product attach file', 12, 'delete_productattachfile'),
	(48, 'Can view product attach file', 12, 'view_productattachfile'),
	(49, 'Can add wishlist', 13, 'add_wishlist'),
	(50, 'Can change wishlist', 13, 'change_wishlist'),
	(51, 'Can delete wishlist', 13, 'delete_wishlist'),
	(52, 'Can view wishlist', 13, 'view_wishlist'),
	(53, 'Can add cart', 14, 'add_cart'),
	(54, 'Can change cart', 14, 'change_cart'),
	(55, 'Can delete cart', 14, 'delete_cart'),
	(56, 'Can view cart', 14, 'view_cart'),
	(57, 'Can add cart item', 15, 'add_cartitem'),
	(58, 'Can change cart item', 15, 'change_cartitem'),
	(59, 'Can delete cart item', 15, 'delete_cartitem'),
	(60, 'Can view cart item', 15, 'view_cartitem'),
	(61, 'Can add order', 16, 'add_order'),
	(62, 'Can change order', 16, 'change_order'),
	(63, 'Can delete order', 16, 'delete_order'),
	(64, 'Can view order', 16, 'view_order'),
	(65, 'Can add order detail', 17, 'add_orderdetail'),
	(66, 'Can change order detail', 17, 'change_orderdetail'),
	(67, 'Can delete order detail', 17, 'delete_orderdetail'),
	(68, 'Can view order detail', 17, 'view_orderdetail'),
	(69, 'Can add tag', 18, 'add_tag'),
	(70, 'Can change tag', 18, 'change_tag'),
	(71, 'Can delete tag', 18, 'delete_tag'),
	(72, 'Can view tag', 18, 'view_tag'),
	(73, 'Can add tagged item', 19, 'add_taggeditem'),
	(74, 'Can change tagged item', 19, 'change_taggeditem'),
	(75, 'Can delete tagged item', 19, 'delete_taggeditem'),
	(76, 'Can view tagged item', 19, 'view_taggeditem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 테이블 shopping_umchikin.cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(250) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.cart:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 shopping_umchikin.cartitem 구조 내보내기
CREATE TABLE IF NOT EXISTS `cartitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CartItem_cart_id_dded4aaa_fk_cart_id` (`cart_id`),
  KEY `CartItem_product_id_733636f4_fk_product_id` (`product_id`),
  CONSTRAINT `CartItem_cart_id_dded4aaa_fk_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `CartItem_product_id_733636f4_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.cartitem:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;

-- 테이블 shopping_umchikin.category 구조 내보내기
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.category:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `category_name`, `parent_id`) VALUES
	(1, '닭가슴살', 1),
	(2, '훈제', 1),
	(3, '소시지', 1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- 테이블 shopping_umchikin.django_admin_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_register_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_register_user_id` FOREIGN KEY (`user_id`) REFERENCES `register_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.django_admin_log:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 테이블 shopping_umchikin.django_content_type 구조 내보내기
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.django_content_type:~19 rows (대략적) 내보내기
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(2, 'admin', 'logentry'),
	(4, 'auth', 'group'),
	(3, 'auth', 'permission'),
	(14, 'cart', 'cart'),
	(15, 'cart', 'cartitem'),
	(5, 'contenttypes', 'contenttype'),
	(16, 'order', 'order'),
	(17, 'order', 'orderdetail'),
	(1, 'register', 'user'),
	(6, 'sessions', 'session'),
	(7, 'shop', 'category'),
	(8, 'shop', 'product'),
	(12, 'shop', 'productattachfile'),
	(11, 'shop', 'qna'),
	(9, 'shop', 'review'),
	(10, 'shop', 'reviewattachfile'),
	(13, 'shop', 'wishlist'),
	(18, 'taggit', 'tag'),
	(19, 'taggit', 'taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 테이블 shopping_umchikin.django_migrations 구조 내보내기
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.django_migrations:~27 rows (대략적) 내보내기
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-09-03 18:58:25.668066'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2020-09-03 18:58:25.721921'),
	(3, 'auth', '0001_initial', '2020-09-03 18:58:25.789765'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2020-09-03 18:58:25.994219'),
	(5, 'auth', '0003_alter_user_email_max_length', '2020-09-03 18:58:26.001203'),
	(6, 'auth', '0004_alter_user_username_opts', '2020-09-03 18:58:26.009178'),
	(7, 'auth', '0005_alter_user_last_login_null', '2020-09-03 18:58:26.016136'),
	(8, 'auth', '0006_require_contenttypes_0002', '2020-09-03 18:58:26.019127'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2020-09-03 18:58:26.026129'),
	(10, 'auth', '0008_alter_user_username_max_length', '2020-09-03 18:58:26.033091'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2020-09-03 18:58:26.041088'),
	(12, 'auth', '0010_alter_group_name_max_length', '2020-09-03 18:58:26.101961'),
	(13, 'auth', '0011_update_proxy_permissions', '2020-09-03 18:58:26.109886'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2020-09-03 18:58:26.117863'),
	(15, 'register', '0001_initial', '2020-09-03 18:58:26.201663'),
	(16, 'admin', '0001_initial', '2020-09-03 18:58:26.463940'),
	(17, 'admin', '0002_logentry_remove_auto_add', '2020-09-03 18:58:26.565693'),
	(18, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-03 18:58:26.577635'),
	(19, 'shop', '0001_initial', '2020-09-03 18:58:26.762182'),
	(20, 'cart', '0001_initial', '2020-09-03 18:58:27.088270'),
	(21, 'order', '0001_initial', '2020-09-03 18:58:27.253859'),
	(22, 'sessions', '0001_initial', '2020-09-03 18:58:27.432381'),
	(23, 'shop', '0002_auto_20200903_0131', '2020-09-03 18:58:27.525101'),
	(24, 'shop', '0003_auto_20200903_1129', '2020-09-03 18:58:27.562031'),
	(25, 'taggit', '0001_initial', '2020-09-03 18:58:27.623862'),
	(26, 'taggit', '0002_auto_20150616_2121', '2020-09-03 18:58:27.745513'),
	(27, 'taggit', '0003_taggeditem_add_unique_index', '2020-09-03 18:58:27.768452');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 테이블 shopping_umchikin.django_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.django_session:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('mcwfy2o33kxhdk4c6ugpsxijpcjlkqjt', '.eJyrViouTU5OLS6Oz0xRslIqSS0uMVLSgQvmJeamAoUTixNT0pCEU3MTM3OA4tnZyZZGIGDmkJdYllqkl5yfq1QLANFeHHE:1kFZYr:IHerD4nZzzekry9EvVfPZ6avxy4QP0hUzLiFHlyWC7U', '2020-09-22 18:05:09.015256'),
	('v5yu8ykvp9pi9wdp4czd99d1dv13mqlm', '.eJyrViouTU5OLS6Oz0xRslJKBAMlHbhoXmJuKlDcEEkoNTcxMwektjglzSEvsSy1SC85P1epFgDXShnz:1kFf4K:ZABYHdpSDuzmzpuULQbfeqdSGNmnF0ByPHHEv3xyFms', '2020-09-22 23:58:00.761227'),
	('zhoub8zc2wpfpwamcv4zi4minv0zb6o0', '.eJxVjDsOwjAQBe_iGllefxNKes5grdcLDiBbipMKcXcSKQW0b2beW0RclxLXznOcsjgLEKffLSE9ue4gP7Dem6RWl3lKclfkQbu8tsyvy-H-HRTsZavZGZeU50EbsmoIxACe0bENkDaiEQOMzoNSyQKNCs1NEwB7mw34JD5fyMQ3GA:1kDpCt:34hUQkQopFw--vGehYE2MsR6hrCPRp-J22CGZIkG4LI', '2020-09-17 22:23:15.712183');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 테이블 shopping_umchikin.order 구조 내보내기
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_dt` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_e323497c_fk_register_user_id` (`user_id`),
  CONSTRAINT `order_user_id_e323497c_fk_register_user_id` FOREIGN KEY (`user_id`) REFERENCES `register_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.order:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 테이블 shopping_umchikin.order_detail 구조 내보내기
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_order_id_b97dfbdf_fk_order_id` (`order_id`),
  KEY `order_detail_product_id_009a48e3_fk_product_id` (`product_id`),
  CONSTRAINT `order_detail_order_id_b97dfbdf_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `order_detail_product_id_009a48e3_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.order_detail:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- 테이블 shopping_umchikin.product 구조 내보내기
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `read_cnt` int(11) DEFAULT NULL,
  `p_created_dt` datetime(6) DEFAULT NULL,
  `p_modify_dt` datetime(6) DEFAULT NULL,
  `brand` varchar(45) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `p_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_id_640030a0_fk_category_id` (`category_id`),
  CONSTRAINT `product_category_id_640030a0_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.product:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `p_name`, `price`, `description`, `read_cnt`, `p_created_dt`, `p_modify_dt`, `brand`, `category_id`, `p_url`) VALUES
	(1, '닭가슴살 스테이크 갈릭', 3000, '정말맛있어요', 435, '2020-08-31 13:39:52.000000', '2020-08-31 13:39:53.000000', '1', 1, '/static_data/static/images/shop_products/닭가슴살 스테이크 갈릭.jpg'),
	(2, '닭가슴살 스테이크 오리지널', 5000, '심플 이즈 베스트', 5, '2020-09-01 20:10:40.000000', '2020-09-01 20:10:41.000000', '1', 1, '/static_data/static/images/shop_products/닭가슴살 스테이크 오리지널.jpg'),
	(3, '닭가슴살 소시지 훈제', 8000, '평범한 닭가슴살은 가라', 15, '2020-09-01 20:22:14.000000', '2020-09-01 20:22:15.000000', '1', 2, '/static_data/static/images/shop_products/닭가슴살 소시지 훈제.jpg'),
	(4, '러브잇 슬라이스 소스 닭가슴살', 22000, '차승원이 픽한 맛있는 닭가슴살', 40, '2020-09-01 20:38:17.000000', '2020-09-01 20:38:18.000000', '2', 3, '/static_data/static/images/shop_products/러브잇 슬라이스 소스 닭가슴살.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 테이블 shopping_umchikin.qna 구조 내보내기
CREATE TABLE IF NOT EXISTS `qna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qna_title` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `content` longtext NOT NULL,
  `qna_create_date` datetime(6) NOT NULL,
  `qna_modify_date` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qna_author_id_1917067e_fk_register_user_id` (`author_id`),
  KEY `qna_product_id_b689fd07_fk_product_id` (`product_id`),
  CONSTRAINT `qna_author_id_1917067e_fk_register_user_id` FOREIGN KEY (`author_id`) REFERENCES `register_user` (`id`),
  CONSTRAINT `qna_product_id_b689fd07_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.qna:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` (`id`, `qna_title`, `parent_id`, `content`, `qna_create_date`, `qna_modify_date`, `author_id`, `product_id`) VALUES
	(1, '한입먹어봤는데 제스타일이아니네요', NULL, '<p>이건 반품해주셔야합니다.</p>', '2020-09-03 22:31:55.351472', '2020-09-03 22:31:55.351472', 1, 1),
	(2, '반품문의', 1, '<p>드신제품은 반품 곤란합니다 고객님 ^^</p>', '2020-09-03 22:32:16.255533', '2020-09-03 22:32:16.255533', 1, 1);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;

-- 테이블 shopping_umchikin.register_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `register_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `real_name` varchar(5) NOT NULL,
  `birthdate` date NOT NULL,
  `addr` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.register_user:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `register_user` DISABLE KEYS */;
INSERT INTO `register_user` (`id`, `password`, `last_login`, `email`, `username`, `real_name`, `birthdate`, `addr`, `phone`, `is_active`, `is_admin`, `is_superuser`, `is_staff`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$216000$8mCqoRPmdhmG$QbuuJ/vOibehm+K8b7HA/Pg01yTrF2r3sDW3Ue7vEq0=', '2020-09-08 23:57:21.369828', 'kkc926@naver.com', 'test1', 'asadf', '2020-09-03', '1', '01067778542', 1, 0, 0, 0, '2020-09-03 19:09:28.726740'),
	(2, 'pbkdf2_sha256$216000$kfVm8K5uZLvu$mjsW01Z4MeE2Xe8YvOG/EUWdz4F0ATHHAKGvcuCpo84=', NULL, 'kkc9222226@naver.com', 'test2', 'asadf', '2020-09-08', '1', '11234235', 1, 0, 0, 0, '2020-09-08 18:05:09.011265'),
	(3, 'pbkdf2_sha256$216000$OJuXu3mwKV7r$dwucEDcuoWQPeU5t9GpTJNm7WmPxx8QfH5mSyxiTQDA=', NULL, 'asdf@naver.com', 'aaaaaa', '1', '2020-09-08', '1', '9999999999', 1, 0, 0, 0, '2020-09-08 23:58:00.758268');
/*!40000 ALTER TABLE `register_user` ENABLE KEYS */;

-- 테이블 shopping_umchikin.register_user_groups 구조 내보내기
CREATE TABLE IF NOT EXISTS `register_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `register_user_groups_user_id_group_id_29c2490d_uniq` (`user_id`,`group_id`),
  KEY `register_user_groups_group_id_ca93437c_fk_auth_group_id` (`group_id`),
  CONSTRAINT `register_user_groups_group_id_ca93437c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `register_user_groups_user_id_c02a1648_fk_register_user_id` FOREIGN KEY (`user_id`) REFERENCES `register_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.register_user_groups:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `register_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_user_groups` ENABLE KEYS */;

-- 테이블 shopping_umchikin.register_user_user_permissions 구조 내보내기
CREATE TABLE IF NOT EXISTS `register_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `register_user_user_permi_user_id_permission_id_b0bd979f_uniq` (`user_id`,`permission_id`),
  KEY `register_user_user_p_permission_id_4888970d_fk_auth_perm` (`permission_id`),
  CONSTRAINT `register_user_user_p_permission_id_4888970d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `register_user_user_p_user_id_091bc010_fk_register_` FOREIGN KEY (`user_id`) REFERENCES `register_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.register_user_user_permissions:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `register_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_user_user_permissions` ENABLE KEYS */;

-- 테이블 shopping_umchikin.review 구조 내보내기
CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_title` varchar(50) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `r_created_dt` datetime(6) NOT NULL,
  `r_modify_dt` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `review_author_id_97444e9c_fk_register_user_id` (`author_id`),
  KEY `review_product_id_77658f7f_fk_product_id` (`product_id`),
  CONSTRAINT `review_author_id_97444e9c_fk_register_user_id` FOREIGN KEY (`author_id`) REFERENCES `register_user` (`id`),
  CONSTRAINT `review_product_id_77658f7f_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.review:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`id`, `review_title`, `rating`, `content`, `file`, `r_created_dt`, `r_modify_dt`, `author_id`, `product_id`) VALUES
	(1, '우와', 10, '<p>이야 맛있다!</p>', NULL, '2020-09-03 22:23:33.390519', '2020-09-03 22:31:27.769669', 1, 1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- 테이블 shopping_umchikin.shop_productattachfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `shop_productattachfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_file` varchar(100) DEFAULT NULL,
  `filename` varchar(64) DEFAULT NULL,
  `content_type` varchar(128) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_productattachfile_product_id_c68b5107_fk_product_id` (`product_id`),
  CONSTRAINT `shop_productattachfile_product_id_c68b5107_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.shop_productattachfile:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `shop_productattachfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_productattachfile` ENABLE KEYS */;

-- 테이블 shopping_umchikin.shop_reviewattachfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `shop_reviewattachfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_file` varchar(100) DEFAULT NULL,
  `filename` varchar(64) DEFAULT NULL,
  `content_type` varchar(128) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_reviewattachfile_review_id_d0ba679a_fk_review_id` (`review_id`),
  CONSTRAINT `shop_reviewattachfile_review_id_d0ba679a_fk_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.shop_reviewattachfile:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `shop_reviewattachfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_reviewattachfile` ENABLE KEYS */;

-- 테이블 shopping_umchikin.shop_wishlist 구조 내보내기
CREATE TABLE IF NOT EXISTS `shop_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.shop_wishlist:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `shop_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_wishlist` ENABLE KEYS */;

-- 테이블 shopping_umchikin.taggit_tag 구조 내보내기
CREATE TABLE IF NOT EXISTS `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.taggit_tag:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;

-- 테이블 shopping_umchikin.taggit_taggeditem 구조 내보내기
CREATE TABLE IF NOT EXISTS `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 shopping_umchikin.taggit_taggeditem:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
