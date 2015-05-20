-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2015 at 08:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dangkhaicangio`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `custom_field` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Michael', 'Tran', '', '648/47 CMT8 F11 Q3', '', 'HCM', '7000', 230, 3780, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_affiliate`
--

INSERT INTO `oc_affiliate` (`affiliate_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `company`, `website`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `code`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `ip`, `status`, `approved`, `date_added`) VALUES
(1, 'Khang', 'Trần Gia', 'viettq@freesale-vietnam.com', '0908532383', '', 'acb9732e9b12a70bf579449f0bfe7d5bc0f805e6', '62e2bc337', 'THHH mot thanh vien', '', '17 Ba huyeh tnah quan', '', 'TPHCM', '', 230, 3780, '5527471bad38b', '5.00', '', 'bank', '', '', '', '', '', '', '', '', 1, 1, '2015-04-10 10:44:27'),
(2, 'Khang', 'Trần Gia', 'quocviet.inc@gmail.com', '0908532383', '', '7932a5935f93c85d89f97ff746c529c358cb3a44', 'ebbee1f4b', 'THHH mot thanh vien', '', '17 Ba huyeh tnah quan', '', 'TPHCM', '', 230, 3780, '552747677d353', '5.00', '', 'cheque', '', '', '', '', '', '', '', '127.0.0.1', 1, 1, '2015-04-10 10:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
`activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_affiliate_activity`
--

INSERT INTO `oc_affiliate_activity` (`activity_id`, `affiliate_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 2, 'register', 'a:2:{s:12:"affiliate_id";i:2;s:4:"name";s:16:"Khang Trần Gia";}', '127.0.0.1', '2015-04-10 10:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
`affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_affiliate_login`
--

INSERT INTO `oc_affiliate_login` (`affiliate_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '127.0.0.1', 1, '2015-04-10 10:42:58', '2015-04-10 10:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
`api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'TcTBk0rZbL5PhiU8BgZfCdXHa88F535PWPQ6F8WgKSwr1Gq2nGYpkwxAuvGppC5B', '', '', 'RM8WKV3VnpCewtXZzvFah2bSnh8Sj3U0FTNQoHlRwowjYJ8O4Doc5Fujmt1MmMDsfQ8JXkaKPMunWs1RwftskeRNNJZ0Vci0th9HHaSXnCA9u2QhXAP8ehMsqljCEH2xp24xSMK5PK59DLhaMwZrUlZAN8CRG5FvxAiGNtCc47c7J9YVwxCGZcGmbJ4iE9T2928NlApg8HdHG1c2of9D8GqZPk7UkRNjKLwwMcSKjvRqmujRQiVOoBo4mlPM3cwD', 1, '2015-01-23 09:06:52', '2015-01-23 09:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8),
(12, 7, 0),
(13, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(12, 1, 'Transend'),
(13, 1, 'Kington');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(7, 1, 'HDD');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Quảng cáo', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(215, 7, '', 'catalog/quangcao/bandieuhanh.jpg', 6),
(219, 6, '', 'catalog/sanphamyen/yen khong soi.JPG', 0),
(106, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(105, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(104, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(103, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(102, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(101, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(214, 7, '', 'catalog/quangcao/showroom.jpg', 5),
(100, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(99, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(107, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(108, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(109, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(110, 8, 'http://muaban.internet47.net/sky-pantech', 'catalog/sky.jpg', 1),
(218, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/sanphamyen/yen rut long.JPG', 0),
(213, 7, '', 'catalog/quangcao/sayyen.jpg', 4),
(217, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/sanphamyen/yen tho.JPG', 0),
(212, 7, '', 'catalog/quangcao/nhatlong.jpg', 3),
(211, 7, '', 'catalog/quangcao/nuoiyen.jpg', 2),
(210, 7, '', 'catalog/quangcao/nhanuoiyen.jpg', 1),
(209, 7, '', 'catalog/quangcao/sanpham.jpg', 1),
(208, 7, '', 'catalog/quangcao/dangkhai2.jpg', 0),
(216, 7, '', 'catalog/quangcao/nhanuoiyentheoday.jpg', 3),
(220, 6, '', 'catalog/sanphamyen/yen soi.jpg', 0),
(221, 6, '', 'catalog/sanphamyen/yen tuoi.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(107, 1, 8, 'Disney'),
(106, 1, 8, 'Dell'),
(105, 1, 8, 'Harley Davidson'),
(104, 1, 8, 'Canon'),
(215, 1, 7, 'Ban điều hành'),
(103, 1, 8, 'Burger King'),
(102, 1, 8, 'Coca Cola'),
(101, 1, 8, 'Sony'),
(100, 1, 8, 'RedBull'),
(99, 1, 8, 'NFL'),
(108, 1, 8, 'Starbucks'),
(109, 1, 8, 'Nintendo'),
(110, 1, 8, 'Sky'),
(214, 1, 7, 'Showroom'),
(220, 1, 6, 'Cải củ'),
(219, 1, 6, 'Carot'),
(218, 1, 6, 'HP Banner'),
(217, 1, 6, 'HCM'),
(213, 1, 7, 'Say yen'),
(212, 1, 7, 'Nhat long'),
(211, 1, 7, 'Nuoi yen'),
(210, 1, 7, 'Nha Nuoi yen'),
(209, 1, 7, 'Sản Phẩm'),
(208, 1, 7, 'Giới thiệu'),
(216, 1, 7, 'Nhà nuôi yến theo dãy'),
(221, 1, 6, 'Cải');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(67, '', 0, 1, 1, 0, 1, '2015-04-30 18:03:55', '2015-04-30 18:03:55'),
(68, '', 67, 1, 1, 0, 1, '2015-05-01 14:11:54', '2015-05-01 14:11:54'),
(69, '', 67, 1, 1, 1, 1, '2015-05-01 14:12:18', '2015-05-01 14:12:18'),
(70, '', 67, 1, 1, 2, 1, '2015-05-01 14:12:36', '2015-05-01 14:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(67, 1, 'SẢN PHẨM', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'SẢN PHẨM', 'Các sản phẩm vể yến', 'yến sào, yến thô, yến tươi'),
(68, 1, 'YẾN THÔ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'YẾN THÔ', '', ''),
(69, 1, 'YẾN THÀNH PHẨM', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'YẾN THÀNH PHẨM', '', ''),
(70, 1, 'YẾN TƯƠI', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'YẾN TƯƠI', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(67, 67, 0),
(68, 67, 0),
(68, 68, 1),
(69, 67, 0),
(69, 69, 1),
(70, 67, 0),
(70, 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_topic`
--

CREATE TABLE IF NOT EXISTS `oc_category_topic` (
`category_topic_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oc_category_topic`
--

INSERT INTO `oc_category_topic` (`category_topic_id`, `title`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(3, 'Công dụng', 5, 1, '2015-04-08 10:54:35', '2015-05-11 21:44:35'),
(4, 'Cách chế biến', 5, 1, '2015-04-08 10:55:10', '2015-05-11 21:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(67, 0),
(68, 0),
(69, 0),
(70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_colorskin`
--

CREATE TABLE IF NOT EXISTS `oc_colorskin` (
`skin_id` int(11) NOT NULL,
  `skinname` varchar(64) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_colorskin`
--

INSERT INTO `oc_colorskin` (`skin_id`, `skinname`, `status`) VALUES
(100, 'black-red', 0),
(101, 'black', 0),
(102, 'blue', 0),
(103, 'clean-lemon', 0),
(104, 'clean-orange', 1),
(105, 'coffee', 0),
(106, 'dark-grey', 0),
(107, 'grey-black', 0),
(108, 'grey-blue', 0),
(109, 'pastel-blue', 0),
(110, 'silver-gold', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Viet nam dong', 'VND', '', ' VND', '0', 1.00000000, 1, '2015-05-11 19:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
`customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL,
  `address_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'f5fc6ba4d4c5b0074e817a0470e0c8aa21b2313e', 'b295c45b0', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU4O30=";i:1;}', '', 0, 1, '', '115.78.164.113', 1, 1, 0, '', '2015-03-26 15:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
`activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 0, 'order_guest', 'a:2:{s:4:"name";s:17:"Michael Tran Viet";s:8:"order_id";i:1;}', '116.100.13.103', '2015-01-26 21:09:59'),
(2, 0, 'order_guest', 'a:2:{s:4:"name";s:8:"Lan Tran";s:8:"order_id";i:4;}', '115.77.16.189', '2015-01-29 21:20:54'),
(3, 0, 'order_guest', 'a:2:{s:4:"name";s:12:"Michael Tran";s:8:"order_id";i:18;}', '115.78.164.113', '2015-03-26 14:19:48'),
(4, 1, 'register', 'a:2:{s:11:"customer_id";i:1;s:4:"name";s:12:"Michael Tran";}', '115.78.164.113', '2015-03-26 15:05:01'),
(5, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:12:"Michael Tran";s:8:"order_id";i:19;}', '115.78.164.113', '2015-03-26 15:05:21'),
(6, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:12:"Michael Tran";s:8:"order_id";i:20;}', '115.78.164.113', '2015-03-26 16:11:29'),
(7, 0, 'order_guest', 'a:2:{s:4:"name";s:12:"Michael Tran";s:8:"order_id";i:21;}', '127.0.0.1', '2015-04-10 10:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '115.78.164.113', '2015-03-26 15:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
`customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(8) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_reward`
--

INSERT INTO `oc_customer_reward` (`customer_reward_id`, `customer_id`, `order_id`, `description`, `points`, `date_added`) VALUES
(1, 1, 19, 'Order ID: #19', 15, '2015-03-26 15:06:35'),
(2, 1, 20, 'Order ID: #20', 3, '2015-03-26 16:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
`event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'information'),
(429, 'module', 'latest'),
(430, 'shipping', 'free'),
(431, 'shipping', 'pickup'),
(432, 'payment', 'bank_transfer'),
(433, 'shipping', 'item'),
(434, 'module', 'news'),
(435, 'feed', 'google_sitemap'),
(436, 'module', 'vqmod_manager'),
(437, 'module', 'special'),
(438, 'module', 'skincolor'),
(439, 'module', 'support'),
(440, 'module', 'fanpage'),
(441, 'shipping', 'weight'),
(442, 'module', 'html'),
(443, 'feed', 'google_base'),
(444, 'module', 'topic'),
(446, 'module', 'embed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(6, 'Khu vực 2', 'Quận 2 , 7 ,8 , Gò Vấp , Bình Thạnh , Tân Bình , Tân Phú , Bình Tân', '2015-05-03 02:25:03', '2015-03-23 08:36:16'),
(5, 'Vietnam GeoZone', 'des vietnam geo', '0000-00-00 00:00:00', '2015-01-24 23:12:19'),
(7, 'Khu vực 1', 'Quận 1, 3 ,4 , 5 ,  6 , 10 , 11 , Phú Nhuận', '2015-05-03 02:24:57', '2015-03-23 08:36:43'),
(8, 'Khu vực 3', 'Quận 9 , 12 , Thủ Đức , Hóc Môn , Củ Chi , Nhà Bè , Bình Chánh , Cần Giờ', '2015-05-03 02:25:14', '2015-05-03 02:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 2, 1),
(4, 1, 0, 1),
(5, 1, 3, 1),
(7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 1, 'Chuyển hàng', '&lt;p&gt;Hàng sau khi chuyển khoản sẽ được ship theo nhà xe. Và chi phí khách tự chịu.&lt;/p&gt;', 'Cách thức chuyển hàng', '', ''),
(5, 1, 'Điều khoản &amp; Điền kiện', '&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;Website &lt;a href=&quot;http://www.rausachantoan.com&quot; target=&quot;_blank&quot;&gt;Rausachantoan.com&lt;/a&gt;&amp;nbsp;được lập để làm nơi cung cấp nguyên vật liệu, thông tin, trao đổi, chia sẽ kinh nghiệm trong lĩnh vực trồng trọt rau an toàn, cung cấp thực phẩm sạch cho mọi người. Để tham gia làm thành viên của website, bạn phải cam kết đồng ý với các điểu khoản tham gia của thành viên như sau:&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;Bạn phải cam kết không gửi bất cứ bài viết nào có nội dung lừa đảo, thô tục, thiếu văn hóa, vu khống, khiêu khích, đe dọa người khác, liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống.Nếu cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Bạn đồng ý rằng website Rausachonline.vn có quyền gỡ bỏ, sửa, di chuyểnhoặc khóa bài viết của bạn trong website vào bất cứ lúc nào tùy theo nhu cầu công việc.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;Mọi dữ liệu bạn tải lên hay yết thị không được vi phạm hay xâm phạ các quyền của tác giả, bản quyền, thương hiệu hay bí mật kinh doanh, hoặc các quyền về tài sản, trí tuệ, sự riêng tư, cá nhânhay quảng bá của một bên thứ ba nào.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;Bạn cam kết rằng khi đăng ký làm thành viên của chúng tôi, bạn sẽ đăng ký các thông tin đúng đắn và có thật, những thông tin cá nhân mà bạn cung cấp sẽ được lưu trữ trong cơ sở dữ liệu của hệ thống. Bạn không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn.&lt;/p&gt;\r\n', 'Điều khoản &amp; Điền kiện', '', ''),
(3, 1, 'Chính sách bảo mật', '&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;a href=&quot;http://www.rausachantoan.com&quot; target=&quot;_blank&quot;&gt;Rausachantoan.com&lt;/a&gt;&amp;nbsp;là một webiste cho phép bạn tạo tài khoản và đăng ký mua hàng trực tuyến trên website. Việc đăng ký thành viên và sử dụng các dịch vụ tại website Rausachonline.vn có nghĩa là bạn đã đồng ý với các điều khoản sau:&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;Điều 1:&lt;/strong&gt;&amp;nbsp;Khi đăng ký tài khoản, bạn phải điền đầy đủ các thông tin cá nhân chúng tôi yêu cầu là bắt buộc ( thông tin có dấu * ), vì đây là những thông tin để Rausachonline.vn phục vụ bạn một cách tốt nhất.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;Điều 2&lt;/strong&gt;:&amp;nbsp;&lt;a href=&quot;http://www.rausachantoan.com/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Rausachantoan.com&lt;/a&gt;&amp;nbsp;cam kết bảo mật các thông tin cá nhân của mỗi thành viên khi đã đăng ký trên website,&amp;nbsp;&lt;a href=&quot;http://www.rausachantoan.com/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Rausachantoan.com&lt;/a&gt;&amp;nbsp;sẽ không buôn bán,&amp;nbsp;trao&amp;nbsp;đổi hay sử dụng thông tin thành viên cho bất cứ bên thứ 3 nào khác.&amp;nbsp;&lt;a href=&quot;http://www.rausachantoan.com/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Rausachantoan.com&lt;/a&gt;&amp;nbsp;có quyền sử dụng thông tin cá nhân trong trường&amp;nbsp;hợp các cơ quan pháp luật yêu cầu, điều tra các đối tượng phạm tội công nghệ.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;Điều 3&lt;/strong&gt;: Thành viên tuyệt đối không sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu của website. Những trường hợp vi phạm chúng tôi sẽ nhờ tới cơ quan pháp luật xử lý theo luật Công Nghệ Thông Tin.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;Điều 4&lt;/strong&gt;: Tuyệt đối nghiêm cấm hành vi mạo nhận là thành viên trong Ban quản trị website&amp;nbsp;&lt;a href=&quot;http://www.rausachantoan.com/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Rausachantoan.com&lt;/a&gt;.&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-bottom: 20px; padding: 0px; font-size: 13px; font-family: tahoma; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;Điều 5&lt;/strong&gt;: Nghiêm cấm quảng bá bất kỳ sản phẩm nào khác trên diễn đàn mà không có sự đồng ý bằng văn bản của&amp;nbsp;&lt;a href=&quot;http://www.rausachantoan.com/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Rausachantoan.com&lt;/a&gt;&lt;/p&gt;\r\n', 'Chính sách bảo mật', '', ''),
(4, 1, 'Giới thiệu', '&lt;p&gt;Hành trình chặng đường phát triển Công ty Yến Sào Cần Giờ&amp;nbsp; Đăng Khải vừa bước sang thập niên thứ 2. Một chặng đường mà chúng tôi đã để lại sau lưng không chỉ có mồ hôi, nước mắt mà còn là hoài bão, nghị lực, tâm quyết và lòng khao khát vô hạn. Chính từ những giá trị vô hình và hữu hình đó là động lực to lớn để chúng tôi vượt qua từng bước khó khăn có được thành công như ngày hôm nay.&lt;br&gt;&lt;br&gt;&amp;nbsp;&lt;br&gt;&lt;br&gt;Có thể nói, giai đoạn 2008 – 2012 là một giai đoạn thử thách của mọi thử thách cho Doanh nghiệp Việt Nam, hàng ngàn Doanh nghiệp phá sản hay hoạt động cầm chừng đã nói lên được sự khắc nghiệt của thị trường. Công ty chúng tôi bằng chính sự nỗ lực cùng định hướng chiến lược đã xuyên qua thách thức nắm bắt và khai thác các cơ hội một cách hiệu quả nhất. Đặc biệt là trong năm 2012 được cho là một năm khó khăn nhất, cũng là một năm chúng tôi đầu tư mạnh mẽ nhất trên nhiều lĩnh vực:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;– Đầu tư dự án xây dựng 17 căn biệt thự nhà nuôi chim yến tại Huyện Cần Giờ trên diện tích 20.000m2, vốn đầu tư hơn 100 tỷ đồng (dự kiến trong năm 2013 cơ bản hoàn thành hòa cùng hệ thống 25 nhà nuôi yến hiện nay);&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;– Đầu tư hơn 20 tỷ đồng nhập khẩu dây truyền sản xuất nước yến đóng chai với quy trình khép kín, công nghệ hiện đại của Đài Loan, công suất 36.000 lọ/ ngày. Có thể nói, đây là dòng sản phẩm có hàm lượng dinh dưỡng cao, đang được thị trường tiếp nhận mạnh mẽ.&lt;br&gt;&lt;br&gt;&amp;nbsp;&lt;br&gt;&lt;br&gt;Nếu nói về vượt thử thách trong thử thách thì không thể không nói đến sự đột phá của sự đột phá. Vượt thử thách khi kinh tế thị trường trong suy thoái đã vô cùng khó mà đột phá trong lĩnh vực công nghệ là điều khó tưởng đối với ngành nuôi yến Thế giới, đặc biệt là các nước có ngành nuôi yến phát triển hơn Việt Nam vài thập kỷ cũng chưa có công nghệ hiện đại nào. Với lòng quyết tâm cùng sự năng động, sang tạo của tập thể công ty. Sau 3 năm khảo sát, nghiên cứu trong nước và các nước có thế mạnh trong ngành nuôi yến như: Malaisia, Indonesia, Thái lan…Công ty Cổ phần Yến Sào Sài Gòn Anpha đã đầu tư và chế tạo thành công công nghệ nuôi yến trong nhà với những thông số kỹ thuật hoàn hảo hiện đại nhất thế giới hiện nay. Hiện tại, với công nghệ này đã mang lại thành công không nhỏ cho nhiều nhà nuôi yến tại Việt Nam, đặc biệt là kiểm soát và bảo vệ môi trường một cách hữu hiệu.&lt;br&gt;&lt;br&gt;&amp;nbsp;&lt;br&gt;&lt;br&gt;Chúng tôi không chỉ đơn thuần là giới thiệu về Công ty Yến Sào, mà giá trị cốt lõi là từ nay địa danh Cần Giờ nhiều năm gắn liền với di tích lịch sử Chiến khu Rừng Sác và khu sinh quyển của Thế giới, rừng ngập mặn. Thì hôm nay, tại giữa trung tâm thành phố Hồ Chí Minh đã hiện hữu một địa danh Cần Giờ mới với một giá trị mới, giá trị từ một chủ trương đúng trong thời kinh tế thị trường đó là “Yến Sào”. Và bắt đầu từ hôm nay ngày 05/01/2013 thương hiệu “Yến Sào Cần Giờ Anpha” sẽ song hành cùng giá trị lịch sử và di sản Thế giới, mở ra cho Huyện Cần Giờ thêm nhiều gam màu sáng hướng đến một ngày mai phồn vinh và hiện đại. Thật lòng, chúng tôi rất tự hào với những gì mình đang thực hiện, mong muốn cùng chung sức và góp một phần nhỏ bé của mình trong quá trình xây dựng nông thôn mới của Huyện Cần Giờ theo chủ trương của lãnh đạo thành phố Hồ Chí Minh. Đó cũng là tri ân sâu sắc của chúng tôi với lời dặn dò nghĩa tình và đầy trách nhiệm cảu vị lãnh đạo nhà nước mà trong trái tim tôi luôn cho là một bậc vĩ nhân: “Doanh nhân không chỉ làm giàu cho cá nhân mà còn phải biết cùng cộng đồng phát triển, đó mới thực thụ là một Doanh nhân đích thực”.&lt;br&gt;&lt;br&gt;&amp;nbsp;&lt;br&gt;&lt;br&gt;Có được ngày hôm nay, Công ty Yến Sào Cần Giờ Anpha vô cùng biết ơn sự quan tâm của Đảng, Nhà nước, sự chỉ đạo sát sao của Ủy ban Nhân dân TP. HCM, sự giúp đỡ tận tâm của UBND Huyện Cần Giờ, các đối tác, đồng nghiệp cùng sự hỗ trợ nhiệt tình của các cơ quan thông tấn báo chí. Trước nhựng quan tâm đó, chúng tôi càng nhận thức sâu sắc hơn trách nhiệm và nghĩa vụ của mình. Chúng tôi sẽ cố gắng làm hết khả năng và trách nhiệm của mình, tiếp tục phát huy nâng cao giá trị cuộc sống cộng đồng, đồng thời tập trung mọi nguồn lực để xây dựng và phát triển Công ty Yến Sào theo định hướng phát triển ngành yến của thành phố Hồ Chí Minh đối với Huyện Cần Giờ, góp phần vào sự nghiệp xây dựng và phát triển thành phố nói chung và Huyện Cần Giờ nói riêng trong tiến trình xây dựng nông thôn mới.&lt;br&gt;&lt;/p&gt;', 'Giới thiệu', 'Với hiện trạng rau quả hiện nay đang bị nhiễm bẩn ', 'Với hiện trạng rau quả hiện nay đang bị nhiễm bẩn , Với hiện trạng rau quả hiện nay đang bị nhiễm bẩn ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0),
(4, 0, 0),
(5, 0, 0),
(3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'News'),
(15, 'Special'),
(16, 'News detail');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
`layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(216, 16, 'featured.28', 'column_right', 0),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(222, 11, 'information', 'column_left', 0),
(197, 15, 'category', 'column_left', 0),
(221, 1, 'slideshow.27', 'content_top', 1),
(224, 14, 'featured.28', 'column_right', 0),
(220, 1, 'latest.31', 'content_top', 2),
(223, 2, 'featured.28', 'column_right', 1),
(219, 1, 'news', 'content_bottom', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(111, 1, 0, 'common/home'),
(113, 2, 0, 'product/product'),
(112, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(114, 14, 0, 'information/news'),
(96, 15, 0, 'product/special'),
(109, 16, 0, 'information/news/news');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(5,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1'),
(2, '10'),
(3, '3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
`location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
`marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketinsg_news`
--

CREATE TABLE IF NOT EXISTS `oc_marketinsg_news` (
`marketinsg_news_id` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_marketinsg_news`
--

INSERT INTO `oc_marketinsg_news` (`marketinsg_news_id`, `text`, `date_added`) VALUES
(1, '<html>\r\n<head><title>301 Moved Permanently</title></head>\r\n<body bgcolor="white">\r\n<center><h1>301 Moved Permanently</h1></center>\r\n<hr><center>nginx</center>\r\n</body>\r\n</html>\r\n', '2015-02-27 22:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketinsg_news_log`
--

CREATE TABLE IF NOT EXISTS `oc_marketinsg_news_log` (
`marketinsg_news_log_id` int(11) NOT NULL,
  `date_checked` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_marketinsg_news_log`
--

INSERT INTO `oc_marketinsg_news_log` (`marketinsg_news_log_id`, `date_checked`, `status`) VALUES
(1, '2015-02-27 22:21:05', 1),
(2, '2015-02-28 21:38:18', 1),
(3, '2015-03-01 18:12:33', 1),
(4, '2015-03-02 09:38:45', 1),
(5, '2015-03-03 08:21:45', 1),
(6, '2015-03-04 08:24:48', 1),
(7, '2015-03-05 08:27:53', 1),
(8, '2015-03-06 13:28:45', 1),
(9, '2015-03-17 18:33:54', 1),
(10, '2015-03-18 08:37:22', 1),
(11, '2015-03-19 13:11:08', 1),
(12, '2015-03-20 13:59:15', 1),
(13, '2015-03-23 08:27:37', 1),
(14, '2015-03-24 08:49:12', 1),
(15, '2015-03-25 10:08:32', 1),
(16, '2015-03-26 10:08:06', 1),
(17, '2015-03-30 20:47:05', 1),
(18, '2015-04-03 10:33:40', 1),
(19, '2015-04-06 09:18:30', 1),
(20, '2015-04-07 09:45:16', 1),
(21, '2015-04-08 09:32:47', 1),
(22, '2015-04-09 09:21:36', 1),
(23, '2015-04-10 10:38:46', 1),
(24, '2015-04-13 08:32:46', 1),
(25, '2015-04-28 01:53:55', 1),
(26, '2015-04-28 02:59:24', 1),
(27, '2015-04-28 02:59:31', 1),
(28, '2015-04-28 02:59:33', 1),
(29, '2015-04-28 02:59:35', 1),
(30, '2015-04-28 02:59:38', 1),
(31, '2015-04-29 21:12:48', 1),
(32, '2015-04-30 16:53:41', 1),
(33, '2015-05-01 13:49:24', 1),
(34, '2015-05-03 01:44:34', 1),
(35, '2015-05-09 14:59:45', 1),
(36, '2015-05-10 14:56:58', 1),
(37, '2015-05-11 21:07:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
`modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 'Colored Opencart', 'col', 'ThemingOpencart.com', '1.0', 'ThemingOpencart.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Colored Opencart</name>\r\n    <version>1.0</version>\r\n    <code>col</code>\r\n    <author>ThemingOpencart.com</author>\r\n    <link>ThemingOpencart.com</link>\r\n      <file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search ><![CDATA[\r\n                          <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">\r\n			    \r\n		   ]]></search>\r\n			<add position="after" ><![CDATA[\r\n			         <?php if (!$colorskin=='''') { ?>\r\n                         <link href="<?php echo $colorskin; ?>"  rel="stylesheet">\r\n                     <?php } ?>\r\n			]]></add>\r\n		</operation>\r\n    </file>   \r\n\r\n    <file path="catalog/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n                  $this->load->model(''catalog/category'');\r\n            ]]></search>\r\n            <add position="after"><![CDATA[	\r\n				   $this->load->model(''catalog/colorskin'');\r\n					$result = $this->model_catalog_colorskin->Loadskin();\r\n					if (!empty($result)) {\r\n				    $data[''colorskin'']= ''catalog/view/theme/'' . $this->config->get(''config_template'') . ''/stylesheet/skincolor/'' . $result[''skinname''] . ''.css'';\r\n					}else {\r\n				    $data[''colorskin'']='''';\r\n					}\r\n            ]]></add>\r\n        </operation>\r\n    </file>  \r\n</modification>', 1, '2015-03-01 20:01:03'),
(2, 'Viethemes - Custom CSS', 'viethemes_custom_css', 'Viethemes', '1.0', 'http://www.viethemes.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n  <name>Viethemes - Custom CSS</name>\r\n  <code>viethemes_custom_css</code>\r\n  <version>1.0</version>\r\n  <author>Viethemes</author>\r\n  <link>http://www.viethemes.com</link>\r\n\r\n  <file path="admin/controller/setting/setting.php">\r\n    <operation>\r\n      <search><![CDATA[if (isset($this->request->post[''config_comment''])) {]]></search>\r\n      <add position="before"><![CDATA[\r\n        if (isset($this->request->post[''config_vie_custom_css''])) {\r\n          $data[''config_vie_custom_css''] = $this->request->post[''config_vie_custom_css''];\r\n        } else {\r\n          $data[''config_vie_custom_css''] = html_entity_decode($this->config->get(''config_vie_custom_css''), ENT_QUOTES, ''UTF-8'');\r\n        }\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path="admin/view/template/setting/setting.tpl">\r\n    <operation>\r\n      <search><![CDATA[<li><a href="#tab-store" data-toggle="tab"><?php echo $tab_store; ?></a></li>]]></search>\r\n      <add position="after"><![CDATA[\r\n      <li><a href="#tab-custom-css" data-toggle="tab"><?php echo ''Custom CSS''; ?></a></li>\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[<div class="tab-content">]]></search>\r\n      <add position="after"><![CDATA[\r\n        <div class="tab-pane" id="tab-custom-css">\r\n          <div class="form-group">\r\n            <label class="col-sm-2 control-label" for="input-name"><?php echo ''Custom CSS''; ?></label>\r\n            <div class="col-sm-10">\r\n              <textarea name="config_vie_custom_css" class="form-control" style="height: 300px;"><?php echo $config_vie_custom_css; ?></textarea>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path="catalog/view/theme/default/template/common/header.tpl">\r\n    <operation>\r\n      <search><![CDATA[</head>]]></search>\r\n      <add position="before"><![CDATA[\r\n        <?php global $config; if ($config->get(''config_vie_custom_css'')) { ?>\r\n        <style>\r\n        <?php echo html_entity_decode($config->get(''config_vie_custom_css''), ENT_QUOTES, ''UTF-8''); ?>\r\n        </style>\r\n        <?php } ?>\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n</modification>', 0, '2015-03-04 08:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
`module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Featured - Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:5:{i:0;s:2:"86";i:1;s:2:"83";i:2;s:2:"87";i:3;s:2:"84";i:4;s:2:"85";}s:5:"limit";s:2:"16";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}'),
(31, 'Lastest Product', 'latest', 'a:5:{s:4:"name";s:15:"Lastest Product";s:5:"limit";s:2:"12";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(32, 'noname', 'support', 'a:7:{s:4:"name";s:6:"noname";s:8:"yahoo_id";s:30:"dinhcongtritri:Sale Department";s:8:"skype_id";s:13:"your_skype_id";s:7:"hotline";s:10:"0862682727";s:13:"email_contact";s:24:"info[@]rausachantoan.com";s:5:"style";s:72:"border-bottom:1px solid #dddddd; padding: 5px; background-color: #ffffff";s:6:"status";s:1:"0";}'),
(33, 'noname', 'fanpage', 'a:8:{s:4:"name";s:6:"noname";s:12:"facebook_url";s:42:"https://www.facebook.com/tintuc.online.net";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:16:"show_friend_face";s:1:"1";s:11:"show_border";s:1:"1";s:5:"style";s:16:"margin-top:10px;";s:6:"status";s:1:"1";}'),
(37, 'Vimeo', 'embed', 'a:3:{s:4:"name";s:5:"Vimeo";s:5:"embed";s:214:"&lt;iframe src=&quot;https://player.vimeo.com/video/124280959&quot; width=&quot;500&quot; height=&quot;281&quot; frameborder=&quot;0&quot; webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_news`
--

CREATE TABLE IF NOT EXISTS `oc_news` (
`news_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_news`
--

INSERT INTO `oc_news` (`news_id`, `image`, `date_added`, `status`) VALUES
(7, 'catalog/tintuc/to-yen3.jpg', '2015-05-11 21:11:42', 1),
(8, 'catalog/tintuc/cham-soc-da.jpg', '2015-05-11 21:13:57', 1),
(9, 'catalog/tintuc/chao_ga_to_yen_xe_phay_13543355204509.png', '2015-05-11 21:15:22', 1),
(10, 'catalog/tintuc/12-03-yen-sao-uy-tin-can-gio.jpg', '2015-05-11 21:20:13', 1),
(11, 'catalog/tintuc/best_20110630-142459-1-yensao-5B1-5D-282-29.jpeg', '2015-05-11 21:22:08', 1),
(12, 'catalog/tintuc/image021-1024x768.jpg', '2015-05-11 21:23:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_news_description`
--

CREATE TABLE IF NOT EXISTS `oc_news_description` (
`news_description_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_news_description`
--

INSERT INTO `oc_news_description` (`news_description_id`, `news_id`, `language_id`, `title`, `description`, `short_description`) VALUES
(16, 7, 1, 'Bạn có thực sự hiểu đúng giá trị yến sào?', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Liệu bạn có đang hi vọng vào điều đó, hãy đọc bài viết để biết thêm chi tiết.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trung tâm Công Nghệ sinh học, đại học Thủy sản và Viện Công nghệ sinh học thuộc Trung tâm khoa học tự nhiên và Công nghệ quốc gia đã công bố rằng:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Yến sào là một loại nguyên liệu vô cùng bổ dưỡng. Trong yến sào có chứa 18 loại axits amin, một số nguyên tố có hàm lượng cao như serine, tyrosine, phenylalanine, proline, acid aspartic…, khoáng chất cho cơ thể.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/to-yen3.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Với thành phần dinh dưỡng như vậy, yến sào chỉ có duy nhất giá trị dinh dưỡng, giúp tăng sức đề kháng và phòng các bệnh tật. Và hoàn toàn không có khả năng chữa dứt điểm các loại bệnh. Nhất là các bệnh phức tạp như HIV, ung thư…&lt;br&gt;Hơn thế nữa,&amp;nbsp;&lt;strong&gt;&lt;em&gt;giá trị yến sào&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;tương đối lớn, nhưng cũng phải tùy từng cơ thể, thể trạng, độ tuổi của mỗi người để có liều lượng dùng phù hợp.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Không thể tùy tiện sử dụng. Sẽ gây hại đến cơ thể.&amp;nbsp;Đã có khá nhiều bệnh nhân nhập viện vì dị ứng yến sào.&amp;nbsp;Hoặc có một vài bệnh nhân mắc phải tiểu đường mà người ta tìm ra nguyên nhân là do sử dụng yến sào với đường phèn&amp;nbsp;quá nhiều.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Vì vậy người tiêu dùng cần hiểu rõ về yến sào, đánh giá đúng giá trị. Và biết cách sử dụng hiệu quả.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nếu không hiểu đúng về yến sào, người tiêu dùng không những bị ảnh hưởng về sức khỏe mà sẽ còn chịu nhiều thiệt hại về tài chính.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hiểu biết chưa sâu, kèm theo những quan niệm sai sẽ dẫn đến mù quáng, tin tưởng quá mức, ảo tưởng sức mạnh.&lt;br&gt;Điều đó sẽ tạo điều kiện cho những người bán hàng thừa cơ gây rối, tăng giá trị sản phẩm, cũng như thừa cơ cho yến sào giả trà trộn vào thị thường để kiếm lợi.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Mắc phải sai lầm đó sẽ khiến người tiêu dùng không những thiệt hại rất nhiều tiền bạc mà còn vô cùng có hại đến sức khỏe.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Yến sào luôn bổ dưỡng chỉ khi người tiêu dùng hiểu biết đúng giá trị của chúng và biết cách sử dụng để phát huy hiệu quả tốt nhất.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đừng quá mù quáng mà tin tưởng vào những điều không hay, những tin đồn, khiến bạn nghi ngờ vào giá trị của yến sào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Bởi vì, nếu nghi ngờ bạn sẽ ngưng sử dụng, và như thế, bạn sẽ mất đi một cơ hội tăng thêm sức khỏe cho cơ thể với một loại thực phẩm bổ dưỡng.&lt;/p&gt;', 'Gần đây xuất hiện nhiều ý kiến cho rằng yến sào có thể chống được chất phóng xạ, trị được HIV và các bệnh khác…\r\nĐiều đó khiến người tiêu dùng vô cùng hoang mang và cũng hi vọng. Nhưng đó cũng có thể là những điều mà người bán hàng phóng đại lên, để tăng giá trị yến sào, giúp sản phẩm được bán nhanh chóng.'),
(17, 8, 1, 'Chăm sóc da với yến sào nên hay không?', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chắc chắn câu trả lời của bạn sẽ là “có” nếu bạn được hỏi như vậy.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nhưng nếu bạn được hỏi thêm rằng: chăm sóc da bằng yến sào là nên hay không?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Lúc này bạn sẽ nghĩ sao?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Rất khó để trả lời phải không?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Yến sào là một trong những bát bảo, thượng phẩm cung đình. Sử dụng yến sào chỉ để chăm sóc da có phải là rất lãng phí. Rất có lỗi với nguyên liệu quý này.&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/cham-soc-da.jpg&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tuy nhiên có cái gì đó không đúng ở đây thì phải?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Và bạn đã hiểu sai câu hỏi rồi đó!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Sử dụng yến sào để chăm sóc da không hề gây lãng phí. Mà còn vô cùng tiết kiệm và hiệu quả là đằng khác.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Yến sào chỉ lãng phí khi lợi ích mang lại không đạt được mong muốn của người sử dụng. Tuy nhiên, nếu kết quả làm đẹp của yến sào là ngoài sức tưởng tượng thì việc sử dụng yến sào là vô cùng nên làm và đáng khuyến khích.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Bởi vì, không chỉ sức khỏe mới đáng quý, sắc đẹp cũng có một vai trò quan trọng không kém. Nếu bạn khỏe mạnh mà kém sắc, bạn sẽ tự ti và cảm thấy mình kém cỏi. Và đó là lý do bạn luôn thất bại.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chính vì vậy, chỉ cần có kết quả tuyệt vời. Việc sử dụng yến sào để làm đẹp luôn được chấp nhận.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đặc biệt, khi sử dụng yến làm đẹp bạn không cần dùng quá nhiều, chỉ cần một ít sợi yến. Một tổ yến bạn có thể chia ra sử dụng được đến 50 lần. Hoặc bạn có thể kết hợp giữa ăn tổ yến và làm đẹp, khi ngâm yến để chế biến bạn trích một phần nhỏ vừa đủ để làm đẹp. Như vậy tính ra còn rẻ hơn mua mỹ phẩm hay đi spa nữa đấy!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hiện nay có rất nhiều cách làm đẹp bằng yến sào. Tuy nhiên có ba cách là vượt trội và có tác dụng hơn cả.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Tắm trắng&lt;/strong&gt;&lt;br&gt;Đây là cách sử dụng yến sào tinh chế, kết hợp với nhiều dưỡng chất làm trắng khác bôi trực tiếp lên cơ thể. Giúp loại bỏ các tế bào chết, tế bào hư tổn, thâm, nám… dưỡng ẩm, se khít lỗ chân lông khiến làn da trắng hồng rạng rỡ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Phương pháp này được dựa theo công thức làm đẹp lâu đời của người Nhật có tác dụng rất nhanh và vô cùng hiệu quả.&lt;br&gt;Tuy nhiên, việc tắm trắng phải sử dụng khối lượng yến sào lớn nên tương đối tốn kém. Do đó, bạn có thể chỉ sử dụng cho phần mặt thay vì toàn thân.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Đắp mặt nạ yến sào&lt;/strong&gt;&lt;br&gt;Đây là cách làm đẹp da mặt thường được sử dụng và bạn có thể thấy tại các trung tâm làm đẹp. Giúp da tươi trẻ, chống lão hóa, bù đắp lượng dưỡng chất thiếu hụt cho da. Cải tạo làn da căng mịn và trắng hồng. Ngay sau khi đắp mặt nạ bạn sẽ cảm nhận làn da mềm mịn tức thì và lên tone màu sau từ 3-5 lần sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đồng thời có thể kết hợp yến với các loại hỗn hợp làm đẹp khác như: dâu tây, bơ, sữa tươi…&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Sử dụng mỹ phẩm yến sào&lt;/strong&gt;&lt;br&gt;Mỹ phẩm yến sào cũng là một phương pháp làm đẹp được học hỏi từ người Nhật. Các loại mỹ phẩm yến sào được sản xuất vô cùng tinh khiết và đậm chất thiên nhiên. Hợp với mọi loại da. Giúp da trắng hồng không tỳ vết.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tuy nhiên, mỹ phẩm yến sào cũng tương đối đắt và là mặt hàng kén người sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Làm đẹp từ sâu bên trong bằng cách ăn yến sào&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đây là cách phổ biến và được hầu hết người tiêu dùng ưa chuộng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Với cách này, yến sào được phát huy hiệu quả tối đa. Không những làm đẹp da, loại bỏ não hóa mà còn thấm sâu vào bên trong, giúp tăng cường sức khỏe, chắc xương, kích thích tiêu hóa, kích thích thần kinh.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tất cả mọi người đều có thể áp dụng phương pháp làm đẹp này.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tuy nhiên phương pháp này không khả dụng với những người muốn đẹp ngay, đẹp nhanh và đẹp tức thời.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trên đây là câu trả lời của người viết cho câu hỏi có nên chăm sóc da bằng yến sào hay không. Tuy nhiên, đây chỉ là ý kiến khách quan của người viết.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Còn bạn thì sao, bạn có lý giải gì cho câu hỏi này. Hãy tự tìm cho mình một câu trả lời nhé.&lt;/p&gt;', 'Bạn có muốn một làn da trắng hồng mịn màng quyến rũ?'),
(18, 9, 1, 'Cháo tổ yến có thực sự tốt cho sức khỏe…', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nói đến người bệnh, chắc chắn bạn sẽ nghĩ ngay đến người gặp khó khăn về vấn đề sức khỏe bởi rất nhiều tác nhân gây bệnh khác nhau.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Điều đó khiến họ suy giảm sức khỏe, thần kinh mệt mỏi, tiêu hóa kém dẫn đến kén ăn, khó ăn, ăn không tiêu…. Và ăn uống trở thành công việc, nhiệm vụ bất khả kháng đối với họ chứ không phải là sự thưởng thức, tận hưởng như trước.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/chao_ga_to_yen_xe_phay_13543355204509.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;Vô số món ăn mà người bệnh không thể ăn được dẫn đến việc thiếu chất, thiếu năng lượng khiến sức khỏe của họ trở lên xấu đi.&amp;nbsp;Vấn đề này luôn khiến người bệnh và người nhà bệnh nhân lo lắng.&amp;nbsp;Họ luôn tìm kiếm thức ăn bổ dưỡng, phù hợp với tiêu hóa của người bệnh.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Và giải pháp tối ưu cho vấn đề này chỉ có thể là những món ăn chứa đựng nhiều yếu tố trong một như: bổ dưỡng, dễ tiêu hóa, không gây dị ứng…&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Cháo tổ yến&lt;/strong&gt;&amp;nbsp;là món ăn như thế, là sự lựa chọn hàng đầu.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Cháo tổ yến là tổ hợp hoàn hảo với hai phần không thể tách dời.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Thành phần cháo đơn giản, dễ ăn, dễ tiêu hóa. Vô cùng có lợi cho người bệnh.&amp;nbsp;Rất nhiều người bệnh chỉ có thể ăn được cháo mà không thể ăn được các món ăn khác.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nhưng nếu chỉ một mình cháo thôi thì sẽ rất nhạt nhẽo. Người bệnh ăn hoài cũng chán. Hơn nữa cháo tiêu hóa nhanh cũng nhanh đói. Chất dinh dưỡng trong cháo không đủ để nuôi sống cơ thể khiến cơ thể bị thiếu chất, càng tạo điều kiện cho bệnh phát triển hơn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Vì vậy thêm thành phần tổ yến vào để thay đổi hương vị, kích thích vị giác.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trên hết, sau khi vào bên trong, tổ yến sẽ làm nhiệm vụ cung cấp các chất dinh dưỡng, tăng cường miễn dịnh, kích thích tiêu hóa…. Giúp người bệnh thấy ngon miệng hơn, ăn nhiều hơn và có thể ăn thêm nhiều thực phẩm khác.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chỉ dùng một mình cháo tổ yến, cũng đủ giúp tăng cường sức khỏe, tăng cường sức đề kháng, mau chóng hết bệnh.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tuy nhiên, nếu ăn mãi một món sẽ gây cảm giác nhàm chán, khó ăn. Vì vậy người ta đã cho nhiều nguyên liệu khác vào cháo để tăng thêm hương vị cũng như tăng dinh dưỡng cho người bệnh.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Một vài món cháo tổ yến tiêu biểu có thể kể đến như sau:&amp;nbsp;&lt;strong&gt;cháo tổ yến với thịt bằm, cháo tổ yến với gà, cháo tổ yến với cua&lt;/strong&gt;…&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hiện nay, có nhiều loại món ăn dinh dưỡng dễ tiêu phù hợp với người bệnh khác như:&lt;strong&gt;&amp;nbsp;súp tổ yến, canh tổ yến hầm thuốc bắc&lt;/strong&gt;… Tuy nhiên cháo tổ yến vẫn giữ được vị trí quan trọng. Và luôn là món ăn hàng đầu người bệnh nghĩ đến và tin dùng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Cháo tổ yến, không chỉ là món ăn thông thường mà còn là niềm tin là sức mạnh của người bệnh.&lt;/p&gt;', 'Cháo tổ yến là sự kết hợp hai trong một hoàn hảo, chăm sóc cho sức khỏe người bệnh.'),
(19, 10, 1, 'Bạn thường làm gì khi bé biếng ăn?', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Chị gái tôi, bà mẹ một con hùng hồn tuyên bố: Thì kệ nó thôi, đến lúc đói thì nó khắc sẽ đòi ăn.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Mẹ tôi phản bác ngay: Làm thế sao mà được. Phải khuyên nhủ, nịnh nọt cho nó ăn chứ. Trẻ em dễ bị dụ dỗ, cứ nói vài câu dễ nghe là nó sẽ ăn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chị dâu tôi phản bác: Mẹ ơi, không như mẹ nghĩ đâu, trẻ em bây giờ ngang lắm. Dụ dỗ cũng bằng thừa. Vô ích thôi.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Anh rể tôi đưa ý kiến: trẻ em khó ăn, ăn ít thì chăm chỉ chia ra nhiều bữa cho bé ăn. Ăn nhiều hấp thụ được nhiều. Rồi bé lớn sẽ dạy từ từ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Những người phụ nữ trong nhà tôi ngao ngán: ai mà rảnh làm những việc ấy, hết cả thời gian làm việc khác.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Và sau một hồi tranh luận cả nhà tôi vẫn không có phương án nào khả thi ngoài một biểu hiện ngao ngán “bài toán không lời giải”.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đây không chỉ là câu vấn đề của gia đình tôi, mà của rất nhiều người. Đối với những người làm cha mẹ, thì cho con ăn vẫn là công việc khiến người ta mệt mỏi và nhàm chán nhất.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/12-03-yen-sao-uy-tin-can-gio.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Và họ tìm rất nhiều phương pháp để giải quyết vấn đề này. Nhưng hầu như đều không hiệu quả. Vì vậy, rất nhiều ông bố bà mẹ mặc nhiên cho rằng, biếng ăn là căn bệnh kinh niên không bao giờ chữa khỏi. Và họ sẽ để mặc đến khi chúng lớn lên sẽ tự khỏi.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nhưng chính những hành động đó vô tình làm hại đến sức khỏe của bé. Khiến bé thiếu chất, không đủ năng lượng dinh dưỡng để phát triển. Và dẫn đến những căn bệnh như: suy dinh dưỡng, bệnh về xương khớp, tim mạch…&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Vậy làm sao để khắc phục “căn bệnh kinh niên” này?&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Theo các chuyên gia dinh dưỡng, kích thích vị giác của trẻ là cách tốt nhất giải quyết vấn đề trẻ biếng ăn. Bất kì trẻ nào cũng đam mê những món ăn có vị ngọt, hương thơm và màu sắc hấp dẫn. Tuy nhiên không thể cho trẻ ăn nhiều những món như: socola hay bánh kẹo, như thế gây nguy hại đến sức khỏe của bé.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/yen-sao-uy-tin-sai-gon-anpha-32.jpg&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Cuối cùng món ăn họ lựa chọn và khuyên dùng là yến sào. Yến sào bổ dưỡng, cung cấp đầy đủ các loại chất dinh dưỡng cho bé phát triển toàn diện. Sản phẩm có mùi thơm nhẹ, dịu mát kích thích cảm giác thèm ăn trong bé.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hơn hết, yến sào được chế biến rất đa dạng, với nhiều món khiến các bé không cảm thấy nhàm chán. Các chuyên gia cũng cho biết nếu cho bé ăn yến sào thường xuyên, bé sẽ phát triển đều đặn mà không gặp phải vấn đề về sức khỏe nào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Giờ đây bạn đã có thêm bí quyết giúp con mình ăn ngon hơn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;em&gt;&lt;strong&gt;Bạn ngại gì mà không làm thử?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Gia đình tôi đang xem một chương trình dinh dưỡng trẻ em một cách vô cùng hứng thú. Bỗng nhiên người dẫn chương trình đặt ra một câu hỏi: Ngay khi câu hỏi được đưa ra, cả nhà bàn luận vô cùng sôi nổi với mỗi người một ý kiến về vấn đề này.'),
(20, 11, 1, 'Cách nhận biết Yến Sào giả và thật', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;Nếu là Yến thật khi ngâm, đun sôi sẽ không tan và nhão mà chỉ thành những sợi Yến nguyên vẹn. Nếu Tổ Yến không nhão ra, có thể Tổ Yến đó làm giả tinh vi, ta tiếp tục đem đun sôi khoảng 5 phút. Nếu là Yến giả hoặc hàng kém chất lượng (có pha, không nguyên chất) sẽ tan ra hết hoặc tan ra một lượng lớn tùy theo lượng pha không nguyên chất. Đối với Yến thật sẽ nở ra và không tan. Quý khách có thể thử cách sau khi đun sôi Yến :&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;•&amp;nbsp;&lt;strong&gt;Quý khách nhỏ thuốc Luigon&lt;/strong&gt;&amp;nbsp;(loại thuốc đặc trưng để xác định tinh bột) vào nồi Yến đang đun sẽ cho phản ứng tạo màu xanh (không còn màu khi đun sôi để nguội). Riêng Tổ Yến thật (không pha trộn) sẽ không có phản ứng tạo màu vì không có tinh bột.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;•&amp;nbsp;&lt;strong&gt;Yến giả khi đun có mùi carbonat natri&lt;/strong&gt;&amp;nbsp;rất hắc. Khi sôi có nhiều bọt, để qua đêm có màu vàng, hôi như bị thiu. Yến thật khi đun sôi ít bọt, có mùi đặc trưng của Yến.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/best_20110630-142459-1-yensao-5B1-5D-282-29.jpeg&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách 2:&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;Cho Tổ Yến vào dung dịch iốt, nếu là Yến giả sẽ chuyển sang màu xanh, do tinh bột tác dụng với iôt biến thành màu xanh. Đối với Yến huyết – Yến sào có màu đỏ, hoặc hồng, khi nhúng một ít vào nước trà (hoặc chè xanh) nếu gặp Yến giả nhuộm ôxit sắt thì chúng sẽ phản ứng hoá học và đen sẫm lại. Hoặc khi ngâm trong nước, Tổ Yến giả nhuộm phẩm màu sẽ bị mất màu, tan trong nước, còn Tổ Yến thật dù có đem nấu chín trong nước sôi 100°C nó vẫn còn nguyên màu sắc.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách 3:&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;(dành cho Quý khách đã và đang sử dụng Yến Sào thật hoặc giả):&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;• Đối với Yến thật :&lt;/strong&gt;&amp;nbsp;có mùi Mốc đặc trưng khi để nguyên tổ, khi đun sôi có mùi tanh đặc trưng còn gọi là mùi Yến Sào. Khi đun sợi nở, không tan và không nhão. Tùy theo độ tuổi của Yến sẽ cho sợi dai theo độ tuổi của tổ. Trên thị trường hiện nay thì Tổ Yến già thường có giá thành phẩm cao hơn vì sợi to và dai hơn khi ăn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;•&lt;strong&gt;&amp;nbsp;Đối với Yến giả:&lt;/strong&gt;&amp;nbsp;có mùi tanh của cá, mực . . . thậm chí có Tổ có mùi chất tẩy trắng. Khi đun sôi sợi nhão và tan ra vì có cấu trúc là tinh bột.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline; color: rgb(0, 0, 255);&quot;&gt;&lt;strong&gt;2.Cách Phân Biệt Tổ Yến Sào Tinh Chế Đã Làm Sạch Thật Giả&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nếu như trước đây, thông tin tới Người tiêu dùng thường là Yến sạch kém chất lượng hay bị cho có pha trộn thêm Vi cá, rau cau, mủ trôm v.v….. thì chúng tôi có thế nói đó là cách đánh lạc hướng của các doanh nghiệp kinh doanh “không lành mạnh”. Vì nếu trộn thêm những sản phẩm khác vào Tổ yến sạch, Người tiêu dùng khi ngâm ra và chưng sẽ dễ dàng nhận thấy sự khác biệt rõ ràng giữa các sợi yến và các thành phần khác pha vào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Thật sự các cửa hàng đã phủ lên Yến sạch một lớp Đường, Muối, hoặc Chất Kết Dính. Tại sao lại là những chất phụ gia này?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt; Do khi phủ những chất phụ gia này lên Sợi Yến, khách hàng khó phân biệt bằng mắt thường.&lt;br&gt;Vậy những cửa hàng này sẽ lợi gì khi thêm 1 trong 3 chất này ?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt; Các sợi yến sau khi khô sẽ to, đẹp mắt hơn: trước quá trình cho yến vào phòng sấy khô, ta nhúng qua 1 lớp dung dịch nước Đường ( hoặc muối, chất kết dính). Các chất này sẽ bao bọc các sợi yến. Khi khô lại, dung dịch sẽ tạo 1 lớp màng bao bên ngoài, khi đó nhìn sợi yến trông to và đẹp mắt.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt; Do nhặt bằng dầu ăn hoặc ngâm tổ yến lâu trong nước nhằm rút ngắn thời gian nhặt nên các cửa hàng này sẽ phủ thêm lớp đường để khi ăn, các sợi yến sẽ không bị bở : do lớp màng Đường bao bọc quanh sợi yến khi ngâm nước khoảng 10-15p sẽ không tan ra. Khi người dùng bắt đầu đem đi chưng, do bị bao phủ bởi lớp màng này nên các sợi yến khi nở ra sẽ hút lớp đường vào trong nên sợi yến kém chất lượng sẽ không tan ra và khi dùng sẽ không cho cảm giác sợi yến bị bở.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt; Nhằm tăng trọng lượng từ 20% ~ 40% trong 100g Yến Sào sạch: trong bài viết “Lý do có sự chênh lệch giá cao giữa Yến thô và Yến đã làm sạch“.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt; Nếu đem làm sạch 100g Yến thô thì thu về chỉ khoảng 84g – 90g Yến sạch.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nhưng khi phủ qua lớp Đường (muối, hoặc chất kết dính) thì 100g Yến thô sẽ được 100g ~ 130g “Yến sạch phủ đường” tùy theo lượng đường phủ vào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Do đó: khi quý khách mua 100g Yến Phủ Đường thì có tới 20% ~ 40% là đường. Nếu 100g “Yến sạch phủ đường” giá 4.000.000vnd thì quý khách đã bỏ ra 800.000-1.200.000vnd mua “đường”.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Sau đây chúng tôi xin trình bày cách nhận biết Yến đã làm sạch có bị phủ thêm chất phụ gia hay không?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;strong&gt;Cách 1: Quý khách lần lượt tiến hành theo các bước sau:&lt;/strong&gt;&lt;br&gt;Quý khách lấy 1 miếng Yến sạch còn trong hộp lên kiểm tra sơ bộ:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Đối với Yến Sạch nguyên chất: cảm giác khi cầm lên là miếng yến hơi giòn, dễ vỡ, không dẻo (để ngoài không khí lâu ngày cũng không dẻo). Ngoài ra miếng yến sẽ cho quý khách cảm giác bẻ nhẹ cũng có thể gãy.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Đối với Yến Sạch kém chất lượng: cảm giác khi cầm lên là cứng (cảm giác khó bể do bị phủ chất kết dính) hoặc hơi giòn (do bị sấy trực tiếp bằng hơi nóng trước đó 1-2 ngày, nếu để lâu ngoài không khí thì miếng Yến đó dẻo).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Để kiểm tra Đường và Muối: Quý khách cầm 1 miếng Yến Sạch còn trong hộp lên và bẻ đôi ra. Sau đó ta ăn thử 1 miếng lớn khoảng bằng 1 đốt ngón út trong ruột và vỏ ngoài. Không ăn thử 1 sợi yến nhỏ hoặc nếm nhẹ bằng đầu lưỡi lên lớp ngoài Tổ yến sạch, làm thế ta sẽ không cảm giác được vị Ngọt hoặc Mặn. Tổ yến sạch nguyên chất sẽ có vị nhạt, không mặn không ngọt.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Vì chất kết dính khi nếm hoặc ăn trực tiếp sẽ không vị nên chỉ có 1 cách thử là cảm giác khi cầm vào miếng yến là cứng, khó bể hoặc dẻo nếu để lâu trong hộp (đối với Yến sạch nguyên chất thường dễ vỡ, giòn). Khi mua về mở hộp để ngoài không khí khoảng 5 – 7 ngày, tổ yến bị phủ chất kết dính có hiện tượng mềm, dẻo, “yểu”.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt; Cách 2: Quý khách kiểm tra khi tiến hành ngâm Tổ yến sạch vào nước và sau khi chưng (không chưng đường phèn chung với Tổ Yến):&lt;br&gt;&lt;/strong&gt;&lt;br&gt;Đối với Yến sạch nguyên chất: khi ngâm tổ yến trong 10p – 15p, sợi yến sẽ nở ra khoảng 2 – 3 lần so với ban đầu, sau khi chưng xong thì sợi yến sẽ nở ra khoảng 4 – 5 lần so với ban đầu. Khi chưng cách thủy với thời gian 15p – 20p:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Nếu sợi yến nguyên chất mà ngâm trong nước lâu hoặc nhặt sạch bằng dầu ăn trong quá trình nhặt lông: khi ăn sẽ nhão và bở.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Nếu sợi yến nguyên chất mà ngâm trong nước với thời gian ngắn ( dưới 10 phút ) trong quá trình nhặt lông:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;+Đối với Yến sạch kém chất lượng bị phủ thêm phụ gia: kết thúc quá trinh chưng sôi, thì sợi yến chỉ nở ra khoảng 2 lần so với ban đầu. Khi ăn sẽ có cảm giác “xừng xực” hoặc bở.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Chú ý:&lt;/strong&gt;&amp;nbsp;Với những kiến thức được trình bày trong bài viết này, Quý khách có thể tự kiểm chứng thông tin chúng tôi cung cấp bằng cách mua 1 tai yến thô về làm sạch, đem phơi khô bằng quạt hoặc máy lạnh, sau đó đem chưng và dùng thử.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline; color: rgb(0, 0, 255);&quot;&gt;&lt;strong&gt;3 .Cách Phân Biệt Tổ Yến Sào Thô (Chưa Làm Sạch) Thật Giả&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline; color: rgb(0, 0, 255);&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Quý khách xin vui lòng chú ý: Vì Tổ Yến Thô và Tổ Yến Đã Qua Làm Sạch có những đặc điểm khác nhau nên không dùng những cách sau đây áp dụng cho Yến Sào Đã Qua Làm Sạch.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;Đầu tiên chúng tôi xin giới thiệu sơ lược Quý khách hàng về thành phần cấu tạo và bên ngoài của Tổ Yến Thô Nguyên Tổ thật và giả&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&amp;nbsp;&lt;strong&gt;Tổ Yến Thô thật :&lt;/strong&gt;&amp;nbsp;Đặc trưng nổi bật trước hết của tổ yến là sự chồng chéo, gắn liền nhau của nhiều lớp sợi trông như xơ mướp, vành tổ mỏng nhưng chân tổ lại dày để có thể bám chặt vào vách đá. Kích thước mỗi tổ yến có chiều dài từ 8 đến 10cm, ngang khoảng 5 đến 6cm và cao từ 4 đến 5cm. Tổ lớn và dày cân nặng bình quân 10g (thường dao động từ 7g cho đến 15g). Có hàm lượng Protein từ 40% đến 60%, có 20 loại acid amin và nhiều nguyên tố đa lượng…Đặc biệthoàn toàn không có Tinh Bột.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&amp;nbsp;&lt;strong&gt;Yến Sào Thô giả :&lt;/strong&gt;&amp;nbsp;cũng có các sợi chồng chéo gắn liền nhau một cách rất công phu và tinh xảo, nhưng thực chất chỉ là một hỗn hợp được cấu tạo bằng Agar, chứa Tinh Bột, lòng trắng trứng và sụn cước cá với một kỹ thuật chế biến tinh vi đến mức trông giống như yến sào thực. Ngoài ra hiện nay Tổ Yến giả còn được làm bằng keo Agenat trộn lẫn với tinh bột mì (sắn).&lt;/p&gt;', 'Cách 1: Đây là cách thử có độ chính xác cao nhất. Quý khách lấy 1 ít Tổ Yến ngâm nước. Nếu là Tổ Yến giả gặp nước sẽ nở ngay sau 2-3 phút và sau đó sẽ nhão ra vì do cấu trúc là tinh bột. '),
(21, 12, 1, 'Khuyến mãi (từ ngày 1/4/2015 đến ngày 30/6/2015)', '&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/image019-1024x768.jpg&quot; style=&quot;width: 535.34375px; height: 400.554112232779px;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(255, 0, 0); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Mua 100g Yến các loại –&amp;gt;&amp;nbsp;&lt;span style=&quot;color: rgb(0, 0, 255);&quot;&gt;Tặng 1 hộp đựng yến cao cấp &amp;amp; 1 bộ chén gốm sứ Minh Long.&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/tintuc/image021-1024x768.jpg&quot; style=&quot;width: 536.34375px; height: 402.2578125px;&quot;&gt;&lt;/span&gt;&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;', 'Mua 1 kg khô bất kỳ –&gt; Tặng 1 hủ Yến đắp mặt Cao cấp.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'select', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(13, 1, 'Màu');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 13, '', 0),
(50, 13, '', 0),
(51, 13, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(49, 1, 13, 'Đỏ'),
(50, 1, 13, 'Xanh'),
(51, 1, 13, 'Vàng');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(17, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'Tran', 'HCM', '648/47 Cách mạng tháng 8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', 'HCM', '648/47 Cách mạng tháng 8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Xa cửa hàng (bán kính &gt; 5km)  (Trọng lượng: 1.00kg)', 'weight.weight_6', '', '34000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-25 10:58:37', '2015-03-25 10:58:37'),
(2, 0, 'INV-2013-00', 0, 'MuaBan', 'http://muaban.internet47.net/', 0, 1, 'Lan', 'Tran', 'quocviet.inc@gmail.com', '03231323', '', 'a:0:{}', 'Lan', 'Tran', '', '14 ba huyen thanh quan f6 q3', '', 'hcm', '084', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Bank Transfer', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'a:0:{}', '', '', '', '4200000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.77.16.189', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-01-29 20:32:56', '2015-01-29 20:32:56'),
(3, 0, 'INV-2013-00', 0, 'MuaBan', 'http://muaban.internet47.net/', 0, 1, 'Lan', 'Tran', 'quocviet.inc@gmail.com', '03231323', '', 'a:0:{}', 'Lan', 'Tran', '', '14 ba huyen thanh quan f6 q3', '', 'hcm', '084', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', 'a:0:{}', '', '', '', '4200000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.77.16.189', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-01-29 20:33:08', '2015-01-29 20:33:08'),
(16, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'Tran', 'HCM', '648/47 Cách mạng tháng 8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', 'HCM', '648/47 Cách mạng tháng 8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Gần cửa hàng (bán kính 5 Km)  (Trọng lượng: 1.00kg)', 'weight.weight_7', '', '24000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-25 10:57:38', '2015-03-25 10:57:38'),
(5, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', '104000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-19 08:58:19', '2015-03-19 08:58:19'),
(6, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Nhận tại cửa hàng', 'pickup.pickup', '', '54000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-19 09:17:45', '2015-03-19 09:17:45'),
(7, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '09085362356', '', 'a:0:{}', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', '150000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.77.29.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-03-19 21:05:00', '2015-03-19 21:05:00'),
(8, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '09085362356', '', 'a:0:{}', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Nhận tại cửa hàng', 'pickup.pickup', '', '150000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.77.29.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-03-19 21:25:41', '2015-03-19 21:25:41'),
(9, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '09085362356', '', 'a:0:{}', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'Tran', '', '46 ba huy ', '', 'HCM', '700000', 'Viet Nam', 230, 'Bac Ninh', 3755, '', 'a:0:{}', 'Nhận tại cửa hàng', 'pickup.pickup', '', '150000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.77.29.6', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-03-19 21:26:58', '2015-03-19 21:26:58'),
(10, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', '214000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 08:47:28', '2015-03-23 08:47:28'),
(11, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', 'weight.weight_6', '', '135000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 10:29:46', '2015-03-23 10:29:46'),
(12, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', 'weight.weight_6', '', '135000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 10:35:21', '2015-03-23 10:35:21'),
(13, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', 'weight.weight_6', '', '135000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 10:38:32', '2015-03-23 10:38:32'),
(14, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', 'weight.weight_6', '', '135000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 10:39:32', '2015-03-23 10:39:32'),
(15, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://muaban.internet47.net/', 0, 1, 'Michael', 'tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'tran', 'HCM', '648/47 CMT8', '', 'HCM', '700000', 'Viet Nam', 230, 'An Giang', 3751, '', 'a:0:{}', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', 'weight.weight_6', '', '135000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-23 10:41:30', '2015-03-23 10:41:30'),
(18, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://rausachantoan.com/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'Tran', '', '45 HCM Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', '', '45 HCM Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Xa cửa hàng (bán kính &gt; 5km)  (Trọng lượng: 2.00kg)', 'weight.weight_6', '', '134000.0000', 1, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '112.213.89.97', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-26 14:19:45', '2015-03-26 14:26:37'),
(19, 1, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://rausachantoan.com/', 1, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'b:0;', 'Michael', 'Tran', '', '648/47 CMT8 F11 Q3', '', 'HCM', '7000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'Tran', '', '648/47 CMT8 F11 Q3', '', 'HCM', '7000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Gần cửa hàng (bán kính 5 Km)  (Trọng lượng: 2.00kg)', 'weight.weight_7', '', '55000.0000', 5, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '112.213.89.97', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-26 15:05:17', '2015-03-26 15:06:46'),
(20, 2, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://rausachantoan.com/', 1, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'b:0;', 'Michael', 'Tran', '', '648/47 CMT8 F11 Q3', '', 'HCM', '7000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', '', '648/47 CMT8 F11 Q3', '', 'HCM', '7000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Nhận tại cửa hàng', 'pickup.pickup', '', '18000.0000', 5, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '115.78.164.113', '112.213.89.97', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-03-26 16:11:25', '2015-03-26 16:13:04'),
(21, 0, 'INV-2013-00', 0, 'Rau Sạch An Toàn', 'http://local.local/rausachantoan/', 0, 1, 'Michael', 'Tran', 'viettq@freesale-vietnam.com', '0908532383', '', 'a:0:{}', 'Michael', 'Tran', '', '17 BHTQ', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Michael', 'Tran', '', '17 BHTQ', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Nhận tại cửa hàng', 'pickup.pickup', '', '90000.0000', 5, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 'en-US,en;q=0.8,vi;q=0.6,ja;q=0.4', '2015-04-10 10:39:57', '2015-04-10 10:42:20'),
(22, 0, 'INV-2013-00', 0, 'Yến Sào Đăng Khải Cần Giờ', 'http://local.local/yensaodangkhaicangio/', 0, 1, 'Michael', 'Tran', 'quocviet.inc@gmail.com', '0908532383', '', 'a:0:{}', 'Michael', 'Tran', '', '64847 CMT8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Chuyển khoản ngân hàng', 'bank_transfer', 'Michael', 'Tran', '', '64847 CMT8 F11 Q3', '', 'HCM', '700000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Khu vực 2  (Trọng lượng: 0.05kg)', 'weight.weight_6', '', '2170000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'VND', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'en-US,en;q=0.5', '2015-05-03 02:25:47', '2015-05-03 02:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
`order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(9, 18, 7, 1, 'Hướng dẫn chuyển khoản ngân hàng\n\n1.Ngân hàng ngoại thương Việt Nam – Phòng giao dịch số 1(VCB)\r\nSố TK:0071004769002\r\nTên TK: Võ Văn Kỷ\r\n\r\n2.Ngân hàng Á Châu ACB - Sở giao dịch\r\nSố TK:137277579\r\nTên TK: Võ Văn Kỷ\r\n\r\n3.Ngân hàng BIDV - chi nhánh 3/2\r\nSố TK:14010000791429\r\nTên TK: Võ Văn Kỷ\n\n<strong>Lưu ý: Sản phẩm của bạn sẽ chưa được vận chuyển cho đến khi bạn chuyển khoản thành công.</strong>', '2015-03-26 14:19:47'),
(10, 18, 1, 1, '', '2015-03-26 14:26:37'),
(11, 19, 1, 0, '', '2015-03-26 15:05:20'),
(12, 19, 5, 1, '', '2015-03-26 15:06:46'),
(13, 20, 7, 1, 'Hướng dẫn chuyển khoản ngân hàng\n\n1.Ngân hàng ngoại thương Việt Nam – Phòng giao dịch số 1(VCB)\r\nSố TK:0071004769002\r\nTên TK: Võ Văn Kỷ\r\n\r\n2.Ngân hàng Á Châu ACB - Sở giao dịch\r\nSố TK:137277579\r\nTên TK: Võ Văn Kỷ\r\n\r\n3.Ngân hàng BIDV - chi nhánh 3/2\r\nSố TK:14010000791429\r\nTên TK: Võ Văn Kỷ\n\n<strong>Lưu ý: Sản phẩm của bạn sẽ chưa được vận chuyển cho đến khi bạn chuyển khoản thành công.</strong>', '2015-03-26 16:11:27'),
(14, 20, 5, 1, '', '2015-03-26 16:12:28'),
(15, 20, 5, 1, 'add điểm thưởng', '2015-03-26 16:13:04'),
(16, 21, 1, 0, '', '2015-04-10 10:40:00'),
(17, 21, 2, 0, '', '2015-04-10 10:40:57'),
(18, 21, 5, 0, '', '2015-04-10 10:41:34'),
(19, 21, 13, 0, '', '2015-04-10 10:41:59'),
(20, 21, 5, 0, '', '2015-04-10 10:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(3, 2, 51, 'Sky A840', 'SK840', 1, '4000000.0000', '4000000.0000', '200000.0000', 0),
(4, 3, 51, 'Sky A840', 'SK840', 1, '4000000.0000', '4000000.0000', '200000.0000', 0),
(25, 17, 54, 'Chuối nàng hương Vườn Bà Điểm', 'MCODE-26672464', 1, '24000.0000', '24000.0000', '0.0000', 0),
(24, 16, 54, 'Chuối nàng hương Vườn Bà Điểm', 'MCODE-26672464', 1, '24000.0000', '24000.0000', '0.0000', 0),
(8, 5, 52, 'Dâu Tây Camarosa', 'MCODE-26664668', 3, '18000.0000', '54000.0000', '0.0000', 0),
(9, 6, 52, 'Dâu Tây Camarosa', 'MCODE-26664668', 3, '18000.0000', '54000.0000', '0.0000', 0),
(10, 7, 59, 'Viên nén ươm hạt Jiffy', 'MCODE-26757179', 1, '100000.0000', '100000.0000', '0.0000', 0),
(11, 8, 59, 'Viên nén ươm hạt Jiffy', 'MCODE-26757179', 1, '100000.0000', '100000.0000', '0.0000', 0),
(12, 8, 57, 'Cây bạc hà Chocolate', 'MCODE-26735808', 1, '50000.0000', '50000.0000', '0.0000', 0),
(13, 9, 59, 'Viên nén ươm hạt Jiffy', 'MCODE-26757179', 1, '100000.0000', '100000.0000', '0.0000', 0),
(14, 9, 57, 'Cây bạc hà Chocolate', 'MCODE-26735808', 1, '50000.0000', '50000.0000', '0.0000', 0),
(15, 10, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 1, '25000.0000', '25000.0000', '0.0000', 0),
(16, 10, 53, 'Cam Cara Đà Lạt', 'MCODE-26665285', 1, '85000.0000', '85000.0000', '0.0000', 0),
(17, 10, 56, 'Bộ sản phẩm trồng dâu tây treo', 'MCODE-26735501', 1, '30000.0000', '30000.0000', '0.0000', 0),
(18, 10, 54, 'Chuối nàng hương Vườn Bà Điểm', 'MCODE-26672464', 1, '24000.0000', '24000.0000', '0.0000', 0),
(19, 11, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 5, '25000.0000', '125000.0000', '0.0000', 0),
(20, 12, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 5, '25000.0000', '125000.0000', '0.0000', 0),
(21, 13, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 5, '25000.0000', '125000.0000', '0.0000', 0),
(22, 14, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 5, '25000.0000', '125000.0000', '0.0000', 0),
(23, 15, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 5, '25000.0000', '125000.0000', '0.0000', 0),
(26, 18, 59, 'Viên nén ươm hạt Jiffy', 'MCODE-26757179', 1, '100000.0000', '100000.0000', '0.0000', 0),
(27, 18, 54, 'Chuối nàng hương Vườn Bà Điểm', 'MCODE-26672464', 1, '24000.0000', '24000.0000', '0.0000', 0),
(28, 19, 58, 'Cây giống rau bồ ngót', 'MCODE-26757025', 1, '25000.0000', '25000.0000', '0.0000', 10),
(29, 19, 56, 'Bộ sản phẩm trồng dâu tây treo', 'MCODE-26735501', 1, '30000.0000', '30000.0000', '0.0000', 5),
(30, 20, 52, 'Dâu Tây Camarosa', 'MCODE-26664668', 1, '18000.0000', '18000.0000', '0.0000', 3),
(31, 21, 61, 'Bí đỏ', 'MCODE-28042828', 5, '18000.0000', '90000.0000', '0.0000', 5),
(32, 22, 81, 'Yến sợi (loại 50g)', 'MCODE-30592611', 1, '2100000.0000', '2100000.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(50, 17, 'sub_total', 'Thành tiền:', '24000.0000', 1),
(49, 16, 'total', 'Tổng cộng :', '24000.0000', 9),
(5, 2, 'sub_total', 'Sub-Total', '4000000.0000', 1),
(6, 2, 'tax', 'Thuế GTGT', '200000.0000', 5),
(7, 2, 'total', 'Total', '4200000.0000', 9),
(8, 3, 'sub_total', 'Sub-Total', '4000000.0000', 1),
(9, 3, 'tax', 'Thuế GTGT', '200000.0000', 5),
(10, 3, 'total', 'Total', '4200000.0000', 9),
(48, 16, 'shipping', 'Gần cửa hàng (bán kính 5 Km)  (Trọng lượng: 1.00kg)', '0.0000', 3),
(47, 16, 'sub_total', 'Thành tiền:', '24000.0000', 1),
(14, 5, 'sub_total', 'Thành tiền:', '54000.0000', 1),
(15, 5, 'shipping', 'Phí vận chuyển cố định', '50000.0000', 3),
(16, 5, 'total', 'Tổng cộng :', '104000.0000', 9),
(17, 6, 'sub_total', 'Thành tiền:', '54000.0000', 1),
(18, 6, 'shipping', 'Nhận tại cửa hàng', '0.0000', 3),
(19, 6, 'total', 'Tổng cộng :', '54000.0000', 9),
(20, 7, 'sub_total', 'Thành tiền:', '100000.0000', 1),
(21, 7, 'shipping', 'Phí vận chuyển cố định', '50000.0000', 3),
(22, 7, 'total', 'Tổng cộng :', '150000.0000', 9),
(23, 8, 'sub_total', 'Thành tiền:', '150000.0000', 1),
(24, 8, 'shipping', 'Nhận tại cửa hàng', '0.0000', 3),
(25, 8, 'total', 'Tổng cộng :', '150000.0000', 9),
(26, 9, 'sub_total', 'Thành tiền:', '150000.0000', 1),
(27, 9, 'shipping', 'Nhận tại cửa hàng', '0.0000', 3),
(28, 9, 'total', 'Tổng cộng :', '150000.0000', 9),
(29, 10, 'sub_total', 'Thành tiền:', '164000.0000', 1),
(30, 10, 'shipping', 'Phí vận chuyển cố định', '50000.0000', 3),
(31, 10, 'total', 'Tổng cộng :', '214000.0000', 9),
(32, 11, 'sub_total', 'Thành tiền:', '125000.0000', 1),
(33, 11, 'shipping', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', '10000.0000', 3),
(34, 11, 'total', 'Tổng cộng :', '135000.0000', 9),
(35, 12, 'sub_total', 'Thành tiền:', '125000.0000', 1),
(36, 12, 'shipping', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', '10000.0000', 3),
(37, 12, 'total', 'Tổng cộng :', '135000.0000', 9),
(38, 13, 'sub_total', 'Thành tiền:', '125000.0000', 1),
(39, 13, 'shipping', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', '10000.0000', 3),
(40, 13, 'total', 'Tổng cộng :', '135000.0000', 9),
(41, 14, 'sub_total', 'Thành tiền:', '125000.0000', 1),
(42, 14, 'shipping', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', '10000.0000', 3),
(43, 14, 'total', 'Tổng cộng :', '135000.0000', 9),
(44, 15, 'sub_total', 'Thành tiền:', '125000.0000', 1),
(45, 15, 'shipping', 'Xa cửa hàng  (Trọng lượng: 5.00kg)', '10000.0000', 3),
(46, 15, 'total', 'Tổng cộng :', '135000.0000', 9),
(51, 17, 'shipping', 'Xa cửa hàng (bán kính &gt; 5km)  (Trọng lượng: 1.00kg)', '10000.0000', 3),
(52, 17, 'total', 'Tổng cộng :', '34000.0000', 9),
(53, 18, 'sub_total', 'Thành tiền:', '124000.0000', 1),
(54, 18, 'shipping', 'Xa cửa hàng (bán kính &gt; 5km)  (Trọng lượng: 2.00kg)', '10000.0000', 3),
(55, 18, 'total', 'Tổng cộng :', '134000.0000', 9),
(56, 19, 'sub_total', 'Thành tiền:', '55000.0000', 1),
(57, 19, 'shipping', 'Gần cửa hàng (bán kính 5 Km)  (Trọng lượng: 2.00kg)', '0.0000', 3),
(58, 19, 'total', 'Tổng cộng :', '55000.0000', 9),
(59, 20, 'sub_total', 'Thành tiền:', '18000.0000', 1),
(60, 20, 'shipping', 'Nhận tại cửa hàng', '0.0000', 3),
(61, 20, 'total', 'Tổng cộng :', '18000.0000', 9),
(62, 21, 'sub_total', 'Thành tiền:', '90000.0000', 1),
(63, 21, 'shipping', 'Nhận tại cửa hàng', '0.0000', 3),
(64, 21, 'total', 'Tổng cộng :', '90000.0000', 9),
(65, 22, 'sub_total', 'Thành tiền:', '2100000.0000', 1),
(66, 22, 'shipping', 'Khu vực 2  (Trọng lượng: 0.05kg)', '70000.0000', 3),
(67, 22, 'total', 'Tổng cộng :', '2170000.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
`product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL,
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `viewed` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(77, 'MCODE-30592280', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen tuoi.JPG', 0, 1, '1350000.0000', 0, 0, '2015-05-02', '50.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-05-03 01:47:50', '0000-00-00 00:00:00'),
(78, 'MCODE-30592280', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen tuoi.JPG', 0, 1, '2650000.0000', 0, 0, '2015-05-02', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2015-05-03 01:48:00', '2015-05-03 01:48:47'),
(79, 'MCODE-30592611', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen soi.jpg', 0, 1, '420000.0000', 0, 0, '2015-05-02', '10.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2015-05-03 01:51:44', '2015-05-03 01:52:57'),
(80, 'MCODE-30592611', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen soi.jpg', 0, 1, '840000.0000', 0, 0, '2015-05-02', '20.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2015-05-03 01:52:17', '2015-05-03 01:53:59'),
(81, 'MCODE-30592611', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen soi.jpg', 0, 1, '2100000.0000', 0, 0, '2015-05-02', '50.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-05-03 01:53:07', '2015-05-03 01:53:39'),
(82, 'MCODE-30592611', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen soi.jpg', 0, 1, '4200000.0000', 0, 0, '2015-05-02', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-05-03 01:54:23', '2015-05-03 01:55:00'),
(83, 'MCODE-30592908', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen khong soi.JPG', 0, 1, '400000.0000', 0, 0, '2015-05-02', '10.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-05-03 01:57:23', '0000-00-00 00:00:00'),
(84, 'MCODE-30592908', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen khong soi.JPG', 0, 1, '800000.0000', 0, 0, '2015-05-02', '20.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-05-03 01:57:29', '2015-05-03 01:57:57'),
(85, 'MCODE-30592908', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen khong soi.JPG', 0, 1, '2000000.0000', 0, 0, '2015-05-02', '50.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-05-03 01:58:01', '2015-05-03 01:58:33'),
(86, 'MCODE-30592908', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen khong soi.JPG', 0, 1, '4000000.0000', 0, 0, '2015-05-02', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-05-03 01:59:12', '2015-05-03 01:59:33'),
(87, 'MCODE-30592908', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen khong soi.JPG', 0, 1, '8000000.0000', 0, 0, '2015-05-02', '200.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 0, '2015-05-03 01:59:44', '2015-05-03 02:00:10'),
(88, 'MCODE-30593256', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen rut long.JPG', 0, 1, '4500000.0000', 0, 0, '2015-05-02', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2015-05-03 02:02:42', '0000-00-00 00:00:00'),
(89, 'MCODE-30593465', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen tho.JPG', 0, 1, '1250000.0000', 0, 0, '2015-05-02', '50.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2015-05-03 02:06:26', '0000-00-00 00:00:00'),
(90, 'MCODE-30593465', '', '', '', '', '', '', '', 1000, 6, 'catalog/sanphamyen/yen tho.JPG', 0, 1, '2500000.0000', 0, 0, '2015-05-02', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 13, '2015-05-03 02:06:32', '2015-05-03 02:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(77, 1, 'Yến tươi (loại 50g)', '&lt;p&gt;Trước hết ta cùng tìm hiểu xem yến tươi xuất phát từ đâu. Thì như mọi người đã biết tổ yến thô thông thường khi mua về trước khi chế biến món ăn, tổ yến phải được trải qua công đoạn sơ chế nhặt sạch sẽ lông và tạp chất, công đoạn này mất khá nhều thời gian từ 1 đến vài tiếng tùy vào số lượng tổ yến cần làm. Vì vậy một số người bận rộn không có nhiều thời gian thì không thể làm được việc này. Do đó các cửa hàng, nơi bán tổ yến mới cung cấp dịch vụ nhặt lông yến theo yêu cầu và từ yến tươi được đặt ra từ đây.&lt;/p&gt;&lt;p&gt;Vậy thì yến tươi chính là tổ yến thô sau khi sơ chế loại bỏ sạch lông và tạp chất, chưa qua sấy khô được gọi là yến tươi&lt;br&gt;&lt;/p&gt;', 'yến tươi', 'Yến tươi (loại 50g)', 'Yến tươi chính là tổ yến thô sau khi sơ chế loại bỏ sạch lông và tạp chất, chưa qua sấy khô được gọi là yến tươi', 'Yến tươi'),
(78, 1, 'Yến tươi (loại 100g)', '&lt;p&gt;Trước hết ta cùng tìm hiểu xem yến tươi xuất phát từ đâu. Thì như mọi người đã biết tổ yến thô thông thường khi mua về trước khi chế biến món ăn, tổ yến phải được trải qua công đoạn sơ chế nhặt sạch sẽ lông và tạp chất, công đoạn này mất khá nhều thời gian từ 1 đến vài tiếng tùy vào số lượng tổ yến cần làm. Vì vậy một số người bận rộn không có nhiều thời gian thì không thể làm được việc này. Do đó các cửa hàng, nơi bán tổ yến mới cung cấp dịch vụ nhặt lông yến theo yêu cầu và từ yến tươi được đặt ra từ đây.&lt;/p&gt;&lt;p&gt;Vậy thì yến tươi chính là tổ yến thô sau khi sơ chế loại bỏ sạch lông và tạp chất, chưa qua sấy khô được gọi là yến tươi&lt;br&gt;&lt;/p&gt;', 'yến tươi', 'Yến tươi (loại 100g)', 'Yến tươi chính là tổ yến thô sau khi sơ chế loại bỏ sạch lông và tạp chất, chưa qua sấy khô được gọi là yến tươi', 'Yến tươi'),
(79, 1, 'Yến sợi (loại 10g)', '&lt;p&gt;Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, phụ thuộc vào kỹ thuật định hình tai yến. Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen soi.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến sợi', 'Yến sợi (loại 10g)', 'Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến sợi'),
(80, 1, 'Yến sợi (loại 20g)', '&lt;p&gt;Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, phụ thuộc vào kỹ thuật định hình tai yến. Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen soi.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến sợi', 'Yến sợi (loại 20g)', 'Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến sợi'),
(81, 1, 'Yến sợi (loại 50g)', '&lt;p&gt;Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, phụ thuộc vào kỹ thuật định hình tai yến. Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen soi.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến sợi', 'Yến sợi (loại 50g)', 'Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến sợi'),
(82, 1, 'Yến sợi (loại 100g)', '&lt;p&gt;Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, phụ thuộc vào kỹ thuật định hình tai yến. Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen soi.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến sợi', 'Yến sợi (loại 100g)', 'Yến sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến sợi'),
(83, 1, 'Yến không sợi (loại 10g)', '&lt;p&gt;Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, được xếp theo hình&amp;nbsp; tai yến . Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen khong soi.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến không sợi', 'Yến không sợi (loại 10g)', 'Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến không sợi'),
(84, 1, 'Yến không sợi (loại 20g)', '&lt;p&gt;Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, được xếp theo hình&amp;nbsp; tai yến . Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen khong soi.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến không sợi', 'Yến không sợi (loại 20g)', 'Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến không sợi'),
(85, 1, 'Yến không sợi (loại 50g)', '&lt;p&gt;Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, được xếp theo hình&amp;nbsp; tai yến . Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen khong soi.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến không sợi', 'Yến không sợi (loại 50g)', 'Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến không sợi'),
(86, 1, 'Yến không sợi (loại 100g)', '&lt;p&gt;Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, được xếp theo hình&amp;nbsp; tai yến . Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen khong soi.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến không sợi', 'Yến không sợi (loại 100g)', 'Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến không sợi'),
(87, 1, 'Yến không sợi (loại 200g)', '&lt;p&gt;Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “, hình dạng có thể là dạng bánh vuông, bánh tròn hoặc dạng tai yến, được xếp theo hình&amp;nbsp; tai yến . Việc loại bỏ hết lông chim khiến đây là dòng sản phẩm tiện lợi cho người sử dụng, bạn không cần mất nhiều thời gian để chế biến những món ăn bổ dưỡng từ yến sào.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen khong soi.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến không sợi', 'Yến không sợi (loại 200g)', 'Yến không sợi là dòng sản phẩm được làm sạch từ những tổ yến nhỏ hoặc những tổ yến bị gãy vỡ trong quá trình vận chuyển. Không còn giữ hình dạng nguyên bản của tai yến là hình ” nửa chén trà úp “', 'yến không sợi'),
(88, 1, 'Yến rút lông (loại 100g)', '&lt;p&gt;Hiện tại, Yến Sào Nhã Hằng Ngân cho ra mắt dòng sản phẩm yến tinh chế đó là yến rút lông, với những đặc điểm nhận biết sau:&lt;br&gt;&lt;br&gt;Các bạn có thể quan sát hình ảnh trên: Dòng sản phẩm ” yến rút lông ” được làm hoàn toàn từ những tổ yến nhỏ, với những sợi yến dài kín kẽ đan xen vào nhau. Đặc biệt dòng sản phẩm vẫn còn giữ nguyên phần chân tổ.&lt;br&gt;&lt;br&gt;Phần sợi yến dài mang lại cảm giác ngon dai khi ăn.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen rut long.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Phần sợi yến ngắn bên trong khi chế biến các món ăn như cháo yến, súp yến sẽ tạo độ sệt cho món ăn. Tuy sợi yến ngắn nhưng sẽ không tan hoặc rã ra khi bạn chưng, mà vẫn giữ nguyên hình dạng.&lt;br&gt;&lt;br&gt;Với những đặc tính trên, yến rút lông sẽ là dòng sản phẩm có mẫu mã đẹp, sẽ là món quà sang trọng, phù hợp để bạn sử dụng để làm quà tặng cho bạn bè, người thân, đồng nghiệp…&lt;br&gt;&lt;br&gt;Như vậy, dựa vào những phân tích quy trình, đặc điểm của dòng sản phẩm yến sào tinh chế từ Yến Sào đăng khải giúp bạn trả lời được câu hỏi ” yến rút lông ” qua đó có được chọn lựa phù hợp nhất khi sử dụng sản phẩm yến sào.&lt;br&gt;&lt;/p&gt;', '', 'Yến rút lông (loại 100g)', '', ''),
(89, 1, 'Yến thô (loại 50g)', '&lt;p&gt;Tổ yến thô là loại tổ yến nguyên chất 100%, vẫn còn lông chim yến bám vào, chưa qua quá trình chế biến nào. Yến thô được thu hoạch trực tiếp từ nơi nuôi yến và bán ra thị trường. Sản phẩm này phù hợp cho người có thời gian, vì công đoạn làm sạch tổ yến để chế biến chiếm rất nhiều thời gian. Yến thô có mùi thơm đặc trưng, sợi yến sẽ dai và nở nhiều hơn tổ yến tinh chế, đặc biệt dễ nhận biết, tổ yến thật hay giả.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen tho.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến thô', 'Yến thô (loại 50g)', 'Tổ yến thô là loại tổ yến nguyên chất 100%, vẫn còn lông chim yến bám vào, chưa qua quá trình chế biến nào. Yến thô được thu hoạch trực tiếp từ nơi nuôi yến và bán ra thị trường. ', 'Yến thô'),
(90, 1, 'Yến thô (loại 100g)', '&lt;p&gt;Tổ yến thô là loại tổ yến nguyên chất 100%, vẫn còn lông chim yến bám vào, chưa qua quá trình chế biến nào. Yến thô được thu hoạch trực tiếp từ nơi nuôi yến và bán ra thị trường. Sản phẩm này phù hợp cho người có thời gian, vì công đoạn làm sạch tổ yến để chế biến chiếm rất nhiều thời gian. Yến thô có mùi thơm đặc trưng, sợi yến sẽ dai và nở nhiều hơn tổ yến tinh chế, đặc biệt dễ nhận biết, tổ yến thật hay giả.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/sanphamyen/yen tho.JPG&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'yến thô', 'Yến thô (loại 100g)', 'Tổ yến thô là loại tổ yến nguyên chất 100%, vẫn còn lông chim yến bám vào, chưa qua quá trình chế biến nào. Yến thô được thu hoạch trực tiếp từ nơi nuôi yến và bán ra thị trường. ', 'Yến thô');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2523 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2498, 77, 'catalog/sanphamyen/yen tuoi.JPG', 0),
(2500, 78, 'catalog/sanphamyen/yen tuoi.JPG', 0),
(2504, 79, 'catalog/sanphamyen/yen soi.jpg', 0),
(2507, 80, 'catalog/sanphamyen/yen soi.jpg', 0),
(2506, 81, 'catalog/sanphamyen/yen soi.jpg', 0),
(2509, 82, 'catalog/sanphamyen/yen soi.jpg', 0),
(2510, 83, 'catalog/sanphamyen/yen khong soi.JPG', 0),
(2512, 84, 'catalog/sanphamyen/yen khong soi.JPG', 0),
(2514, 85, 'catalog/sanphamyen/yen khong soi.JPG', 0),
(2516, 86, 'catalog/sanphamyen/yen khong soi.JPG', 0),
(2518, 87, 'catalog/sanphamyen/yen khong soi.JPG', 0),
(2519, 88, 'catalog/sanphamyen/yen rut long.JPG', 0),
(2520, 89, 'catalog/sanphamyen/yen tho.JPG', 0),
(2522, 90, 'catalog/sanphamyen/yen tho.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `points` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(635, 77, 1, 0),
(637, 78, 1, 0),
(641, 79, 1, 0),
(644, 80, 1, 0),
(643, 81, 1, 0),
(646, 82, 1, 0),
(647, 83, 1, 0),
(649, 84, 1, 0),
(651, 85, 1, 0),
(653, 86, 1, 0),
(655, 87, 1, 0),
(656, 88, 1, 0),
(657, 89, 1, 0),
(659, 90, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(471, 88, 1, 0, '4000000.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(77, 70),
(78, 70),
(79, 69),
(80, 69),
(81, 69),
(82, 69),
(83, 69),
(84, 69),
(85, 69),
(86, 69),
(87, 69),
(88, 69),
(89, 68),
(90, 68);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
`recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9317 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(3112, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(3111, 0, 'shipping', 'shipping_status', '1', 0),
(3110, 0, 'shipping', 'shipping_estimator', '0', 0),
(9088, 0, 'coupon', 'coupon_sort_order', '4', 0),
(9087, 0, 'coupon', 'coupon_status', '0', 0),
(3372, 0, 'flat', 'flat_sort_order', '1', 0),
(3371, 0, 'flat', 'flat_status', '0', 0),
(3370, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(3369, 0, 'flat', 'flat_tax_class_id', '0', 0),
(3368, 0, 'flat', 'flat_cost', '50000', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(8731, 0, 'reward', 'reward_sort_order', '2', 0),
(8730, 0, 'reward', 'reward_status', '0', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(3512, 0, 'information', 'information_status', '1', 0),
(7016, 0, 'google_base', 'google_base_status', '1', 0),
(3380, 0, 'free', 'free_sort_order', '0', 0),
(8733, 0, 'voucher', 'voucher_sort_order', '8', 0),
(8732, 0, 'voucher', 'voucher_status', '0', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(9312, 0, 'config', 'config_compression', '', 0),
(9309, 0, 'config', 'config_maintenance', '0', 0),
(9310, 0, 'config', 'config_password', '1', 0),
(9311, 0, 'config', 'config_encryption', '3c937d998c794e576037097993000018', 0),
(9305, 0, 'config', 'config_seo_url', '1', 0),
(9306, 0, 'config', 'config_file_max_size', '300000', 0),
(9307, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods\r\nico', 0),
(9308, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/x-icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(9299, 0, 'config', 'config_fraud_key', '', 0),
(9300, 0, 'config', 'config_fraud_score', '', 0),
(9301, 0, 'config', 'config_fraud_status_id', '7', 0),
(9302, 0, 'config', 'config_secure', '0', 0),
(9303, 0, 'config', 'config_shared', '0', 0),
(9304, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(9298, 0, 'config', 'config_fraud_detection', '0', 0),
(9297, 0, 'config', 'config_mail_alert', 'info@rausachantoan.com, quocviet.inc@gmail.com', 0),
(9296, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"smtp";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:22:"mail.rausachantoan.com";s:13:"smtp_username";s:22:"info@rausachantoan.com";s:13:"smtp_password";s:10:"0908532383";s:9:"smtp_port";s:2:"25";s:12:"smtp_timeout";s:1:"5";}', 1),
(9295, 0, 'config', 'config_ftp_status', '0', 0),
(9291, 0, 'config', 'config_ftp_port', '21', 0),
(9292, 0, 'config', 'config_ftp_username', '', 0),
(9293, 0, 'config', 'config_ftp_password', '', 0),
(9294, 0, 'config', 'config_ftp_root', '', 0),
(626, 0, 'pickup', 'pickup_status', '1', 0),
(625, 0, 'pickup', 'pickup_geo_zone_id', '5', 0),
(3378, 0, 'free', 'free_geo_zone_id', '0', 0),
(627, 0, 'pickup', 'pickup_sort_order', '', 0),
(8727, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '5', 0),
(8726, 0, 'bank_transfer', 'bank_transfer_order_status_id', '1', 0),
(8725, 0, 'bank_transfer', 'bank_transfer_total', '', 0),
(8724, 0, 'bank_transfer', 'bank_transfer_bank1', 'Ngân Hàng Agribank , Chi nhánh Cần Giờ \r\nSTK : 6180205004008 \r\nChủ TK: Nguyễn Thị Lan\r\n', 0),
(3379, 0, 'free', 'free_status', '0', 0),
(9290, 0, 'config', 'config_ftp_hostname', 'muaban.internet47.net', 0),
(883, 0, 'news', 'news_status', '1', 0),
(884, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(9288, 0, 'config', 'config_image_location_width', '268', 0),
(9289, 0, 'config', 'config_image_location_height', '50', 0),
(9287, 0, 'config', 'config_image_cart_height', '47', 0),
(9286, 0, 'config', 'config_image_cart_width', '47', 0),
(9285, 0, 'config', 'config_image_wishlist_height', '47', 0),
(9284, 0, 'config', 'config_image_wishlist_width', '47', 0),
(9283, 0, 'config', 'config_image_compare_height', '90', 0),
(9282, 0, 'config', 'config_image_compare_width', '90', 0),
(9281, 0, 'config', 'config_image_related_height', '180', 0),
(9280, 0, 'config', 'config_image_related_width', '180', 0),
(9278, 0, 'config', 'config_image_additional_width', '74', 0),
(9279, 0, 'config', 'config_image_additional_height', '74', 0),
(9082, 0, 'weight', 'weight_6_status', '1', 0),
(9081, 0, 'weight', 'weight_6_rate', '999999:70000\r\n', 0),
(9080, 0, 'weight', 'weight_7_status', '1', 0),
(9079, 0, 'weight', 'weight_7_rate', '999999:50000', 0),
(9078, 0, 'weight', 'weight_sort_order', '2', 0),
(9077, 0, 'weight', 'weight_status', '1', 0),
(9076, 0, 'weight', 'weight_tax_class_id', '0', 0),
(3377, 0, 'free', 'free_total', '50000', 0),
(9277, 0, 'config', 'config_image_product_height', '228', 0),
(9276, 0, 'config', 'config_image_product_width', '228', 0),
(9275, 0, 'config', 'config_image_popup_height', '700', 0),
(9274, 0, 'config', 'config_image_popup_width', '700', 0),
(9273, 0, 'config', 'config_image_thumb_height', '500', 0),
(9272, 0, 'config', 'config_image_thumb_width', '500', 0),
(9271, 0, 'config', 'config_image_category_height', '80', 0),
(9270, 0, 'config', 'config_image_category_width', '80', 0),
(9269, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(9268, 0, 'config', 'config_logo', 'catalog/source/logo_yensaodangkhaicangio.png', 0),
(9267, 0, 'config', 'config_return_status_id', '2', 0),
(9265, 0, 'config', 'config_affiliate_mail', '1', 0),
(9266, 0, 'config', 'config_return_id', '0', 0),
(9264, 0, 'config', 'config_affiliate_id', '4', 0),
(9262, 0, 'config', 'config_affiliate_auto', '1', 0),
(9263, 0, 'config', 'config_affiliate_commission', '5', 0),
(9261, 0, 'config', 'config_affiliate_approval', '0', 0),
(9260, 0, 'config', 'config_stock_checkout', '1', 0),
(9259, 0, 'config', 'config_stock_warning', '1', 0),
(9258, 0, 'config', 'config_stock_display', '1', 0),
(9257, 0, 'config', 'config_order_mail', '1', 0),
(9256, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(9255, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(9254, 0, 'config', 'config_order_status_id', '1', 0),
(9253, 0, 'config', 'config_checkout_id', '5', 0),
(9252, 0, 'config', 'config_checkout_guest', '1', 0),
(9251, 0, 'config', 'config_cart_weight', '1', 0),
(9250, 0, 'config', 'config_api_id', '1', 0),
(9249, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(9248, 0, 'config', 'config_account_mail', '1', 0),
(9247, 0, 'config', 'config_account_id', '3', 0),
(9246, 0, 'config', 'config_login_attempts', '5', 0),
(9245, 0, 'config', 'config_customer_price', '0', 0),
(9244, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(9243, 0, 'config', 'config_customer_group_id', '1', 0),
(9242, 0, 'config', 'config_customer_online', '0', 0),
(9238, 0, 'config', 'config_voucher_max', '1000', 0),
(9241, 0, 'config', 'config_tax_customer', 'shipping', 0),
(9240, 0, 'config', 'config_tax_default', 'shipping', 0),
(9239, 0, 'config', 'config_tax', '0', 0),
(9237, 0, 'config', 'config_voucher_min', '1', 0),
(9236, 0, 'config', 'config_review_mail', '0', 0),
(9235, 0, 'config', 'config_review_guest', '1', 0),
(9234, 0, 'config', 'config_review_status', '1', 0),
(9233, 0, 'config', 'config_limit_admin', '20', 0),
(9232, 0, 'config', 'config_product_description_length', '100', 0),
(9231, 0, 'config', 'config_product_limit', '15', 0),
(9230, 0, 'config', 'config_product_count', '0', 0),
(9229, 0, 'config', 'config_weight_class_id', '2', 0),
(9228, 0, 'config', 'config_length_class_id', '1', 0),
(9227, 0, 'config', 'config_currency_auto', '1', 0),
(9226, 0, 'config', 'config_currency', 'VND', 0),
(9225, 0, 'config', 'config_admin_language', 'en', 0),
(9224, 0, 'config', 'config_language', 'en', 0),
(9223, 0, 'config', 'config_zone_id', '3780', 0),
(9222, 0, 'config', 'config_country_id', '230', 0),
(9221, 0, 'config', 'config_layout_id', '4', 0),
(9220, 0, 'config', 'config_template', 'default', 0),
(9219, 0, 'config', 'config_meta_keyword', 'yến sào, yến thô, yến tươi', 0),
(9216, 0, 'config', 'config_comment', '', 0),
(9217, 0, 'config', 'config_meta_title', 'Yến Sào Đăng Khải Cần Giờ  - Sự lựa chọn thông minh của người tiêu dùng', 0),
(9218, 0, 'config', 'config_meta_description', 'Chuyên cung cấp các sản phẩm về Yến sào, Yến Đảo, Yến Tươi', 0),
(9212, 0, 'config', 'config_telephone', '0862682727', 0),
(9213, 0, 'config', 'config_fax', '', 0),
(9214, 0, 'config', 'config_image', 'catalog/source/logo_yensaodangkhaicangio.png', 0),
(9215, 0, 'config', 'config_open', 'Từ thứ 2 đến thứ 7. Từ 8h đến 17h30', 0),
(9211, 0, 'config', 'config_email', 'yensaodangkhai@gmail.com', 0),
(9209, 0, 'config', 'config_address', '34/3 Duyên Hải , KP Miễu Nhì , TT Cần Thạnh , Cần Giờ , TP.HCM', 0),
(9210, 0, 'config', 'config_geocode', '10.40308, 106.95608', 0),
(9207, 0, 'config', 'config_name', 'Yến Sào Đăng Khải Cần Giờ', 0),
(9203, 0, 'config', 'config_facebook_fanpage', 'http://facebook.com/tintuc.online.net', 0),
(9204, 0, 'config', 'config_yahoo_id', 'a:2:{s:2:"id";s:14:"dinhcongtritri";s:6:"depart";s:10:"Kinh Doanh";}', 1),
(9205, 0, 'config', 'config_skype_id', 'a:2:{s:2:"id";s:14:"dinhcongtritri";s:6:"depart";s:10:"Kinh Doanh";}', 1),
(9206, 0, 'config', 'config_video_embed', '&lt;iframe src=&quot;https://player.vimeo.com/video/124280959?autoplay=1&amp;loop=1&amp;title=0&amp;byline=0&amp;portrait=0&quot; width=&quot;360&quot; height=&quot;203&quot; frameborder=&quot;0&quot; webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;', 0),
(8728, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(8729, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0),
(9208, 0, 'config', 'config_owner', 'Michael', 0),
(9083, 0, 'weight', 'weight_8_rate', '999999:100000', 0),
(9084, 0, 'weight', 'weight_8_status', '1', 0),
(9085, 0, 'weight', 'weight_5_rate', '999999:25000.00', 0),
(9086, 0, 'weight', 'weight_5_status', '0', 0),
(9313, 0, 'config', 'config_error_display', '1', 0),
(9314, 0, 'config', 'config_error_log', '1', 0),
(9315, 0, 'config', 'config_error_filename', 'error.log', 0),
(9316, 0, 'config', 'config_google_analytics', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shop`
--

CREATE TABLE IF NOT EXISTS `oc_shop` (
`shop_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oc_shop`
--

INSERT INTO `oc_shop` (`shop_id`, `position`, `address`, `sort_order`, `date_added`, `date_modified`, `status`) VALUES
(1, 'Quận 1', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL Kim Cương: 200 Lê Thánh Tôn, Quận 1 (0168 3106907)&lt;br&gt;&lt;/li&gt;&lt;li&gt;DL Yến Nhã Hằng Ngân: 456 Trần Hưng Đạo Q1 (xxx.xxx.xxx)&lt;/li&gt;&lt;li&gt;DL Nguyễn Bỉnh Khiêm (Toản): 25/86 Nguyễn Bỉnh Khiêm, Quận 1(0932128866)&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 10, '2015-05-10 16:13:52', '2015-05-11 02:15:45', 1),
(2, 'Quận 2', '&lt;p&gt;&lt;ol&gt;&lt;li&gt;DL Thông : 130 Vũ Tông Phan , P . An Phú , Q2 . (0942467878 )&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/p&gt;', 0, '2015-05-10 16:20:52', '2015-05-11 02:03:43', 1),
(3, 'Quận 3', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, '2015-05-10 16:32:30', '2015-05-11 02:04:18', 0),
(4, 'Quận 4', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;PCC HỘI NHẬP: 230 Đường số 48, F.5.Q.4&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space: pre;&quot;&gt;	&lt;/span&gt;&amp;nbsp;(0913 662633)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 1, '2015-05-11 01:18:35', '2015-05-11 02:13:36', 1),
(6, 'Quận 5', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL Thuỷ : 303/20 Trần &amp;nbsp;Bình Trọng , F4 , Q5 (0903943562)&lt;/li&gt;&lt;li&gt;DL Võ : 194 Nguyễn Biểu ,F2, Q5 (0918766500)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 11, '2015-05-11 02:05:14', '2015-05-11 02:15:55', 1),
(7, 'Quận 7', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Dl Lý Lan : 57 Đường số 15 , P.Tân Kiểng , Quận 7 ( 0989519981 – 0907010015)&lt;/li&gt;&lt;li&gt;DL XUÂN : 07 Nam thông, 2B, Phường Tân Phú, Quận 7(0903 808782)&lt;/li&gt;&lt;li&gt;DL HUỲNH TẤN PHÁT ( LIÊN):1701A Huỳnh Tấn Phát, P .Phú Mỹ, Quận 7(0906 588080)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 12, '2015-05-11 02:07:11', '2015-05-11 02:16:02', 1),
(8, 'Quận 8', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL TUYỀN : 219 Ba Đình, Quận 8, TP Hồ Chí Minh (0938 690663&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space: pre;&quot;&gt;	&lt;/span&gt;)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:07:59', '2015-05-11 02:08:04', 1),
(9, 'Quận 10', '&lt;p&gt;&lt;ol&gt;&lt;li&gt;DL Vũ : 212 Lý Thường Kiệt , P14 , Q10 . (0909179133)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/p&gt;', 0, '2015-05-11 02:08:26', '0000-00-00 00:00:00', 1),
(10, 'Quận 11', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;PCC ĐẦM SEN : 277 MINH PHỤNG, F.2, &lt;b&gt;Q.11&lt;/b&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; (0907943404)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:08:43', '2015-05-11 02:08:52', 1),
(11, 'Quận 12', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL HẠNH :30H1DD10 Tân Hưng Thuận, Quận 12 (0989 225711)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:09:14', '2015-05-11 02:09:23', 1),
(12, 'Quận Bình Thạnh', '&lt;p&gt;&lt;ol&gt;&lt;li&gt;DL PHAN ĐĂNG LƯU : 20/13 PHAN ĐĂNG LƯU, F6, Q. BÌNH THẠNH (0906277848)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/p&gt;', 0, '2015-05-11 02:09:51', '0000-00-00 00:00:00', 1),
(13, 'Quận Tân Phú', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;PCC ĐỒNG TÂM : 967 LŨY BÁN BÍCH, F. TÂN THÀNH, Q. TÂN PHÚ&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space: pre;&quot;&gt;	&lt;/span&gt;(0918173918)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:10:17', '2015-05-11 02:10:36', 1),
(14, 'Quận Bình Tân', '&lt;p&gt;&lt;ol&gt;&lt;li&gt;DL KIỆT:Chung cư Lê Thành,113/39 An DươngVương, Quận BìnhTân (0949 627979)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/p&gt;', 0, '2015-05-11 02:10:59', '0000-00-00 00:00:00', 1),
(15, 'Nhà Bè', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL THUỐC SỐ 35 :81 Lê Văn Lương, Ấp 5, Phước Kiểng, Nhà Bè (0933 918450)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:11:17', '2015-05-11 02:11:26', 1),
(16, 'Long An', '&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;DL Long An : số 15 khu 2 , quốc lộ 50 , Thị trấn Cần Đước , Tỉnh Long An ( 0939583433)&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;', 0, '2015-05-11 02:11:45', '2015-05-11 02:11:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'Còn hàng'),
(8, 1, 'Đặt hàng trước'),
(5, 1, 'Hết hàng'),
(6, 1, '2-3 ngày');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(11, 'Thuế', 'thuế', '2015-01-24 23:56:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(88, 5, 'Thuế GTGT', '5.0000', 'P', '2015-01-24 23:55:53', '2015-01-24 23:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(131, 11, 88, 'payment', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_topic`
--

CREATE TABLE IF NOT EXISTS `oc_topic` (
`topic_id` int(11) NOT NULL,
  `category_topic_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oc_topic`
--

INSERT INTO `oc_topic` (`topic_id`, `category_topic_id`, `title`, `description`, `content`, `status`, `sort_order`, `image`, `date_added`, `date_modified`) VALUES
(12, 4, 'Yến sào hầm đuôi heo', 'Món này dùng nóng. Thích hợp để bồi bổ cho người ốm hoặc các em học sinh đang trong mùa thi.', '&lt;p&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;1. Nguyên liệu:&lt;/strong&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Để làm món&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;yến sào hầm đuôi heo&lt;/strong&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&amp;nbsp;này, các bạn cần chuẩn bị những vật liệu sau:&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;– 10g tổ yến&amp;nbsp;(Khoảng 1 tai yến)&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;– 500g đuôi heo&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;– 3 trái bắp non&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;– 2 củ cà rốt&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/yen-sao-ham-duoi-heo.jpg&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;2. Cách thực hiện món yến sào hầm đuôi heo&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 1: Sơ chế&lt;/strong&gt;&lt;br&gt;– Làm sạch Tổ Yến (xem phần hướng dẫn&amp;nbsp;&lt;a href=&quot;http://www.yensaobattran.com/cach-lam-sach-to-yen.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot; style=&quot;color: rgb(67, 67, 67);&quot;&gt;cách làm sạch Tổ Yến&lt;/a&gt;).&lt;br&gt;– Đuôi heo rửa sạch và làm sạch lông và chặt khúc.&lt;br&gt;– Bắp non và cà rốt rửa sạch, cắt khúc.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 2&lt;/strong&gt;: Nấu sôi nước và cho đuôi heo, gia vị vào hầm. Khi đuôi heo gần mềm thì cho thêm bắp và cà rốt vào hầm đến khi chín mềm.&lt;br&gt;&lt;strong&gt;Bước 3&lt;/strong&gt;: Cho tổ yến sào vào và nấu thêm 15 phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;3. Thưởng thức:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;– Món này dùng nóng. Thích hợp để bồi bổ cho người ốm hoặc các em học sinh đang trong mùa thi.&lt;br&gt;– Tốt nhất là ăn trước khi đi ngủ để cơ thể có thể hấp thu trọn vẹn chất dinh dưỡng từ tổ yến sào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài món ăn trên, các bạn có thể tham khảo thêm các món ăn bổ dưỡng khác như yến sào ninh táo đỏ, cháo gà tổ yến.&lt;br&gt;&lt;strong&gt;Chúc các bạn có những món ăn ngon!&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, 'catalog/cachchebien/yen-sao-ham-duoi-heo.jpg', '2015-05-11 21:48:47', '0000-00-00 00:00:00'),
(13, 4, 'Chè tổ yến hạt sen', 'Cùng với món chè tổ yến chưng đường phèn, chè tổ yến hạt sen mang lại món ăn hấp dẫn. Cách làm cũng tương tự.', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong style=&quot;line-height: 1.4em;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/che-to-yen-hat-sen.jpg&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong style=&quot;line-height: 1.4em;&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong style=&quot;line-height: 1.4em;&quot;&gt;1. Nguyên liệu:&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;– 1&amp;nbsp;tổ yến&lt;br&gt;– 50g hạt sen&lt;br&gt;– Đường phèn vừa ăn&lt;br&gt;– 1 chén nước đầy&lt;br&gt;– 2 lát gừng mỏng&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&amp;nbsp;2. Cách làm món chè tổ yến hạt sen&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Bước 1:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Làm sạch tổ yến&amp;nbsp;(đối với yến thô)&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đối với tổ yến đã làm sạch: rửa sạch, ngâm nở mềm từ 20 – 30 phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Bước 2:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Nếu hạt sen tươi thì lột vỏ, sử dụng cây tăm xuyên bỏ tim hột sen, rửa sạch.&lt;br&gt;Hạt sen khô thì ngâm trong nước nóng khoảng 1-2g rồi mở lên cho khi mềm là vớt ra.&lt;br&gt;Gừng non gọt vỏ, cắt lát mỏng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Bước 3:&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;Cho yến đã ngâm nở mềm vào tô, thêm hạt sen, gừng, một chén nước vào tô.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hấp cách thủy khoảng 20 phút cho đến khi hạt sen chín mềm, sau đó cho đường phèn&amp;nbsp; nêm vừa ăn. (Hạt sen có thể nấu riêng rồi cho vào sau).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nếu chưng bằng nồi chưng yến tự động, thời gian chưng khoảng 90 phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;strong&gt;3. Thưởng thức.&lt;/strong&gt;&lt;br&gt;Lấy món chè tổ yến hạt sen&amp;nbsp;ra bát, có thể dùng nóng hay lạnh đều rất ngon có tác dụng tăng cường sức khỏe, tăng sức đề kháng, bổ phổi, đẹp da, giúp ngủ ngon. Một tổ bạn có thể dùng 2-3 lần, nên dùng mỗi tối hoặc cách ngày.&lt;br&gt;Ngoài món cách chế biến món chè yến trên, chúng ta có thể kết hợp tổ yến, đường phèn, hạt sen, bạch quả, táo tàu để làm món&amp;nbsp;chè tổ yến thập cẩm.&lt;/p&gt;', 1, 0, 'catalog/cachchebien/che-to-yen-hat-sen.jpg', '2015-05-11 21:50:31', '0000-00-00 00:00:00'),
(14, 4, 'Yến chưng đường phèn', 'Yến chưng đường phèn là món ăn cơ bản, đầu tiên để bạn có thể sử dụng chế biến tiếp các món ăn bổ dưỡng và phong phú khác từ yến sào', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;Sau khi chưng yến sào với đường phèn xong, bạn sử dụng yến đã chưng trộn vào các thực phẩm khác, rồi tiến hành chưng thêm 5 phút. Sẽ có được những món ăn bổ dưỡng và đảm bảo độ giòn ngon của từng sợi yến.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trước hết, bạn hãy tìm hiểu cách chưng đường phèn từ Yến Sào&amp;nbsp;Nhã Hằng Ngân&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/chungduongphen.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Nguyên Liệu:&lt;br&gt;&lt;/strong&gt;&lt;br&gt;10 gr tổ yến đã qua sơ chế. Sử dụng cho từ 2 – 3 người.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đường phèn liều lượng tùy thích.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Gừng (tùy theo khẩu vị.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nước để nguội ( để rút ngắn thời gian chưng các bạn có thể cho trực tiếp nước sôi )&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Cách thực hiện:&lt;/strong&gt;&lt;br&gt;Tổ yến sau khi mua về: Nếu là yến thô (còn nguyên tổ) chúng ta cần phải làm sạch lông và tạp chất ( xem thêm phần hướng dẫn cách làm sạch lông yến). Nếu là yến đã qua sơ chế, tinh chế ( yến đã làm sạch lông ), chúng ta nên ngâm yến vào nước khoảng 20 phút rồi đổ bỏ nước đã ngâm, vắt khô yến.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Cách chưng:&lt;/strong&gt;&amp;nbsp;Cho 10 gr tổ yến đã làm sạch vào nồi chưng của Yến Sào Nhã Hằng Ngân, sau đó cho nước khoảng xâm xấp so với yến, cắm điện chưng trong 15 phút sau đó cho đường và gừng vào, lấy muỗng khấy đều&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Gia vị:&lt;/strong&gt;&amp;nbsp;Chưng thêm 5 – 10 phút nữa, đến khi kiểm tra thấy yến đã đạt được độ mềm cần thiết ( theo ý thích tùy mỗi người), tắt lửa lấy chén yến ra ăn nóng hay để nguội rồi bỏ vào tủ lạnh cho người thích ăn lạnh , có thể thêm 2 lát gừng để khử mùi tanh và thêm phần thơm ngon cho chén yến.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Như vậy là chúng ta đã có ngay 1 món ăn vừa ngon lại vừa bổ dưỡng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Lưu ý :&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Không nên chưng quá lâu so với thời gian trong bảng đã quy định (tổ yến có thể bị nhão, mềm làm mất hương vị đặc trưng của tổ yến).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Các bạn có thể chia tổ yến đã chưng chín ra thành nhiều phần nhỏ, cất vào tủ lạnh ăn trong vòng 1 tuần, cách ăn yến sào tốt nhất là khi bụng đói hoặc trước khi đi ngủ 1h để các chất trong tổ yến có thể thấm thấu vào cơ thể chúng ta 1 cách nhanh và trọn vẹn nhất.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tổ yến phải ăn thường mỗi ngày hoặc cách 1 ngày với một lượng nhỏ như vậy thì hiệu quả sẽ tốt hơn là ăn nhiều nhưng vài ba bữa hay cả tuần mới ăn 1 lần.&lt;/p&gt;', 1, 0, 'catalog/cachchebien/chungduongphen.jpg', '2015-05-11 21:51:38', '0000-00-00 00:00:00'),
(15, 4, 'Chè Yến thập cẩm', 'Chè Yến thập cẩm với món chè yến thập cẩm là sự tổng hợp từ những loại quả, hạt như hạt sen, táo đỏ, bạch quả…', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;khi kết hợp với yến sào tạo thành món ăn không chỉ bổ dưỡng mà còn là một món ăn thích hợp cho mọi thành viên trong gia đình bạn. Bạn và những thành viên trong gia đình có thể thưởng thức món chè yến thập cẩm trước khi đi ngủ khoảng một tiếng để có một giấc ngủ ngon.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Nguyên Liệu:&lt;/span&gt;&lt;br&gt;&lt;/strong&gt;&lt;br&gt;Yến sào khô: 15 gram, đủ sử dụng cho 4 – 5 người.&lt;br&gt;Hạt sen:15 hạt&lt;br&gt;Đường phèn: 20 gram. Điều chỉnh tùy vào sở thích&lt;br&gt;Táo đỏ: 15 trái&lt;br&gt;Bạch quả: 15 hạt&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách làm món chè tổ yến thập cẩm:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/168-yenthapcam.jpg&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Sau khi chuẩn bị xong nguyên liệu, các bạn thực hiên theo các bước sau:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 1:&lt;/strong&gt;&amp;nbsp;Rửa sạch hạt sen, bạch quả và táo đỏ rồi tiến hành luộc riêng cho tới khi mềm. Thông thường thời gian luộc sẽ từ 15 – 20 phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 2:&lt;/strong&gt;&amp;nbsp;Tiến hành chưng yến sào với đường phèn theo như hướng dẫn ở phần ” khởi đầu “. Đối với món chè, lượng nước cần sẽ nhiều hơn so với những món ăn khác, nên khi chưng yến sào với đường phèn, bạn có thể diều chỉnh lượng nước nhiều hơn, cho ngập gấp 2 hoặc 3 lần so với yến. Tổng thời gian chưng yến từ 30 – 40 phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 3:&lt;/strong&gt;&amp;nbsp;Khi nồi yến đã chưng được 20 phút, bạn cho các loại quả, hạt đã luộc mềm cộng thêm đường phèn rồi khuấy nhẹn và chưng thêm 10 – 20 phút để hòa quyện hương vị giữa các loại nguyên liệu vào nhau.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 4:&lt;/strong&gt;&amp;nbsp;Bạn có thể dùng nóng hoặc lạnh đối với món chè tổ yến thập cẩm.&lt;br&gt;Món chè yến này có tác dụng bổ dưỡng cao, làm tăng cường sức dẻo dai, giúp cơ thể cường tráng, kích thích tiêu hóa, giúp an thần, và có thể chữa được bệnh ho.&lt;/p&gt;', 1, 0, 'catalog/cachchebien/168-yenthapcam.jpg', '2015-05-11 21:52:42', '0000-00-00 00:00:00'),
(16, 4, 'Súp cua yến sào', 'Đối với phụ nữ mang thai thì dinh dưỡng là vấn đề quan trọng vì đây là cơ sở cho sự phát triển khỏe mạnh, thông minh của trẻ cũng như là thể trạng của mẹ sau khi sinh. ', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Với những thành phần tự nhiên có trong tổ yến, sẽ cung cấp cơ thể của mẹ và bé nguồn dưỡng chất quý giá. Và với món ăn “súp cua yến sào” sẽ là một món ăn bổ dưỡng và sẽ làm phong phú thêm thực đơn hàng ngày dành cho các mẹ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Nguyên liệu:&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;Yến sào khô: 5 gram tổ yến đã làm sạch.&lt;br&gt;Càng cua: 3 càng cua.&lt;br&gt;Nấm đông cô, 2 muỗng bột bắp, thịt dăm bông.&lt;br&gt;2 chén nước dùng gà.&lt;br&gt;Bí ngô (đỏ), bắp Mỹ&lt;br&gt;Với lượng yến sử dụng là 5 gram sẽ đủ cho bạn sử dụng một lần, các loại thực phẩm, gia vị khác có thể điều chỉnh để phù hợp với lượng dùng của mỗi người.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/che-bien-mon-sup-cua-yen-sao-700x525-600x400.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Thực hiện&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;&lt;strong&gt;Bước 1:&lt;/strong&gt;&amp;nbsp;Yến sào ngâm nở và làm sạch và chưng theo hướng dẫn trong phần “khởi đầu”.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Với món súp cua yến sào là món ăn cần độ sệt vậy nên lượng nước khi chưng không cần nhiều, với lượng nước chỉ cần đủ ngập sợi yến. Và là món mặn nên khi chưng yến không sử dụng đường phèn, thay vào đó là các gia vị mặn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 2:&lt;/strong&gt;&amp;nbsp;Luộc càng cua chín để nguội, bóc vỏ.&amp;nbsp;Nấm đông cô ngâm nở mềm cắt thành 1/3.&lt;br&gt;Bí đỏ gọt vỏ luộc chín mềm rồi vớt ra ngâm trong nước lạnh 3 phút sau đó đánh nhuyễn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 3:&lt;/strong&gt;&amp;nbsp;Cho 2 chén nước dùng gà đun sôi, cho bắp Mỹ vào đun tiếp 3 phút.&lt;br&gt;Cho tiếp bí đỏ vào khuấy đều. Cho tiếp nấm đông cô, dăm bông, thịt cua vào.&lt;br&gt;Sau đó nêm bột canh cho vừa.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 4:&lt;/strong&gt;&amp;nbsp;Khi hỗn hợp sôi đều pha 2 muỗng bột bắp vào với 1/2 chén nước.&lt;br&gt;Cho vào nồi khuấy đều đến khi súp trông nồi sánh lại.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Bước 5:&lt;/strong&gt;&amp;nbsp;Cho súp ra tô, xếp 3 càng cua đã bóc vỏ lên mặt. Cho tổ yến đã chưng lên và kết hợp dùng với ngò và tiêu theo sở thích.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Với món “&lt;strong&gt;súp cua yến sào&lt;/strong&gt;” sẽ bổ sung các dưỡng chất cần thiết cho sức khỏe của mẹ và sự phát triển của bé.&lt;br&gt;Ngoài ra, còn chống trầm cảm, giảm lo âu, mệt mỏi cho mẹ bầu.&lt;/p&gt;', 1, 0, 'catalog/cachchebien/che-bien-mon-sup-cua-yen-sao-700x525-600x400.jpg', '2015-05-11 21:53:41', '0000-00-00 00:00:00'),
(17, 4, 'Cháo yến sào', 'Trẻ em từ 1 tuổi có thể bắt đầu sử dụng yến sào, và cách chế biến được nhiều bà mẹ sử dụng đó là nấu cháo tổ yến cho bé.', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;Cháo tổ yến là một món ăn được chế biến đơn giản và trẻ giễ ăn, giễ hấp thụ nhất.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Bài viết sau từ Yến Sào Nhã Hằng Ngân&amp;nbsp;sẽ hướng dẫn bạn cách nấu cháo tổ yến cho bé.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài yến sào, thì nguồn nguyên liệu cần thiết để chế biến cháo tổ yến cho trẻ cũng rất gần gũi với các bà nội trợ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/170-pic_7480.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Nguyên liệu cần chuẩn bị:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Yến khô tinh chế: từ 2 – 3 gram tùy vào nhu cầu của trẻ trong từng giai đoạn.&lt;br&gt;1 chén cháo đã nấu sẵn, cháo thịt bằm hoặc cháo gà.&lt;br&gt;Gia vị phù hợp với bé.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách thực hiện:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Tiến hành chưng yến sào theo hướng dẫn ở bước “khởi đầu”. Vì đây là món ăn cần độ sệt nên khi chưng sử dụng lượng ít nước, sao cho nước vừa ngập sợi yến. Khi chưng không dùng đường phèn, vì đây là món ăn mặn nên các mẹ có thể cho gia vị theo sở thích của trẻ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Múc cháo nóng ra chén, cho yến sào đã chưng sẵn, thêm gia vị để phù hợp với trẻ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Lưu ý:&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;Không kết hợp việc nấu cháo và yến sào cùng một lúc, để không mất hương vị riêng của yến sào.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Nên làm lượng vừa đủ cho mỗi lần ăn của trẻ.&lt;br&gt;Loại sản phẩm phù hợp sử dụng cho món cháo là dòng sản phẩm bạch yến tinh chế.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Cho trẻ ăn nóng để đảm báo hương vị của món ăn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài ra, cháo tổ yến cũng là món ăn phù hợp cho người già, người suy nhược cơ thể và tai biến nặng cần lượng protein và dưỡng chất để lấy lại sức khỏe.&lt;/p&gt;', 1, 0, 'catalog/cachchebien/170-pic_7480.jpg', '2015-05-11 21:55:22', '0000-00-00 00:00:00'),
(18, 4, 'Yến sào hầm sữa tươi', 'Từ trước đến nay, hầu hết phụ nữ ai cũng đều biết đến công dụng làm đẹp da của sữa tươi. Hôm nay, nó được chế biến kết hợp với Yến sào tạo nên 1 món ăn không chỉ giàu dinh dưỡng,đặc biệt hữu ích cho công việc làm đẹp cho nữ giới.', '&lt;p&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Nguyên liệu:&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Trứng gà: 3 quả&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Sữa tươi: 50g&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Yến sào khô đã làm sạch 10 gram&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Gia vị theo sở thích từng người&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/tes-300x225.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px; text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách thực hiện:&lt;/strong&gt;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Đánh đều trứng gà, cho sữa tươi vào, lọc qua.Cho yến sào và gia vị vào sữa tươi, hột gà trộn đều lên, cho vào thố, chưng từ 30 – 40 phút là có thể dùng.Thưởng thức:Rất ngon khi dùng nóng.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, 'catalog/cachchebien/tes-300x225.png', '2015-05-11 21:56:45', '0000-00-00 00:00:00'),
(19, 4, 'Yến hầm bồ câu hoặc gà ác', 'Món ăn này bổ sung dưỡng chất cung cấp oxy và máu, giúp nuôi dưỡng làn da và cung cấp các dưỡng chất có tác dụng làm đẹp. Đặc biệt tốt cho các bà mẹ sau khi sinh', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong style=&quot;line-height: 1.4em;&quot;&gt;Nguyên liệu :&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;yến sào khô tinh chế : 5g&lt;br&gt;Bồ câu hoặc gà ác : 1 con&lt;br&gt;Táo đỏ , táo đen , nấm , đông cô&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px; text-decoration: underline;&quot;&gt;&lt;strong&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/cachchebien/yen-sao-ga-ac.png&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px; text-decoration: underline;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px; text-decoration: underline;&quot;&gt;&lt;strong&gt;Cách chế biến:&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Ngâm yến với nước ấm trong vòng 10 phút, vớt ra.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Bồ câu (hoặc gà ác) làm sạch, bỏ ruột, tẩm ướp gia vị, hầm mềm, thêm nấm trắng, táo đỏ, táo đen, xá xíu, kỳ tử, nấm đông cô.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Cho yến đã ngâm nở vào thố bồ câu (hoặc gà ác), chưng cách thủy thêm khoảng 30 phút cho đến khi sợi yến nở đều, có mùi thơm đặc trưng.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, 'catalog/cachchebien/yen-sao-ga-ac.png', '2015-05-11 22:01:27', '0000-00-00 00:00:00'),
(20, 3, 'Yến sào tăng cường sinh lực cho đàn ông', 'Yến sào có tác dụng bổ phổi, bổ huyết, thanh nhiệt, ổn định thần kinh trí nhớ ; dùng thường xuyên sẽ đẹp da, chống lão hoá, tăng tuổi thọ. Tiến sĩ Nguyễn Quang Phách cho biết yến sào còn được dùng trong một số bài thuốc chữa bệnh về dạ dày, hen, lao, tiểu', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Có người đặt câu hỏi&amp;nbsp;&lt;strong&gt;“vậy liệu thanh niên sử dụng yến sào có tốt không?”&lt;/strong&gt;. Không phải ngẫu nhiên mà yến sào trở thành món ăn của các vua chúa. Theo các nghiên cứu của y học phương đông cho thấy, đối với đàn ông thanh niên, yến sào kích thích tăng trưởng tế bào, tăng sức đề kháng cơ thể, giúp cơ thể dẻo dai, tăng cường khả năng sinh lý đàn ông.Yến sào giành cho những người muốn tẩm bổ cho thân thể khỏe mạnh và cường tráng… hay hơn nữa để đông con.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/9641481061_2387264ef8_o.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Vì thế mà Tần Thủy Hoàng bên Trung Quốc có trên 3000 cung nữ, và đã lấy món yến thay cơm hàng ngày; hay như vua Minh Mạng nước Việt Nam cũng lấy món yến làm món ăn thường nhật tẩm bổ, nên đã có tới 75 hoàng tử và 83 công chúa.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;strong&gt;Các món ăn yến sào thường dâng lên vua chúa tẩm bổ vào ban đêm:&lt;br&gt;&lt;/strong&gt;&lt;br&gt;–&amp;nbsp;&lt;strong&gt;Yến nhồi bồ câu&lt;/strong&gt;&amp;nbsp;(món ăn cho vua): Bồ câu ra ràng được làm sạch, bỏ nội tạng. Tổ yến đã chế biến, cước cá mập, nấm mèo, nấm hương được nhồi vào bụng bồ câu, chưng cách thuỷ cho nhừ. Rút xương bồ câu, vo tròn khối “thịt- yến” này và cho lên chảo rán vàng. Đây là món ăn “hàn”, nên phải giữ cho ấm bụng. Sách xưa ghi lại cách ăn yến như sau: Vào lúc 19 giờ, lên giường nằm, tĩnh tâm đến khoảng 20-21 giờ. Có người mang yến đã nấu kỹ để nguội, bón cho ăn trong tư thế nằm. Ăn xong tráng miệng bằng nước sôi để nguội rồi ngủ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;–&amp;nbsp;&lt;strong&gt;Chè yến&lt;/strong&gt;: Cho yến đã làm sạch, hạt sen, đậu xanh vào nồi; đổ nước vừa phải, đun sôi 30 phút. Sau đó cho đường phèn vào, đun sôi 15 phút nữa. Múc chè yến ra chén cho nguội. Ăn trước khi đi ngủ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;–&amp;nbsp;&lt;strong&gt;Súp yến&lt;/strong&gt;&amp;nbsp;(món ăn của người Trung Hoa): Yến đã chế biến nấu lẫn với cước cá mập, hạt sen, táo Tàu, tôm bóc vỏ, nấm mèo, nấm hương, gia vị đủ dùng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Xưa kia, yến sào là món ăn của vua chúa. Ngày nay, người bình thường cũng có thể thưởng thức món ăn bát trân này.&lt;/p&gt;', 1, 0, 'catalog/congdung/9641481061_2387264ef8_o.jpg', '2015-05-11 22:02:56', '0000-00-00 00:00:00'),
(21, 3, 'Yến sào, nguồn dinh dưỡng cho trẻ em', 'Trẻ em từ 07 tháng trở đi có thể sử dụng được các món ăn từ yến . Yến sào là nguồn dinh dưỡng rất tốt cho trẻ bị suy dinh dưỡng, biếng ăn, đêm ngủ không ngon giấc, trẻ mắc các chứng bệnh về phổi, viêm phế quản nên bổ sung yến đều đặn.', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&amp;nbsp;Trẻ em nếu dùng yến sào thường xuyên khoảng 70ml/ngày thì hệ thống miễn dịch và sức đề kháng cũng được cải thiện rất tốt.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/cho-be-an-yen-sao.jpg&quot; style=&quot;width: 548.34375px; height: 441.41671875px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;PGS.TS Nguyễn Thị Lâm, Phó viện trưởng Viện Dinh dưỡng quốc gia khẳng định:&amp;nbsp;&lt;strong&gt;“&lt;em&gt;Tổ Yến cung cấp nguồn dinh dưỡng quý giá cho trẻ em&lt;/em&gt;”&lt;/strong&gt;bởi tổ yến&amp;nbsp;giúp bổ sung protein, các loại acid amin và nhiều nguyên tố vi lượng quý giúp tăng cường hệ tiêu hóa của trẻ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài thành phần acid amin,&amp;nbsp;&lt;em&gt;yến sào&lt;/em&gt;&amp;nbsp;còn bổ sung thêm các khoáng chất cần thiết mà cơ thể bé thường bị thiếu như&amp;nbsp; Ca và Fe. Một số nguyên tố hiếm trong yến sào như Cr tuy có hàm lượng thấp nhưng rất quý giá trong kích thích tăng tiêu hóa hấp thu qua màng ruột.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Hàm lượng đạm cao, ít béo có trong yến sào rất tốt cho sự phát triển xương và giúp tăng cường khả năng miễn dịch của trẻ nhờ bản thân tổ yến chứa rất nhiều sắt.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chị Dung ở HN sau khi cho bé nhà 2 tuổi dùng Yến Sào Bát Trân được 2 tuần thì điện thoại vào khen :&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;em&gt;&lt;br&gt;&lt;strong&gt;“Trộm vía, bé nhà em dạo này ít bị bệnh vặt, ăn uống rất tốt, da dẻ bé lại hồng hào. Em rất vui, và sẽ giới thiệu với các mẹ trong cơ quan”.&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/cho-be-an-yen-sao2-1024x770.jpg&quot; style=&quot;width: 532.46875px; height: 400.391540527344px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đó thật sự là tin vui và cũng là sự khẳng định Yến Sào Bát Trân là nguồn dinh dưỡng cho các bé.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Đối với trẻ em đã đi học, các bà mẹ có thế cho bé ăn yến sào trong những mùa kiểm tra thi cử, vì các nguyên tố vi lượng có trong yến sào như Mn, Cu, Zn, Br rất có ích cho quá trình ổn định thần kinh và tăng cường trí nhớ của trẻ. Một số món ăn như&amp;nbsp; chè tổ yến hạt sen, haychè tổ yến chưng đường phèn là món ăn thích hợp cho bé.&lt;/p&gt;', 1, 0, 'catalog/congdung/cho-be-an-yen-sao.jpg', '2015-05-11 22:05:07', '0000-00-00 00:00:00');
INSERT INTO `oc_topic` (`topic_id`, `category_topic_id`, `title`, `description`, `content`, `status`, `sort_order`, `image`, `date_added`, `date_modified`) VALUES
(22, 3, 'Yến sào bổ dưỡng cho người già, người bệnh', 'Yến sào từ xưa đã được sử dụng như thực phẩm bổ dưỡng cho người già, người bệnh hoặc mới mổ.', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;Yến sào đặc biệt tốt cho người già, người cần hồi phục sức khỏe sau khi đau ốm, phẫu thuật, vì thành phần yến sào rất giàu Proline (5,27%), Axit aspartic (4,69%) là các chất rất quan trọng cho sự tăng trưởng mô và cơ, tái tạo tế bào. Từ đó, yến sào giúp tăng lượng hồng cầu trong máu, kích thích sinh trưởng tế bào, phục hồi các tế bào bị tổn thương và nhanh chóng hồi phục sức khỏe.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/yen-sao-tang-cuong-suc-khoe.jpg&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Yến sào là thực phẩm bổ dưỡng cho người bệnh, có tác dụng tăng cường hệ thống miễn dịch của cơ thể, tăng sức đề kháng giúp cải thiện chức năng tim và giảm huyết áp, làm sạch phổi và các cơ quan hô hấp, giảm ho, làm tan đờm, cải thiện chất lượng của lá lách. Đặc biệt yến sào cũng tăng cường chức năng thận, giải trừ độc tố trong máu, rất phù hợp cho những người thường xuyên sử dụng bia rượu và thuốc lá. Bên cạnh đó, yến sào giúp người già ăn ngon miệng hơn, tăng cường khả năng của hệ tiêu hóa, hệ thống miễn dịch.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;Đối với người bị bệnh tiểu đường , dùng Yến sào hàng ngày có thể giúp ổn định glucose máu vì trong yến sào có 4,56% Leucine và 2,04% Isoleucine giúp hỗ trợ điều chỉnh hàm lượng đường trong máu.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;br&gt;Ngoài ra, y học hiện đại nghiên cứu cho thấy Yến sào có tác dụng kích thích sinh trưởng tế bào bạch cầu giúp tăng cường kháng thể, thông qua những chất chống oxy hóa có trong yến sào giúp hỗ trợ điều trị ung thư và viêm nhiễm HIV/AIDS rất hiệu quả.&lt;br&gt;Người cao tuổi nếu dùng Yến sào đều đặn sẽ giúp bồi bổ cơ thể. Những món ăn hữu ích cho các cụ, có thể dùng hàng ngày như chè tổ yến hạt sen, chè tổ yến chưng đường phèn. Ngoài ra, quý khách có thể tham khảo thêm chuyên mục chế biến yến sào để biết thêm nhiều món ăn hơn.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, 'catalog/congdung/yen-sao-tang-cuong-suc-khoe.jpg', '2015-05-11 22:06:43', '0000-00-00 00:00:00'),
(23, 3, 'Yến sào đối với phụ nữ và làm đẹp', 'Theo thời gian, làn da phụ nữ trở nên mỏng hơn và dễ bị tổn thương. Lúc này chiếc áo tự nhiên và tuyệt đẹp của cơ thể trở nên chùng lại, thiếu sức sống và để lấy lại vẻ trẻ đẹp một cách toàn diện và giữ gìn nét thanh xuân cho mình thì nhiều chị em phụ nữ ', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Vậy với việc sử dụng yến sào mang lại những hiệu quả nào trong quá trình gìn giữ nét xuân?&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;Ngoài việc bồi bổ thể lực và trí lực, yến sào còn được nhiều người công nhận là một “ trợ tá đắc lực ” trong việc duy trì sức khỏe và sắc đẹp cho phụ nữ.&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/tri-nam-da-hieu-qua-600x400.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Tác dụng của yến sào trong việc làm đẹp&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Threonine là chất hình thành elastine và collagen giúp ngăn ngừa lão hóa, duy trì làn da tươi trẻ, giúp kéo dài nét thanh xuân cho chị em.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trong yến sào chỉ có đường tự nhiên galactose mà không chứa chất béo, có thể dùng mỗi ngày mà không sợ tăng cân.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Phụ nữ nếu ăn yến thường xuyên sẽ ít bị nổi mụn, tàn nhang, vết nám, hơn nữa còn có được làn da mịn màng, đặc biệt làm chậm quá trình lão hóa.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Yến sào chứa yếu tố tăng trưởng biểu bì: có tác dụng hỗ trợ thay mới các tế bào cũ giúp tế bào mới sản sinh, khiến làn da trở nên hồng hào, khỏe mạnh.&lt;/p&gt;', 1, 0, 'catalog/congdung/tri-nam-da-hieu-qua-600x400.jpg', '2015-05-11 22:08:29', '0000-00-00 00:00:00'),
(24, 3, 'Yến sào đối với người mang thai', 'Yến sào – Cung cấp dưỡng chất cần thiết cho sức khỏe của mẹ và sự phát triển của bé:', '&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;Tổ yến chứa nhiều protein và 18 loại axit amin, cùng với khoáng chất Magie, Sắt, Kẽm, thiết yếu cho sức khỏe bà bầu. Trong giai đoạn mang thai, nhu cầu dưỡng chất cơ thể cần thiết để cung cấp cho bản thân mẹ và thai nhi tăng cao, với việc một lượng lớn acid amin và khoáng chất sẽ giúp bổ sung nhu cầu này.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;line-height: 1.4em;&quot;&gt;&lt;img src=&quot;http://local.local/yensaodangkhaicangio/image/catalog/congdung/ba-bau.jpg&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Chứa hàm lượng vi chất cao bao gồm các axit amin không thay thế được và rất cần cho cơ thể như: cystein, phenylanin, tyrosin, acginin, trypto-phan, histidin,…, các Vitamin B, C, E, PP, … các khoáng chất như: Natri, Kali, Canxi, Sắt, Photpho, Mg… và các nguyên tố vi lượng khác…đây là những nguyên tố, dưỡng chất quan trọng trong quá trình hình thành và phát triển thai nhi và với sự cung cấp tổng hợp từ yến sào tạo điều kiện cho thai nhi phát triển, sức khỏe bà mẹ ổn định.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Trong khi Mg giữ vai trò quan trọng trong việc tổng hợp và ổn định các phân tử AND hình thành cấu trúc xương bào thai, thì Sắt quan trọng cho sự phát triển của não bộ, Canxi giúp bé đạt được tỉ trọng xương tối ưu,…&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài ra, tổ yến còn chứa axit amin Glycine giúp giảm nguy cơ tiền kinh giật ở bà mẹ mang thai, giảm nguy cơ khuyết tật ống thần kinh ở thai nhi, thúc đẩy quá trình phát triển toàn diện cho trẻ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;Theo nghiên cứu những người mẹ khi mang thai được ăn yến thì em bé sinh ra khỏe mạnh, không mắc các bệnh về phổi và cơ quan hô hấp.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; line-height: 1.4em; color: rgb(51, 51, 51); font-family: Helvetica, Meiryo, arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, 'catalog/congdung/ba-bau.jpg', '2015-05-11 22:09:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
`upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1067, 'topic_id=15', 'che-yen-thap-cam'),
(1062, 'category_topic_id=4', 'cach-che-bien'),
(1063, 'category_topic_id=3', 'cong-dung'),
(1068, 'topic_id=16', 'sup-cua-yen-sao'),
(1021, 'information_id=4', 'gioi-thieu'),
(930, 'information_id=5', 'dieu-khoan-dien-kien'),
(929, 'information_id=3', 'chinh-sach-bao-mat'),
(1074, 'topic_id=22', 'yen-sao-bo-duong-cho-nguoi-gia-nguoi-benh'),
(1075, 'topic_id=23', 'yen-sao-doi-voi-phu-nu-va-lam-dep'),
(1076, 'topic_id=24', 'yen-sao-doi-voi-nguoi-mang-thai'),
(1073, 'topic_id=21', 'yen-sao-nguon-dinh-duong-cho-tre-em'),
(1071, 'topic_id=19', 'yen-ham-bo-cau-hoac-ga-ac'),
(1072, 'topic_id=20', 'yen-sao-tang-cuong-sinh-luc-cho-dan-ong'),
(1058, 'news_id=9', 'chao-to-yen-co-thuc-su-tot-cho-suc-khoe…'),
(1059, 'news_id=10', 'ban-thuong-lam-gi-khi-be-bieng-an'),
(1060, 'news_id=11', 'cach-nhan-biet-yen-sao-gia-va-that'),
(1061, 'news_id=12', 'khuyen-mai-tu-ngay-1-4-2015-den-ngay-30-6-2015'),
(1069, 'topic_id=17', 'chao-yen-sao'),
(1070, 'topic_id=18', 'yen-sao-ham-sua-tuoi'),
(928, 'information_id=7', 'chuyen-hang'),
(1028, 'category_id=68', 'yen-tho'),
(1056, 'news_id=7', 'ban-co-thuc-su-hieu-dung-gia-tri-yen-sao'),
(1057, 'news_id=8', 'cham-soc-da-voi-yen-sao-nen-hay-khong'),
(1064, 'topic_id=12', 'yen-sao-ham-duoi-heo'),
(1065, 'topic_id=13', 'che-to-yen-hat-sen'),
(1066, 'topic_id=14', 'yen-chung-duong-phen'),
(1023, 'category_id=67', 'san-pham'),
(1029, 'category_id=69', 'yen-thanh-pham'),
(1030, 'category_id=70', 'yen-tuoi'),
(1031, 'product_id=77', 'yen-tuoi-loai-50g'),
(1033, 'product_id=78', 'yen-tuoi-loai-100g'),
(1037, 'product_id=79', 'yen-soi-loai-10g'),
(1040, 'product_id=80', 'yen-soi-loai-20g'),
(1039, 'product_id=81', 'yen-soi-loai-50g'),
(1042, 'product_id=82', 'yen-soi-loai-100g'),
(1043, 'product_id=83', 'yen-khong-soi-loai-10g'),
(1045, 'product_id=84', 'yen-khong-soi-loai-20g'),
(1047, 'product_id=85', 'yen-khong-soi-loai-50g'),
(1049, 'product_id=86', 'yen-khong-soi-loai-100g'),
(1051, 'product_id=87', 'yen-khong-soi-loai-200g'),
(1052, 'product_id=88', 'yen-rut-long-loai-100g'),
(1053, 'product_id=89', 'yen-tho-loai-50g'),
(1055, 'product_id=90', 'yen-tho-loai-100g');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'quocviet.inc', '5cba7d0f0cea0bd631530b108de1f1e31cfdd4e2', '2e66349e3', 'Michael', 'Tran', 'quocviet.inc@gmail.com', '', '', '127.0.0.1', 1, '2015-01-23 09:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:192:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"custom/filemanager";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:18:"dashboard/customer";i:20;s:13:"dashboard/map";i:21;s:16:"dashboard/online";i:22;s:15:"dashboard/order";i:23;s:16:"dashboard/recent";i:24;s:14:"dashboard/sale";i:25;s:13:"design/banner";i:26;s:13:"design/layout";i:27;s:23:"extension/categorytopic";i:28;s:14:"extension/feed";i:29;s:19:"extension/installer";i:30;s:22:"extension/modification";i:31;s:16:"extension/module";i:32;s:14:"extension/news";i:33;s:17:"extension/openbay";i:34;s:17:"extension/payment";i:35;s:18:"extension/shipping";i:36;s:14:"extension/shop";i:37;s:15:"extension/topic";i:38;s:15:"extension/total";i:39;s:16:"feed/google_base";i:40;s:19:"feed/google_sitemap";i:41;s:15:"feed/openbaypro";i:42;s:20:"localisation/country";i:43;s:21:"localisation/currency";i:44;s:21:"localisation/geo_zone";i:45;s:21:"localisation/language";i:46;s:25:"localisation/length_class";i:47;s:21:"localisation/location";i:48;s:25:"localisation/order_status";i:49;s:26:"localisation/return_action";i:50;s:26:"localisation/return_reason";i:51;s:26:"localisation/return_status";i:52;s:25:"localisation/stock_status";i:53;s:22:"localisation/tax_class";i:54;s:21:"localisation/tax_rate";i:55;s:25:"localisation/weight_class";i:56;s:17:"localisation/zone";i:57;s:19:"marketing/affiliate";i:58;s:17:"marketing/contact";i:59;s:16:"marketing/coupon";i:60;s:19:"marketing/marketing";i:61;s:14:"module/account";i:62;s:16:"module/affiliate";i:63;s:20:"module/amazon_button";i:64;s:13:"module/banner";i:65;s:17:"module/bestseller";i:66;s:15:"module/carousel";i:67;s:15:"module/category";i:68;s:12:"module/embed";i:69;s:14:"module/fanpage";i:70;s:15:"module/featured";i:71;s:13:"module/filter";i:72;s:22:"module/google_hangouts";i:73;s:11:"module/html";i:74;s:18:"module/information";i:75;s:13:"module/latest";i:76;s:11:"module/news";i:77;s:16:"module/pp_button";i:78;s:15:"module/pp_login";i:79;s:16:"module/skincolor";i:80;s:16:"module/slideshow";i:81;s:14:"module/special";i:82;s:12:"module/store";i:83;s:14:"module/support";i:84;s:12:"module/topic";i:85;s:20:"module/vqmod_manager";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:23:"payment/amazon_checkout";i:100;s:24:"payment/authorizenet_aim";i:101;s:24:"payment/authorizenet_sim";i:102;s:21:"payment/bank_transfer";i:103;s:22:"payment/bluepay_hosted";i:104;s:24:"payment/bluepay_redirect";i:105;s:14:"payment/cheque";i:106;s:11:"payment/cod";i:107;s:17:"payment/firstdata";i:108;s:24:"payment/firstdata_remote";i:109;s:21:"payment/free_checkout";i:110;s:22:"payment/klarna_account";i:111;s:22:"payment/klarna_invoice";i:112;s:14:"payment/liqpay";i:113;s:14:"payment/nochex";i:114;s:15:"payment/paymate";i:115;s:16:"payment/paypoint";i:116;s:13:"payment/payza";i:117;s:26:"payment/perpetual_payments";i:118;s:18:"payment/pp_express";i:119;s:18:"payment/pp_payflow";i:120;s:25:"payment/pp_payflow_iframe";i:121;s:14:"payment/pp_pro";i:122;s:21:"payment/pp_pro_iframe";i:123;s:19:"payment/pp_standard";i:124;s:14:"payment/realex";i:125;s:21:"payment/realex_remote";i:126;s:22:"payment/sagepay_direct";i:127;s:22:"payment/sagepay_server";i:128;s:18:"payment/sagepay_us";i:129;s:24:"payment/securetrading_pp";i:130;s:24:"payment/securetrading_ws";i:131;s:14:"payment/skrill";i:132;s:19:"payment/twocheckout";i:133;s:28:"payment/web_payment_software";i:134;s:16:"payment/worldpay";i:135;s:16:"report/affiliate";i:136;s:25:"report/affiliate_activity";i:137;s:22:"report/affiliate_login";i:138;s:24:"report/customer_activity";i:139;s:22:"report/customer_credit";i:140;s:21:"report/customer_login";i:141;s:22:"report/customer_online";i:142;s:21:"report/customer_order";i:143;s:22:"report/customer_reward";i:144;s:16:"report/marketing";i:145;s:24:"report/product_purchased";i:146;s:21:"report/product_viewed";i:147;s:18:"report/sale_coupon";i:148;s:17:"report/sale_order";i:149;s:18:"report/sale_return";i:150;s:20:"report/sale_shipping";i:151;s:15:"report/sale_tax";i:152;s:17:"sale/custom_field";i:153;s:13:"sale/customer";i:154;s:20:"sale/customer_ban_ip";i:155;s:19:"sale/customer_group";i:156;s:10:"sale/order";i:157;s:14:"sale/recurring";i:158;s:11:"sale/return";i:159;s:12:"sale/voucher";i:160;s:18:"sale/voucher_theme";i:161;s:15:"setting/setting";i:162;s:13:"setting/store";i:163;s:16:"shipping/auspost";i:164;s:17:"shipping/citylink";i:165;s:14:"shipping/fedex";i:166;s:13:"shipping/flat";i:167;s:13:"shipping/free";i:168;s:13:"shipping/item";i:169;s:23:"shipping/parcelforce_48";i:170;s:15:"shipping/pickup";i:171;s:19:"shipping/royal_mail";i:172;s:12:"shipping/ups";i:173;s:13:"shipping/usps";i:174;s:15:"shipping/weight";i:175;s:11:"tool/backup";i:176;s:14:"tool/error_log";i:177;s:11:"tool/upload";i:178;s:12:"total/coupon";i:179;s:12:"total/credit";i:180;s:14:"total/handling";i:181;s:16:"total/klarna_fee";i:182;s:19:"total/low_order_fee";i:183;s:12:"total/reward";i:184;s:14:"total/shipping";i:185;s:15:"total/sub_total";i:186;s:9:"total/tax";i:187;s:11:"total/total";i:188;s:13:"total/voucher";i:189;s:8:"user/api";i:190;s:9:"user/user";i:191;s:20:"user/user_permission";}s:6:"modify";a:192:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"custom/filemanager";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:18:"dashboard/customer";i:20;s:13:"dashboard/map";i:21;s:16:"dashboard/online";i:22;s:15:"dashboard/order";i:23;s:16:"dashboard/recent";i:24;s:14:"dashboard/sale";i:25;s:13:"design/banner";i:26;s:13:"design/layout";i:27;s:23:"extension/categorytopic";i:28;s:14:"extension/feed";i:29;s:19:"extension/installer";i:30;s:22:"extension/modification";i:31;s:16:"extension/module";i:32;s:14:"extension/news";i:33;s:17:"extension/openbay";i:34;s:17:"extension/payment";i:35;s:18:"extension/shipping";i:36;s:14:"extension/shop";i:37;s:15:"extension/topic";i:38;s:15:"extension/total";i:39;s:16:"feed/google_base";i:40;s:19:"feed/google_sitemap";i:41;s:15:"feed/openbaypro";i:42;s:20:"localisation/country";i:43;s:21:"localisation/currency";i:44;s:21:"localisation/geo_zone";i:45;s:21:"localisation/language";i:46;s:25:"localisation/length_class";i:47;s:21:"localisation/location";i:48;s:25:"localisation/order_status";i:49;s:26:"localisation/return_action";i:50;s:26:"localisation/return_reason";i:51;s:26:"localisation/return_status";i:52;s:25:"localisation/stock_status";i:53;s:22:"localisation/tax_class";i:54;s:21:"localisation/tax_rate";i:55;s:25:"localisation/weight_class";i:56;s:17:"localisation/zone";i:57;s:19:"marketing/affiliate";i:58;s:17:"marketing/contact";i:59;s:16:"marketing/coupon";i:60;s:19:"marketing/marketing";i:61;s:14:"module/account";i:62;s:16:"module/affiliate";i:63;s:20:"module/amazon_button";i:64;s:13:"module/banner";i:65;s:17:"module/bestseller";i:66;s:15:"module/carousel";i:67;s:15:"module/category";i:68;s:12:"module/embed";i:69;s:14:"module/fanpage";i:70;s:15:"module/featured";i:71;s:13:"module/filter";i:72;s:22:"module/google_hangouts";i:73;s:11:"module/html";i:74;s:18:"module/information";i:75;s:13:"module/latest";i:76;s:11:"module/news";i:77;s:16:"module/pp_button";i:78;s:15:"module/pp_login";i:79;s:16:"module/skincolor";i:80;s:16:"module/slideshow";i:81;s:14:"module/special";i:82;s:12:"module/store";i:83;s:14:"module/support";i:84;s:12:"module/topic";i:85;s:20:"module/vqmod_manager";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:23:"payment/amazon_checkout";i:100;s:24:"payment/authorizenet_aim";i:101;s:24:"payment/authorizenet_sim";i:102;s:21:"payment/bank_transfer";i:103;s:22:"payment/bluepay_hosted";i:104;s:24:"payment/bluepay_redirect";i:105;s:14:"payment/cheque";i:106;s:11:"payment/cod";i:107;s:17:"payment/firstdata";i:108;s:24:"payment/firstdata_remote";i:109;s:21:"payment/free_checkout";i:110;s:22:"payment/klarna_account";i:111;s:22:"payment/klarna_invoice";i:112;s:14:"payment/liqpay";i:113;s:14:"payment/nochex";i:114;s:15:"payment/paymate";i:115;s:16:"payment/paypoint";i:116;s:13:"payment/payza";i:117;s:26:"payment/perpetual_payments";i:118;s:18:"payment/pp_express";i:119;s:18:"payment/pp_payflow";i:120;s:25:"payment/pp_payflow_iframe";i:121;s:14:"payment/pp_pro";i:122;s:21:"payment/pp_pro_iframe";i:123;s:19:"payment/pp_standard";i:124;s:14:"payment/realex";i:125;s:21:"payment/realex_remote";i:126;s:22:"payment/sagepay_direct";i:127;s:22:"payment/sagepay_server";i:128;s:18:"payment/sagepay_us";i:129;s:24:"payment/securetrading_pp";i:130;s:24:"payment/securetrading_ws";i:131;s:14:"payment/skrill";i:132;s:19:"payment/twocheckout";i:133;s:28:"payment/web_payment_software";i:134;s:16:"payment/worldpay";i:135;s:16:"report/affiliate";i:136;s:25:"report/affiliate_activity";i:137;s:22:"report/affiliate_login";i:138;s:24:"report/customer_activity";i:139;s:22:"report/customer_credit";i:140;s:21:"report/customer_login";i:141;s:22:"report/customer_online";i:142;s:21:"report/customer_order";i:143;s:22:"report/customer_reward";i:144;s:16:"report/marketing";i:145;s:24:"report/product_purchased";i:146;s:21:"report/product_viewed";i:147;s:18:"report/sale_coupon";i:148;s:17:"report/sale_order";i:149;s:18:"report/sale_return";i:150;s:20:"report/sale_shipping";i:151;s:15:"report/sale_tax";i:152;s:17:"sale/custom_field";i:153;s:13:"sale/customer";i:154;s:20:"sale/customer_ban_ip";i:155;s:19:"sale/customer_group";i:156;s:10:"sale/order";i:157;s:14:"sale/recurring";i:158;s:11:"sale/return";i:159;s:12:"sale/voucher";i:160;s:18:"sale/voucher_theme";i:161;s:15:"setting/setting";i:162;s:13:"setting/store";i:163;s:16:"shipping/auspost";i:164;s:17:"shipping/citylink";i:165;s:14:"shipping/fedex";i:166;s:13:"shipping/flat";i:167;s:13:"shipping/free";i:168;s:13:"shipping/item";i:169;s:23:"shipping/parcelforce_48";i:170;s:15:"shipping/pickup";i:171;s:19:"shipping/royal_mail";i:172;s:12:"shipping/ups";i:173;s:13:"shipping/usps";i:174;s:15:"shipping/weight";i:175;s:11:"tool/backup";i:176;s:14:"tool/error_log";i:177;s:11:"tool/upload";i:178;s:12:"total/coupon";i:179;s:12:"total/credit";i:180;s:14:"total/handling";i:181;s:16:"total/klarna_fee";i:182;s:19:"total/low_order_fee";i:183;s:12:"total/reward";i:184;s:14:"total/shipping";i:185;s:15:"total/sub_total";i:186;s:9:"total/tax";i:187;s:11:"total/total";i:188;s:13:"total/voucher";i:189;s:8:"user/api";i:190;s:9:"user/user";i:191;s:20:"user/user_permission";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(5,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1'),
(2, '1000'),
(7, '1'),
(8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(7, 1, 'Bịch', 'bịch'),
(8, 1, 'Hộp', 'hộp');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(125, 230, 0, 6, '2015-05-03 02:25:03', '0000-00-00 00:00:00'),
(110, 230, 0, 5, '2015-01-24 23:12:19', '0000-00-00 00:00:00'),
(124, 230, 0, 7, '2015-05-03 02:24:57', '0000-00-00 00:00:00'),
(127, 230, 0, 8, '2015-05-03 02:25:14', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
 ADD PRIMARY KEY (`affiliate_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
 ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
 ADD PRIMARY KEY (`category_id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_topic`
--
ALTER TABLE `oc_category_topic`
 ADD PRIMARY KEY (`category_topic_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_colorskin`
--
ALTER TABLE `oc_colorskin`
 ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
 ADD PRIMARY KEY (`customer_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
 ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
 ADD PRIMARY KEY (`location_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
 ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_marketinsg_news`
--
ALTER TABLE `oc_marketinsg_news`
 ADD PRIMARY KEY (`marketinsg_news_id`);

--
-- Indexes for table `oc_marketinsg_news_log`
--
ALTER TABLE `oc_marketinsg_news_log`
 ADD PRIMARY KEY (`marketinsg_news_log_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
 ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_news`
--
ALTER TABLE `oc_news`
 ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `oc_news_description`
--
ALTER TABLE `oc_news_description`
 ADD PRIMARY KEY (`news_description_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
 ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
 ADD PRIMARY KEY (`product_image_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
 ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
 ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
 ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shop`
--
ALTER TABLE `oc_shop`
 ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_topic`
--
ALTER TABLE `oc_topic`
 ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
 ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
 ADD PRIMARY KEY (`url_alias_id`), ADD KEY `query` (`query`), ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `oc_category_topic`
--
ALTER TABLE `oc_category_topic`
MODIFY `category_topic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_colorskin`
--
ALTER TABLE `oc_colorskin`
MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_marketinsg_news`
--
ALTER TABLE `oc_marketinsg_news`
MODIFY `marketinsg_news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_marketinsg_news_log`
--
ALTER TABLE `oc_marketinsg_news_log`
MODIFY `marketinsg_news_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_news`
--
ALTER TABLE `oc_news`
MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_news_description`
--
ALTER TABLE `oc_news_description`
MODIFY `news_description_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2523;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=660;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=472;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9317;
--
-- AUTO_INCREMENT for table `oc_shop`
--
ALTER TABLE `oc_shop`
MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `oc_topic`
--
ALTER TABLE `oc_topic`
MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1077;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4225;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
