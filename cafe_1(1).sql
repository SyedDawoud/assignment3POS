-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2017 at 05:15 PM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_log`
--

CREATE TABLE `bill_log` (
  `Bill_id` int(11) NOT NULL,
  `Consumer_id` int(11) NOT NULL,
  `Meal_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Customer X brought Meal Y of quantity Z';

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Name`, `Username`, `Password`) VALUES
(1, 'Jane Smith', 'JaneSmith', '1'),
(123, 'ali shah', 'ali@ali.com', 'ali');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill`
--

CREATE TABLE `customer_bill` (
  `billtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `products` varchar(100) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_bill`
--

INSERT INTO `customer_bill` (`billtime`, `id`, `products`, `payment`) VALUES
('2017-05-21 11:28:17', 99, 'Chsse Burger,Beef Kebab,', 18),
('2017-05-21 11:28:17', 99, 'Chicken Pokemon,', 0),
('2017-05-21 11:28:17', 99, 'Chicken Pokemon,', 0),
('2017-05-21 11:28:17', 99, 'Chicken Pokemon,Coca Seven,', 0),
('2017-05-21 11:28:17', 99, 'Chicken Pokemon,Coca Seven,', 8),
('2017-05-21 11:28:17', 99, 'Coca Seven,My Special,', 21),
('2017-05-21 11:28:17', 99, 'Coca Seven,', 6),
('2017-05-21 11:28:17', 99, 'Chsse Burger:1,Beef Kebab:1,Chicken Pokemon:1,Coca Seven:1,My Special:1,Pasta Pan:1,Brown Bread:1,', 26),
('2017-05-21 11:34:36', 1, 'Chsse Burger:1,', 4),
('2017-05-21 11:54:52', 1, 'Beef Kebab:1,Chicken Pokemon:1,', 12),
('2017-05-21 12:51:06', 1, 'Chsse Burger:2,Beef Kebab:3,', 38),
('2017-05-21 12:52:32', 1, 'Chsse Burger:1,', 4),
('2017-05-21 12:53:46', 1, 'Coca Seven:2,My Special:3,', 18),
('2017-05-21 15:04:21', 1, 'Coca Seven:2,Brown Bread:1,', 7);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Job_Description` varchar(100) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_id`, `Name`, `username`, `Job_Description`, `Password`) VALUES
(1, 'John Doe', 'JohnDoe', 'Manager', 'admin'),
(3, 'Trick', 'trick@trick.com', 'Employee', 'trick'),
(8, 'abc', 'test@test.com', 'Manager', '1234'),
(111, 'Dark Soul', '12@gm.om', 'Employee', 'ewq');

-- --------------------------------------------------------

--
-- Table structure for table `logaction`
--

