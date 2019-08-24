-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 01, 1988 at 12:34 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Mobile` int(200) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Name`, `Email`, `Mobile`, `Feedback`) VALUES
('govind', 'govind@gmail.com', 2147483647, 'good'),
('govind', 'govind@gmail.com', 2147483647, 'good'),
('eerr', 'mihjere68@gmail.com', 722219147, 'jjjjjjjjjjjjjjjjjjj');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'gvn3586@gmail.com', '9565386679', 'Allahabad Mnnit', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(1, 1, 2000.00, '2016-11-09 23:55:41', '2016-11-09 23:55:41', '1'),
(2, 1, 7000.00, '2016-11-10 00:07:10', '2016-11-10 00:07:10', '1'),
(3, 1, 1061.00, '1988-01-01 01:59:25', '1988-01-01 01:59:25', '1'),
(4, 1, 3600.00, '1988-01-01 02:14:20', '1988-01-01 02:14:20', '1'),
(5, 1, 7989.00, '1988-01-01 02:21:32', '1988-01-01 02:21:32', '1'),
(6, 1, 12499.00, '1988-01-01 02:32:45', '1988-01-01 02:32:45', '1'),
(7, 1, 9500.00, '1988-01-01 02:33:09', '1988-01-01 02:33:09', '1'),
(8, 1, 12499.00, '1988-01-01 02:34:37', '1988-01-01 02:34:37', '1'),
(9, 1, 7800.00, '1988-01-01 02:35:02', '1988-01-01 02:35:02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 2, 1, 1),
(4, 2, 2, 1),
(5, 3, 6, 1),
(6, 4, 14, 3),
(7, 5, 13, 1),
(8, 5, 14, 1),
(9, 6, 10, 1),
(10, 7, 8, 1),
(11, 8, 10, 1),
(12, 9, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`, `image`) VALUES
(1, 'Dining Table', 'We Provide high quality wooden furnitures', 4000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1', '012.jpg'),
(2, 'Bed almirah', 'We Provide high quality wooden furnitures\r\n', 3000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1', '015.jpg'),
(3, 'Table computer', 'good suitable', 500.00, '2016-11-12 02:05:10', '2016-11-12 02:05:10', '0', '05.jpg'),
(4, 'Dining Table', 'good suitable', 3000.00, '2016-11-12 02:05:10', '2016-11-12 02:05:10', '0', '09.jpg'),
(5, 'Dining Table ', 'good suitable', 1500.00, '2016-11-12 00:00:00', '2016-11-13 00:00:00', '0', '01.jpg'),
(6, 'Cello Oscar Center Table (Sandalwood Brown) ', 'Product Dimensions: Length (32.03 inches), Width (17.10 inches), Height (19.85 inches)', 1061.00, '2016-11-18 05:26:17', '2016-11-18 05:26:17', '1', '017.jpg'),
(7, 'Royal Oak Disney Study Table computer', 'Product Dimensions: Length (32.03 inches), Width (17.10 inches), Height (19.85 inches)', 3500.00, '2016-11-24 06:20:17', '2016-11-24 06:26:17', '0', '03.jpg'),
(8, 'Bed almirah', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 9500.00, '2016-11-24 06:20:17', '2016-11-24 06:26:17', '0', '013.jpg'),
(9, 'Dining set (1+5) in Black Color ', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 10500.00, '2016-11-26 12:10:26', '2016-11-26 12:26:17', '1', '3.jpg'),
(10, 'Forzza Westin Queen Size Bed almirah', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 12499.00, '2016-11-26 12:10:26', '2016-11-26 12:26:17', '1', '014.jpg'),
(11, 'almirah new', '', 6700.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'pic1.jpg'),
(12, 'almirah bed', 'first one', 7800.00, '2016-11-16 00:00:00', '2016-11-03 00:00:00', '1', 'a1.jpg'),
(13, 'almirah new one', 'second one', 6789.00, '2016-11-25 00:00:00', '2016-11-29 00:00:00', '1', 'b2.jpg'),
(14, 'computer latest', 'computer table', 1200.00, '2016-11-30 00:00:00', '2016-11-11 00:00:00', '1', 'c1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(8, 'jeremiah', 'mihjere68@gmail.com', 'a83f35cfe90420d1b87efb4bb9a210aaab853eacda1dfed040e38cfb8b06295c'),
(9, 'jeremiah', 'moreenjr7@gmail.com', 'a83f35cfe90420d1b87efb4bb9a210aaab853eacda1dfed040e38cfb8b06295c');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
