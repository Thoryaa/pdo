-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 مارس 2022 الساعة 22:15
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- بنية الجدول `product-class`
--

CREATE TABLE `product-class` (
  `id` int(11) NOT NULL,
  `name` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `product-info`
--

CREATE TABLE `product-info` (
  `id` int(11) NOT NULL,
  `product-name` varchar(170) NOT NULL,
  `old-price` double NOT NULL,
  `newprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `product-info`
--

INSERT INTO `product-info` (`id`, `product-name`, `old-price`, `newprice`) VALUES
(1, 'nME', 3553, 88),
(2, 'nME', 3553, 88),
(3, 'nME', 3553, 88),
(4, 'nME', 3553, 88),
(5, 'nME', 3553, 88),
(6, 'nME', 3553, 88),
(7, 'nME', 3553, 88);

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(170) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'thorya@gmail.com', '1234'),
(2, 'thorya@gmail.com', 'yy333'),
(3, 'bb]', 'nnn'),
(4, 'bb', 'nnn'),
(5, '$email', '$password'),
(6, '$email', '$password'),
(7, '$email', '$password'),
(8, 'b', 'vb3'),
(9, 'b', 'vb3'),
(10, 'b', 'vb3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product-class`
--
ALTER TABLE `product-class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product-info`
--
ALTER TABLE `product-info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product-class`
--
ALTER TABLE `product-class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product-info`
--
ALTER TABLE `product-info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
