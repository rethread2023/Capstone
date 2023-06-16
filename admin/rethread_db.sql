-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2023 at 12:49 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rethread_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(12, 'Apparel'),
(13, 'Men'),
(14, 'Women'),
(15, 'Kids'),
(16, 'Jeans'),
(17, 'Upper');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(1, 345, '345354', 'Completed', 'CNY'),
(2, 346, '34565464', 'Completed', 'CNY'),
(3, 35, '876546', 'Completed', 'CNY'),
(4, 34, '3456546', 'Completed', 'CNY'),
(5, 55, '8765454', 'Completed', 'CNY'),
(6, 345, '345354', 'Completed', 'CNY'),
(7, 345, '345354', 'Completed', 'CNY'),
(8, 3457, '3453954', 'Completed', 'CNY'),
(9, 3457, '3453954', 'Completed', 'CNY'),
(10, 3457, '3453954', 'Completed', 'CNY'),
(11, 3457, '3453954', 'Completed', 'CNY'),
(12, 3457, '3453954', 'Completed', 'CNY'),
(13, 3457, '3453954', 'Completed', 'CNY'),
(14, 3457, '3453954', 'Completed', 'CNY'),
(15, 345, '345354', 'Completed', 'CNY'),
(16, 345, '345354', 'Completed', 'CNY'),
(17, 345, '345354', 'Completed', 'CNY'),
(18, 345, '345354', 'Completed', 'CNY'),
(19, 349895, '3453549', 'Completed', 'CNY'),
(20, 349895, '3453549', 'Completed', 'CNY'),
(21, 349895, '3453549', 'Completed', 'CNY'),
(22, 349895, '3453549', 'Completed', 'CNY'),
(23, 349895, '3453549', 'Completed', 'CNY'),
(24, 349895, '3453549', 'Completed', 'CNY'),
(25, 349895, '3453549', 'Completed', 'CNY'),
(26, 349895, '3453549', 'Completed', 'CNY'),
(27, 349895, '3453549', 'Completed', 'CNY'),
(28, 349895, '3453549', 'Completed', 'CNY'),
(29, 349895, '3453549', 'Completed', 'CNY'),
(30, 349895, '3453549', 'Completed', 'CNY'),
(31, 349895, '3453549', 'Completed', 'CNY'),
(32, 349895, '3453549', 'Completed', 'CNY'),
(33, 349895, '3453549', 'Completed', 'CNY'),
(34, 349895, '3453549', 'Completed', 'CNY'),
(35, 349895, '3453549', 'Completed', 'CNY'),
(36, 349895, '3453549', 'Completed', 'CNY'),
(37, 349895, '3453549', 'Completed', 'CNY'),
(38, 349895, '3453549', 'Completed', 'CNY'),
(41, 345, '345354', 'Completed', 'CNY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(62, 'Women Shirt Pink', 14, 95, 6, 'Elevate your wardrobe with our trendy pink women''s shirts!', 'Elevate your wardrobe with our trendy pink women''s shirts!', 'Photo (1).png'),
(63, 'Black Suit Jacket', 13, 80.45, 80, 'Shop our stylish collection of black suit jacket.', 'Shop our stylish collection of black suit jacket.', 'Photo (2).png'),
(64, 'White Sleeveless Woman', 14, 300, 300, 'Discover the perfect white sleeveless for any occasion!', 'Discover the perfect white sleeveless for any occasion!', 'Photo (3).png'),
(65, 'Man Black Suite', 13, 450, 80, 'Upgrade your look with our fashionable selection of Man Black Suite.', 'Upgrade your look with our fashionable selection of Man Black Suite.', 'Photo (4).png'),
(66, 'Man Blue T-Shirt', 13, 15.55, 1000, 'Top quality Man Blue T-Shirt', 'Top quality Man Blue T-Shirt', 'Photo (5).png'),
(67, 'Men''s Plaid Shirt', 13, 100, 250, 'Get ready to make a statement with our fabulous Men''s Plaid Shirt', 'Get ready to make a statement with our fabulous Men''s Plaid Shirt', 'Photo (6).png'),
(68, 'Mini Pants Woman', 14, 80.6, 45, 'Discover the perfect Mini Pants Woman for any occasion!', 'Discover the perfect Mini Pants Woman for any occasion!', 'Photo (7).png'),
(69, 'Long Black Pants Man', 13, 300, 900, 'Make a powerful impression with our sophisticated Long Black Pants Man', 'Make a powerful impression with our sophisticated Long Black Pants Man', 'Photo (8).png'),
(70, 'Brown Long Skirt', 14, 18.4, 78, 'Complete your professional look with our sleek and stylish Brown Long Skirt', 'Complete your professional look with our sleek and stylish Brown Long Skirt', 'Photo (9).png'),
(71, 'Pretty Black Dress Woman', 14, 95, 98, 'Get ready to make a statement with our fabulous Pretty Black Dress Woman', 'Get ready to make a statement with our fabulous Pretty Black Dress Woman', 'Photo (10).png'),
(72, 'Long Red Pants Woman', 14, 5599, 80, 'Complete your professional look with our sleek and stylish Long Red Pants Woman', 'Complete your professional look with our sleek and stylish Long Red Pants Woman', 'Photo (11).png'),
(74, 'Short White Pants Girl', 14, 4700, 90, 'Make a powerful impression with our sophisticated Short White Pants Girl', 'Make a powerful impression with our sophisticated Short White Pants Girl', 'Photo (12).png'),
(75, 'White Lingerie', 14, 15.45, 300, 'Get ready to turn heads with this stunning White Lingerie', 'Get ready to turn heads with this stunning White Lingerie\r\n', 'Photo (13).png'),
(76, 'White Shirt Summer', 12, 45, 125, 'Stay cool and comfortable in our collection of lightweight activewear.', 'Stay cool and comfortable in our collection of lightweight activewear.', 'Photo (14).png'),
(77, 'White Plain T-Shirt', 12, 250, 2, 'Get summer-ready with our collection of breezy and colorful sundresses.', 'Get summer-ready with our collection of breezy and colorful sundresses.', 'Photo (15).png'),
(78, 'Black Bomber Jacket', 12, 35.56, 50, 'Step out in style with our collection of fashionable.', 'Step out in style with our collection of fashionable.', 'Photo (16).png'),
(79, 'Cold Red Dress', 14, 25.45, 80, 'Add a touch of glamour to your outfit with these Cold Red Dress', 'Add a touch of glamour to your outfit with these Cold Red Dress', 'Photo (17).png'),
(80, 'Kids Summer One Set', 15, 40.5, 60, 'Celebrating the joy of childhood with fashion that is as unique and special as your child', 'Celebrating the joy of childhood with fashion that is as unique and special as your child', 'Photo (18).png'),
(81, 'Children Short Pants Red', 15, 30.56, 90, 'From tiny tots to trendy kids, we have the perfect styles for every little fashionista.', 'From tiny tots to trendy kids, we have the perfect styles for every little fashionista.', 'Photo (19).png'),
(82, 'Kids Pants White', 15, 49.99, 800, 'Cuteness overload! These tiny outfits will melt your heart.', 'Cuteness overload! These tiny outfits will melt your heart.', 'Photo (20).png'),
(83, 'Floral Shirt for Little Girl', 15, 58, 34, 'Let your child''s imagination soar with our whimsical and fun-filled clothing.', 'Let your child''s imagination soar with our whimsical and fun-filled clothing.\r\n', 'Photo (21).png'),
(84, 'Plain Shirt Unisex', 12, 300, 45, 'Stay cool and comfortable in our collection of lightweight activewear', 'Stay cool and comfortable in our collection of lightweight activewear', 'Photo (22).png'),
(85, 'Mini Skirt Jeans', 16, 36.78, 230, 'Stay cozy and stylish in our trendy with Mini Skirt Jeans', 'Stay cozy and stylish in our trendy with Mini Skirt Jeans', 'Photo (23).png'),
(86, 'Women Casual Elegant', 13, 46.24, 245, 'Women Casual Elegant Print Dress For Party', 'Women Casual Elegant Print Dress For Party', 'Photo (24).png'),
(87, 'Fitness Pants Yoga ', 12, 28.56, 78, 'Upgrade your wardrobe with this chic and versatile Fitness Pants Yoga ', 'Upgrade your wardrobe with this chic and versatile Fitness Pants Yoga ', 'Photo (25).png'),
(88, 'Mens Shirt Drey', 13, 75, 600, 'Get ready to turn heads with this stunning Mens Shirt Drey ', 'Get ready to turn heads with this stunning Mens Shirt Drey ', 'Photo (26).png'),
(89, 'White Shirt Unisex 1', 12, 350, 45, 'Complete your look with this trendy White Shirt Unisex', 'Complete your look with this trendy White Shirt Unisex', 'Photo (27).png'),
(90, 'Grey Men Women T-Shirt ', 12, 450, 30, 'Complete your look with this trendy Grey Men Women T-Shirt ', 'Complete your look with this trendy Grey Men Women T-Shirt ', 'Photo (28).png'),
(91, 'Mens Shirt Plain', 13, 60, 254, 'Stay cool and comfortable in our collection of lightweight activewear', 'Stay cool and comfortable in our collection of lightweight activewear', 'Photo (29).png'),
(92, 'Beautiful Little Dress', 15, 14, 400, 'Create precious memories with our stylish and adorable outfits for kids.', 'Create precious memories with our stylish and adorable outfits for kids.', 'Photo (30).png'),
(93, 'Vest for Unisex', 12, 120, 5, 'Make a statement with this bold and vibrant graphic tee.', 'Make a statement with this bold and vibrant graphic tee.', 'Photo (31).png'),
(94, 'Black T-Shirt Unisex Summer', 12, 10, 100, 'Stay cool and comfortable in our collection of lightweight activewear', 'Stay cool and comfortable in our collection of lightweight activewear', 'Photo (32).png'),
(95, 'Purple Girl T-Shirt', 14, 78, 45, 'Shop our stylish collection of Purple Girl T-Shirt', 'Shop our stylish collection of Purple Girl T-Shirt', 'Photo (33).png'),
(96, 'Black Metal Design T-shirt', 13, 1200, 80, 'Make a powerful impression with our sophisticated black Metal Design T-shirt', 'Make a powerful impression with our sophisticated black Metal Design T-shirt', 'Photo (34).png'),
(97, 'Cold Jacket Winter', 12, 30000, 5, 'Get ready to make a statement with our fabulous Cold Jacket Winter', 'Get ready to make a statement with our fabulous Cold Jacket Winter', 'Photo (35).png'),
(98, 'Denim Jeans Women', 16, 45000, 8, 'Upgrade your wardrobe with this chic and versatile denim pants', 'Upgrade your wardrobe with this chic and versatile denim pants', 'Photo (36).png');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(1, 1, 0, 25.59, '', 1),
(2, 1, 0, 25.59, '', 3),
(3, 1, 0, 25.59, '', 3),
(4, 1, 0, 25.59, '', 3),
(5, 1, 0, 25.59, '', 3),
(6, 1, 0, 25.59, '', 3),
(7, 1, 0, 25.59, '', 3),
(8, 1, 0, 25.59, '', 3),
(9, 1, 0, 25.59, '', 3),
(10, 1, 0, 25.59, '', 3),
(11, 1, 29, 25.59, '', 3),
(12, 1, 30, 25.59, '', 3),
(13, 1, 31, 25.59, '', 3),
(14, 1, 32, 25.59, '', 3),
(15, 1, 33, 25.59, '', 3),
(16, 1, 39, 25.59, 'Olivine Oil ', 3),
(17, 1, 40, 25.59, 'Olivine Oil ', 3),
(18, 2, 41, 2499.99, 'Dell XPS 13 2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(10, 'Passer 01', 'slider_1.jpg'),
(11, 'Passer 02', 'slider_2.jpg'),
(12, 'Passer 03', 'slider_3.jpg'),
(13, 'Passer 04', 'slider_4.jpg'),
(14, 'Passer 05', 'slider_5.jpg'),
(15, 'Passer 06', 'slider_6.jpg'),
(19, 'Passer 07', 'slider_10.png'),
(20, 'Passer 08', 'slider_11.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(5, 'admin', 'admin@gmail.com', 'password', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
