
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2015 at 03:48 AM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u102979894_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `combo_relation`
--

DROP TABLE IF EXISTS `combo_relation`;
CREATE TABLE IF NOT EXISTS `combo_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `combo_id` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `combo_relation`
--

INSERT INTO `combo_relation` (`id`, `combo_id`, `rid`, `qty`, `created`, `modified`) VALUES
(23, 11, 8, 2, '2015-06-17 04:06:17', '2015-06-17 04:06:17'),
(22, 11, 5, 1, '2015-06-17 04:06:17', '2015-06-17 04:06:17'),
(21, 11, 7, 1, '2015-06-17 04:06:17', '2015-06-17 04:06:17'),
(24, 12, 8, 1, '2015-06-17 04:06:20', '2015-06-17 04:06:20'),
(25, 12, 5, 1, '2015-06-17 04:06:20', '2015-06-17 04:06:20'),
(26, 12, 7, 1, '2015-06-17 04:06:20', '2015-06-17 04:06:20'),
(36, 14, 15, 1, '2015-06-17 07:06:58', '2015-06-17 07:06:58'),
(35, 14, 16, 1, '2015-06-17 07:06:58', '2015-06-17 07:06:58'),
(34, 14, 8, 6, '2015-06-17 07:06:58', '2015-06-17 07:06:58'),
(33, 14, 7, 3, '2015-06-17 07:06:58', '2015-06-17 07:06:58'),
(38, 17, 7, 1, '2015-06-17 08:06:03', '2015-06-17 08:06:03'),
(39, 17, 5, 1, '2015-06-17 08:06:03', '2015-06-17 08:06:03'),
(40, 17, 18, 1, '2015-06-17 08:06:03', '2015-06-17 08:06:03'),
(41, 23, 19, 1, '2015-06-24 07:06:11', '2015-06-24 07:06:11'),
(42, 23, 8, 1, '2015-06-24 07:06:11', '2015-06-24 07:06:11'),
(43, 23, 7, 1, '2015-06-24 07:06:11', '2015-06-24 07:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `content_categories`
--

DROP TABLE IF EXISTS `content_categories`;
CREATE TABLE IF NOT EXISTS `content_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `abbr_cd` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `content_categories`
--

