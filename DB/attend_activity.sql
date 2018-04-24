-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2018 at 07:38 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_regis`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend_activity`
--

CREATE TABLE `attend_activity` (
  `code` int(8) NOT NULL,
  `regis_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` time NOT NULL,
  `created_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `activity_code` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attend_activity`
--

INSERT INTO `attend_activity` (`code`, `regis_code`, `created_time`, `created_date`, `activity_code`) VALUES
(1, '25610001', '02:34:37', '25/04/2018', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend_activity`
--
ALTER TABLE `attend_activity`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attend_activity`
--
ALTER TABLE `attend_activity`
  MODIFY `code` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
