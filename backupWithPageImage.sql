-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.17-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.0.0.4464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица cms.lc.accounting1c
DROP TABLE IF EXISTS `accounting1c`;
CREATE TABLE IF NOT EXISTS `accounting1c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.accounting1c: 0 rows
DELETE FROM `accounting1c`;
/*!40000 ALTER TABLE `accounting1c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounting1c` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.ActionLog
DROP TABLE IF EXISTS `ActionLog`;
CREATE TABLE IF NOT EXISTS `ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `event` tinyint(255) DEFAULT NULL,
  `model_name` varchar(50) DEFAULT '',
  `model_title` text,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `event` (`event`),
  KEY `datetime` (`datetime`),
  KEY `model_name` (`model_name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.ActionLog: 25 rows
DELETE FROM `ActionLog`;
/*!40000 ALTER TABLE `ActionLog` DISABLE KEYS */;
INSERT INTO `ActionLog` (`id`, `username`, `event`, `model_name`, `model_title`, `datetime`) VALUES
	(1, 'admin', 3, 'SystemModules', 'pages', '2015-03-25 13:28:08'),
	(2, 'admin', 3, 'SystemModules', 'pages', '2015-03-25 13:31:52'),
	(3, 'admin', 1, 'SystemModules', 'pages', '2015-03-25 13:34:09'),
	(4, 'admin', 1, 'SystemModules', 'pages', '2015-03-25 13:34:31'),
	(5, 'admin', 1, 'SystemModules', 'banners', '2015-03-25 14:11:57'),
	(6, 'admin', 3, 'SystemModules', 'banners', '2015-03-26 12:26:34'),
	(7, 'admin', 1, 'SystemModules', 'banners', '2015-03-26 12:26:56'),
	(8, 'admin', 3, 'SystemModules', 'banners', '2015-03-26 14:56:40'),
	(9, 'admin', 1, 'SystemModules', 'banners', '2015-03-26 14:56:43'),
	(10, 'admin', 2, 'StoreAttribute', 'freq', '2015-04-24 15:19:48'),
	(11, 'admin', 2, 'StoreAttribute', 'freq', '2015-04-24 15:19:54'),
	(12, 'admin', 2, 'StoreProduct', 'Acer ASPIRE 5943G-7748G75TWiss', '2015-04-24 15:20:41'),
	(13, 'admin', 2, 'StoreProduct', 'DELL INSPIRON N5050', '2015-04-24 15:21:30'),
	(14, 'admin', 2, 'StoreAttribute', 'sound_type', '2015-06-29 16:37:56'),
	(15, 'admin', 2, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2015-09-29 14:48:52'),
	(16, 'admin', 2, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2015-09-29 14:58:34'),
	(17, 'admin', 2, 'StoreAttribute', 'memmory_size', '2015-11-20 12:42:40'),
	(18, 'admin', 2, 'StoreAttribute', 'freq', '2015-11-20 12:43:56'),
	(19, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:55:18'),
	(20, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:56:14'),
	(21, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:56:23'),
	(22, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:56:40'),
	(23, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:56:59'),
	(24, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:57:08'),
	(25, 'admin', 2, 'Page', 'Google презентовал свои очки дополненной реальности‎', '2016-06-15 15:57:16');
/*!40000 ALTER TABLE `ActionLog` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.AuthAssignment
DROP TABLE IF EXISTS `AuthAssignment`;
CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.AuthAssignment: 8 rows
DELETE FROM `AuthAssignment`;
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;
INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
	('Admin', '1', NULL, NULL),
	('Authenticated', '57', NULL, 'N;'),
	('Authenticated', '58', NULL, 'N;'),
	('Orders.Orders.*', '56', NULL, 'N;'),
	('Orders.Statuses.*', '56', NULL, 'N;'),
	('Authenticated', '56', NULL, 'N;'),
	('Authenticated', '62', NULL, 'N;'),
	('Authenticated', '63', NULL, 'N;');
/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.AuthItem
DROP TABLE IF EXISTS `AuthItem`;
CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.AuthItem: 18 rows
DELETE FROM `AuthItem`;
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;
INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
	('Admin', 2, NULL, NULL, 'N;'),
	('Authenticated', 2, NULL, NULL, 'N;'),
	('Guest', 2, NULL, NULL, 'N;'),
	('Orders.Orders.*', 1, NULL, NULL, 'N;'),
	('Orders.Statuses.*', 1, NULL, NULL, 'N;'),
	('Orders.Orders.Index', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Create', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Update', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProductList', 0, NULL, NULL, 'N;'),
	('Orders.Orders.AddProduct', 0, NULL, NULL, 'N;'),
	('Orders.Orders.RenderOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.JsonOrderedProducts', 0, NULL, NULL, 'N;'),
	('Orders.Orders.Delete', 0, NULL, NULL, 'N;'),
	('Orders.Orders.DeleteProduct', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Index', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Create', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Update', 0, NULL, NULL, 'N;'),
	('Orders.Statuses.Delete', 0, NULL, NULL, 'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.AuthItemChild
DROP TABLE IF EXISTS `AuthItemChild`;
CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.AuthItemChild: 0 rows
DELETE FROM `AuthItemChild`;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Banners
DROP TABLE IF EXISTS `Banners`;
CREATE TABLE IF NOT EXISTS `Banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Banners: ~2 rows (приблизительно)
DELETE FROM `Banners`;
/*!40000 ALTER TABLE `Banners` DISABLE KEYS */;
INSERT INTO `Banners` (`id`, `name`, `status`) VALUES
	(1, 'test', 1),
	(2, 'test2', 1);
/*!40000 ALTER TABLE `Banners` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.BannersImages
DROP TABLE IF EXISTS `BannersImages`;
CREATE TABLE IF NOT EXISTS `BannersImages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `banner_id` (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.BannersImages: ~5 rows (приблизительно)
DELETE FROM `BannersImages`;
/*!40000 ALTER TABLE `BannersImages` DISABLE KEYS */;
INSERT INTO `BannersImages` (`id`, `banner_id`, `image`, `sort`) VALUES
	(20, 1, '/uploads/banners/Koala.jpg', 4),
	(21, 1, '/uploads/importImages/AsusTransformerPadPrime20164Gb.jpg', 3),
	(22, 1, '/uploads/product/22_-1188437959.jpg', 2),
	(23, 2, '/uploads/banners/Koala.jpg', 2),
	(26, 2, '/uploads/banners/Penguins.jpg', 3);
/*!40000 ALTER TABLE `BannersImages` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.BannersImagesTranslate
DROP TABLE IF EXISTS `BannersImagesTranslate`;
CREATE TABLE IF NOT EXISTS `BannersImagesTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.BannersImagesTranslate: ~10 rows (приблизительно)
DELETE FROM `BannersImagesTranslate`;
/*!40000 ALTER TABLE `BannersImagesTranslate` DISABLE KEYS */;
INSERT INTO `BannersImagesTranslate` (`id`, `object_id`, `language_id`, `title`, `description`, `link`) VALUES
	(39, 20, 1, 'test', 'test', 'dsafdasfdsafd'),
	(40, 20, 9, 'test321321', 'test3213123', 'dsafdasfdsafd'),
	(41, 21, 1, '2253161111111', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(42, 21, 9, '2253161111111', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(43, 22, 1, '147852369', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(44, 22, 9, '147852369', 'bhjbhjbjhb', 'hjbjbhjbjh'),
	(45, 23, 1, 'fdsafdsafads', 'fdsafdsafdsa', ''),
	(46, 23, 9, 'fdsafdsafads', 'fdsafdsafdsa', 'fsdafdsafads'),
	(51, 26, 1, 'dsafdsaf', 'dsafdsafsadf', ''),
	(52, 26, 9, 'dsafdsaf', 'dsafdsafsadf', 'sdafsdafdsaf');
/*!40000 ALTER TABLE `BannersImagesTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Comments
DROP TABLE IF EXISTS `Comments`;
CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `class_name` varchar(100) DEFAULT '',
  `object_pk` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `text` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_name_index` (`class_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Comments: 0 rows
DELETE FROM `Comments`;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Discount
DROP TABLE IF EXISTS `Discount`;
CREATE TABLE IF NOT EXISTS `Discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `sum` varchar(10) DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Discount: 1 rows
DELETE FROM `Discount`;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` (`id`, `name`, `active`, `sum`, `start_date`, `end_date`, `roles`) VALUES
	(1, 'Скидка на всю технику Apple', 1, '5%', '2015-03-25 12:44:10', '2016-01-01 12:00:00', NULL);
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.DiscountCategory
DROP TABLE IF EXISTS `DiscountCategory`;
CREATE TABLE IF NOT EXISTS `DiscountCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.DiscountCategory: 9 rows
DELETE FROM `DiscountCategory`;
/*!40000 ALTER TABLE `DiscountCategory` DISABLE KEYS */;
INSERT INTO `DiscountCategory` (`id`, `discount_id`, `category_id`) VALUES
	(308, 1, 1),
	(309, 1, 230),
	(310, 1, 231),
	(311, 1, 232),
	(312, 1, 233),
	(313, 1, 234),
	(314, 1, 235),
	(315, 1, 236),
	(316, 1, 237);
/*!40000 ALTER TABLE `DiscountCategory` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.DiscountManufacturer
DROP TABLE IF EXISTS `DiscountManufacturer`;
CREATE TABLE IF NOT EXISTS `DiscountManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.DiscountManufacturer: 1 rows
DELETE FROM `DiscountManufacturer`;
/*!40000 ALTER TABLE `DiscountManufacturer` DISABLE KEYS */;
INSERT INTO `DiscountManufacturer` (`id`, `discount_id`, `manufacturer_id`) VALUES
	(29, 1, 6);
/*!40000 ALTER TABLE `DiscountManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.grid_view_filter
DROP TABLE IF EXISTS `grid_view_filter`;
CREATE TABLE IF NOT EXISTS `grid_view_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `grid_id` varchar(100) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.grid_view_filter: 0 rows
DELETE FROM `grid_view_filter`;
/*!40000 ALTER TABLE `grid_view_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `grid_view_filter` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.notifications: ~0 rows (приблизительно)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Order
DROP TABLE IF EXISTS `Order`;
CREATE TABLE IF NOT EXISTS `Order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `secret_key` varchar(10) DEFAULT '',
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` float(10,2) DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL COMMENT 'delivery address',
  `user_phone` varchar(30) DEFAULT NULL,
  `user_comment` varchar(500) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_comment` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `secret_key` (`secret_key`),
  KEY `delivery_id` (`delivery_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Order: 0 rows
DELETE FROM `Order`;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.OrderHistory
DROP TABLE IF EXISTS `OrderHistory`;
CREATE TABLE IF NOT EXISTS `OrderHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `data_before` text,
  `data_after` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_index` (`order_id`),
  KEY `created_index` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.OrderHistory: ~0 rows (приблизительно)
DELETE FROM `OrderHistory`;
/*!40000 ALTER TABLE `OrderHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderHistory` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.OrderProduct
DROP TABLE IF EXISTS `OrderProduct`;
CREATE TABLE IF NOT EXISTS `OrderProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `configurable_id` int(11) DEFAULT NULL,
  `name` text,
  `configurable_name` text COMMENT 'Store name of configurable product',
  `configurable_data` text,
  `variants` text,
  `quantity` smallint(6) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `configurable_id` (`configurable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.OrderProduct: 0 rows
DELETE FROM `OrderProduct`;
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderProduct` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.OrderStatus
DROP TABLE IF EXISTS `OrderStatus`;
CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.OrderStatus: 2 rows
DELETE FROM `OrderStatus`;
/*!40000 ALTER TABLE `OrderStatus` DISABLE KEYS */;
INSERT INTO `OrderStatus` (`id`, `name`, `position`) VALUES
	(1, 'Новый', 0),
	(5, 'Доставлен', 1);
/*!40000 ALTER TABLE `OrderStatus` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Page
DROP TABLE IF EXISTS `Page`;
CREATE TABLE IF NOT EXISTS `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `layout` varchar(2555) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Page: 7 rows
DELETE FROM `Page`;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
	(8, 1, NULL, 'help', '2012-06-10 22:35:51', '2012-07-07 11:47:09', '2012-06-10 22:35:29', 'published', '', ''),
	(9, 1, NULL, 'how-to-create-order', '2012-06-10 22:36:50', '2012-07-07 11:45:53', '2012-06-10 22:36:27', 'published', '', ''),
	(10, 1, NULL, 'garantiya', '2012-06-10 22:37:06', '2012-07-07 11:45:38', '2012-06-10 22:36:50', 'published', '', ''),
	(11, 1, NULL, 'dostavka-i-oplata', '2012-06-10 22:37:18', '2012-07-07 11:41:49', '2012-06-10 22:37:07', 'published', '', ''),
	(12, 1, 7, 'samsung-pitaetsya-izbezhat-zapreta-na-galaxy-nexus-v-shtatah-pri-pomoshi-patcha', '2012-07-07 12:08:50', '2012-07-07 12:09:33', '2012-07-07 12:06:19', 'published', '', ''),
	(13, 1, 7, 'za-85-mesyacev-android-40-popal-na-11-ustroistv', '2012-07-07 12:19:44', '2013-06-04 23:20:21', '2012-07-07 12:14:48', 'published', '', ''),
	(14, 1, 7, 'google-prezentoval-svoi-ochki-dopolnennoi-realnosti', '2012-07-07 12:26:11', '2016-06-15 15:57:16', '2012-07-07 12:25:48', 'published', '', '');
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.PageCategory
DROP TABLE IF EXISTS `PageCategory`;
CREATE TABLE IF NOT EXISTS `PageCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_url` text,
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.PageCategory: 3 rows
DELETE FROM `PageCategory`;
/*!40000 ALTER TABLE `PageCategory` DISABLE KEYS */;
INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
	(7, NULL, 'news', 'news', '', '', '2012-07-07 12:06:03', '2013-04-29 23:24:05', NULL),
	(10, NULL, 'tesstovya2', 'tesstovya2', '', '', '2013-05-21 23:59:34', '2013-05-21 23:59:34', NULL),
	(12, 7, 'tesstovya2', 'news/tesstovya2', '', '', '2013-05-22 00:07:01', '2013-05-22 00:07:01', NULL);
/*!40000 ALTER TABLE `PageCategory` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.PageCategoryTranslate
DROP TABLE IF EXISTS `PageCategoryTranslate`;
CREATE TABLE IF NOT EXISTS `PageCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.PageCategoryTranslate: 6 rows
DELETE FROM `PageCategoryTranslate`;
/*!40000 ALTER TABLE `PageCategoryTranslate` DISABLE KEYS */;
INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
	(13, 7, 1, 'Новости', '', '', '', ''),
	(14, 7, 9, 'Новости', '', '', '', ''),
	(15, 11, 1, 'sdfsdf', '', '', '', ''),
	(16, 11, 9, 'sdfsdf', '', '', '', ''),
	(17, 12, 1, 'Тесстовя2', '', '', '', ''),
	(18, 12, 9, 'Тесстовя2', '', '', '', '');
/*!40000 ALTER TABLE `PageCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.PageImage
DROP TABLE IF EXISTS `PageImage`;
CREATE TABLE IF NOT EXISTS `PageImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Дамп данных таблицы cms.lc.PageImage: 0 rows
DELETE FROM `PageImage`;
/*!40000 ALTER TABLE `PageImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageImage` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.PageTranslate
DROP TABLE IF EXISTS `PageTranslate`;
CREATE TABLE IF NOT EXISTS `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.PageTranslate: 14 rows
DELETE FROM `PageTranslate`;
/*!40000 ALTER TABLE `PageTranslate` DISABLE KEYS */;
INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(22, 11, 9, 'Доставка и оплата', '', '', '', '', ''),
	(15, 8, 1, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', ''),
	(16, 8, 9, 'Помощь', '', '', '', '', ''),
	(17, 9, 1, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
	(18, 9, 9, 'Как сделать заказ', '', '', '', '', ''),
	(19, 10, 1, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
	(20, 10, 9, 'Гарантия', '', '', '', '', ''),
	(21, 11, 1, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
	(23, 12, 1, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
	(25, 13, 1, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(24, 12, 9, 'Samsung пытается избежать запрета на Galaxy Nexus в Штатах при помощи патча', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', '', ''),
	(26, 13, 9, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
	(27, 14, 1, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital.', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско.', '', '', ''),
	(28, 14, 9, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', '');
/*!40000 ALTER TABLE `PageTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.Rights
DROP TABLE IF EXISTS `Rights`;
CREATE TABLE IF NOT EXISTS `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.Rights: 0 rows
DELETE FROM `Rights`;
/*!40000 ALTER TABLE `Rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rights` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreAttribute
DROP TABLE IF EXISTS `StoreAttribute`;
CREATE TABLE IF NOT EXISTS `StoreAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `display_on_front` tinyint(1) DEFAULT '1',
  `use_in_filter` tinyint(1) DEFAULT NULL,
  `use_in_variants` tinyint(1) DEFAULT NULL,
  `use_in_compare` tinyint(1) DEFAULT '0',
  `select_many` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `use_in_filter` (`use_in_filter`),
  KEY `display_on_front` (`display_on_front`),
  KEY `position` (`position`),
  KEY `use_in_variants` (`use_in_variants`),
  KEY `use_in_compare` (`use_in_compare`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreAttribute: 19 rows
DELETE FROM `StoreAttribute`;
/*!40000 ALTER TABLE `StoreAttribute` DISABLE KEYS */;
INSERT INTO `StoreAttribute` (`id`, `name`, `type`, `display_on_front`, `use_in_filter`, `use_in_variants`, `use_in_compare`, `select_many`, `position`, `required`) VALUES
	(1, 'processor_manufacturer', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(2, 'freq', 6, 1, 1, 1, 1, 1, 0, 0),
	(3, 'memmory', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(4, 'memmory_type', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(5, 'screen', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(6, 'screen_dimension', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(7, 'rms_power', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(8, 'corpus_material', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(9, 'sound_type', 3, 1, 1, 1, 1, 0, 0, 0),
	(10, 'monitor_diagonal', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(11, 'monitor_dimension', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(12, 'view_angle', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(13, 'phone_platform', 3, 1, 1, NULL, 1, NULL, 0, NULL),
	(14, 'phone_weight', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(15, 'phone_display', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(16, 'phone_camera', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(17, 'tablet_screen_size', 3, 1, NULL, NULL, 1, NULL, 0, NULL),
	(18, 'memmory_size', 3, 1, 1, 1, 1, 0, 0, 0),
	(19, 'weight', 3, 1, NULL, NULL, 1, NULL, 0, NULL);
/*!40000 ALTER TABLE `StoreAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreAttributeOption
DROP TABLE IF EXISTS `StoreAttributeOption`;
CREATE TABLE IF NOT EXISTS `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreAttributeOption: 75 rows
DELETE FROM `StoreAttributeOption`;
/*!40000 ALTER TABLE `StoreAttributeOption` DISABLE KEYS */;
INSERT INTO `StoreAttributeOption` (`id`, `attribute_id`, `position`) VALUES
	(86, 1, NULL),
	(87, 2, 0),
	(88, 3, NULL),
	(89, 4, NULL),
	(90, 5, NULL),
	(91, 6, NULL),
	(92, 1, NULL),
	(93, 2, 1),
	(94, 2, 2),
	(95, 2, 3),
	(96, 1, NULL),
	(97, 2, 4),
	(98, 3, NULL),
	(99, 6, NULL),
	(100, 2, 5),
	(101, 6, NULL),
	(102, 3, NULL),
	(103, 5, NULL),
	(104, 1, NULL),
	(105, 2, 6),
	(106, 5, NULL),
	(107, 2, 7),
	(108, 7, NULL),
	(109, 8, NULL),
	(110, 9, 0),
	(111, 7, NULL),
	(112, 7, NULL),
	(113, 8, NULL),
	(114, 7, NULL),
	(115, 9, 1),
	(116, 7, NULL),
	(117, 7, NULL),
	(118, 10, NULL),
	(119, 11, NULL),
	(120, 12, NULL),
	(121, 10, NULL),
	(122, 10, NULL),
	(123, 12, NULL),
	(124, 10, NULL),
	(125, 11, NULL),
	(126, 13, NULL),
	(127, 14, NULL),
	(128, 15, NULL),
	(129, 16, NULL),
	(130, 14, NULL),
	(131, 15, NULL),
	(132, 16, NULL),
	(133, 14, NULL),
	(134, 13, NULL),
	(135, 14, NULL),
	(136, 15, NULL),
	(137, 14, NULL),
	(138, 16, NULL),
	(139, 14, NULL),
	(140, 13, NULL),
	(141, 15, NULL),
	(142, 13, NULL),
	(143, 14, NULL),
	(144, 15, NULL),
	(145, 14, NULL),
	(146, 15, NULL),
	(147, 17, NULL),
	(148, 6, NULL),
	(149, 18, 0),
	(150, 19, NULL),
	(151, 18, 1),
	(152, 17, NULL),
	(153, 6, NULL),
	(154, 19, NULL),
	(155, 18, 2),
	(156, 19, NULL),
	(157, 17, NULL),
	(158, 6, NULL),
	(159, 19, NULL),
	(160, 19, NULL);
/*!40000 ALTER TABLE `StoreAttributeOption` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreAttributeOptionTranslate
DROP TABLE IF EXISTS `StoreAttributeOptionTranslate`;
CREATE TABLE IF NOT EXISTS `StoreAttributeOptionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreAttributeOptionTranslate: 150 rows
DELETE FROM `StoreAttributeOptionTranslate`;
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeOptionTranslate` (`id`, `language_id`, `object_id`, `value`) VALUES
	(171, 1, 86, 'Celeron'),
	(172, 9, 86, 'Celeron'),
	(173, 1, 87, '2200 МГц'),
	(174, 9, 87, '2200 МГц'),
	(175, 1, 88, '2048 Мб'),
	(176, 9, 88, '2048 Мб'),
	(177, 1, 89, 'DDR3'),
	(178, 9, 89, 'DDR3'),
	(179, 1, 90, '15.6 дюйм'),
	(180, 9, 90, '15.6 дюйм'),
	(181, 1, 91, '1366x768'),
	(182, 9, 91, '1366x768'),
	(183, 1, 92, 'E-240'),
	(184, 9, 92, 'E-240'),
	(185, 1, 93, '1650 МГц'),
	(186, 9, 93, '1650 МГц'),
	(187, 1, 94, '1500 МГц'),
	(188, 9, 94, '1500 МГц'),
	(189, 1, 95, '1700 МГц'),
	(190, 9, 95, '1700 МГц'),
	(191, 1, 96, 'Core i7'),
	(192, 9, 96, 'Core i7'),
	(193, 1, 97, '2500 МГц'),
	(194, 9, 97, '2500 МГц'),
	(195, 1, 98, '8192 Мб'),
	(196, 9, 98, '8192 Мб'),
	(197, 1, 99, '1920x1080'),
	(198, 9, 99, '1920x1080'),
	(199, 1, 100, '2700 МГц'),
	(200, 9, 100, '2700 МГц'),
	(201, 1, 101, '1920x1200'),
	(202, 9, 101, '1920x1200'),
	(203, 1, 102, '4096 Мб'),
	(204, 9, 102, '4096 Мб'),
	(205, 1, 103, '15.4 дюйм'),
	(206, 9, 103, '15.4 дюйм'),
	(207, 1, 104, 'Core i5'),
	(208, 9, 104, 'Core i5'),
	(209, 1, 105, '2660 МГц'),
	(210, 9, 105, '2660 МГц'),
	(211, 1, 106, '16.4 дюйм'),
	(212, 9, 106, '16.4 дюйм'),
	(213, 1, 107, '1730 МГц'),
	(214, 9, 107, '1730 МГц'),
	(215, 1, 108, '71 Вт'),
	(216, 9, 108, '71 Вт'),
	(217, 1, 109, 'пластик'),
	(218, 9, 109, 'пластик'),
	(219, 1, 110, '5.1'),
	(220, 9, 110, '5.1'),
	(221, 1, 111, '62 Вт'),
	(222, 9, 111, '62 Вт'),
	(223, 1, 112, '80 Вт'),
	(224, 9, 112, '80 Вт'),
	(225, 1, 113, 'MDF'),
	(226, 9, 113, 'MDF'),
	(227, 1, 114, '25 Вт'),
	(228, 9, 114, '25 Вт'),
	(229, 1, 115, '2.1'),
	(230, 9, 115, '2.1'),
	(231, 1, 116, '30 Вт'),
	(232, 9, 116, '30 Вт'),
	(233, 1, 117, '28 Вт'),
	(234, 9, 117, '28 Вт'),
	(235, 1, 118, '24"'),
	(236, 9, 118, '24"'),
	(237, 1, 119, '1920x1200'),
	(238, 9, 119, '1920x1200'),
	(239, 1, 120, '178°/178°'),
	(240, 9, 120, '178°/178°'),
	(241, 1, 121, '23"'),
	(242, 9, 121, '23"'),
	(243, 1, 122, '21.5"'),
	(244, 9, 122, '21.5"'),
	(245, 1, 123, '170°/160°'),
	(246, 9, 123, '170°/160°'),
	(247, 1, 124, '27"'),
	(248, 9, 124, '27"'),
	(249, 1, 125, '2560x1440'),
	(250, 9, 125, '2560x1440'),
	(251, 1, 126, 'Android'),
	(252, 9, 126, 'Android'),
	(253, 1, 127, '118 г'),
	(254, 9, 127, '118 г'),
	(255, 1, 128, '3.8"'),
	(256, 9, 128, '3.8"'),
	(257, 1, 129, '5 МП'),
	(258, 9, 129, '5 МП'),
	(259, 1, 130, '129 г'),
	(260, 9, 130, '129 г'),
	(261, 1, 131, '4.7"'),
	(262, 9, 131, '4.7"'),
	(263, 1, 132, '8 МП'),
	(264, 9, 132, '8 МП'),
	(265, 1, 133, '162 г'),
	(266, 9, 133, '162 г'),
	(267, 1, 134, 'iOS'),
	(268, 9, 134, 'iOS'),
	(269, 1, 135, '140 г'),
	(270, 9, 135, '140 г'),
	(271, 1, 136, '3.5"'),
	(272, 9, 136, '3.5"'),
	(273, 1, 137, '135 г'),
	(274, 9, 137, '135 г'),
	(275, 1, 138, '3 МП'),
	(276, 9, 138, '3 МП'),
	(277, 1, 139, '137 г'),
	(278, 9, 139, '137 г'),
	(279, 1, 140, 'MeeGo'),
	(280, 9, 140, 'MeeGo'),
	(281, 1, 141, '3.9"'),
	(282, 9, 141, '3.9"'),
	(283, 1, 142, 'BlackBerry OS'),
	(284, 9, 142, 'BlackBerry OS'),
	(285, 1, 143, '130 г'),
	(286, 9, 143, '130 г'),
	(287, 1, 144, '2.8"'),
	(288, 9, 144, '2.8"'),
	(289, 1, 145, '122 г'),
	(290, 9, 145, '122 г'),
	(291, 1, 146, '2.4"'),
	(292, 9, 146, '2.4"'),
	(293, 1, 147, '9.7"'),
	(294, 9, 147, '9.7"'),
	(295, 1, 148, '1024x768'),
	(296, 9, 148, '1024x768'),
	(297, 1, 149, '16 Гб'),
	(298, 9, 149, '16 Гб'),
	(299, 1, 150, '613 г'),
	(300, 9, 150, '613 г'),
	(301, 1, 151, '64 Гб'),
	(302, 9, 151, '64 Гб'),
	(303, 1, 152, '7"'),
	(304, 9, 152, '7"'),
	(305, 1, 153, '1024x600'),
	(306, 9, 153, '1024x600'),
	(307, 1, 154, '343 г'),
	(308, 9, 154, '343 г'),
	(309, 1, 155, '8 Гб'),
	(310, 9, 155, '8 Гб'),
	(311, 1, 156, '410 г'),
	(312, 9, 156, '410 г'),
	(313, 1, 157, '10.1"'),
	(314, 9, 157, '10.1"'),
	(315, 1, 158, '1280x800'),
	(316, 9, 158, '1280x800'),
	(317, 1, 159, '586 г'),
	(318, 9, 159, '586 г'),
	(319, 1, 160, '565 г'),
	(320, 9, 160, '565 г');
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreAttributeTranslate
DROP TABLE IF EXISTS `StoreAttributeTranslate`;
CREATE TABLE IF NOT EXISTS `StoreAttributeTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreAttributeTranslate: 38 rows
DELETE FROM `StoreAttributeTranslate`;
/*!40000 ALTER TABLE `StoreAttributeTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeTranslate` (`id`, `object_id`, `language_id`, `title`) VALUES
	(41, 1, 1, 'Тип процессора'),
	(42, 1, 9, 'Тип процессора'),
	(43, 2, 1, 'Частота процессора'),
	(44, 2, 9, 'Частота процессора'),
	(45, 3, 1, 'Объем памяти'),
	(46, 3, 9, 'Объем памяти'),
	(47, 4, 1, 'Тип памяти'),
	(48, 4, 9, 'Тип памяти'),
	(49, 5, 1, 'Диагональ'),
	(50, 5, 9, 'Диагональ'),
	(51, 6, 1, 'Разрешение'),
	(52, 6, 9, 'Разрешение'),
	(53, 7, 1, 'Суммарная мощность'),
	(54, 7, 9, 'Суммарная мощность'),
	(55, 8, 1, 'Материал'),
	(56, 8, 9, 'Материал'),
	(57, 9, 1, 'Тип'),
	(58, 9, 9, 'Тип'),
	(59, 10, 1, 'Диагональ'),
	(60, 10, 9, 'Диагональ'),
	(61, 11, 1, 'Разрешение'),
	(62, 11, 9, 'Разрешение'),
	(63, 12, 1, 'Угол обзора'),
	(64, 12, 9, 'Угол обзора'),
	(65, 13, 1, 'Платформа'),
	(66, 13, 9, 'Платформа'),
	(67, 14, 1, 'Вес'),
	(68, 14, 9, 'Вес'),
	(69, 15, 1, 'Диагональ'),
	(70, 15, 9, 'Диагональ'),
	(71, 16, 1, 'Камера'),
	(72, 16, 9, 'Камера'),
	(73, 17, 1, 'Диагональ'),
	(74, 17, 9, 'Диагональ'),
	(75, 18, 1, 'Объем памяти'),
	(76, 18, 9, 'Объем памяти'),
	(77, 19, 1, 'Вес'),
	(78, 19, 9, 'Вес');
/*!40000 ALTER TABLE `StoreAttributeTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreCategory
DROP TABLE IF EXISTS `StoreCategory`;
CREATE TABLE IF NOT EXISTS `StoreCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_path` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `url` (`url`),
  KEY `full_path` (`full_path`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreCategory: 9 rows
DELETE FROM `StoreCategory`;
/*!40000 ALTER TABLE `StoreCategory` DISABLE KEYS */;
INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `image`, `layout`, `view`, `description`) VALUES
	(1, 1, 26, 1, 'root', '', '', '', '', NULL),
	(230, 10, 15, 2, 'noutbuki', 'noutbuki', '', '', '', NULL),
	(231, 11, 12, 3, 'byudzhetnii', 'noutbuki/byudzhetnii', '', '', '', NULL),
	(232, 13, 14, 3, 'igrovoi', 'noutbuki/igrovoi', '', '', '', NULL),
	(233, 16, 21, 2, 'kompyuteri', 'kompyuteri', '', '', '', NULL),
	(234, 17, 18, 3, 'kompyuternaya-akustika', 'kompyuteri/kompyuternaya-akustika', '', '', '', NULL),
	(235, 22, 23, 2, 'monitori', 'monitori', '', '', '', NULL),
	(236, 24, 25, 2, 'telefoni', 'telefoni', '', '', '', NULL),
	(237, 19, 20, 3, 'plansheti', 'kompyuteri/plansheti', '', '', '', NULL);
/*!40000 ALTER TABLE `StoreCategory` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreCategoryTranslate
DROP TABLE IF EXISTS `StoreCategoryTranslate`;
CREATE TABLE IF NOT EXISTS `StoreCategoryTranslate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreCategoryTranslate: 22 rows
DELETE FROM `StoreCategoryTranslate`;
/*!40000 ALTER TABLE `StoreCategoryTranslate` DISABLE KEYS */;
INSERT INTO `StoreCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
	(1, 1, 1, 'root', '', '', '', NULL),
	(22, 219, 1, 'Планшеты', '', '', '', NULL),
	(23, 219, 9, 'Планшеты', '', '', '', NULL),
	(24, 220, 1, 'Ассортимент', '', '', '', NULL),
	(25, 220, 9, 'Ассортимент', '', '', '', NULL),
	(28, 1, 9, 'root', '', '', '', NULL),
	(45, 230, 1, 'Ноутбуки', NULL, NULL, NULL, NULL),
	(46, 230, 9, 'Ноутбуки', NULL, NULL, NULL, NULL),
	(47, 231, 1, 'Бюджетный', NULL, NULL, NULL, NULL),
	(48, 231, 9, 'Бюджетный', NULL, NULL, NULL, NULL),
	(49, 232, 1, 'Игровой', NULL, NULL, NULL, NULL),
	(50, 232, 9, 'Игровой', NULL, NULL, NULL, NULL),
	(51, 233, 1, 'Компьютеры', NULL, NULL, NULL, NULL),
	(52, 233, 9, 'Компьютеры', NULL, NULL, NULL, NULL),
	(53, 234, 1, 'Компьютерная акустика', NULL, NULL, NULL, NULL),
	(54, 234, 9, 'Компьютерная акустика', NULL, NULL, NULL, NULL),
	(55, 235, 1, 'Мониторы', NULL, NULL, NULL, NULL),
	(56, 235, 9, 'Мониторы', NULL, NULL, NULL, NULL),
	(57, 236, 1, 'Телефоны', NULL, NULL, NULL, NULL),
	(58, 236, 9, 'Телефоны', NULL, NULL, NULL, NULL),
	(59, 237, 1, 'Планшеты', NULL, NULL, NULL, NULL),
	(60, 237, 9, 'Планшеты', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreCategoryTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreCurrency
DROP TABLE IF EXISTS `StoreCurrency`;
CREATE TABLE IF NOT EXISTS `StoreCurrency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `iso` varchar(10) DEFAULT '',
  `symbol` varchar(10) DEFAULT '',
  `rate` float(10,3) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreCurrency: 2 rows
DELETE FROM `StoreCurrency`;
/*!40000 ALTER TABLE `StoreCurrency` DISABLE KEYS */;
INSERT INTO `StoreCurrency` (`id`, `name`, `iso`, `symbol`, `rate`, `main`, `default`) VALUES
	(1, 'Доллары', 'USD', '$', 1.000, 1, 1),
	(2, 'Рубли', 'RUR', 'руб.', 32.520, 0, 0);
/*!40000 ALTER TABLE `StoreCurrency` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreDeliveryMethod
DROP TABLE IF EXISTS `StoreDeliveryMethod`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float(10,2) DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT '0.00',
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreDeliveryMethod: 3 rows
DELETE FROM `StoreDeliveryMethod`;
/*!40000 ALTER TABLE `StoreDeliveryMethod` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethod` (`id`, `price`, `free_from`, `position`, `active`) VALUES
	(14, 10.00, 1000.00, 0, 1),
	(15, 0.00, 0.00, 1, 1),
	(16, 30.00, 0.00, 2, 1);
/*!40000 ALTER TABLE `StoreDeliveryMethod` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreDeliveryMethodTranslate
DROP TABLE IF EXISTS `StoreDeliveryMethodTranslate`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreDeliveryMethodTranslate: 6 rows
DELETE FROM `StoreDeliveryMethodTranslate`;
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 14, 1, 'Курьером', ''),
	(2, 14, 9, 'English', 'english description'),
	(3, 15, 1, 'Самовывоз', ''),
	(4, 15, 9, 'Самовывоз', ''),
	(5, 16, 1, 'Адресная доставка по стране', ''),
	(6, 16, 9, 'Адресная доставка по стране', '');
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreDeliveryPayment
DROP TABLE IF EXISTS `StoreDeliveryPayment`;
CREATE TABLE IF NOT EXISTS `StoreDeliveryPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='Saves relations between delivery and payment methods ';

-- Дамп данных таблицы cms.lc.StoreDeliveryPayment: 19 rows
DELETE FROM `StoreDeliveryPayment`;
/*!40000 ALTER TABLE `StoreDeliveryPayment` DISABLE KEYS */;
INSERT INTO `StoreDeliveryPayment` (`id`, `delivery_id`, `payment_id`) VALUES
	(24, 12, 14),
	(23, 10, 16),
	(22, 10, 13),
	(21, 10, 14),
	(34, 11, 16),
	(33, 11, 13),
	(25, 12, 15),
	(26, 12, 16),
	(78, 14, 21),
	(77, 14, 19),
	(76, 14, 20),
	(75, 14, 18),
	(82, 15, 20),
	(81, 15, 18),
	(55, 16, 17),
	(56, 16, 18),
	(57, 16, 20),
	(58, 16, 19),
	(74, 14, 17);
/*!40000 ALTER TABLE `StoreDeliveryPayment` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreManufacturer
DROP TABLE IF EXISTS `StoreManufacturer`;
CREATE TABLE IF NOT EXISTS `StoreManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreManufacturer: 18 rows
DELETE FROM `StoreManufacturer`;
/*!40000 ALTER TABLE `StoreManufacturer` DISABLE KEYS */;
INSERT INTO `StoreManufacturer` (`id`, `url`, `layout`, `view`) VALUES
	(1, 'lenovo', '', ''),
	(2, 'asus', '', ''),
	(3, 'dell', '', ''),
	(4, 'fujitsu', '', ''),
	(5, 'hp', '', ''),
	(6, 'apple', '', ''),
	(7, 'sony', '', ''),
	(8, 'acer', '', ''),
	(9, 'logitech', '', ''),
	(10, 'microlab', '', ''),
	(11, 'edifier', '', ''),
	(12, 'sven', '', ''),
	(13, 'lg', '', ''),
	(14, 'samsung', '', ''),
	(15, 'philips', '', ''),
	(16, 'htc', '', ''),
	(17, 'nokia', '', ''),
	(18, 'blackberry', '', '');
/*!40000 ALTER TABLE `StoreManufacturer` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreManufacturerTranslate
DROP TABLE IF EXISTS `StoreManufacturerTranslate`;
CREATE TABLE IF NOT EXISTS `StoreManufacturerTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreManufacturerTranslate: 36 rows
DELETE FROM `StoreManufacturerTranslate`;
/*!40000 ALTER TABLE `StoreManufacturerTranslate` DISABLE KEYS */;
INSERT INTO `StoreManufacturerTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(23, 1, 1, 'Lenovo', NULL, NULL, NULL, NULL),
	(24, 1, 9, 'Lenovo', NULL, NULL, NULL, NULL),
	(25, 2, 1, 'Asus', NULL, NULL, NULL, NULL),
	(26, 2, 9, 'Asus', NULL, NULL, NULL, NULL),
	(27, 3, 1, 'Dell', NULL, NULL, NULL, NULL),
	(28, 3, 9, 'Dell', NULL, NULL, NULL, NULL),
	(29, 4, 1, 'Fujitsu', NULL, NULL, NULL, NULL),
	(30, 4, 9, 'Fujitsu', NULL, NULL, NULL, NULL),
	(31, 5, 1, 'HP', NULL, NULL, NULL, NULL),
	(32, 5, 9, 'HP', NULL, NULL, NULL, NULL),
	(33, 6, 1, 'Apple', NULL, NULL, NULL, NULL),
	(34, 6, 9, 'Apple', NULL, NULL, NULL, NULL),
	(35, 7, 1, 'Sony', NULL, NULL, NULL, NULL),
	(36, 7, 9, 'Sony', NULL, NULL, NULL, NULL),
	(37, 8, 1, 'Acer', NULL, NULL, NULL, NULL),
	(38, 8, 9, 'Acer', NULL, NULL, NULL, NULL),
	(39, 9, 1, 'Logitech', NULL, NULL, NULL, NULL),
	(40, 9, 9, 'Logitech', NULL, NULL, NULL, NULL),
	(41, 10, 1, 'Microlab', NULL, NULL, NULL, NULL),
	(42, 10, 9, 'Microlab', NULL, NULL, NULL, NULL),
	(43, 11, 1, 'Edifier', NULL, NULL, NULL, NULL),
	(44, 11, 9, 'Edifier', NULL, NULL, NULL, NULL),
	(45, 12, 1, 'Sven', NULL, NULL, NULL, NULL),
	(46, 12, 9, 'Sven', NULL, NULL, NULL, NULL),
	(47, 13, 1, 'LG', NULL, NULL, NULL, NULL),
	(48, 13, 9, 'LG', NULL, NULL, NULL, NULL),
	(49, 14, 1, 'Samsung', NULL, NULL, NULL, NULL),
	(50, 14, 9, 'Samsung', NULL, NULL, NULL, NULL),
	(51, 15, 1, 'Philips', NULL, NULL, NULL, NULL),
	(52, 15, 9, 'Philips', NULL, NULL, NULL, NULL),
	(53, 16, 1, 'HTC', NULL, NULL, NULL, NULL),
	(54, 16, 9, 'HTC', NULL, NULL, NULL, NULL),
	(55, 17, 1, 'Nokia', NULL, NULL, NULL, NULL),
	(56, 17, 9, 'Nokia', NULL, NULL, NULL, NULL),
	(57, 18, 1, 'BlackBerry', NULL, NULL, NULL, NULL),
	(58, 18, 9, 'BlackBerry', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreManufacturerTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StorePaymentMethod
DROP TABLE IF EXISTS `StorePaymentMethod`;
CREATE TABLE IF NOT EXISTS `StorePaymentMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `payment_system` varchar(100) DEFAULT '',
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StorePaymentMethod: 5 rows
DELETE FROM `StorePaymentMethod`;
/*!40000 ALTER TABLE `StorePaymentMethod` DISABLE KEYS */;
INSERT INTO `StorePaymentMethod` (`id`, `currency_id`, `active`, `payment_system`, `position`) VALUES
	(17, 1, 1, 'webmoney', 0),
	(18, 2, 1, '', 2),
	(19, 1, 1, 'robokassa', 1),
	(20, 2, 1, '', 3),
	(21, 2, 1, 'qiwi', 4);
/*!40000 ALTER TABLE `StorePaymentMethod` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StorePaymentMethodTranslate
DROP TABLE IF EXISTS `StorePaymentMethodTranslate`;
CREATE TABLE IF NOT EXISTS `StorePaymentMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StorePaymentMethodTranslate: 10 rows
DELETE FROM `StorePaymentMethodTranslate`;
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` DISABLE KEYS */;
INSERT INTO `StorePaymentMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
	(1, 17, 1, 'WebMoney', 'WebMoney — это универсальное средство для расчетов в Сети, целая среда финансовых взаимоотношений, которой сегодня пользуются миллионы людей по всему миру.'),
	(2, 17, 9, 'English payment1', 'russian description'),
	(3, 18, 1, 'Наличная', 'Наличная оплата осуществляется только в рублях при доставке товара курьером покупателю.'),
	(7, 20, 1, 'Безналичная', ' Стоимость товара при безналичной оплате без ПДВ равна розничной цене товара + 2% '),
	(8, 20, 9, 'Безналичная', ''),
	(4, 18, 9, 'Наличка', '<p>ыла оылдао ылдао ылдоа ылдва<br />ыаол ывла оывалд ыова</p>'),
	(5, 19, 1, 'Robokassa', 'Многими пользователями электронные платежные системы расцениваются в качестве наиболее удобного средства оплаты товаров и услуг в Интернете.'),
	(6, 19, 9, 'Robokassa', '<p>Description goes here</p>'),
	(9, 21, 1, 'Qiwi', 'Оплата с помощью Qiwi'),
	(10, 21, 9, 'Qiwi', 'Оплата с помощью Qiwi');
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProduct
DROP TABLE IF EXISTS `StoreProduct`;
CREATE TABLE IF NOT EXISTS `StoreProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `use_configurations` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `max_price` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `availability` tinyint(2) DEFAULT '1',
  `auto_decrease_quantity` tinyint(2) DEFAULT '1',
  `views_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `added_to_cart_count` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `video` text,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `type_id` (`type_id`),
  KEY `price` (`price`),
  KEY `max_price` (`max_price`),
  KEY `is_active` (`is_active`),
  KEY `sku` (`sku`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `added_to_cart_count` (`added_to_cart_count`),
  KEY `views_count` (`views_count`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProduct: 44 rows
DELETE FROM `StoreProduct`;
/*!40000 ALTER TABLE `StoreProduct` DISABLE KEYS */;
INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `use_configurations`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`, `video`) VALUES
	(1, 1, 2, 0, 'lenovo-b570', 345.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:48', '2015-03-25 12:43:48', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(2, 1, 2, 0, 'lenovo-g570', 360.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(3, 2, 2, 0, 'asus-k53u', 375.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'Intel GMA HD'),
	(4, 2, 2, 0, 'asus-x54c', 370.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000'),
	(5, 3, 2, 0, 'dell-inspiron-n5050', 380.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-04-24 15:21:30', NULL, NULL, NULL, '', 'Intel HD Graphics 3000'),
	(6, 4, 2, 0, 'fujitsu-lifebook-ah531', 395.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'Intel HD Graphics 3000'),
	(7, 5, 2, 0, 'hp-elitebook-8560w', 3150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M'),
	(8, 3, 2, 0, 'dell-alienware-m17x', 2850.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'AMD Radeon HD 6990M'),
	(9, 6, 2, 0, 'apple-macbook-pro-15-late-2011', 2600.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 5, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'ATI Radeon HD 6770М'),
	(10, 1, 2, 0, 'lenovo-thinkpad-w520', 2450.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:49', '2015-03-25 12:43:49', NULL, NULL, NULL, NULL, 'NVIDIA Quadro 2000M'),
	(11, 7, 2, 0, 'sony-vaio-vpc-f13s8r', 1950.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, 'NVIDIA GeForce GT 425M'),
	(12, 8, 2, 0, 'acer-aspire-5943g-7748g75twiss', 2350.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-04-24 15:20:41', NULL, NULL, NULL, '', 'ATI Mobility Radeon HD 5850'),
	(13, 9, 3, 0, 'logitech-x-530', 99.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(14, 10, 3, 0, 'microlab-m-860', 89.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(15, 11, 3, 0, 'edifier-m3700', 115.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(16, 9, 3, 0, 'logitech-z-313', 84.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(17, 12, 3, 0, 'sven-sps-820', 55.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(18, 11, 3, 0, 'edifier-m1385', 67.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(19, 11, 3, 0, 'edifier-x600', 45.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:50', '2015-03-25 12:43:50', NULL, NULL, NULL, NULL, NULL),
	(20, 10, 3, 0, 'microlab-fc-362', 85.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(21, 3, 4, 0, 'dell-u2412m', 240.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(22, 3, 4, 0, 'dell-u2312hm', 180.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(23, 13, 4, 0, 'lg-flatron-m2250d', 210.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(24, 13, 4, 0, 'lg-flatron-ips226v', 175.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(25, 14, 4, 0, 'samsung-syncmaster-s22a350n', 150.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(26, 15, 4, 0, 'philips-237e3qphsu', 160.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(27, 15, 4, 0, 'philips-227e3lsu', 190.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(28, 5, 4, 0, 'hp-zr2740w', 460.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(29, 5, 4, 0, 'hp-zr2440w', 380.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:51', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(30, 14, 5, 0, 'samsung-galaxy-ace-ii', 390.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:51', NULL, NULL, NULL, NULL, NULL),
	(31, 16, 5, 0, 'htc-one-xl', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 6, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(32, 16, 5, 0, 'htc-sensation-xl', 480.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(33, 6, 5, 0, 'apple-iphone-4s-16gb', 675.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(34, 6, 5, 0, 'apple-iphone-3gs-8gb', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(35, 6, 5, 0, 'apple-iphone-4-16gb', 550.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(36, 17, 5, 0, 'nokia-n9', 425.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 9, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(37, 18, 5, 0, 'blackberry-bold-9900', 445.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(38, 18, 5, 0, 'blackberry-bold-9780', 379.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(39, 6, 6, 0, 'apple-ipad-2-16gb-wi-fi--3g', 430.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, 8, '2015-03-25 12:43:52', '2015-03-25 12:43:52', NULL, NULL, NULL, NULL, NULL),
	(40, 6, 6, 0, 'apple-ipad-2-64gb-wi-fi--3g', 560.00, 0.00, 1, '', '', '', 0, 1, 1, NULL, '2015-03-25 12:43:53', '2015-09-29 14:58:34', NULL, NULL, NULL, '', NULL),
	(41, 14, 6, 0, 'samsung-galaxy-tab-70-plus-p6200-16gb', 350.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:53', '2015-03-25 12:43:53', NULL, NULL, NULL, NULL, NULL),
	(42, 8, 6, 0, 'acer-iconia-tab-a100-8gb', 365.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:53', '2015-03-25 12:43:53', NULL, NULL, NULL, NULL, NULL),
	(43, 2, 6, 0, 'asus-transformer-pad-prime-201-64gb', 495.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:53', '2015-03-25 12:43:53', NULL, NULL, NULL, NULL, NULL),
	(44, 14, 6, 0, 'samsung-galaxy-tab-101-p7500-16gb', 475.00, 0.00, 1, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-25 12:43:53', '2015-03-25 12:43:53', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreProduct` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductAttributeEAV
DROP TABLE IF EXISTS `StoreProductAttributeEAV`;
CREATE TABLE IF NOT EXISTS `StoreProductAttributeEAV` (
  `entity` int(11) unsigned NOT NULL,
  `attribute` varchar(250) DEFAULT '',
  `value` text,
  KEY `ikEntity` (`entity`),
  KEY `attribute` (`attribute`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductAttributeEAV: 188 rows
DELETE FROM `StoreProductAttributeEAV`;
/*!40000 ALTER TABLE `StoreProductAttributeEAV` DISABLE KEYS */;
INSERT INTO `StoreProductAttributeEAV` (`entity`, `attribute`, `value`) VALUES
	(1, 'processor_manufacturer', '86'),
	(1, 'freq', '87'),
	(1, 'memmory', '88'),
	(1, 'memmory_type', '89'),
	(1, 'screen', '90'),
	(1, 'screen_dimension', '91'),
	(2, 'processor_manufacturer', '86'),
	(2, 'freq', '87'),
	(2, 'memmory', '88'),
	(2, 'memmory_type', '89'),
	(2, 'screen', '90'),
	(2, 'screen_dimension', '91'),
	(3, 'processor_manufacturer', '92'),
	(3, 'freq', '93'),
	(3, 'memmory', '88'),
	(3, 'memmory_type', '89'),
	(3, 'screen', '90'),
	(3, 'screen_dimension', '91'),
	(4, 'processor_manufacturer', '86'),
	(4, 'freq', '94'),
	(4, 'memmory', '88'),
	(4, 'memmory_type', '89'),
	(4, 'screen', '90'),
	(4, 'screen_dimension', '91'),
	(5, 'freq', '95'),
	(5, 'freq', '94'),
	(5, 'freq', '93'),
	(5, 'freq', '87'),
	(5, 'processor_manufacturer', '86'),
	(6, 'processor_manufacturer', '86'),
	(6, 'freq', '95'),
	(6, 'memmory', '88'),
	(6, 'memmory_type', '89'),
	(6, 'screen', '90'),
	(6, 'screen_dimension', '91'),
	(7, 'processor_manufacturer', '96'),
	(7, 'freq', '97'),
	(7, 'memmory', '98'),
	(7, 'memmory_type', '89'),
	(7, 'screen', '90'),
	(7, 'screen_dimension', '99'),
	(8, 'processor_manufacturer', '96'),
	(8, 'freq', '100'),
	(8, 'memmory', '98'),
	(8, 'memmory_type', '89'),
	(8, 'screen', '90'),
	(8, 'screen_dimension', '101'),
	(9, 'processor_manufacturer', '96'),
	(9, 'freq', '97'),
	(9, 'memmory', '102'),
	(9, 'memmory_type', '89'),
	(9, 'screen', '103'),
	(9, 'screen_dimension', '99'),
	(10, 'processor_manufacturer', '96'),
	(10, 'freq', '100'),
	(10, 'memmory', '102'),
	(10, 'memmory_type', '89'),
	(10, 'screen', '90'),
	(10, 'screen_dimension', '99'),
	(11, 'processor_manufacturer', '104'),
	(11, 'freq', '105'),
	(11, 'memmory', '102'),
	(11, 'memmory_type', '89'),
	(11, 'screen', '106'),
	(11, 'screen_dimension', '99'),
	(12, 'freq', '107'),
	(12, 'freq', '105'),
	(12, 'freq', '100'),
	(12, 'freq', '97'),
	(12, 'processor_manufacturer', '96'),
	(13, 'rms_power', '108'),
	(13, 'corpus_material', '109'),
	(13, 'sound_type', '110'),
	(14, 'rms_power', '111'),
	(14, 'corpus_material', '109'),
	(14, 'sound_type', '110'),
	(15, 'rms_power', '112'),
	(15, 'corpus_material', '113'),
	(15, 'sound_type', '110'),
	(16, 'rms_power', '114'),
	(16, 'corpus_material', '109'),
	(16, 'sound_type', '115'),
	(17, 'rms_power', '116'),
	(17, 'corpus_material', '113'),
	(17, 'sound_type', '115'),
	(18, 'rms_power', '117'),
	(18, 'corpus_material', '113'),
	(18, 'sound_type', '115'),
	(19, 'rms_power', '116'),
	(19, 'corpus_material', '113'),
	(19, 'sound_type', '115'),
	(20, 'rms_power', '111'),
	(20, 'corpus_material', '113'),
	(20, 'sound_type', '115'),
	(21, 'monitor_diagonal', '118'),
	(21, 'monitor_dimension', '119'),
	(21, 'view_angle', '120'),
	(22, 'monitor_diagonal', '121'),
	(22, 'monitor_dimension', '119'),
	(22, 'view_angle', '120'),
	(23, 'monitor_diagonal', '122'),
	(23, 'monitor_dimension', '119'),
	(23, 'view_angle', '123'),
	(24, 'monitor_diagonal', '122'),
	(24, 'monitor_dimension', '119'),
	(24, 'view_angle', '120'),
	(25, 'monitor_diagonal', '122'),
	(25, 'monitor_dimension', '119'),
	(25, 'view_angle', '123'),
	(26, 'monitor_diagonal', '121'),
	(26, 'monitor_dimension', '119'),
	(26, 'view_angle', '120'),
	(27, 'monitor_diagonal', '122'),
	(27, 'monitor_dimension', '119'),
	(27, 'view_angle', '120'),
	(28, 'monitor_diagonal', '124'),
	(28, 'monitor_dimension', '125'),
	(28, 'view_angle', '120'),
	(29, 'monitor_diagonal', '118'),
	(29, 'monitor_dimension', '119'),
	(29, 'view_angle', '120'),
	(30, 'phone_platform', '126'),
	(30, 'phone_weight', '127'),
	(30, 'phone_display', '128'),
	(30, 'phone_camera', '129'),
	(31, 'phone_platform', '126'),
	(31, 'phone_weight', '130'),
	(31, 'phone_display', '131'),
	(31, 'phone_camera', '132'),
	(32, 'phone_platform', '126'),
	(32, 'phone_weight', '133'),
	(32, 'phone_display', '131'),
	(32, 'phone_camera', '132'),
	(33, 'phone_platform', '134'),
	(33, 'phone_weight', '135'),
	(33, 'phone_display', '136'),
	(33, 'phone_camera', '132'),
	(34, 'phone_platform', '134'),
	(34, 'phone_weight', '137'),
	(34, 'phone_display', '136'),
	(34, 'phone_camera', '138'),
	(35, 'phone_platform', '134'),
	(35, 'phone_weight', '139'),
	(35, 'phone_display', '136'),
	(35, 'phone_camera', '129'),
	(36, 'phone_platform', '140'),
	(36, 'phone_weight', '137'),
	(36, 'phone_display', '141'),
	(36, 'phone_camera', '132'),
	(37, 'phone_platform', '142'),
	(37, 'phone_weight', '143'),
	(37, 'phone_display', '144'),
	(37, 'phone_camera', '129'),
	(38, 'phone_platform', '142'),
	(38, 'phone_weight', '145'),
	(38, 'phone_display', '146'),
	(38, 'phone_camera', '129'),
	(39, 'tablet_screen_size', '147'),
	(39, 'screen_dimension', '148'),
	(39, 'memmory_size', '149'),
	(39, 'weight', '150'),
	(40, 'weight', '150'),
	(40, 'memmory_size', '151'),
	(40, 'tablet_screen_size', '147'),
	(41, 'tablet_screen_size', '152'),
	(41, 'screen_dimension', '153'),
	(41, 'memmory_size', '149'),
	(41, 'weight', '154'),
	(42, 'tablet_screen_size', '152'),
	(42, 'screen_dimension', '153'),
	(42, 'memmory_size', '155'),
	(42, 'weight', '156'),
	(43, 'tablet_screen_size', '157'),
	(43, 'screen_dimension', '158'),
	(43, 'memmory_size', '151'),
	(43, 'weight', '159'),
	(44, 'tablet_screen_size', '157'),
	(44, 'screen_dimension', '158'),
	(44, 'memmory_size', '149'),
	(44, 'weight', '160'),
	(12, 'memmory', '98'),
	(12, 'memmory_type', '89'),
	(12, 'screen', '90'),
	(12, 'screen_dimension', '99'),
	(5, 'memmory', '88'),
	(5, 'memmory_type', '89'),
	(5, 'screen', '90'),
	(5, 'screen_dimension', '91');
/*!40000 ALTER TABLE `StoreProductAttributeEAV` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductCategoryRef
DROP TABLE IF EXISTS `StoreProductCategoryRef`;
CREATE TABLE IF NOT EXISTS `StoreProductCategoryRef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `product` (`product`),
  KEY `is_main` (`is_main`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductCategoryRef: 70 rows
DELETE FROM `StoreProductCategoryRef`;
/*!40000 ALTER TABLE `StoreProductCategoryRef` DISABLE KEYS */;
INSERT INTO `StoreProductCategoryRef` (`id`, `product`, `category`, `is_main`) VALUES
	(162, 1, 231, 1),
	(163, 1, 230, 0),
	(164, 2, 231, 1),
	(165, 2, 230, 0),
	(166, 3, 231, 1),
	(167, 3, 230, 0),
	(168, 4, 231, 1),
	(169, 4, 230, 0),
	(170, 5, 231, 1),
	(171, 5, 230, 0),
	(172, 6, 231, 1),
	(173, 6, 230, 0),
	(174, 7, 232, 1),
	(175, 7, 230, 0),
	(176, 8, 232, 1),
	(177, 8, 230, 0),
	(178, 9, 232, 1),
	(179, 9, 230, 0),
	(180, 10, 232, 1),
	(181, 10, 230, 0),
	(182, 11, 232, 1),
	(183, 11, 230, 0),
	(184, 12, 232, 1),
	(185, 12, 230, 0),
	(186, 13, 234, 1),
	(187, 13, 233, 0),
	(188, 14, 234, 1),
	(189, 14, 233, 0),
	(190, 15, 234, 1),
	(191, 15, 233, 0),
	(192, 16, 234, 1),
	(193, 16, 233, 0),
	(194, 17, 234, 1),
	(195, 17, 233, 0),
	(196, 18, 234, 1),
	(197, 18, 233, 0),
	(198, 19, 234, 1),
	(199, 19, 233, 0),
	(200, 20, 234, 1),
	(201, 20, 233, 0),
	(202, 21, 235, 1),
	(203, 22, 235, 1),
	(204, 23, 235, 1),
	(205, 24, 235, 1),
	(206, 25, 235, 1),
	(207, 26, 235, 1),
	(208, 27, 235, 1),
	(209, 28, 235, 1),
	(210, 29, 235, 1),
	(211, 30, 236, 1),
	(212, 31, 236, 1),
	(213, 32, 236, 1),
	(214, 33, 236, 1),
	(215, 34, 236, 1),
	(216, 35, 236, 1),
	(217, 36, 236, 1),
	(218, 37, 236, 1),
	(219, 38, 236, 1),
	(220, 39, 237, 1),
	(221, 39, 233, 0),
	(222, 40, 237, 1),
	(223, 40, 233, 0),
	(224, 41, 237, 1),
	(225, 41, 233, 0),
	(226, 42, 237, 1),
	(227, 42, 233, 0),
	(228, 43, 237, 1),
	(229, 43, 233, 0),
	(230, 44, 237, 1),
	(231, 44, 233, 0);
/*!40000 ALTER TABLE `StoreProductCategoryRef` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductConfigurableAttributes
DROP TABLE IF EXISTS `StoreProductConfigurableAttributes`;
CREATE TABLE IF NOT EXISTS `StoreProductConfigurableAttributes` (
  `product_id` int(11) NOT NULL COMMENT 'Attributes available to configure product',
  `attribute_id` int(11) NOT NULL,
  UNIQUE KEY `product_attribute_index` (`product_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductConfigurableAttributes: 0 rows
DELETE FROM `StoreProductConfigurableAttributes`;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductConfigurations
DROP TABLE IF EXISTS `StoreProductConfigurations`;
CREATE TABLE IF NOT EXISTS `StoreProductConfigurations` (
  `product_id` int(11) NOT NULL COMMENT 'Saves relations beetwen product and configurations',
  `configurable_id` int(11) NOT NULL,
  UNIQUE KEY `idsunique` (`product_id`,`configurable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductConfigurations: 0 rows
DELETE FROM `StoreProductConfigurations`;
/*!40000 ALTER TABLE `StoreProductConfigurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurations` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductImage
DROP TABLE IF EXISTS `StoreProductImage`;
CREATE TABLE IF NOT EXISTS `StoreProductImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductImage: 44 rows
DELETE FROM `StoreProductImage`;
/*!40000 ALTER TABLE `StoreProductImage` DISABLE KEYS */;
INSERT INTO `StoreProductImage` (`id`, `product_id`, `name`, `is_main`, `uploaded_by`, `date_uploaded`, `title`) VALUES
	(140, 1, '1_-998481373.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(141, 2, '2_-358577532.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(142, 3, '3_-1536206656.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(143, 4, '4_-544175752.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(144, 5, '5_-875310250.jpg', 1, NULL, '2015-03-25 12:43:49', ''),
	(145, 6, '6_774025004.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(146, 7, '7_1672754157.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(147, 8, '8_-2127871804.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(148, 9, '9_-2053272864.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(149, 10, '10_1156825074.jpg', 1, NULL, '2015-03-25 12:43:49', NULL),
	(150, 11, '11_1718686233.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(151, 12, '12_-1816129508.jpg', 1, NULL, '2015-03-25 12:43:50', ''),
	(152, 13, '13_-1072024467.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(153, 14, '14_438282316.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(154, 15, '15_1959926883.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(155, 16, '16_1599043537.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(156, 17, '17_-1811301738.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(157, 18, '18_-334364856.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(158, 19, '19_2108311205.jpg', 1, NULL, '2015-03-25 12:43:50', NULL),
	(159, 20, '20_-1295400578.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(160, 21, '21_554444926.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(161, 22, '22_-1188437959.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(162, 23, '23_-2073060966.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(163, 24, '24_1711022345.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(164, 25, '25_-1447796811.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(165, 26, '26_-692515958.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(166, 27, '27_1522186085.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(167, 28, '28_-1772279858.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(168, 29, '29_2146044955.jpg', 1, NULL, '2015-03-25 12:43:51', NULL),
	(169, 30, '30_928693642.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(170, 31, '31_487733280.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(171, 32, '32_-582518720.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(172, 33, '33_-1879845280.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(173, 34, '34_1262495027.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(174, 35, '35_-1765024163.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(175, 36, '36_-615436728.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(176, 37, '37_-11719266.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(177, 38, '38_453038378.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(178, 39, '39_1977417101.jpg', 1, NULL, '2015-03-25 12:43:52', NULL),
	(179, 40, '40_1551913349.jpg', 1, NULL, '2015-03-25 12:43:53', ''),
	(180, 41, '41_2119986012.jpg', 1, NULL, '2015-03-25 12:43:53', NULL),
	(181, 42, '42_-872971871.jpg', 1, NULL, '2015-03-25 12:43:53', NULL),
	(182, 43, '43_-1432135118.jpg', 1, NULL, '2015-03-25 12:43:53', NULL),
	(183, 44, '44_776867884.jpg', 1, NULL, '2015-03-25 12:43:53', NULL);
/*!40000 ALTER TABLE `StoreProductImage` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductTranslate
DROP TABLE IF EXISTS `StoreProductTranslate`;
CREATE TABLE IF NOT EXISTS `StoreProductTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductTranslate: 88 rows
DELETE FROM `StoreProductTranslate`;
/*!40000 ALTER TABLE `StoreProductTranslate` DISABLE KEYS */;
INSERT INTO `StoreProductTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
	(265, 1, 1, 'Lenovo B570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel GMA HD, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.35 кг', NULL, NULL, NULL, NULL),
	(266, 1, 9, 'Lenovo B570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel GMA HD, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.35 кг', NULL, NULL, NULL, NULL),
	(267, 2, 1, 'Lenovo G570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, ATI Radeon HD 6370M, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.43 кг', NULL, NULL, NULL, NULL),
	(268, 2, 9, 'Lenovo G570', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, ATI Radeon HD 6370M, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.43 кг', NULL, NULL, NULL, NULL),
	(269, 3, 1, 'ASUS K53U', 'C-60 / E-240 / E-450, 1000-1650 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.6 кг', NULL, NULL, NULL, NULL),
	(270, 3, 9, 'ASUS K53U', 'C-60 / E-240 / E-450, 1000-1650 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.6 кг', NULL, NULL, NULL, NULL),
	(271, 4, 1, 'ASUS X54C', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.6 кг', NULL, NULL, NULL, NULL),
	(272, 4, 9, 'ASUS X54C', 'Celeron / Pentium, 1500-2200 МГц, 2048-4096 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.6 кг', NULL, NULL, NULL, NULL),
	(273, 5, 1, 'DELL INSPIRON N5050', 'Celeron, 1500-1700 МГц, 2048 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.37 кг', '', '', '', ''),
	(274, 5, 9, 'DELL INSPIRON N5050', 'Celeron, 1500-1700 МГц, 2048 Мб, 320-500 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth (опционально), 2.37 кг', NULL, NULL, NULL, NULL),
	(275, 6, 1, 'Fujitsu LIFEBOOK AH531', 'Celeron / Pentium, 1500-2200 МГц, 2048 Мб, 320 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.5 кг', NULL, NULL, NULL, NULL),
	(276, 6, 9, 'Fujitsu LIFEBOOK AH531', 'Celeron / Pentium, 1500-2200 МГц, 2048 Мб, 320 Гб, 15.6 дюйм, Intel HD Graphics 3000, DVD-RW, Wi-Fi, Bluetooth, 2.5 кг', NULL, NULL, NULL, NULL),
	(277, 7, 1, 'HP EliteBook 8560w', 'Core i7, 2500 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, BD-RE, Wi-Fi, Bluetooth, 3 кг', NULL, NULL, NULL, NULL),
	(278, 7, 9, 'HP EliteBook 8560w', 'Core i7, 2500 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, BD-RE, Wi-Fi, Bluetooth, 3 кг', NULL, NULL, NULL, NULL),
	(279, 8, 1, 'DELL ALIENWARE M17x', 'Core i7, 2200-2400 МГц, 8192-16384 Мб, 750-1500 Гб, 17 дюйм, AMD Radeon HD 6990M, BD-RE / Blu-Ray / DVD-RW, Wi-Fi, Bluetooth, 5.3 кг', NULL, NULL, NULL, NULL),
	(280, 8, 9, 'DELL ALIENWARE M17x', 'Core i7, 2200-2400 МГц, 8192-16384 Мб, 750-1500 Гб, 17 дюйм, AMD Radeon HD 6990M, BD-RE / Blu-Ray / DVD-RW, Wi-Fi, Bluetooth, 5.3 кг', NULL, NULL, NULL, NULL),
	(281, 9, 1, 'Apple MacBook Pro 15 Late 2011', 'Core i7, 2200-2400 МГц, 4096 Мб, 500-750 Гб, 15.4 дюйм, ATI Radeon HD 6750M / ATI Radeon HD 6770М, DVD-RW, Wi-Fi, Bluetooth, 2.54 кг', NULL, NULL, NULL, NULL),
	(282, 9, 9, 'Apple MacBook Pro 15 Late 2011', 'Core i7, 2200-2400 МГц, 4096 Мб, 500-750 Гб, 15.4 дюйм, ATI Radeon HD 6750M / ATI Radeon HD 6770М, DVD-RW, Wi-Fi, Bluetooth, 2.54 кг', NULL, NULL, NULL, NULL),
	(283, 10, 1, 'Lenovo THINKPAD W520', 'Core i7 / Core i7 Extreme, 2000-2700 МГц, 4096-8192 Мб, 160-580 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, DVD-RW, Wi-Fi, Bluetooth, 2.45 кг', NULL, NULL, NULL, NULL),
	(284, 10, 9, 'Lenovo THINKPAD W520', 'Core i7 / Core i7 Extreme, 2000-2700 МГц, 4096-8192 Мб, 160-580 Гб, 15.6 дюйм, NVIDIA Quadro 2000M, DVD-RW, Wi-Fi, Bluetooth, 2.45 кг', NULL, NULL, NULL, NULL),
	(285, 11, 1, 'Sony VAIO VPC-F13S8R', 'Core i5, 2660 МГц, 4096 Мб, 640 Гб, 16.4 дюйм, NVIDIA GeForce GT 425M, Blu-Ray, Wi-Fi, Bluetooth, 3.1 кг', NULL, NULL, NULL, NULL),
	(286, 11, 9, 'Sony VAIO VPC-F13S8R', 'Core i5, 2660 МГц, 4096 Мб, 640 Гб, 16.4 дюйм, NVIDIA GeForce GT 425M, Blu-Ray, Wi-Fi, Bluetooth, 3.1 кг', NULL, NULL, NULL, NULL),
	(287, 12, 1, 'Acer ASPIRE 5943G-7748G75TWiss', 'Core i7, 1730 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, ATI Mobility Radeon HD 5850, BD-RE, Wi-Fi, Bluetooth, 3.3 кг', '', '', '', ''),
	(288, 12, 9, 'Acer ASPIRE 5943G-7748G75TWiss', 'Core i7, 1730 МГц, 8192 Мб, 750 Гб, 15.6 дюйм, ATI Mobility Radeon HD 5850, BD-RE, Wi-Fi, Bluetooth, 3.3 кг', NULL, NULL, NULL, NULL),
	(289, 13, 1, 'Logitech X-530', 'число каналов: 5.1, мощность 71.20 Вт, 40-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование', NULL, NULL, NULL, NULL),
	(290, 13, 9, 'Logitech X-530', 'число каналов: 5.1, мощность 71.20 Вт, 40-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование', NULL, NULL, NULL, NULL),
	(291, 14, 1, 'Microlab M-860', 'число каналов: 5.1, мощность 62 Вт, 30-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(292, 14, 9, 'Microlab M-860', 'число каналов: 5.1, мощность 62 Вт, 30-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(293, 15, 1, 'Edifier M3700', 'число каналов: 5.1, мощность 80 Вт, 45-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(294, 15, 9, 'Edifier M3700', 'число каналов: 5.1, мощность 80 Вт, 45-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование, пульт ДУ', NULL, NULL, NULL, NULL),
	(295, 16, 1, 'Logitech Z-313', 'число каналов: 2.1, мощность 25 Вт, 48-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF', NULL, NULL, NULL, NULL),
	(296, 16, 9, 'Logitech Z-313', 'число каналов: 2.1, мощность 25 Вт, 48-20000 Гц, материал колонок: пластик, материал сабвуфера: MDF', NULL, NULL, NULL, NULL),
	(297, 17, 1, 'Sven SPS-820', 'число каналов: 2.1, мощность 38 Вт, 50-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(298, 17, 9, 'Sven SPS-820', 'число каналов: 2.1, мощность 38 Вт, 50-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(299, 18, 1, 'Edifier M1385', 'число каналов: 2.1, мощность 28 Вт, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование, радио', NULL, NULL, NULL, NULL),
	(300, 18, 9, 'Edifier M1385', 'число каналов: 2.1, мощность 28 Вт, материал сабвуфера: MDF, разъем для наушников, магнитное экранирование, радио', NULL, NULL, NULL, NULL),
	(301, 19, 1, 'Edifier X600', 'число каналов: 2.1, мощность 30 Вт, 48-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(302, 19, 9, 'Edifier X600', 'число каналов: 2.1, мощность 30 Вт, 48-20000 Гц, материал колонок: MDF, материал сабвуфера: MDF, магнитное экранирование', NULL, NULL, NULL, NULL),
	(303, 20, 1, 'Microlab FC 362', 'число каналов: 2.1, мощность 54 Вт, 35-20000 Гц, материал сабвуфера: MDF, разъем для наушников', NULL, NULL, NULL, NULL),
	(304, 20, 9, 'Microlab FC 362', 'число каналов: 2.1, мощность 54 Вт, 35-20000 Гц, материал сабвуфера: MDF, разъем для наушников', NULL, NULL, NULL, NULL),
	(305, 21, 1, 'DELL U2412M', 'ЖК (TFT E-IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(306, 21, 9, 'DELL U2412M', 'ЖК (TFT E-IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(307, 22, 1, 'DELL U2312HM', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(308, 22, 9, 'DELL U2312HM', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 300 кд/м2, 1000:1, 8 мс, 178°/178°, USB-концентратор, DVI, DisplayPort, VGA', NULL, NULL, NULL, NULL),
	(309, 23, 1, 'LG Flatron M2250D', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 5 мс, 170°/160°, стереоколонки, ТВ-тюнер, HDMI, VGA, композитный вход, компонентный вход, SCART', NULL, NULL, NULL, NULL),
	(310, 23, 9, 'LG Flatron M2250D', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 5 мс, 170°/160°, стереоколонки, ТВ-тюнер, HDMI, VGA, композитный вход, компонентный вход, SCART', NULL, NULL, NULL, NULL),
	(311, 24, 1, 'LG Flatron IPS226V', 'ЖК (TFT E-IPS) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, DVI, HDMI, VGA', NULL, NULL, NULL, NULL),
	(312, 24, 9, 'LG Flatron IPS226V', 'ЖК (TFT E-IPS) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, DVI, HDMI, VGA', NULL, NULL, NULL, NULL),
	(313, 25, 1, 'Samsung SyncMaster S22A350N', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 170°/160°, VGA', NULL, NULL, NULL, NULL),
	(314, 25, 9, 'Samsung SyncMaster S22A350N', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 170°/160°, VGA', NULL, NULL, NULL, NULL),
	(315, 26, 1, 'Philips 237E3QPHSU', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, HDMI x2, VGA', NULL, NULL, NULL, NULL),
	(316, 26, 9, 'Philips 237E3QPHSU', 'ЖК (TFT IPS) 23", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, 178°/178°, HDMI x2, VGA', NULL, NULL, NULL, NULL),
	(317, 27, 1, 'Philips 227E3LSU', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, DVI, VGA', NULL, NULL, NULL, NULL),
	(318, 27, 9, 'Philips 227E3LSU', 'ЖК (TFT TN) 21.5", широкоформатный, 1920x1080, LED-подсветка, 250 кд/м2, 1000:1, 5 мс, DVI, VGA', NULL, NULL, NULL, NULL),
	(319, 28, 1, 'HP ZR2740w', 'ЖК (TFT IPS) 27", широкоформатный, 2560x1440, LED-подсветка, 380 кд/м2, 1000:1, 12 мс, 178°/178°, USB-концентратор, DVI, DisplayPort', NULL, NULL, NULL, NULL),
	(320, 28, 9, 'HP ZR2740w', 'ЖК (TFT IPS) 27", широкоформатный, 2560x1440, LED-подсветка, 380 кд/м2, 1000:1, 12 мс, 178°/178°, USB-концентратор, DVI, DisplayPort', NULL, NULL, NULL, NULL),
	(321, 29, 1, 'HP ZR2440w', 'ЖК (TFT IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 350 кд/м2, 1000:1, 6 мс, 178°/178°, USB-концентратор, DVI, HDMI, DisplayPort', NULL, NULL, NULL, NULL),
	(322, 29, 9, 'HP ZR2440w', 'ЖК (TFT IPS) 24", широкоформатный, 1920x1200, LED-подсветка, 350 кд/м2, 1000:1, 6 мс, 178°/178°, USB-концентратор, DVI, HDMI, DisplayPort', NULL, NULL, NULL, NULL),
	(323, 30, 1, 'Samsung Galaxy Ace II', 'GSM, 3G, смартфон, Android 2.3, вес 118 г, ШхВхТ: 62.3x118.3x10.5 мм, экран 3.8", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 5 МП, память 4 Гб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(324, 30, 9, 'Samsung Galaxy Ace II', 'GSM, 3G, смартфон, Android 2.3, вес 118 г, ШхВхТ: 62.3x118.3x10.5 мм, экран 3.8", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 5 МП, память 4 Гб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(325, 31, 1, 'HTC One XL', 'GSM, 3G, смартфон, Android 4.0, вес 129 г, ШхВхТ: 69.9x134.8x8.9 мм, экран 4.7", 720x1280, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 32 Гб, аккумулятор 1800 мАч', NULL, NULL, NULL, NULL),
	(326, 31, 9, 'HTC One XL', 'GSM, 3G, смартфон, Android 4.0, вес 129 г, ШхВхТ: 69.9x134.8x8.9 мм, экран 4.7", 720x1280, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 32 Гб, аккумулятор 1800 мАч', NULL, NULL, NULL, NULL),
	(327, 32, 1, 'HTC Sensation XL', 'GSM, 3G, смартфон, Android 2.3, вес 162 г, ШхВхТ: 70.7x132.5x9.9 мм, экран 4.7", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, аккумулятор 1600 мАч', NULL, NULL, NULL, NULL),
	(328, 32, 9, 'HTC Sensation XL', 'GSM, 3G, смартфон, Android 2.3, вес 162 г, ШхВхТ: 70.7x132.5x9.9 мм, экран 4.7", 480x800, FM-радио, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, память 16 Гб, аккумулятор 1600 мАч', NULL, NULL, NULL, NULL),
	(329, 33, 1, 'Apple iPhone 4S 16Gb', 'GSM, CDMA800, CDMA1900, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ: 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 8 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(330, 33, 9, 'Apple iPhone 4S 16Gb', 'GSM, CDMA800, CDMA1900, 3G, смартфон, iOS 5, вес 140 г, ШхВхТ: 58.6x115.2x9.3 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, ГЛОНАСС, фотокамера 8 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(331, 34, 1, 'Apple iPhone 3GS 8Gb', 'GSM, 3G, смартфон, iOS, вес 135 г, ШхВхТ: 62x116x12 мм, экран 3.5", 320x480, Bluetooth, Wi-Fi, GPS, фотокамера 3 МП, память 8 Гб', NULL, NULL, NULL, NULL),
	(332, 34, 9, 'Apple iPhone 3GS 8Gb', 'GSM, 3G, смартфон, iOS, вес 135 г, ШхВхТ: 62x116x12 мм, экран 3.5", 320x480, Bluetooth, Wi-Fi, GPS, фотокамера 3 МП, память 8 Гб', NULL, NULL, NULL, NULL),
	(333, 35, 1, 'Apple iPhone 4 16Gb', 'GSM, 3G, смартфон, iOS 4, вес 137 г, ШхВхТ: 59x115x9 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(334, 35, 9, 'Apple iPhone 4 16Gb', 'GSM, 3G, смартфон, iOS 4, вес 137 г, ШхВхТ: 59x115x9 мм, экран 3.5", 640x960, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 16 Гб', NULL, NULL, NULL, NULL),
	(335, 36, 1, 'Nokia N9', 'GSM, 3G, смартфон, MeeGo 1.2, вес 135 г, ШхВхТ: 61x116x12 мм, экран 3.9", 480x854, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, аккумулятор 1450 мАч', NULL, NULL, NULL, NULL),
	(336, 36, 9, 'Nokia N9', 'GSM, 3G, смартфон, MeeGo 1.2, вес 135 г, ШхВхТ: 61x116x12 мм, экран 3.9", 480x854, Bluetooth, Wi-Fi, GPS, фотокамера 8 МП, аккумулятор 1450 мАч', NULL, NULL, NULL, NULL),
	(337, 37, 1, 'BlackBerry Bold 9900', 'GSM, 3G, смартфон, BlackBerry OS, вес 130 г, ШхВхТ: 66x115x11 мм, экран 2.8", 640x480, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 8 Гб, слот microSD (TransFlash), аккумулятор 1230 мАч', NULL, NULL, NULL, NULL),
	(338, 37, 9, 'BlackBerry Bold 9900', 'GSM, 3G, смартфон, BlackBerry OS, вес 130 г, ШхВхТ: 66x115x11 мм, экран 2.8", 640x480, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 8 Гб, слот microSD (TransFlash), аккумулятор 1230 мАч', NULL, NULL, NULL, NULL),
	(339, 38, 1, 'BlackBerry Bold 9780', 'GSM, 3G, смартфон, BlackBerry OS, вес 122 г, ШхВхТ: 60x109x14 мм, экран 2.4", 480x360, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 256 Мб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(340, 38, 9, 'BlackBerry Bold 9780', 'GSM, 3G, смартфон, BlackBerry OS, вес 122 г, ШхВхТ: 60x109x14 мм, экран 2.4", 480x360, Bluetooth, Wi-Fi, GPS, фотокамера 5 МП, память 256 Мб, слот microSD (TransFlash), аккумулятор 1500 мАч', NULL, NULL, NULL, NULL),
	(341, 39, 1, 'Apple iPad 2 16Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(342, 39, 9, 'Apple iPad 2 16Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(343, 40, 1, 'Apple iPad 2 64Gb Wi-Fi + 3G', 'экран 9.7&quot;, 1024x768, емкостный, мультитач, iOS, встроенная память 64 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г<br />\r\n<img alt="" src="/uploads/images/facebook-profile-picture-1.jpg" style="height:353px; width:563px" />', '', '', '', ''),
	(344, 40, 9, 'Apple iPad 2 64Gb Wi-Fi + 3G', 'экран 9.7", 1024x768, емкостный, мультитач, iOS, встроенная память 64 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, вес 613 г', NULL, NULL, NULL, NULL),
	(345, 41, 1, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', NULL, NULL, NULL, NULL),
	(346, 41, 9, 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 16 Гб, microSDHC, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 343 г', NULL, NULL, NULL, NULL),
	(347, 42, 1, 'Acer Iconia Tab A100 8Gb', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 8 Гб, microSDHC, Wi-Fi, Bluetooth, GPS, гироскоп, две фотокамеры, HDMI, подключение к компьютеру по USB, вес 410 г', NULL, NULL, NULL, NULL),
	(348, 42, 9, 'Acer Iconia Tab A100 8Gb', 'экран 7", 1024x600, емкостный, мультитач, Android 3.2, встроенная память 8 Гб, microSDHC, Wi-Fi, Bluetooth, GPS, гироскоп, две фотокамеры, HDMI, подключение к компьютеру по USB, вес 410 г', NULL, NULL, NULL, NULL),
	(349, 43, 1, 'Asus Transformer Pad Prime 201 64Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 4.0, встроенная память 64 Гб, microSD, Wi-Fi, Bluetooth, гироскоп, две фотокамеры, micro HDMI, подключение к компьютеру по USB, вес 586 г', NULL, NULL, NULL, NULL),
	(350, 43, 9, 'Asus Transformer Pad Prime 201 64Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 4.0, встроенная память 64 Гб, microSD, Wi-Fi, Bluetooth, гироскоп, две фотокамеры, micro HDMI, подключение к компьютеру по USB, вес 586 г', NULL, NULL, NULL, NULL),
	(351, 44, 1, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL),
	(352, 44, 9, 'Samsung Galaxy Tab 10.1 P7500 16Gb', 'экран 10.1", 1280x800, емкостный, мультитач, Android 3.1, встроенная память 16 Гб, Wi-Fi, Bluetooth, 3G, GPS, гироскоп, две фотокамеры, подключение к компьютеру по USB, вес 565 г', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `StoreProductTranslate` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductType
DROP TABLE IF EXISTS `StoreProductType`;
CREATE TABLE IF NOT EXISTS `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `categories_preset` text,
  `main_category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductType: 6 rows
DELETE FROM `StoreProductType`;
/*!40000 ALTER TABLE `StoreProductType` DISABLE KEYS */;
INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES
	(1, 'Простой продукт', NULL, 0),
	(2, 'Ноутбук', NULL, 0),
	(3, 'Акустика', NULL, 0),
	(4, 'Монитор', NULL, 0),
	(5, 'Телефон', NULL, 0),
	(6, 'Планшет', NULL, 0);
/*!40000 ALTER TABLE `StoreProductType` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreProductVariant
DROP TABLE IF EXISTS `StoreProductVariant`;
CREATE TABLE IF NOT EXISTS `StoreProductVariant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(10,2) DEFAULT '0.00',
  `price_type` tinyint(1) DEFAULT NULL,
  `sku` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreProductVariant: 0 rows
DELETE FROM `StoreProductVariant`;
/*!40000 ALTER TABLE `StoreProductVariant` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductVariant` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreRelatedProduct
DROP TABLE IF EXISTS `StoreRelatedProduct`;
CREATE TABLE IF NOT EXISTS `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='Handle related products';

-- Дамп данных таблицы cms.lc.StoreRelatedProduct: 0 rows
DELETE FROM `StoreRelatedProduct`;
/*!40000 ALTER TABLE `StoreRelatedProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreRelatedProduct` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreTypeAttribute
DROP TABLE IF EXISTS `StoreTypeAttribute`;
CREATE TABLE IF NOT EXISTS `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreTypeAttribute: 19 rows
DELETE FROM `StoreTypeAttribute`;
/*!40000 ALTER TABLE `StoreTypeAttribute` DISABLE KEYS */;
INSERT INTO `StoreTypeAttribute` (`type_id`, `attribute_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(4, 11),
	(4, 12),
	(5, 13),
	(5, 14),
	(5, 15),
	(5, 16),
	(6, 17),
	(6, 18),
	(6, 19);
/*!40000 ALTER TABLE `StoreTypeAttribute` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreWishlist
DROP TABLE IF EXISTS `StoreWishlist`;
CREATE TABLE IF NOT EXISTS `StoreWishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreWishlist: 1 rows
DELETE FROM `StoreWishlist`;
/*!40000 ALTER TABLE `StoreWishlist` DISABLE KEYS */;
INSERT INTO `StoreWishlist` (`id`, `key`, `user_id`) VALUES
	(1, 'naek55xhs2', 1);
/*!40000 ALTER TABLE `StoreWishlist` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.StoreWishlistProducts
DROP TABLE IF EXISTS `StoreWishlistProducts`;
CREATE TABLE IF NOT EXISTS `StoreWishlistProducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_id` (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.StoreWishlistProducts: 3 rows
DELETE FROM `StoreWishlistProducts`;
/*!40000 ALTER TABLE `StoreWishlistProducts` DISABLE KEYS */;
INSERT INTO `StoreWishlistProducts` (`id`, `wishlist_id`, `product_id`, `user_id`) VALUES
	(22, 1, 2, 1),
	(21, 1, 39, 1),
	(20, 1, 40, 1);
/*!40000 ALTER TABLE `StoreWishlistProducts` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemLanguage
DROP TABLE IF EXISTS `SystemLanguage`;
CREATE TABLE IF NOT EXISTS `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `code` varchar(25) DEFAULT '',
  `locale` varchar(100) DEFAULT '',
  `default` tinyint(1) DEFAULT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemLanguage: 2 rows
DELETE FROM `SystemLanguage`;
/*!40000 ALTER TABLE `SystemLanguage` DISABLE KEYS */;
INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
	(1, 'Русский', 'ru', 'ru', 1, 'ru.png'),
	(9, 'English', 'en', 'en', 0, 'us.png');
/*!40000 ALTER TABLE `SystemLanguage` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemLayouts
DROP TABLE IF EXISTS `SystemLayouts`;
CREATE TABLE IF NOT EXISTS `SystemLayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `route` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemLayouts: ~3 rows (приблизительно)
DELETE FROM `SystemLayouts`;
/*!40000 ALTER TABLE `SystemLayouts` DISABLE KEYS */;
INSERT INTO `SystemLayouts` (`id`, `name`, `route`) VALUES
	(1, 'default', '%/%/%'),
	(2, 'index', 'store/index/index'),
	(3, 'страницы сайта', 'pages/pages/%');
/*!40000 ALTER TABLE `SystemLayouts` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemLayoutsWidgets
DROP TABLE IF EXISTS `SystemLayoutsWidgets`;
CREATE TABLE IF NOT EXISTS `SystemLayoutsWidgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `layout_id` (`layout_id`),
  KEY `widget_id` (`widget_id`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemLayoutsWidgets: ~2 rows (приблизительно)
DELETE FROM `SystemLayoutsWidgets`;
/*!40000 ALTER TABLE `SystemLayoutsWidgets` DISABLE KEYS */;
INSERT INTO `SystemLayoutsWidgets` (`id`, `layout_id`, `widget_id`, `position`, `sort`) VALUES
	(15, 3, 5, 'Top', 0),
	(16, 2, 5, 'Top', 0);
/*!40000 ALTER TABLE `SystemLayoutsWidgets` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemModules
DROP TABLE IF EXISTS `SystemModules`;
CREATE TABLE IF NOT EXISTS `SystemModules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemModules: 18 rows
DELETE FROM `SystemModules`;
/*!40000 ALTER TABLE `SystemModules` DISABLE KEYS */;
INSERT INTO `SystemModules` (`id`, `name`, `enabled`) VALUES
	(7, 'users', 1),
	(59, 'pages', 1),
	(11, 'core', 1),
	(12, 'rights', 1),
	(16, 'orders', 1),
	(15, 'store', 1),
	(17, 'comments', 1),
	(37, 'feedback', 1),
	(38, 'discounts', 1),
	(39, 'newsletter', 1),
	(40, 'csv', 1),
	(41, 'logger', 1),
	(52, 'accounting1c', 1),
	(53, 'yandexMarket', 1),
	(54, 'notifier', 1),
	(55, 'statistics', 1),
	(56, 'sitemap', 1),
	(62, 'banners', 1);
/*!40000 ALTER TABLE `SystemModules` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemSettings
DROP TABLE IF EXISTS `SystemSettings`;
CREATE TABLE IF NOT EXISTS `SystemSettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `key` varchar(255) DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemSettings: 41 rows
DELETE FROM `SystemSettings`;
/*!40000 ALTER TABLE `SystemSettings` DISABLE KEYS */;
INSERT INTO `SystemSettings` (`id`, `category`, `key`, `value`) VALUES
	(9, 'feedback', 'max_message_length', '1000'),
	(8, 'feedback', 'enable_captcha', '1'),
	(7, 'feedback', 'admin_email', 'admin@localhost.local'),
	(10, '17_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', 'Z123456578811'),
	(11, '17_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', 'theSercretPassword'),
	(12, '18_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', '1'),
	(13, '18_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', '2'),
	(14, '19_RobokassaPaymentSystem', 'login', 'login'),
	(15, '19_RobokassaPaymentSystem', 'password1', 'password1value'),
	(16, '19_RobokassaPaymentSystem', 'password2', 'password2value'),
	(22, 'accounting1c', 'password', 'f880fefe2aff8130bb31d480f08e47c03e655b60'),
	(21, 'accounting1c', 'ip', '127.0.0.1'),
	(23, 'accounting1c', 'tempdir', 'application.runtime'),
	(24, 'yandexMarket', 'name', 'Демо магазин'),
	(25, 'yandexMarket', 'company', 'Демо кампания'),
	(26, 'yandexMarket', 'url', 'http://demo-company.loc/'),
	(27, 'yandexMarket', 'currency_id', '2'),
	(28, 'core', 'siteName', 'cms'),
	(29, 'core', 'productsPerPage', '12,18,24'),
	(30, 'core', 'productsPerPageAdmin', '30'),
	(31, 'core', 'theme', 'default'),
	(32, '20_QiwiPaymentSystem', 'shop_id', ''),
	(33, '20_QiwiPaymentSystem', 'password', ''),
	(34, '21_QiwiPaymentSystem', 'shop_id', '211182'),
	(35, '21_QiwiPaymentSystem', 'password', 'xsi100500'),
	(36, 'core', 'editorTheme', 'compant'),
	(37, 'core', 'editorHeight', '150'),
	(38, 'core', 'editorAutoload', '0'),
	(39, 'images', 'path', 'webroot.uploads.product'),
	(40, 'images', 'thumbPath', 'webroot.assets.productThumbs'),
	(41, 'images', 'url', '/uploads/product/'),
	(42, 'images', 'thumbUrl', '/assets/productThumbs/'),
	(43, 'images', 'maxFileSize', '10485760'),
	(44, 'images', 'max_sizes', '1800х1600'),
	(45, 'images', 'maximum_image_size', '1935x947'),
	(46, 'images', 'watermark_image', ''),
	(47, 'images', 'watermark_active', '1'),
	(48, 'images', 'watermark_position', 'bottomRight'),
	(49, 'images', 'watermark_position_vertical', 'bottom'),
	(50, 'images', 'watermark_position_horizontal', 'right'),
	(51, 'images', 'watermark_opacity', '100');
/*!40000 ALTER TABLE `SystemSettings` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.SystemWidgets
DROP TABLE IF EXISTS `SystemWidgets`;
CREATE TABLE IF NOT EXISTS `SystemWidgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `class` varchar(100) DEFAULT NULL,
  `params` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.SystemWidgets: ~2 rows (приблизительно)
DELETE FROM `SystemWidgets`;
/*!40000 ALTER TABLE `SystemWidgets` DISABLE KEYS */;
INSERT INTO `SystemWidgets` (`id`, `module_id`, `group`, `name`, `description`, `class`, `params`, `status`) VALUES
	(5, 62, 'sliders', 'home slider', NULL, 'application.modules.banners.widgets.nivoslider.NivoSlider', 'a:3:{s:5:"width";s:4:"1000";s:6:"height";s:3:"500";s:9:"banner_id";s:1:"2";}', 1),
	(6, 62, 'sliders', 'test', NULL, 'application.modules.banners.widgets.nivoslider.ENivoSlider', 'a:3:{s:5:"width";s:3:"500";s:6:"height";s:3:"500";s:9:"banner_id";s:1:"1";}', 1);
/*!40000 ALTER TABLE `SystemWidgets` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.tbl_migration
DROP TABLE IF EXISTS `tbl_migration`;
CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.tbl_migration: ~13 rows (приблизительно)
DELETE FROM `tbl_migration`;
/*!40000 ALTER TABLE `tbl_migration` DISABLE KEYS */;
INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1361214193),
	('m130218_190341_add_description_to_store_category', 1361214373),
	('m130218_190818_add_description_to_store_category_translate', 1361214547),
	('m130420_194012_add_roles_to_discounts', 1366487103),
	('m130420_204956_add_personal_discount_to_user', 1366491054),
	('m130421_095545_add_personal_discount_to_product', 1366538394),
	('m130504_170119_add_discout_to_order', 1367686940),
	('m130504_183903_add_title_to_store_product_image', 1367692811),
	('m130507_103455_add_banned_to_user', 1367923070),
	('m130507_104810_unban_all_users', 1367923771),
	('m130624_155800_add_new_fields_to_product', 1372089566),
	('m130714_114907_add_admin_comment_to_orders', 1373802668),
	('m130726_042212_create_order_history_table', 1374814430);
/*!40000 ALTER TABLE `tbl_migration` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.TranslateMessage
DROP TABLE IF EXISTS `TranslateMessage`;
CREATE TABLE IF NOT EXISTS `TranslateMessage` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `FK_Message_SourceMessage` FOREIGN KEY (`id`) REFERENCES `TranslateSourceMessage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.TranslateMessage: ~0 rows (приблизительно)
DELETE FROM `TranslateMessage`;
/*!40000 ALTER TABLE `TranslateMessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `TranslateMessage` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.TranslateSourceMessage
DROP TABLE IF EXISTS `TranslateSourceMessage`;
CREATE TABLE IF NOT EXISTS `TranslateSourceMessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.TranslateSourceMessage: ~341 rows (приблизительно)
DELETE FROM `TranslateSourceMessage`;
/*!40000 ALTER TABLE `TranslateSourceMessage` DISABLE KEYS */;
INSERT INTO `TranslateSourceMessage` (`id`, `category`, `message`) VALUES
	(1, 'CoreModule.core', 'Модули'),
	(2, 'CoreModule.core', 'Установить'),
	(3, 'AdminModule.admin', 'Назад'),
	(4, 'AdminModule.admin', 'Сохранить'),
	(5, 'AdminModule.admin', 'Удалить'),
	(6, 'AdminModule.admin', 'Удалить?'),
	(7, 'AdminModule.admin', 'Ещё'),
	(8, 'CoreModule.core', 'Описание'),
	(9, 'CoreModule.core', 'Версия'),
	(10, 'CoreModule.core', 'Название'),
	(11, 'CoreModule.core', 'Активен'),
	(12, 'UsersModule.core', 'Пользователи'),
	(13, 'UsersModule.core', 'Управление пользователями сайта.'),
	(14, 'PagesModule.core', 'Страницы'),
	(15, 'PagesModule.core', 'Управление страницами сайта.'),
	(16, 'CoreModule.core', 'База'),
	(17, 'CoreModule.core', 'Управление системой.'),
	(18, 'OrdersModule.core', 'Заказы'),
	(19, 'OrdersModule.core', 'Управление заказами.'),
	(20, 'StoreModule.admin', 'Магазин'),
	(21, 'CoreModule.core', 'Управление продуктами и категориями.'),
	(22, 'CommentsModule.core', 'Комментарии'),
	(23, 'CommentsModule.core', 'Позволяет оставлять комментарии к продуктам, страницам.'),
	(24, 'FeedbackModule.core', 'Обратная связь'),
	(25, 'FeedbackModule.core', 'Обеспечивает работу формы обратной связи на вашем сайте.'),
	(26, 'DiscountsModule.admin', 'Скидки'),
	(27, 'DiscountsModule.core', 'Управление скидками для продуктов.'),
	(28, 'NewsletterModule.admin', 'Рассылка писем'),
	(29, 'NewsletterModule.core', 'Массовая рассылка писем пользователям.'),
	(30, 'CsvModule.admin', 'CSV'),
	(31, 'CsvModule.admin', 'Импорт/экспорт товаров, категорий, свойств в формате CSV.'),
	(32, 'LoggerModule.admin', 'Журнал действий'),
	(33, 'LoggerModule.admin', 'Запись действий пользователя в панели управления.'),
	(34, 'Accounting1cModule.core', 'Поддержка 1С бухгалтерии.'),
	(35, 'Accounting1cModule.core', 'Обмен товарами.'),
	(36, 'NotifierModule.core', 'Сообщить о появлении'),
	(37, 'NotifierModule.core', 'Помогает рассылать сообщения пользователям, когда продукт появился в наличии.'),
	(38, 'StatisticsModule.admin', 'Статистика'),
	(39, 'StatisticsModule.core', 'Модуль статистики.'),
	(40, 'SitemapModule.core', 'Sitemaps'),
	(41, 'SitemapModule.core', 'Карта сайта с информацией для поисковых систем.'),
	(42, 'BannersModule.core', 'Баннеры'),
	(43, 'BannersModule.core', 'Управление баннерами сайта.'),
	(44, 'TranslateModule.core', 'Переводы'),
	(45, 'TranslateModule.core', 'Управление переводами сайта.'),
	(46, 'SGridView.core', 'Вы действительно хотите удалить выбранные объекты?'),
	(47, 'SGridView.core', 'Выполнить действие?'),
	(48, 'AdminModule.admin', 'Система'),
	(49, 'AdminModule.admin', 'Каталог'),
	(50, 'AdminModule.admin', 'Сайт'),
	(51, 'BannersModule.core', 'Слайдеры'),
	(52, 'CoreModule.core', 'Настройки'),
	(53, 'CoreModule.core', 'Языки'),
	(54, 'CoreModule.core', 'Слои'),
	(55, 'CsvModule.admin', 'Автоматизация'),
	(56, 'CsvModule.admin', 'Импорт'),
	(57, 'CsvModule.admin', 'Экспорт'),
	(58, 'DiscountsModule.admin', 'Все скидки'),
	(59, 'NotifierModule.core', 'Уведомления'),
	(60, 'OrdersModule.admin', 'Заказы'),
	(61, 'OrdersModule.admin', 'Все заказы'),
	(62, 'OrdersModule.admin', 'Создать заказ'),
	(63, 'OrdersModule.admin', 'Статусы'),
	(64, 'PagesModule.core', 'Категории'),
	(65, 'StatisticsModule.admin', 'Заказы'),
	(66, 'StoreModule.admin', 'Продукты'),
	(67, 'StoreModule.admin', 'Категории'),
	(68, 'StoreModule.admin', 'Производители'),
	(69, 'StoreModule.admin', 'Атрибуты'),
	(70, 'StoreModule.admin', 'Типы продуктов'),
	(71, 'StoreModule.admin', 'Доставка'),
	(72, 'StoreModule.admin', 'Оплата'),
	(73, 'StoreModule.admin', 'Валюты'),
	(74, 'AdminModule.admin', 'Выход ({name})'),
	(75, 'StoreModule.admin', 'Завершить сеанс?'),
	(76, 'StoreModule.core', 'Купить'),
	(77, 'core', 'Сравнить'),
	(78, 'core', 'В список желаний'),
	(79, 'core', 'Сообщить о появлении'),
	(80, 'core', 'Помощь'),
	(81, 'core', 'Как сделать заказ'),
	(82, 'core', 'Гарантия'),
	(83, 'core', 'Доставка и оплата'),
	(84, 'core', 'Обратная связь'),
	(85, 'core', 'Товары на сравнение ({c})'),
	(86, 'core', 'Список желаний ({c})'),
	(87, 'core', 'Валюта:'),
	(88, 'core', 'Личный кабинет'),
	(89, 'core', 'Мои заказы'),
	(90, 'core', 'Выход'),
	(91, 'OrdersModule.admin', 'Последние заказы'),
	(92, 'OrdersModule.admin', 'Главная'),
	(93, 'AdminModule.admin', 'Сумма заказов за сегодня:'),
	(94, 'AdminModule.admin', 'Комментариев за сегодня:'),
	(95, 'OrdersModule.core', 'Пользователь'),
	(96, 'OrdersModule.core', 'Способ доставки'),
	(97, 'OrdersModule.core', 'Цена доставки'),
	(98, 'OrdersModule.core', 'Cумма товаров'),
	(99, 'OrdersModule.core', 'К оплате'),
	(100, 'OrdersModule.core', 'Статус'),
	(101, 'OrdersModule.core', 'Оплачен'),
	(102, 'OrdersModule.core', 'Имя'),
	(103, 'OrdersModule.core', 'Email'),
	(104, 'OrdersModule.core', 'Адрес доставки'),
	(105, 'OrdersModule.core', 'Телефон'),
	(106, 'OrdersModule.core', 'Комментарий пользователя'),
	(107, 'OrdersModule.core', 'Комментарий администратора'),
	(108, 'OrdersModule.core', 'IP адрес'),
	(109, 'OrdersModule.core', 'Дата создания'),
	(110, 'OrdersModule.core', 'Дата обновления'),
	(111, 'OrdersModule.core', 'Скидка'),
	(112, 'CoreModule.core', 'Создать Слой'),
	(113, 'SGridView.core', 'Очистить фильтр'),
	(114, 'SGridView.core', 'Сохранить фильтр'),
	(115, 'SGridView.core', 'Укажите имя фильтра'),
	(116, 'CoreModule.core', 'Route'),
	(117, 'CoreModule.core', 'Создать язык'),
	(118, 'CoreModule.core', 'Да'),
	(119, 'CoreModule.core', 'Нет'),
	(120, 'CoreModule.core', 'Идентификатор'),
	(121, 'CoreModule.core', 'Кодировка'),
	(122, 'CoreModule.core', 'По умолчанию'),
	(123, 'CoreModule.core', 'Флаг'),
	(124, 'CoreModule.core', 'Например: en'),
	(125, 'CoreModule.core', 'Например: en, en_us'),
	(126, 'AdminModule.admin', 'Сохранить и создать'),
	(127, 'AdminModule.admin', 'Сохранить и редактировать'),
	(128, 'CoreModule.admin', 'Редактирование языка'),
	(129, 'CoreModule.admin', 'Языки'),
	(130, 'CoreModule.admin', 'Создание языка'),
	(131, 'CoreModule.core', 'Изменения успешно сохранены'),
	(132, 'PagesModule.core', 'Создать страницу'),
	(133, 'PagesModule.core', 'Нет'),
	(134, 'PagesModule.core', 'Опубликован'),
	(135, 'PagesModule.core', 'Ждет одобрения'),
	(136, 'PagesModule.core', 'Черновик'),
	(137, 'PagesModule.core', 'Архив'),
	(138, 'PagesModule.core', 'Автор'),
	(139, 'PagesModule.core', 'Категория'),
	(140, 'PagesModule.core', 'Заглавление'),
	(141, 'PagesModule.core', 'URL'),
	(142, 'PagesModule.core', 'Краткое описание'),
	(143, 'PagesModule.core', 'Содержание'),
	(144, 'PagesModule.core', 'Meta Title'),
	(145, 'PagesModule.core', 'Meta Description'),
	(146, 'PagesModule.core', 'Meta Keywords'),
	(147, 'PagesModule.core', 'Дата создания'),
	(148, 'PagesModule.core', 'Дата обновления'),
	(149, 'PagesModule.core', 'Дата публикации'),
	(150, 'PagesModule.core', 'Статус'),
	(151, 'PagesModule.core', 'Макет'),
	(152, 'PagesModule.core', 'Шаблон'),
	(153, 'PagesModule.core', 'Содержимое'),
	(154, 'PagesModule.core', 'Мета данные'),
	(155, 'PagesModule.core', 'Дополнительно'),
	(156, 'PagesModule.admin', 'Редактирование страницы'),
	(157, 'PagesModule.admin', 'Страницы'),
	(158, 'AdminModule.core', 'Ничего не найдено'),
	(159, 'core', 'Вход'),
	(160, 'core', 'Регистрация'),
	(161, 'RightsModule.core', 'You are not authorized to perform this action.'),
	(162, 'AdminModule.admin', 'Логин'),
	(163, 'AdminModule.admin', 'Пароль'),
	(164, 'AdminModule.admin', 'Вход'),
	(165, 'AdminModule.core', 'Нужно удалить файл install.php'),
	(166, 'StoreModule.core', 'Характеристики'),
	(167, 'StoreModule.core', 'Отзывы'),
	(168, 'CommentsModule.core', 'Оставить отзыв'),
	(169, 'CommentsModule.core', 'Автор'),
	(170, 'CommentsModule.core', 'Модель'),
	(171, 'CommentsModule.core', 'Статус'),
	(172, 'CommentsModule.core', 'Почта'),
	(173, 'CommentsModule.core', 'Имя'),
	(174, 'CommentsModule.core', 'Комментарий'),
	(175, 'CommentsModule.core', 'Дата создания'),
	(176, 'CommentsModule.core', 'Дата обновления'),
	(177, 'CommentsModule.core', 'Владелец'),
	(178, 'CommentsModule.core', 'Код проверки'),
	(179, 'CommentsModule.core', 'IP адрес'),
	(180, 'CommentsModule.core', 'Отправить'),
	(181, 'StoreModule.admin', 'Создать атрибут'),
	(182, 'StoreModule.core', 'Идентификатор'),
	(183, 'StoreModule.core', 'Название'),
	(184, 'StoreModule.core', 'Тип'),
	(185, 'StoreModule.core', 'Отображать на странице продукта'),
	(186, 'StoreModule.core', 'Позиция'),
	(187, 'StoreModule.core', 'Использовать в фильтре'),
	(188, 'StoreModule.core', 'Использовать в вариантах'),
	(189, 'StoreModule.core', 'Использовать в сравнении'),
	(190, 'StoreModule.core', 'Множественный выбор'),
	(191, 'StoreModule.core', 'Обязательно к заполнению'),
	(192, 'StoreModule.core', 'Название может содержать только буквы, цифры и подчеркивания.'),
	(193, 'StoreModule.admin', 'Поиск по категории'),
	(194, 'StoreModule.admin', 'Развернуть все'),
	(195, 'StoreModule.admin', 'Свернуть все'),
	(196, 'StoreModule.admin', 'Все категории'),
	(197, 'StoreModule.admin', 'Создать продукт'),
	(198, 'StoreModule.admin', 'Переключить сайдбар'),
	(199, 'StoreModule.admin', 'Активен'),
	(200, 'StoreModule.admin', 'Не активен'),
	(201, 'StoreModule.admin', 'Назначить категории'),
	(202, 'StoreModule.admin', 'Копировать'),
	(203, 'StoreModule.admin', 'Да'),
	(204, 'StoreModule.admin', 'Нет'),
	(205, 'StoreModule.core', 'Производитель'),
	(206, 'StoreModule.core', 'Использовать конфигурации'),
	(207, 'StoreModule.core', 'URL'),
	(208, 'StoreModule.core', 'Цена'),
	(209, 'StoreModule.core', 'Активен'),
	(210, 'StoreModule.core', 'Краткое описание'),
	(211, 'StoreModule.core', 'Полное описание'),
	(212, 'StoreModule.core', 'Meta Title'),
	(213, 'StoreModule.core', 'Meta Keywords'),
	(214, 'StoreModule.core', 'Meta Description'),
	(215, 'StoreModule.core', 'Макет'),
	(216, 'StoreModule.core', 'Шаблон'),
	(217, 'StoreModule.core', 'Артикул'),
	(218, 'StoreModule.core', 'Количество'),
	(219, 'StoreModule.core', 'Доступность'),
	(220, 'StoreModule.core', 'Автоматически уменьшать количество'),
	(221, 'StoreModule.core', 'Дата создания'),
	(222, 'StoreModule.core', 'Дата обновления'),
	(223, 'StoreModule.core', 'Скидка'),
	(224, 'StoreModule.core', 'Категория'),
	(225, 'StoreModule.admin', 'Общая информация'),
	(226, 'StoreModule.admin', 'Отображать товар на сайте'),
	(227, 'StoreModule.admin', 'Выберите производителя'),
	(228, 'StoreModule.admin', 'Склад'),
	(229, 'StoreModule.admin', 'Укажите целое число или процент. Например 10%.'),
	(230, 'StoreModule.admin', 'Автоматически уменьшать количество при создании заказа'),
	(231, 'StoreModule.core', 'Есть на складе'),
	(232, 'StoreModule.core', 'Нет на складе'),
	(233, 'StoreModule.admin', 'Мета данные'),
	(234, 'StoreModule.admin', 'Дизайн'),
	(235, 'StoreModule.admin', 'Пример: application.views.layouts.file_name'),
	(236, 'StoreModule.admin', 'Пример: view_name'),
	(237, 'StoreModule.admin', 'Дополнительные категории'),
	(238, 'StoreModule.admin', 'Поиск:'),
	(239, 'StoreModule.admin', 'Сопутствующие продукты'),
	(240, 'StoreModule.admin', 'Удалить'),
	(241, 'StoreModule.admin', 'Добавить'),
	(242, 'StoreModule.admin', 'Изображения'),
	(243, 'StoreModule.admin', 'Выберите изображения'),
	(244, 'StoreModule.admin', 'Характеристики'),
	(245, 'StoreModule.admin', 'Варианты'),
	(246, 'StoreModule.admin', 'Отзывы'),
	(247, 'CommentsModule.core', 'Ждет одобрения'),
	(248, 'CommentsModule.core', 'Подтвержден'),
	(249, 'CommentsModule.core', 'Спам'),
	(250, 'StoreModule.admin', 'Создание продукта'),
	(251, 'StoreModule.admin', 'Создать'),
	(252, 'StoreModule.admin', 'Создать опцию'),
	(253, 'StoreModule.admin', 'Конфигурации'),
	(254, 'StoreModule.admin', 'Ошибка загрузки атрибута'),
	(255, 'StoreModule.core', 'Сортировать:'),
	(256, 'StoreModule.core', 'Сначала дешевые'),
	(257, 'StoreModule.core', 'Сначала дорогие'),
	(258, 'StoreModule.core', 'На странице:'),
	(259, 'FeedbackModule.core', 'Ваше имя'),
	(260, 'FeedbackModule.core', 'Email'),
	(261, 'FeedbackModule.core', 'Сообщение'),
	(262, 'FeedbackModule.core', 'Отправить'),
	(263, 'StoreModule.admin', 'Изображение'),
	(264, 'StoreModule.admin', 'Название'),
	(265, 'StoreModule.admin', 'Действия'),
	(266, 'StoreModule.admin', 'Вы действительно хотите удалить это изображение?'),
	(267, 'StoreModule.admin', 'Продукт'),
	(268, 'StoreModule.admin', 'Имя файла'),
	(269, 'StoreModule.admin', 'Главное'),
	(270, 'StoreModule.admin', 'Автор'),
	(271, 'StoreModule.admin', 'Дата загрузки'),
	(272, 'StoreModule.admin', 'Редактирование продукта'),
	(273, 'StoreModule.admin', 'Создать тип'),
	(274, 'StoreModule.admin', 'Редактирование типа продукта'),
	(275, 'StoreModule.admin', 'Опции'),
	(276, 'StoreModule.admin', 'Атрибуты продукта'),
	(277, 'StoreModule.admin', 'Доступные атрибуты'),
	(278, 'StoreModule.admin', 'Здесь вы можете указать категории, которые будут автоматически выбраны при создании продукта.'),
	(279, 'StoreModule.admin', 'Нажмите на название категории, чтобы сделать её главной.'),
	(280, 'StoreModule.admin', 'Параметры'),
	(281, 'StoreModule.admin', 'Укажите уникальный идентификатор'),
	(282, 'StoreModule.admin', 'Использовать свойство для поиска продуктов'),
	(283, 'StoreModule.admin', 'Позволяет искать продукты по более чем одному параметру одновременно'),
	(284, 'StoreModule.admin', 'Редактирование атрибута'),
	(285, 'StoreModule.admin', 'Изменения успешно сохранены'),
	(286, 'DiscountsModule.admin', 'Создать скидку'),
	(287, 'DiscountsModule.admin', 'Да'),
	(288, 'DiscountsModule.admin', 'Нет'),
	(289, 'DiscountsModule.core', 'Название'),
	(290, 'DiscountsModule.core', 'Активен'),
	(291, 'DiscountsModule.core', 'Скидка'),
	(292, 'DiscountsModule.core', 'Дата начала'),
	(293, 'DiscountsModule.core', 'Дата окончания'),
	(294, 'DiscountsModule.core', 'Производители'),
	(295, 'DiscountsModule.core', 'Группы пользователей'),
	(296, 'DiscountsModule.admin', 'Общая информация'),
	(297, 'DiscountsModule.admin', 'Укажите целое число или процент. Например 10%.'),
	(298, 'DiscountsModule.admin', 'Выберите производителя'),
	(299, 'DiscountsModule.admin', 'Выберите роли'),
	(300, 'DiscountsModule.admin', '<b>Внимание:</b> Скидки для администраторов запрещены.'),
	(301, 'DiscountsModule.admin', 'Категории'),
	(302, 'DiscountsModule.admin', 'Поиск:'),
	(303, 'DiscountsModule.admin', 'Здесь вы можете указать категории, для которых будет доступна скидка.'),
	(304, 'DiscountsModule.admin', 'Редактирование скидки'),
	(305, 'CoreModule.admin', 'Настройки'),
	(306, 'CoreModule.admin', 'Вы можете указать несколько значений разделяя их запятой. Например: 10,20,30'),
	(307, 'CoreModule.admin', 'Компактная'),
	(308, 'CoreModule.admin', 'Стандартная'),
	(309, 'CoreModule.admin', 'Полная'),
	(310, 'CoreModule.admin', 'Максимальная'),
	(311, 'CoreModule.admin', 'Изображения'),
	(312, 'CoreModule.admin', 'Укажите размер в байтах.'),
	(313, 'CoreModule.admin', 'Изображения превышающие этот размер, будут изменены.'),
	(314, 'CoreModule.admin', 'Название сайта'),
	(315, 'CoreModule.admin', 'Количество товаров на сайте'),
	(316, 'CoreModule.admin', 'Количество товаров в панели управления'),
	(317, 'CoreModule.admin', 'Тема'),
	(318, 'CoreModule.admin', 'Высота'),
	(319, 'CoreModule.admin', 'Автоматическая активация'),
	(320, 'CoreModule.admin', 'Путь сохранения'),
	(321, 'CoreModule.admin', 'Путь к превью'),
	(322, 'CoreModule.admin', 'Ссылка к изображениям'),
	(323, 'CoreModule.admin', 'Ссылка к превью'),
	(324, 'CoreModule.admin', 'Максимальный размер файла'),
	(325, 'CoreModule.admin', 'Максимальный размер изображения'),
	(326, 'CoreModule.admin', 'Активен'),
	(327, 'CoreModule.admin', 'Изображение'),
	(328, 'CoreModule.admin', 'Позиция по вертикали'),
	(329, 'CoreModule.admin', 'Позиция по горизонтали'),
	(330, 'CoreModule.admin', 'Прозрачность'),
	(331, 'LoggerModule.admin', 'Модули'),
	(332, 'LoggerModule.admin', 'Создание'),
	(333, 'LoggerModule.admin', 'Обновление'),
	(334, 'LoggerModule.admin', 'Удаление'),
	(335, 'LoggerModule.admin', 'Продукт'),
	(336, 'LoggerModule.admin', 'Категория'),
	(337, 'LoggerModule.admin', 'Производитель'),
	(338, 'LoggerModule.admin', 'Атрибут'),
	(339, 'LoggerModule.admin', 'Тип продукта'),
	(340, 'LoggerModule.admin', 'Доставка'),
	(341, 'LoggerModule.admin', 'Оплата'),
	(342, 'LoggerModule.admin', 'Валюта'),
	(343, 'LoggerModule.admin', 'Скидка'),
	(344, 'LoggerModule.admin', 'Заказ'),
	(345, 'LoggerModule.admin', 'Статус заказа'),
	(346, 'LoggerModule.admin', 'Пользователь'),
	(347, 'LoggerModule.admin', 'Язык'),
	(348, 'LoggerModule.admin', 'Модуль'),
	(349, 'LoggerModule.admin', 'Страница'),
	(350, 'LoggerModule.admin', 'Категория страниц'),
	(351, 'LoggerModule.admin', 'Комментарий'),
	(352, 'LoggerModule.admin', 'Действие'),
	(353, 'LoggerModule.admin', 'Обьект'),
	(354, 'LoggerModule.admin', 'Название'),
	(355, 'LoggerModule.admin', 'Дата'),
	(356, 'FeedbackModule.admin', 'Модули'),
	(357, 'FeedbackModule.admin', 'Обратная связь'),
	(358, 'FeedbackModule.core', 'Длина сообщения'),
	(359, 'FeedbackModule.core', 'Код протекции'),
	(360, 'FeedbackModule.admin', 'Укажите email куда отправлять новые сообщения.'),
	(361, 'FeedbackModule.admin', 'Укажите максимальную длину сообщения.'),
	(362, 'FeedbackModule.admin', 'Использовать код протекции для защиты от спама.'),
	(363, 'FeedbackModule.admin', 'Сохранить'),
	(364, 'StoreModule.core', 'Текущие фильтры'),
	(365, 'StoreModule.core', 'Сбросить фильтр'),
	(366, 'StoreModule.core', 'Поиск'),
	(367, 'StoreModule.core', 'Результаты поиска');
/*!40000 ALTER TABLE `TranslateSourceMessage` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `recovery_key` varchar(20) DEFAULT NULL,
  `recovery_password` varchar(100) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Saves user accounts';

-- Дамп данных таблицы cms.lc.user: 1 rows
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@mail.ru', '2015-03-25 12:44:10', '2016-06-15 15:53:37', '127.0.0.1', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Дамп структуры для таблица cms.lc.user_profile
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cms.lc.user_profile: 1 rows
DELETE FROM `user_profile`;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES
	(1, 1, 'admin', NULL, NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