INSERT INTO `content_categories` (`id`, `name`, `abbr_cd`, `created`, `modified`) VALUES
(1, 'Tráng miệng & Nước uống', 'trang-mieng-nuoc-uong', '2015-04-03 03:33:29', '2015-06-15 09:06:26'),
(3, 'Gà rán & Gà quay', 'ga-ran-ga-quay', '2015-04-03 03:35:05', '2015-06-17 07:06:33'),
(4, 'Cơm & Burger ', 'com-burger', '2015-04-03 03:35:05', '2015-06-15 06:06:41'),
(5, 'Thức ăn nhẹ', 'thuc-an-nhe', '2015-05-10 00:00:00', '2015-06-15 06:06:30'),
(13, 'Combo', 'combo', '2015-06-15 06:06:03', '2015-06-15 05:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `content_contact`
--

DROP TABLE IF EXISTS `content_contact`;
CREATE TABLE IF NOT EXISTS `content_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `content_contact`
--

INSERT INTO `content_contact` (`id`, `name`, `email`, `comment`, `created`, `modified`) VALUES
(1, 'HieuNC', 'hieunc18@gmail.com', 'nội dung...', '2015-05-14 06:43:04', '2015-05-14 06:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `content_incident`
--

DROP TABLE IF EXISTS `content_incident`;
CREATE TABLE IF NOT EXISTS `content_incident` (
  `id` int(10) NOT NULL,
  `order_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_order`
--

DROP TABLE IF EXISTS `content_order`;
CREATE TABLE IF NOT EXISTS `content_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `order_phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `coordinate_lat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `coordinate_long` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `delivery_id` int(10) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `completed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `content_order`
--

INSERT INTO `content_order` (`id`, `name`, `customer_name`, `customer_address`, `order_phone`, `email`, `coordinate_lat`, `coordinate_long`, `status`, `delivery_id`, `created`, `completed`) VALUES
(38, 'ORDER_14241425062015', 'HieuNC', 'nha pvb', '0773500757', 'hieunc18@gmail.com', '10.8365554', '106.6427986', 2, 2, '2015-06-25 14:24:14', '2015-06-25 14:25:52'),
(39, 'ORDER_16335728062015', 'HieuNC', '65/439g Quang Trung, p12, quận Gò Vấp, tp HCM', '0773500757', 'hieunc18@gmail.com', '10.836502', '106.6423194', 2, 1, '2015-06-28 16:33:57', '2015-06-29 05:26:43'),
(40, 'ORDER_00575429062015', 'HieuNC', '364 cộng hòa, quận tân bình, tp hcm', '0902852296', 'hieunc18@gmail.com', '10.8026391', '106.6401216', 2, 1, '2015-06-29 00:57:54', '2015-06-29 05:26:47'),
(41, 'ORDER_05210529062015', 'Nguyễn Chí Hiếu', '364 Cộng Hòa, Phường 13, Quận Tân Bình, TP.Hồ Chí Minh', '0902852296', 'hieunc18@gmail.com', '10.8026391', '106.6401216', 2, 1, '2015-06-29 05:21:05', '2015-06-29 05:26:53'),
(45, 'ORDER_16522629062015', '10520490', '364 Cộng Hòa, Phường 13, Quận Tân Bình, TP.Hồ Chí Minh', '0902852296', 'hieunc18@gmail.com', '10.8142', '106.643799', 2, 1, '2015-06-29 16:52:26', '2015-06-29 17:23:23'),
(46, 'ORDER_17025929062015', 'Hieu', '364 cộng hòa, tân bình, hcm', '0902852296', 'hieunc18@gmail.com', '10.8142', '106.643799', 2, 1, '2015-06-29 17:02:59', '2015-06-29 17:23:28'),
(47, 'ORDER_17054229062015', '10520490', '364 Cộng Hòa, Phường 13, Quận Tân Bình, TP.Hồ Chí Minh', '0902852296', 'hieunc18@gmail.com', '10.8142', '106.643799', 2, 1, '2015-06-29 17:05:42', '2015-06-29 17:23:32'),
(48, 'ORDER_17105029062015', 'Nguyễn Chí Hiếu', '364 Cộng Hòa, Phường 13, Quận Tân Bình, TP.Hồ Chí Minh', '0902852296', 'hieunc18@gmail.com', '10.8142', '106.643799', 2, 1, '2015-06-29 17:10:50', '2015-06-29 17:23:35'),
(49, 'ORDER_08065130062015', 'HieuNC', 'uit', '0902530575', 'hieunc18@gmail.com', '10.8694865', '106.8032937', 2, 1, '2015-06-30 08:06:51', '2015-06-30 08:11:33'),
(50, 'ORDER_08303930062015', 'HieuNC', 'uit', '0902530575', 'hieunc18@gmail.com', '10.868532', '106.8007382', 2, 1, '2015-06-30 08:30:39', '2015-06-30 08:32:29'),
(51, 'ORDER_09175230062015', 'HieuNC', 'uit lau 3', '0902852296', 'hieunc18@gmail.com', '10.8682251', '106.8003172', 1, 1, '2015-06-30 09:17:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_page`
--

DROP TABLE IF EXISTS `content_page`;
CREATE TABLE IF NOT EXISTS `content_page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `content_page`
--

INSERT INTO `content_page` (`id`, `key`, `content`, `created`, `modified`) VALUES
(1, 'about', '<p>Được l&agrave;m từ sợi m&igrave; bằng bột gạo xay mịn v&agrave; tr&aacute;ng th&agrave;nh từng lớp b&aacute;nh mỏng, sau đ&oacute; th&aacute;i theo chiều ngang để c&oacute; những sợi m&igrave; mỏng khoảng 2mm. Sợi m&igrave; l&agrave;m bằng bột mỳ được trộn th&ecirc;m một số phụ gia cho đạt độ d&ograve;n, dai. Dưới lớp m&igrave; l&agrave; c&aacute;c loại rau sống, tr&ecirc;n m&igrave; l&agrave; thịt heo nạc, t&ocirc;m, thịt g&agrave; c&ugrave;ng với nước d&ugrave;ng</p>\r\n', '2015-05-14 08:59:42', '2015-05-14 08:59:42'),
(2, 'deliveryinfo', '<p>Được l&agrave;m từ sợi m&igrave; bằng bột gạo xay mịn v&agrave; tr&aacute;ng th&agrave;nh từng lớp b&aacute;nh mỏng, sau đ&oacute; th&aacute;i theo chiều ngang để c&oacute; những sợi m&igrave; mỏng khoảng 2mm. Sợi m&igrave; l&agrave;m bằng bột mỳ được trộn th&ecirc;m một số phụ gia cho đạt độ d&ograve;n, dai. Dưới lớp m&igrave; l&agrave; c&aacute;c loại rau sống, tr&ecirc;n m&igrave; l&agrave; thịt heo nạc, t&ocirc;m, thịt g&agrave; c&ugrave;ng với nước d&ugrave;ng</p>\r\n', '2015-05-14 08:59:42', '2015-05-14 08:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `content_product`
--

DROP TABLE IF EXISTS `content_product`;
CREATE TABLE IF NOT EXISTS `content_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `category_id` int(10) NOT NULL,
  `is_combo` int(1) NOT NULL DEFAULT '0',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`),
  KEY `name` (`name`),
  KEY `price` (`price`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `content_product`
--

INSERT INTO `content_product` (`id`, `name`, `thumbnail`, `description`, `price`, `category_id`, `is_combo`, `del_flg`, `created`, `modified`) VALUES
(1, 'Bơ-Gơ Zinger ', 'http://web.order-sys.tk/upload/images/1435129176_1.png', '<p>1 C&aacute;i Bơ-Gơ Zinger</p>\r\n', '49000', 4, 0, 0, '2015-04-07 09:17:42', '2015-06-24 06:06:59'),
(19, 'Bơ-Gơ tôm ', 'http://web.order-sys.tk/upload/images/1435129298_1.png', '<p>1 C&aacute;i Bơ-Gơ t&ocirc;m</p>\r\n', '39000', 4, 0, 0, '2015-06-24 07:06:01', '2015-06-24 07:06:01'),
(20, 'Bơ-gơ Ocean', 'http://web.order-sys.tk/upload/images/1435129386_1.png', '<p>1 c&aacute;i Bơ-gơ Ocean</p>\r\n', '22000', 4, 0, 0, '2015-06-24 07:06:03', '2015-06-24 07:06:04'),
(21, 'Cơm Vi Vu - Phi lê Gà Quay Tiêu ', 'http://web.order-sys.tk/upload/images/1435129528_1.png', '<p>1 Phần Cơm Vi Vu - Phi l&ecirc; G&agrave; Quay Ti&ecirc;u</p>\r\n', '39000', 4, 0, 0, '2015-06-24 07:06:05', '2015-06-24 07:06:05'),
(2, 'Milo', 'http://web.order-sys.tk/upload/images/1435129059_1.png', '<p>1 li Milo</p>\r\n', '20000', 1, 0, 0, '2015-04-07 09:17:42', '2015-06-24 06:06:57'),
(22, 'Cơm Vi Vu - Gà Giòn Không Xương', 'http://web.order-sys.tk/upload/images/1435129695_1.png', '<p>1 Phần Cơm Vi Vu - G&agrave; Gi&ograve;n Kh&ocirc;ng Xương</p>\r\n', '39000', 4, 0, 0, '2015-06-24 07:06:08', '2015-06-24 07:06:08'),
(23, 'Phần ăn Chicky Bowl 1', 'http://web.order-sys.tk/upload/images/1435129740_1.png', '<p>+ 1 miếng g&agrave; r&aacute;n</p>\r\n\r\n<p>+ 1 Burger T&ocirc;m</p>\r\n\r\n<p>+ 1 Pepsi vừa</p>\r\n', '99000', 13, 1, 0, '2015-06-24 07:06:09', '2015-06-24 07:06:11'),
(24, 'Cánh gà giòn cay ', 'http://web.order-sys.tk/upload/images/1435130396_1.png', '<p>(3 miếng) C&aacute;nh g&agrave; gi&ograve;n cay</p>\r\n', '470000', 3, 0, 0, '2015-06-24 07:06:19', '2015-06-24 07:06:19'),
(25, 'Gà quay giấy bạc ', 'http://web.order-sys.tk/upload/images/1435130466_1.png', '<p>1 Phần G&agrave; quay giấy bạc</p>\r\n', '64000', 3, 0, 0, '2015-06-24 07:06:21', '2015-06-24 07:06:21'),
(3, 'Kem Sundae KFC', 'http://web.order-sys.tk/upload/images/1435128970_1.png', '<p>1 C&acirc;y &nbsp;Kem Sundae KFC</p>\r\n', '15000', 1, 0, 0, '2015-04-07 15:32:48', '2015-06-24 06:06:56'),
(26, 'Xà lách', 'http://web.order-sys.tk/upload/images/1435130590_1.png', '<p>1 Phần X&agrave; l&aacute;ch</p>\r\n', '25000', 5, 0, 0, '2015-06-24 07:06:23', '2015-06-24 07:06:25'),
(27, 'Cá thanh (3 miếng) ', 'http://web.order-sys.tk/upload/images/1435130652_1.png', '<p>1 Phần C&aacute; thanh (3 miếng)</p>\r\n', '40000', 5, 0, 0, '2015-06-24 07:06:24', '2015-06-24 07:06:24'),
(4, 'Bánh trứng nướng ', 'http://web.order-sys.tk/upload/images/1435128834_1.png', '<p>1 C&aacute;i&nbsp; B&aacute;nh trứng nướng</p>\r\n', '15000', 1, 0, 0, '2015-04-07 15:32:48', '2015-06-24 06:06:53'),
(5, 'Khoai Tây Chiên (Vừa)', 'http://web.order-sys.tk/upload/images/1434353563_1.png', '<p>Khoai t&acirc;y chi&ecirc;n t&uacute;i vừa cho hai người ăn.</p>\r\n', '12000', 5, 0, 0, '2015-04-07 15:40:22', '2015-06-15 07:06:33'),
(6, 'Bánh nhân mứt táo, Khoai môn ', 'http://web.order-sys.tk/upload/images/1435128689_1.png', '<p>1 c&aacute;i B&aacute;nh nh&acirc;n mứt t&aacute;o, Khoai m&ocirc;n</p>\r\n', '12000', 1, 0, 0, '2015-04-07 15:40:22', '2015-06-24 06:06:51'),
(7, 'Pepsy (Vừa)', 'http://web.order-sys.tk/upload/images/1434353912_1.png', '<p>Pepsy KFC ly vừa.</p>\r\n', '10000', 1, 0, 0, '2015-04-07 15:40:22', '2015-06-15 07:06:38'),
(13, 'Khoai Tây Nghiền (vừa)', 'http://web.order-sys.tk/upload/images/1434516369_1.png', '<p>1 phần khoai T&acirc;y Nghiền (vừa)</p>\r\n', '10000', 5, 0, 0, '2015-06-17 04:06:46', '2015-06-17 04:06:46'),
(14, 'Phần ăn gia đình A', 'http://web.order-sys.tk/upload/images/1434516564_1.png', '<p>&nbsp;+ 6 miếng G&agrave; Truyền Thống</p>\r\n\r\n<p>&nbsp;+ 1 khoai t&acirc;y chi&ecirc;n (đại)</p>\r\n\r\n<p>&nbsp;+ 1 khoai t&acirc;y nghiền (đại)</p>\r\n\r\n<p>&nbsp;+ 3 Pepsi (vừa)</p>\r\n', '242000', 13, 1, 0, '2015-06-17 04:06:49', '2015-06-17 07:06:58'),
(8, 'Gà Truyền Thống', 'http://web.order-sys.tk/upload/images/1434353170_1.png', '<p>G&agrave; r&aacute;n truyền thống 1 miếng.</p>\r\n', '30000', 3, 0, 0, '2015-04-07 15:40:22', '2015-06-15 07:06:26'),
(9, 'Khoai Tây Chiên (Lớn)', 'http://web.order-sys.tk/upload/images/1434353757_1.png', '<p>Khoai t&acirc;y chi&ecirc;n loại lớn 3-4 người ăn.</p>\r\n', '25000', 5, 0, 0, '2015-04-07 15:40:22', '2015-06-15 07:06:35'),
(15, 'Khoai Tây Chiên (đại)', 'http://web.order-sys.tk/upload/images/1434516674_1.png', '<p>1 Phần Khoai T&acirc;y Chi&ecirc;n (đại)</p>\r\n', '35000', 5, 0, 0, '2015-06-17 04:06:51', '2015-06-17 04:06:51'),
(16, 'Khoai Tây Nghiền (đại) ', 'http://web.order-sys.tk/upload/images/1434516719_1.png', '<p>1 Phần Khoai T&acirc;y Nghiền (đại)</p>\r\n', '30000', 5, 0, 0, '2015-06-17 04:06:51', '2015-06-17 04:06:51'),
(17, 'Combo Gà quay tiêu ', 'http://web.order-sys.tk/upload/images/1434528077_1.png', '<p>+ 1 miếng G&agrave; Quay Ti&ecirc;u</p>\r\n\r\n<p>+ 1 cơm hoặc khoai t&acirc;y chi&ecirc;n (vừa)</p>\r\n\r\n<p>+ 1 Pepsi (vừa)</p>\r\n', '79000', 13, 1, 0, '2015-06-17 08:06:01', '2015-06-17 08:06:03'),
(18, 'Gà quay tiêu', 'http://web.order-sys.tk/upload/images/1434528174_1.png', '<p>1 Phần G&agrave; quay ti&ecirc;u G&agrave; quay ti&ecirc;u</p>\r\n', '64000', 3, 0, 0, '2015-06-17 08:06:02', '2015-06-17 08:06:03'),
(10, 'Burger gà quay Flava', 'http://web.order-sys.tk/upload/images/1434354070_1.png', '<p>Burger g&agrave; quay 1 c&aacute;i.</p>\r\n', '45000', 4, 0, 0, '2015-05-12 06:05:00', '2015-06-15 07:06:41'),
(12, 'Phần ăn tiết kiệm', 'http://web.order-sys.tk/upload/images/1434514809_1.png', '<p>+ 1 miếng G&agrave; R&aacute;n Truyền Thống</p>\r\n\r\n<p>+ 1 khoai t&acirc;y chi&ecirc;n (vừa)</p>\r\n\r\n<p>+ 1 Pepsi (vừa)</p>\r\n', '49000', 13, 1, 0, '2015-06-17 04:06:20', '2015-06-17 04:06:20'),
(11, 'Combo Gà rán truyền thống', 'http://web.order-sys.tk/upload/images/1434352292_1.png', '<p>+ 2 miếng G&agrave; R&aacute;n Truyền Thống</p>\r\n\r\n<p>+ 1 khoai t&acirc;y chi&ecirc;n (vừa)</p>\r\n\r\n<p>+ 1 Pepsi (vừa)</p>\r\n', '79000', 13, 1, 0, '2015-06-15 05:06:56', '2015-06-17 04:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `content_saleoff`
--

DROP TABLE IF EXISTS `content_saleoff`;
CREATE TABLE IF NOT EXISTS `content_saleoff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `percent` int(10) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `content_saleoff`
--

INSERT INTO `content_saleoff` (`id`, `name`, `percent`, `startdate`, `enddate`) VALUES
(7, 'Khuyến mãi thắng 6', 20, '2015-06-01 12:46:00', '2015-07-01 12:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_staff`
--

DROP TABLE IF EXISTS `delivery_staff`;
CREATE TABLE IF NOT EXISTS `delivery_staff` (
  `id` int(10) NOT NULL,
  `login_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pasword` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery_staff`
--

INSERT INTO `delivery_staff` (`id`, `login_id`, `pasword`, `name`, `phone`, `email`, `address`, `created`, `modified`) VALUES
(1, 'delivery_01', 'e10adc3949ba59abbe56e057f20f883e', 'HieuNC', '0773500757', 'hieunc@gmail.com', '150/75/42 Quang Trung, Phường 13, Quận Gò Vấp, TP. Hồ Chí Minh', '2015-04-21 03:13:16', '2015-05-16 22:59:48'),
(2, 'delivery_02', 'e10adc3949ba59abbe56e057f20f883e', 'Hiếu', '0907753169', 'hieunc19@gmail.com', '150/75/42 Quang Trung, Phường 13, Quận Gò Vấp, TP. Hồ Chí Minh', '2015-04-21 03:13:16', '2015-05-14 10:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_token`
--

DROP TABLE IF EXISTS `delivery_token`;
CREATE TABLE IF NOT EXISTS `delivery_token` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `staff_id` int(10) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `delivery_token`
--

INSERT INTO `delivery_token` (`id`, `token`, `staff_id`, `created`, `modified`) VALUES
(53, '71252838a1dc23c22f43ee4cf86c5918', 1, '2015-06-28 16:42:05', '2015-06-28 16:42:05'),
(54, '0b36699c120570f61f610ff10028ed87', 2, '2015-06-30 05:46:08', '2015-06-30 05:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_relation`
--

DROP TABLE IF EXISTS `order_relation`;
CREATE TABLE IF NOT EXISTS `order_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `saleoff_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Dumping data for table `order_relation`
--

INSERT INTO `order_relation` (`id`, `order_id`, `product_id`, `price`, `qty`, `saleoff_id`) VALUES
(68, 38, 14, '193600', '1', 7),
(69, 39, 23, '99000', '2', NULL),
(70, 39, 17, '79000', '2', NULL),
(71, 40, 27, '32000', '2', 7),
(72, 40, 26, '20000', '2', 7),
(73, 40, 14, '193600', '1', 7),
(74, 41, 20, '17600', '2', 7),
(75, 41, 21, '39000', '2', NULL),
(90, 51, 17, '79000', '1', NULL),
(91, 51, 23, '99000', '1', NULL),
(82, 45, 27, '32000', '1', 7),
(83, 46, 27, '32000', '2', 7),
(84, 46, 26, '20000', '1', 7),
(85, 47, 27, '32000', '1', 7),
(86, 47, 26, '20000', '1', 7),
(87, 48, 27, '32000', '1', 7),
(88, 49, 17, '79000', '1', NULL),
(89, 50, 23, '99000', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orsersys_sessions`
--

DROP TABLE IF EXISTS `orsersys_sessions`;
CREATE TABLE IF NOT EXISTS `orsersys_sessions` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orsersys_sessions`
--

INSERT INTO `orsersys_sessions` (`id`, `expire`, `data`) VALUES
('c4a9ff829d1dc988d4486d098fac6614', 1437477966, '');

-- --------------------------------------------------------

--
-- Table structure for table `saleoff_relation`
--

DROP TABLE IF EXISTS `saleoff_relation`;
CREATE TABLE IF NOT EXISTS `saleoff_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `saleoff_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `saleoff_relation`
--

INSERT INTO `saleoff_relation` (`id`, `saleoff_id`, `product_id`, `created`, `modified`) VALUES
(46, 7, 18, '2015-06-24 07:06:25', '2015-06-24 07:06:25'),
(45, 7, 10, '2015-06-24 07:06:25', '2015-06-24 07:06:25'),
(44, 7, 14, '2015-06-24 07:06:25', '2015-06-24 07:06:25'),
(47, 7, 20, '2015-06-24 07:06:25', '2015-06-24 07:06:25'),
(48, 7, 26, '2015-06-24 07:06:25', '2015-06-24 07:06:25'),
(49, 7, 27, '2015-06-24 07:06:25', '2015-06-24 07:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `key`, `value`, `created`, `modified`) VALUES
(12, 'Mobile', '0169.7515.475', NULL, NULL),
(11, 'Phone', '0773.500.757', NULL, NULL),
(10, 'Gplus', '114966616563465368808', NULL, NULL),
(9, 'Twitter', 'NguyenHieu1812', NULL, NULL),
(8, 'Facebook', 'coolkg1412', NULL, NULL),
(7, 'Email', 'hieunc18@gmail.com', NULL, NULL),
(13, 'Coordinate-lat', '10.8684049', NULL, NULL),
(14, 'Coordinate-lng', '106.80272200000002', NULL, NULL),
(15, 'Distance', '100000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `login_id`, `password`, `phone`, `email`, `address`, `created`, `modified`) VALUES
(1, 'manager', 'e10adc3949ba59abbe56e057f20f883e', '01697515475', 'hieunc@gmail.com', '150/75/42 Quang Trung, Phường 13, Quận Gò Vấp, TP. Hồ Chí Minh', '2015-04-21 03:10:03', '2015-04-21 03:10:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
