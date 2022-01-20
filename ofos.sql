-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 11:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `oid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`oid`, `name`, `price`, `qty`, `user`, `mid`) VALUES
(1, 'Fresh', 45, 1, 'harikesh@gmail.com', 6),
(2, 'Testy', 55, 3, 'harikesh@gmail.com', 7),
(3, 'Hyderabadi', 175, 1, 'harikesh@gmail.com', 5),
(4, 'Deli', 50, 1, 'harikesh@gmail.com', 4),
(6, 'Burger', 59, 1, 'panditprama@gmail.com', 2),
(7, 'Chiken', 400, 2, 'panditprama@gmail.com', 1),
(8, 'Burger', 120, 1, 'panditprama@gmail.com', 2),
(9, 'Burger', 120, 1, 'panditprama@gmail.com', 2),
(10, 'Fresh', 200, 1, 'panditprama@gmail.com', 6),
(11, 'Chiken', 690, 1, 'panditprama@gmail.com', 9),
(12, 'Chiken', 400, 1, 'panditprama@gmail.com', 1),
(13, 'Burger', 120, 1, 'panditprama@gmail.com', 2),
(14, 'Noodles', 150, 2, 'panditprama@gmail.com', 4),
(15, 'Chiken', 400, 1, 'panditprama@gmail.com', 1),
(16, 'Burger', 120, 1, 'panditprama@gmail.com', 2),
(17, 'Fish', 550, 1, 'panditprama@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `category`) VALUES
(1, 'Veg'),
(2, 'Non Veg'),
(3, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `image`, `category`, `price`, `description`) VALUES
(1, 'Chiken Curry', '../User/upload/chikenCurry.jpg', 'Non Veg', 400, 'Spicy n Testy'),
(2, 'Burger', '../User/upload/burger.jpg', 'Veg', 120, 'Testy n Delicious'),
(3, 'Fish Curry', '../User/upload/fishCurry.jpg', 'Non Veg', 550, 'Spicy n Testy'),
(4, 'Noodles', '../User/upload/Noodles.jpg', 'Veg', 150, 'Hot n Spciy'),
(5, 'Biryani', '../User/upload/Biryani.jpg', 'Non Veg', 370, 'Spicy n Testy'),
(6, 'Fresh Salad', '../User/upload/freshSalad.jpg', 'Veg', 200, 'Testy'),
(7, 'Testy Rolls', '../User/upload/testyRole.jpg', 'Veg', 250, 'Testy '),
(8, 'Sahi Paneer', '../User/upload/SahiPanir.jpg', 'Veg', 800, 'Hot n Spicy'),
(9, 'Chiken Tandoori', '../User/upload/chickenTandoori.jpg', 'Non Veg', 690, 'Hot n Spicy');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `or_id` int(11) NOT NULL,
  `ORDER_ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `TXN_AMOUNT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `mobile`, `address`, `password`) VALUES
(2, 'Prama Pandit', 'panditprama@gmail.com', '9856656004', 'Bharatpur-11,Chitwan', '08e81adb4bb115fd935b3d77150e039c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
