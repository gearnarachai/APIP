-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2018 at 07:44 PM
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
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_code` int(8) NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_code`, `name`, `detail`, `start_date`, `end_date`) VALUES
(1, 'กิจกรรมวันคล้ายวันสถาปนาสถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน)', '“TPQI Day – พลิกโฉม สคช.” “ประเทศไทยก้าวไกล คนไทยมืออาชีพ”\r\nวันพฤหัสบดีที่ ๒๔ พฤษภาคม ๒๕๖๑ เวลา ๐๘.๓๐ – ๑๖.๐๐ น.\r\nณ ห้องแกรนด์ ไดมอนด์ บอลรูม ศูนย์การแสดงสินค้าและการประชุมอิมแพ็ค เมืองทองธานี นนทบุรี', '2018-04-01', '2018-04-01');

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

-- --------------------------------------------------------

--
-- Table structure for table `initial`
--

CREATE TABLE `initial` (
  `initial_id` int(1) NOT NULL,
  `initial_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `initial`
--

INSERT INTO `initial` (`initial_id`, `initial_name`) VALUES
(1, 'นาย'),
(2, 'นางสาว'),
(3, 'นาง');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `regis_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `initial_id` int(1) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `org_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `activity_code` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`regis_code`, `initial_id`, `name`, `lastname`, `position`, `org_name`, `phone`, `email`, `activity_code`) VALUES
('25610001', 2, 'สะไบแพร', 'อาจศรี', 'อาจารย์', 'มหาวิทยาลัยราชภัฏกาญจนบุรี', '0878575733', 'ardsri.s@gmail.com', 1),
('25610002', 2, 'ทดสอบ', 'ทดสอบ', 'นักวิชาการคอมพิวเตอร์', 'สถาบันคุณวุฒิวิชาชีพ (องค์การมหาชน)', '0871232341', 'ray@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_code`);

--
-- Indexes for table `attend_activity`
--
ALTER TABLE `attend_activity`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `initial`
--
ALTER TABLE `initial`
  ADD PRIMARY KEY (`initial_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`regis_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_code` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attend_activity`
--
ALTER TABLE `attend_activity`
  MODIFY `code` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `initial`
--
ALTER TABLE `initial`
  MODIFY `initial_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
