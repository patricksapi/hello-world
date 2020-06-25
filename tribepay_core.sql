-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2020 at 03:49 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tribepay_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`bank_id`),
  UNIQUE KEY `bank_id_UNIQUE` (`bank_id`),
  KEY `country_id_idx` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`branch_id`),
  UNIQUE KEY `branch_id_UNIQUE` (`branch_id`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business account_detail`
--

DROP TABLE IF EXISTS `business account_detail`;
CREATE TABLE IF NOT EXISTS `business account_detail` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_fullname` varchar(45) NOT NULL,
  `account_number` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address_line` varchar(45) NOT NULL,
  `address line2` varchar(45) DEFAULT NULL,
  `address line3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`business_id`),
  UNIQUE KEY `business_id_UNIQUE` (`business_id`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `bank_id_idx` (`bank_id`),
  KEY `city_id_idx` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`),
  KEY `country_id_idx` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custome_ account_detail`
--

DROP TABLE IF EXISTS `custome_ account_detail`;
CREATE TABLE IF NOT EXISTS `custome_ account_detail` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(45) NOT NULL,
  `account_fullname` varchar(45) NOT NULL,
  `account_number` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `national_id` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address_line` varchar(45) NOT NULL,
  `address line2` varchar(45) DEFAULT NULL,
  `address line3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `msisdn_UNIQUE` (`msisdn`),
  UNIQUE KEY `account_number_UNIQUE` (`account_number`),
  UNIQUE KEY `national_id_UNIQUE` (`national_id`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`),
  KEY `occupation_id_idx` (`occupation_id`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `bank_id_idx` (`bank_id`),
  KEY `city_id_idx` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
CREATE TABLE IF NOT EXISTS `occupation` (
  `occupation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`occupation_id`),
  UNIQUE KEY `city_id_UNIQUE` (`occupation_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