CREATE TABLE `logaction` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logaction`
--

INSERT INTO `logaction` (`id`, `user`, `action`, `time_stamp`) VALUES
(2, 'AS', '123', '2017-05-20 14:34:42'),
(3, 'AS', '123', '2017-05-20 17:42:02'),
(4, 'AS', '123', '2017-05-20 17:42:33'),
(5, 'AS', '123', '2017-05-20 17:43:35'),
(6, 'AS', '123', '2017-05-21 11:34:30'),
(7, 'AS', '123', '2017-05-21 11:43:01'),
(8, 'AS', '123', '2017-05-21 12:00:50'),
(9, 'AS', '123', '2017-05-21 12:01:03'),
(10, 'AS', '123', '2017-05-21 12:01:24'),
(11, 'AS', '123', '2017-05-21 12:02:59'),
(12, 'AS', '123', '2017-05-21 12:50:58'),
(13, 'AS', '123', '2017-05-21 12:53:38'),
(14, 'AS', '123', '2017-05-21 14:46:54'),
(15, 'AS', '123', '2017-05-21 14:47:56'),
(16, 'AS', '123', '2017-05-21 14:48:30'),
(17, 'AS', '123', '2017-05-21 14:48:59'),
(18, 'AS', '123', '2017-05-21 14:49:44'),
(19, 'AS', '123', '2017-05-21 14:50:43'),
(20, 'AS', '123', '2017-05-21 14:50:50'),
(21, 'AS', '123', '2017-05-21 14:51:04'),
(22, 'AS', '123', '2017-05-21 14:53:00'),
(23, 'AS', '123', '2017-05-21 14:54:27'),
(24, 'AS', '123', '2017-05-21 14:56:16'),
(25, 'AS', '123', '2017-05-21 14:56:40'),
(26, 'AS', '123', '2017-05-21 14:57:17'),
(27, 'AS', '123', '2017-05-21 14:57:24'),
(28, 'AS', '123', '2017-05-21 14:57:52'),
(29, 'AS', '123', '2017-05-21 14:57:56'),
(30, 'AS', '123', '2017-05-21 14:57:56'),
(31, 'AS', '123', '2017-05-21 14:58:38'),
(32, 'AS', '123', '2017-05-21 14:59:12'),
(33, 'AS', '123', '2017-05-21 15:00:15'),
(34, 'AS', '123', '2017-05-21 15:03:11'),
(35, 'AS', '123', '2017-05-21 15:04:13'),
(36, 'AS', '123', '2017-05-21 15:05:42'),
(37, 'AS', '123', '2017-05-21 15:05:48'),
(38, 'AS', '123', '2017-05-21 15:06:27'),
(39, 'AS', '123', '2017-05-21 15:07:19'),
(40, 'AS', '123', '2017-05-21 15:14:13'),
(41, 'AS', '123', '2017-05-21 15:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `Log_id` int(11) NOT NULL,
  `Emp_id` int(11) NOT NULL,
  `Action` varchar(120) NOT NULL,
  `Time_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Manager_id` int(11) NOT NULL,
  `Manager_Title` varchar(100) NOT NULL,
  `Emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Manager_id`, `Manager_Title`, `Emp_id`) VALUES
(1, 'Cafe Owner', 1),
(8, 'abc', 8);

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `Meal_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Cost` int(10) NOT NULL,
  `Available_count` int(11) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Sold_Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`Meal_id`, `Name`, `Type`, `Description`, `Cost`, `Available_count`, `Image`, `Sold_Count`) VALUES
(4, 'Chsse Burger', 'Burger', 'Ola', 4, 1, 'cafe1/Chsse Burger/14702407_1148915558526229_7957152894511190880_n.jpg', 7),
(5, 'Beef Kebab', 'Beef', 'Good One', 10, 5, 'cafe1/Beef Kebab/Ash-Gre.png', 3),
(6, 'Chicken Pokemon', 'Chicken', 'CHicken Pokeball', 2, 6, 'cafe1/Chicken Pokemon/Untitled.png', 3),
(7, 'Coca Seven', 'Drink', 'Filled With Juicy Ice', 3, 5, 'cafe1/Coca Seven/Assassins_Creed_3_HD_Wallpaper.jpg', 5),
(8, 'My Special', 'Dessert', 'asdasdas', 4, 6, 'cafe1/My Special/2759.jpg', 4),
(9, 'Pasta Pan', 'Pasta', 'I like it', 2, 9, 'cafe1/Pasta Pan/710971.png', 1),
(10, 'Brown Bread', 'Appetizer', 'Crunchy', 1, 8, 'cafe1/Brown Bread/10390985_685550874914159_6328559319336819674_n.jpg', 2),
(11, 'Cheese Fryt', 'Burger', 'Tasty', 3, 11, 'cafe1/Cheese Fryt/14702407_1148915558526229_7957152894511190880_n.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_log`
--
ALTER TABLE `bill_log`
  ADD PRIMARY KEY (`Bill_id`),
  ADD KEY `Consumer_id` (`Consumer_id`),
  ADD KEY `Meal_id` (`Meal_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `logaction`
--
ALTER TABLE `logaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`Log_id`),
  ADD KEY `Emp_id` (`Emp_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_id`),
  ADD KEY `Emp_id` (`Emp_id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`Meal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logaction`
--
ALTER TABLE `logaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `Meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_log`
--
ALTER TABLE `bill_log`
  ADD CONSTRAINT `CustomerID_FK` FOREIGN KEY (`Consumer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MealFK` FOREIGN KEY (`Meal_id`) REFERENCES `meal` (`Meal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `EMPID_FK` FOREIGN KEY (`Emp_id`) REFERENCES `employees` (`Emp_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `empIDFK` FOREIGN KEY (`Emp_id`) REFERENCES `employees` (`Emp_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
