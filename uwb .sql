-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 06:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uwb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aname` varchar(20) NOT NULL,
  `apw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `apw`) VALUES
('default', 'default'),
('contentadmin', 'contentadmin');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `bid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `btitle` varchar(100) NOT NULL,
  `bdescription` varchar(500) NOT NULL,
  `bstory` longtext NOT NULL,
  `btags` varchar(50) NOT NULL,
  `bstatus` binary(1) NOT NULL,
  `bviewed` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `wnumber` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `id_number` varchar(40) NOT NULL,
  `idtype` varchar(40) NOT NULL,
  `idproof` varchar(40) NOT NULL,
  `dept` varchar(40) NOT NULL,
  `position` varchar(40) NOT NULL,
  `residence` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `tenure` int(3) NOT NULL,
  `end` date NOT NULL,
  `cid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Email-Id` varchar(40) NOT NULL,
  `OTP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usermain`
--

CREATE TABLE `usermain` (
  `Username` varchar(25) NOT NULL,
  `Email-Id` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermain`
--

INSERT INTO `usermain` (`Username`, `Email-Id`, `Password`) VALUES
('ajj', 'abcd21@gmail.com', '1123'),
('ajstyles', 'ajs@gmail.com', '1123'),
('aniket', 'ak@gmail.com', '1123'),
('bbhj', 'bbhj@gmail.com', '1123'),
('aaa', 'eshanjain300401@gmail.com', '1123'),
('rr', 'rr@gmail.com', '1123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `phone`, `message`) VALUES
('Aniket Banik', 'aniket.banik0000@gmail.com', '9978443007', ''),
('Aniket Banik', 'aniket.banik0000@gmail.com', '9978443007', ''),
('Aniket Banik', 'aniket.banik0000@gmail.com', '9978443007', ''),
('Eshan Jain', 'aniket.banik0000@gmail.com', '9888987878', ''),
('kamal desai', 'aniket.banik0000@gmail.com', '997855845', 'ashdiakhdijahfoihsafdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email-Id`);

--
-- Indexes for table `usermain`
--
ALTER TABLE `usermain`
  ADD PRIMARY KEY (`Email-Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
