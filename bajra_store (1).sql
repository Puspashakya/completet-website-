-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 09:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bajra_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(1, 'admin@gmail.com', 'Puspa', 'Shakya', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(75, 'airphone', 'no-brand', 'copy', 'strong airphone', 'asds', 'earphone.jpg', 25, 250),
(76, 'phone', 'Nobrand', 'copy', 'this is the product without the brand but durable', 'good', 'window_phone.png', 25, 15000),
(77, 'hard disk', 'dell', 'original', 'very good hard disk', 'best', 'hard_disk.jfif', 25, 10000),
(78, 'i-pad', 'apple', 'original', 'the best i-pad to the till generation', 'best', 'ipad-pro-12-.jfif', 5, 185000),
(79, 'keyboard', 'Nobrand', 'copy', 'good keyboard', 'good', 'keyboard1.png', 50, 1000),
(80, 'surface', 'microsoft', 'original', 'good laptop of microsoft', 'best', 'microsoft_surface.png', 5, 200000),
(81, 'mouse', 'Nobrand', 'high-copy', 'durable mouse', 'good', 'mouse1.png', 15, 250),
(82, 'pendrive', 'sandisk', 'original', 'very good pendrive', 'good', 'pendrive.jpg', 50, 1500),
(83, 'iphone', 'apple', 'original', 'best seller iphone', 'best', 'product-3.jpg', 5, 195000),
(84, 'iwatch', 'phone', 'original', 'good watch with many features', 'best', 'product-4.jpg', 10, 80000),
(85, 'Smart TV', 'Samsung', 'original', 'smart tv for smart people', 'bests', 'category-1.jpg', 5, 85000),
(86, 'induction', 'Baltra', 'original', 'very good oven', 'best', 'product-8.jpg', 50, 4800),
(87, 'calculator', 'efx', 'high-copy', 'good and recommended by the teacher', 'good and recommended by the teacher', 'product-7.jpg', 37, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
(251, 66, 1, 4, '2022-09-08', 0),
(252, 66, 1, 3, '2022-09-08', 0),
(253, 58, 1, 2, '2022-09-08', 0),
(254, 59, 1, 2, '2022-09-08', 0),
(255, 60, 89, 2, '2022-09-08', 0),
(256, 65, 89, 3, '2022-09-09', 0),
(257, 66, 1, 2, '2022-09-11', 0),
(258, 66, 1, 2, '2022-09-11', 0),
(259, 87, 1, 3, '2022-09-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('helo', 'helo@gmail.com', 'helo', 1, 'user', 'Koteshor'),
('helllo', 'a@gmail.com', '1234abcd', 87, 'hello', 'bansehor'),
('khatri', 'asma@gmail.com', 'asma12345', 89, 'asma', 'nagadesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
