-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 02:38 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) DEFAULT NULL,
  `customerNumber` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `idType` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `monthlyIncome` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `kycScoretoken` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` mediumtext,
  `createdDate` date DEFAULT NULL,
  `createdTime` time DEFAULT NULL,
  `requestedAmount` double DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `paybackAmount` double DEFAULT NULL,
  `creditscore` varchar(255) DEFAULT NULL,
  `paybackDate` date DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isPaidback` tinyint(1) DEFAULT NULL,
  `customerNumber` varchar(255) DEFAULT NULL,
  `loanId` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `createdDate`, `createdTime`, `requestedAmount`, `interest`, `paybackAmount`, `creditscore`, `paybackDate`, `isActive`, `isPaidback`, `customerNumber`, `loanId`) VALUES
(NULL, '2022-12-11', '17:52:12', 900, 0, 1000, NULL, '2022-12-11', 1, 0, '08131528807', '0c73b969-18d3-4175-a696-774033c787e9');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` varchar(1000) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `hashPassword` varchar(255) DEFAULT NULL,
  `basicAuthstr` varchar(255) DEFAULT NULL,
  `scoringEngineToken` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `username`, `hashPassword`, `basicAuthstr`, `scoringEngineToken`) VALUES
('1', 'username', 'haspassword', 'dXNlcm5hbWU6cGFzc3dvcmQ=', 'token');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
