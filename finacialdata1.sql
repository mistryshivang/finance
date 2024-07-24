-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2023 at 05:34 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finacialdata1`
--
CREATE DATABASE IF NOT EXISTS `finacialdata1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `finacialdata1`;

-- --------------------------------------------------------

--
-- Table structure for table `accountmaster`
--

CREATE TABLE IF NOT EXISTS `accountmaster` (
  `regid` int(5) NOT NULL,
  `balance` varchar(50) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountmaster`
--

INSERT INTO `accountmaster` (`regid`, `balance`) VALUES
(2, '144240'),
(3, '98000'),
(4, '215160'),
(5, '5180'),
(10, '102000');

-- --------------------------------------------------------

--
-- Table structure for table `accounttran`
--

CREATE TABLE IF NOT EXISTS `accounttran` (
  `tranid` int(5) NOT NULL AUTO_INCREMENT,
  `trandate` date NOT NULL,
  `regid` int(5) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `des` varchar(30) NOT NULL,
  PRIMARY KEY (`tranid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `accounttran`
--

INSERT INTO `accounttran` (`tranid`, `trandate`, `regid`, `amount`, `type`, `des`) VALUES
(3, '2023-03-26', 2, '2000', 'cr', ''),
(4, '2023-03-26', 2, '1000', 'cr', ''),
(5, '2023-03-26', 5, '2000', 'cr', ''),
(6, '2023-03-26', 5, '1000', 'cr', ''),
(7, '2023-03-26', 5, '2000', 'cr', ''),
(8, '2023-03-26', 1, '1000', 'cr', ''),
(9, '2023-03-26', 1, '-1000', 'dr', ''),
(10, '2023-03-26', 1, '1000', 'cr', ''),
(12, '2023-03-26', 1, '2000', 'cr', ''),
(14, '2023-03-26', 1, '2000', 'cr', ''),
(15, '2023-03-26', 2, '1000', 'dr', ''),
(16, '2023-03-27', 4, '2000', 'cr', ''),
(18, '2023-03-27', 4, '2000', 'cr', ''),
(19, '2023-03-27', 2, '2000', 'dr', ''),
(20, '2023-03-27', 4, '500', 'cr', ''),
(21, '2023-03-27', 2, '500', 'dr', ''),
(22, '2023-03-27', 4, '1000', 'cr', ''),
(23, '2023-03-27', 2, '1000', 'dr', ''),
(24, '2023-03-27', 2, '5000', 'cr', ''),
(25, '2023-03-27', 4, '2000', 'cr', ''),
(26, '2023-03-27', 2, '2000', 'dr', ''),
(27, '0000-00-00', 4, '4000', 'cr', 'from share invest'),
(28, '0000-00-00', 2, '4000', 'dr', 'to share invest'),
(29, '0000-00-00', 4, '1000', 'cr', 'from share invest'),
(30, '0000-00-00', 2, '1000', 'dr', 'to share invest'),
(31, '2023-03-27', 4, '1000', 'cr', 'from share invest'),
(32, '2023-03-27', 5, '1000', 'dr', 'to share invest'),
(33, '2023-03-28', 4, '2000', 'cr', 'from ipo invest'),
(34, '2023-03-28', 5, '2000', 'dr', 'to ipo invest'),
(39, '2023-03-30', 2, '10000', 'cr', 'add mony'),
(40, '2023-03-30', 4, '2000', 'cr', 'from sip instalment'),
(41, '2023-03-30', 2, '2000', 'dr', 'to  sip instalment'),
(42, '2023-03-31', 3, '100000', 'cr', 'Add mony'),
(43, '2023-03-31', 4, '100000', 'cr', 'add mony'),
(48, '2023-03-31', 4, '4000', 'dr', 'from sip sale'),
(49, '2023-03-31', 4, '4000', 'cr', 'from defth purchese.'),
(50, '2023-04-07', 4, '2000', 'cr', 'from ipo invest'),
(51, '2023-04-07', 2, '2000', 'dr', 'to ipo invest'),
(52, '2023-04-07', 4, '1000', 'cr', 'from ipo invest'),
(53, '2023-04-07', 2, '1000', 'dr', 'to ipo invest'),
(54, '2023-04-08', 4, '2000', 'cr', 'from sip instalment'),
(55, '2023-04-08', 3, '2000', 'dr', 'to  sip instalment'),
(60, '2023-04-09', 4, '4240', 'dr', 'to share sale'),
(61, '2023-04-09', 2, '4240', 'cr', 'from share sale'),
(62, '2023-04-09', 4, '1060', 'dr', 'to share sale'),
(63, '2023-04-09', 2, '1060', 'cr', 'from share sale'),
(64, '2023-04-09', 4, '500', 'dr', 'from sip sale'),
(65, '2023-04-09', 4, '500', 'cr', 'from depth purchese.'),
(66, '2023-04-09', 4, '1100', 'dr', 'to ipo sale'),
(67, '2023-04-09', 2, '1100', 'cr', 'from ipo sale'),
(68, '0000-00-00', 4, '2120', 'dr', 'to ipo sale'),
(69, '0000-00-00', 5, '2120', 'cr', 'from ipo sale'),
(70, '2023-04-09', 4, '5000', 'cr', 'from ipo invest'),
(71, '2023-04-09', 2, '5000', 'dr', 'to ipo invest'),
(78, '2023-04-12', 4, '4000', 'dr', 'to Depth'),
(79, '2023-04-12', 4, '4000', 'cr', 'from sip instalment'),
(80, '2023-04-12', 4, '4240', 'dr', 'to depth sale'),
(81, '2023-04-12', 2, '4240', 'cr', 'from depth sale'),
(82, '2023-04-12', 4, '4280', 'dr', 'to depth sale'),
(83, '2023-04-12', 2, '4280', 'cr', 'from depth sale'),
(84, '0000-00-00', 2, '5000', '', 'add mony'),
(85, '2023-04-14', 2, '480', 'cr', 'add mony'),
(86, '2023-04-14', 2, '50000', 'cr', 'add mony'),
(87, '2023-04-14', 2, '5000', 'cr', 'add mony'),
(88, '2023-04-14', 2, '2000', 'cr', 'add mony'),
(89, '2023-04-14', 4, '5000', 'cr', 'add mony'),
(90, '2023-04-14', 4, '5000', 'cr', 'add mony'),
(91, '2023-04-15', 2, '5000', 'cr', 'add mony'),
(92, '2023-04-15', 2, '10000', 'cr', 'add mony'),
(93, '2023-04-15', 2, '25000', 'cr', 'add mony'),
(94, '2023-04-15', 2, '25000', 'cr', 'add mony'),
(95, '2023-04-16', 4, '1060', 'dr', 'to share sale'),
(96, '2023-04-16', 5, '1060', 'cr', 'from share sale'),
(97, '2023-04-16', 4, '4000', 'cr', 'from share invest'),
(98, '2023-04-16', 2, '4000', 'dr', 'to share invest'),
(99, '2023-04-16', 4, '4240', 'dr', 'to share sale'),
(100, '2023-04-16', 2, '4240', 'cr', 'from share sale'),
(102, '2023-04-18', 10, '2000', 'cr', 'add mony'),
(103, '2023-04-19', 4, '100000', 'cr', 'add mony'),
(104, '2023-04-19', 10, '100000', 'cr', 'add mony'),
(105, '2023-04-19', 2, '2000', 'cr', 'add mony');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE IF NOT EXISTS `card` (
  `cardid` int(5) NOT NULL AUTO_INCREMENT,
  `cardnum` varchar(16) NOT NULL,
  `cardhol` varchar(30) NOT NULL,
  `exmo` varchar(5) NOT NULL,
  `exye` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `regid` int(5) NOT NULL,
  PRIMARY KEY (`cardid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`cardid`, `cardnum`, `cardhol`, `exmo`, `exye`, `cvv`, `regid`) VALUES
(1, '1234567890123456', 'MISTRYSHIVANG', '07', '2023', '123', 2),
(2, '9876543210987654', 'shivang mistry', '04', '2025', '321', 2),
(3, '6549873210321456', 'rahulmistry', '11', '2027', '654', 2),
(4, '9876541230321567', 'Rahul mistry', '10', '2030', '123', 2),
(5, '8789989089908999', 'kkk', '09', '2026', '123', 2),
(6, '1234567890123456', 'mistry shivang', '10', '2025', '951', 4),
(7, '6958473020104568', 'mistry shivang', '10', '2028', '654', 4),
(8, '3579514561237896', 'rahul', '10', '2037', '852', 2),
(9, '7896541233214500', 'RUDRIK KAPTAN ', '11', '2030', '456', 2),
(10, '7896541233210066', 'RUDRIK KAPTAN ', '11', '2030', '456', 2),
(11, 'gyfy', '98898979', '', '', '', 2),
(12, '1615162222222', '651964951619684', '10', '2039', 'nbv', 2),
(13, 'hygvcy', '5645954', '', '', '', 2),
(14, '65+2+', '', '', '', '', 10),
(15, '3216549876543214', 'mistry shivang', '09', '2033', '123', 10);

-- --------------------------------------------------------

--
-- Table structure for table `citypincode`
--

CREATE TABLE IF NOT EXISTS `citypincode` (
  `cityid` int(5) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) DEFAULT NULL,
  `pincode` varchar(7) DEFAULT NULL,
  `shortname` varchar(10) DEFAULT NULL,
  `stateid` int(5) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `citypincode`
--

INSERT INTO `citypincode` (`cityid`, `cityname`, `pincode`, `shortname`, `stateid`) VALUES
(4, 'vapi', '123456', 'vapi', 2),
(5, 'navsari', '396424', 'nv', 2),
(6, 'surat', '396400', 'sr', 2),
(7, 'jaipur', '396852', 'jp', 3),
(8, 'bhopal', '456123', 'bl', 4),
(9, 'porbander', '696969', 'po', 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `compid` int(5) NOT NULL AUTO_INCREMENT,
  `compname` varchar(50) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `comphed` varchar(20) NOT NULL,
  `contectno` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `weburl` varchar(30) NOT NULL,
  `comptype` varchar(10) NOT NULL,
  PRIMARY KEY (`compid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compid`, `compname`, `shortname`, `comphed`, `contectno`, `email`, `weburl`, `comptype`) VALUES
(1, 'TATA', 'tata', 'ratan tata', '987456598', 'tata@gmail.com', 'tataindustry.com', 'public'),
(3, 'adani', 'ad', 'Gautam adani', '7896541230', 'g@gmail.com', 'adani.com', 'private'),
(4, 'bmw', 'bmw', 'rahul mistry', '7894561230', 'bmw@gmail.com', 'bmw.com', 'public'),
(5, 'reliance', 're', 'mokesh ambani', '1234567890', 'relience@contect.com', 'none', 'private');

-- --------------------------------------------------------

--
-- Table structure for table `contect`
--

CREATE TABLE IF NOT EXISTS `contect` (
  `contectid` int(5) NOT NULL AUTO_INCREMENT,
  `contectdate` varchar(8) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `contectno` varchar(15) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `reply` varchar(10) NOT NULL,
  PRIMARY KEY (`contectid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `contect`
--

INSERT INTO `contect` (`contectid`, `contectdate`, `pname`, `email`, `contectno`, `location`, `description`, `reply`) VALUES
(4, '23-03-14', 'shivang', 'mistryshivang3003@gmail.com', '9099531729', 'navsari', 'how can i invest mony using this webside.?\r\n', 'yes'),
(12, '23-03-17', 'param', 'param211@gmail.com', '08200486516', 'navsari', 'how can i invest mony using this webside.?', 'yes'),
(13, '23-03-18', 'mistry shivang pravinbhai', 'mistryshivang3003@gmail.com', '09099531729', 'navsari', 'how can i used it', 'yes'),
(14, '23-03-18', 'aaliya', 'aaliya@gmail.com', '09876543210', 'surat', 'nothing to worry about the time ', 'yes'),
(15, '23-03-23', 'mistry shivang pravinbhai', 'mistryshivang3003@gmail.com', '09099531729', 'navsari', 'how can i invest', 'yes'),
(16, '23-03-28', 'PRAVINBHAI DAHYABHAI MISTRY', 'mistryshivang3003@outlook.com', '9727208727', 'navsari', 'scxolljds ep mqe dmekp; mlep  mlekp m;emk ed edv ', 'yes'),
(17, '23-03-28', '', '', '', '', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `countryid` int(5) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(50) DEFAULT NULL,
  `shortname` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryid`, `countryname`, `shortname`) VALUES
(1, 'India', 'ind'),
(2, 'america', 'usa'),
(3, 'new zeland', 'nz'),
(4, 'Russia', 'Rs');

-- --------------------------------------------------------

--
-- Table structure for table `depth`
--

CREATE TABLE IF NOT EXISTS `depth` (
  `depthid` int(5) NOT NULL AUTO_INCREMENT,
  `depthdate` date NOT NULL,
  `sipid` int(5) NOT NULL,
  `amount` varchar(10) NOT NULL,
  PRIMARY KEY (`depthid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `depth`
--

INSERT INTO `depth` (`depthid`, `depthdate`, `sipid`, `amount`) VALUES
(7, '2023-03-31', 1, '4000'),
(9, '2023-04-09', 2, '500');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `docid` int(5) NOT NULL AUTO_INCREMENT,
  `regid` int(5) NOT NULL,
  `image` varchar(50) NOT NULL,
  `des` varchar(20) NOT NULL,
  `verified` varchar(10) NOT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`docid`, `regid`, `image`, `des`, `verified`) VALUES
(15, 2, 'pan-card.png', 'pan card', 'yes'),
(16, 2, 'adhar.png', 'aadhar card', 'yes'),
(18, 5, 'pan-card.png', 'pan card', 'yes'),
(19, 2, 'images1.png', 'pan card', 'yes'),
(20, 2, 'adhar.png', 'aadhar card', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `emailid` int(5) NOT NULL AUTO_INCREMENT,
  `emaildate` date DEFAULT NULL,
  `emailfrom` varchar(50) NOT NULL,
  `emailto` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`emailid`, `emaildate`, `emailfrom`, `emailto`, `subject`, `description`) VALUES
(1, '2023-03-18', 'admin1@gmail.com', 'r2613@gmail.com', 'nothing', ' not sure '),
(2, '2023-03-30', '', 'mistryshivang3003@gmail.com', 'to check email', ' i am send email to check my email function'),
(3, '2023-04-05', 'softechfinancesolution@gmail.com', 'mistryshivang3003@gmail.com', 'response ', ' responce of email'),
(4, '2023-04-06', 'softechfinancesolution@gmail.com', 'sunnypatel1694@gmaim.com', 'response ', ' testing email..'),
(5, '2023-04-06', 'softechfinancesolution@gmail.com', 'sunnypatel1694@gmail.com', 'response ', ' testing email'),
(6, '2023-04-07', 'softechfinancesolution@gmail.com', 'rudrikkaptan123@gmail.com', 'response ', ' ssccec ji i jibby uhu'),
(7, '2023-04-07', 'softechfinancesolution@gmail.com', 'rudrikkaptan123@gmail.com', 'response ', ' ssccec ji i jibby uhu'),
(8, '2023-04-07', 'softechfinancesolution@gmail.com', 'rudvikkaptan123@gmail.com', 'response ', ' hfj dffvhdfjjvf dfh dk fjj dkn'),
(9, '2023-04-08', 'softechfinancesolution@gmail.com', 'r26mistry@gmail.com', 'response ', ' to check email function'),
(10, '2023-04-10', 'softechfinancesolution@gmail.com', 'mistryshivang3003@gmail.com', 'testing', ' m dkmecpecmpedd'),
(11, '2023-04-16', 'softechfinancesolution@gmail.com', 'mistryshivang3003@gmail.com', 'response ', ' this email is send for testing.');

-- --------------------------------------------------------

--
-- Table structure for table `fbselect`
--

CREATE TABLE IF NOT EXISTS `fbselect` (
  `fbsid` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `des` varchar(100) NOT NULL,
  `rating` varchar(10) NOT NULL,
  PRIMARY KEY (`fbsid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fbselect`
--

INSERT INTO `fbselect` (`fbsid`, `name`, `des`, `rating`) VALUES
(1, 'rahul mistry', 'this is wonderful  website it give me good advice for my feature paln i would suggest to my friends', '5'),
(3, 'param shah', 'this website is so user friendly for me.', '4'),
(4, 'param shah', 'i am user friendly doing my work with  this website', '4'),
(8, 'rahul mistry', 'this is wonderful  website it give me good advice for my feature paln i would suggest to my friends', '5'),
(9, 'aaliya', 'this is very usedfull website.', '5'),
(10, 'aaliya', 'this is very usedfull website.', '5');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fbid` int(5) NOT NULL AUTO_INCREMENT,
  `fbdate` date DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `fbfor` varchar(30) DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fbid`, `fbdate`, `details`, `fbfor`, `rating`, `name`) VALUES
(15, '2023-03-15', 'this is wonderful  website it give me good advice for my feature paln i would suggest to my friends', 'nothing', 5, 'rahul mistry'),
(16, '2023-03-15', 'this is wonderful  website it give me good advice for my feature paln i would suggest to my friends', 'nothing', 5, 'rahul mistry'),
(17, '2023-03-15', 'this is very usedfull website.', 'nothing', 5, 'aaliya'),
(18, '2023-03-15', 'i am user friendly doing my work with  this website', 'nothing', 4, 'param shah'),
(19, '2023-03-16', 'website look ðŸ‘ŒðŸ‘ŒðŸ‘Œ', 'nothing', 4, 'aaliya'),
(20, '2023-03-29', 'wow what website look', 'nothing', 4, 'rahul mistry'),
(21, '2023-04-03', 'oh807y8highukjjjin', 'nothing', 4, 'rahul mistry');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
  `inquiryid` int(5) NOT NULL AUTO_INCREMENT,
  `inquirydate` date NOT NULL,
  `detail` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `inquiryfor` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `userid` int(5) NOT NULL,
  PRIMARY KEY (`inquiryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiryid`, `inquirydate`, `detail`, `reply`, `inquiryfor`, `status`, `userid`) VALUES
(2, '2023-03-19', 'i would like to invest money in long term sip. give me detail of sip', 'there are three company tata,adani,bmw which one you like to start sip', 'start new sip', 'complete', 2),
(3, '2023-03-24', 'i would like to invest money in long term sip. give me detail of sip', 'ok', 'start new sip', 'complete', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ipo`
--

CREATE TABLE IF NOT EXISTS `ipo` (
  `ipoid` int(5) NOT NULL AUTO_INCREMENT,
  `ipodate` date NOT NULL,
  `sharename` varchar(20) NOT NULL,
  `compid` int(5) NOT NULL,
  `opendate` date NOT NULL,
  `closedate` date NOT NULL,
  `amount` varchar(20) NOT NULL,
  `sharetype` varchar(20) NOT NULL,
  `regid` int(5) NOT NULL,
  `shareprice` varchar(20) NOT NULL,
  PRIMARY KEY (`ipoid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ipo`
--

INSERT INTO `ipo` (`ipoid`, `ipodate`, `sharename`, `compid`, `opendate`, `closedate`, `amount`, `sharetype`, `regid`, `shareprice`) VALUES
(4, '2023-04-09', 'tata capital ', 1, '2023-04-10', '2023-05-10', '5000', 'Ordinary Equity Shar', 2, '2500');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `msgid` int(5) NOT NULL AUTO_INCREMENT,
  `msgdate` date DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `regid` int(5) NOT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `msgdate`, `message`, `mobileno`, `regid`) VALUES
(1, '2023-03-18', ' how may i help you', '7990830571', 0),
(2, '2023-03-30', ' I am testing massage .', '9099531729', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payid` int(5) NOT NULL,
  `paydate` varchar(50) DEFAULT NULL,
  `regid` int(5) NOT NULL,
  `amount` float(8,2) DEFAULT NULL,
  `paydes` varchar(50) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `paydate`, `regid`, `amount`, `paydes`) VALUES
(1, '23-04-14', 2, 5000.00, 'add mony '),
(2, '23-04-14', 2, 480.00, 'add mony '),
(3, '23-04-14', 2, 50000.00, 'instalment'),
(4, '23-04-14', 2, 5000.00, 'instalment'),
(5, '23-04-14', 2, 2000.00, 'add mony '),
(6, '23-04-14', 4, 5000.00, 'add mony '),
(7, '23-04-14', 4, 5000.00, 'add mony '),
(8, '23-04-15', 2, 5000.00, 'add mony '),
(9, '23-04-15', 2, 10000.00, 'add mony '),
(10, '23-04-15', 2, 25000.00, 'add mony '),
(11, '23-04-15', 2, 25000.00, 'add mony '),
(12, '23-04-17', 2, 5000.00, 'add mony '),
(13, '23-04-17', 2, 2000.00, 'add mony '),
(14, '23-04-18', 10, 100000.00, 'add mony '),
(15, '23-04-18', 10, 2000.00, 'add mony '),
(16, '23-04-19', 4, 100000.00, 'add mony '),
(17, '23-04-19', 10, 100000.00, 'add mony '),
(18, '23-04-19', 2, 2000.00, 'add mony ');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `regid` int(5) NOT NULL AUTO_INCREMENT,
  `regdate` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `cno` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `cityid` int(5) DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `quali` varchar(20) DEFAULT NULL,
  `business` varchar(30) DEFAULT NULL,
  `anincome` varchar(8) DEFAULT NULL,
  `about` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`regid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`regid`, `regdate`, `name`, `email`, `password`, `utype`, `cno`, `address`, `cityid`, `image`, `dob`, `gender`, `quali`, `business`, `anincome`, `about`) VALUES
(1, '2023-03-09', 'admin', 'admin1@gmail.com', 'admin123@', 'Admin', '9099531729', 'navsari', 5, 'download33.jpg', '2023-03-13', 'male', 'none', 'none', '1000000', 'nothing'),
(2, '2023-03-09', 'rahul mistry', 'r26mistry@gmail.com', 'rahul123', 'client', '7990830571', 'grid, Navsari ', 6, 'download.jpg', '2003-01-26', 'male', 'bca', 'nothing', '650000', 'i am working in apple company'),
(3, '2022-08-01', 'param shah', 'param211@gmail.com', 'param123', 'client', '8200486516', 'sisodra,navsari', 4, 'download.jpg', '2020-12-16', 'male', 'bcom', 'none', '650000', 'nothing'),
(4, '2023-03-10', 'shivang', 'mistryshivang3003@gmail.com', 'shivang123', 'advisor', '9099531729', 'munsad', 4, 'dominos.png', '2003-03-30', 'male', 'bcom', 'None', '450000', 'Total work experience  as advisor is 10 years.'),
(5, '2023-03-11', 'aaliya', 'aaliya@gmail.com', 'aaliya123', 'client', '7698124901', 'navsari.', 6, 'aap.jpg', '2003-05-12', 'female', 'bca', 'none', '560000', 'nothing'),
(6, '2023-03-28', 'kaptan rudrik', 'rudvikkaptan123@gmail.com', '1234567', 'client', '9925825011', 'stetioin road', 4, 'kaptan.jpg', '2003-11-26', 'male', 'bcom', 'none', '560000', 'nothing'),
(7, '2023-03-28', 'bunny', 'santinodantonio8866@gmail.com', '123456789', 'client', NULL, NULL, NULL, 'main.png', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2023-03-30', 'jigo', 'jigo@gmail.com', '1234567', 'client', NULL, NULL, NULL, 'main.png', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2023-04-18', 'neel', 'neelmehta1401@gmail.com', 'neel123', 'client', '7896541230', 'munsad', 6, 'download33.jpg', '2023-04-18', 'male', 'bba', 'no', '1000', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE IF NOT EXISTS `share` (
  `shareid` int(5) NOT NULL AUTO_INCREMENT,
  `purdate` date NOT NULL,
  `sharename` varchar(20) NOT NULL,
  `compid` int(5) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `sharetype` varchar(30) NOT NULL,
  `regid` int(5) NOT NULL,
  PRIMARY KEY (`shareid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`shareid`, `purdate`, `sharename`, `compid`, `unit`, `price`, `sharetype`, `regid`) VALUES
(1, '2023-03-20', 'Adani Willmar ', 3, '5', '2000', 'Ordinary Equity Shares', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sipmaster`
--

CREATE TABLE IF NOT EXISTS `sipmaster` (
  `sipid` int(5) NOT NULL AUTO_INCREMENT,
  `sipname` varchar(50) NOT NULL,
  `compid` int(5) NOT NULL,
  `term` varchar(20) NOT NULL,
  `startdate` date NOT NULL,
  `regid` int(5) NOT NULL,
  `sipamount` int(10) NOT NULL,
  PRIMARY KEY (`sipid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sipmaster`
--

INSERT INTO `sipmaster` (`sipid`, `sipname`, `compid`, `term`, `startdate`, `regid`, `sipamount`) VALUES
(1, 'tata capital', 1, 'short', '2023-03-19', 2, 1000),
(2, 'BIRLA', 1, 'short', '2023-03-20', 3, 2000),
(3, 'adani willmer', 3, 'long', '2023-03-21', 2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `siptrans`
--

CREATE TABLE IF NOT EXISTS `siptrans` (
  `siptransid` int(5) NOT NULL AUTO_INCREMENT,
  `trandate` date NOT NULL,
  `sipid` int(5) NOT NULL,
  `unit` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `instalmentdate` date NOT NULL,
  PRIMARY KEY (`siptransid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `siptrans`
--

INSERT INTO `siptrans` (`siptransid`, `trandate`, `sipid`, `unit`, `price`, `instalmentdate`) VALUES
(1, '2023-03-20', 1, 10, 100, '2023-03-20'),
(2, '2023-03-21', 1, 5, 200, '2023-03-21'),
(3, '2023-03-20', 3, 10, 200, '2023-03-20'),
(4, '2023-03-21', 3, 5, 400, '2023-03-21'),
(5, '2023-03-22', 3, 20, 100, '2023-03-22'),
(6, '2023-03-22', 1, 10, 200, '2023-03-22'),
(7, '2023-03-26', 1, 10, 100, '2023-03-26'),
(8, '2023-03-26', 3, 5, 200, '2023-03-26'),
(9, '2023-03-26', 3, 10, 200, '2023-03-26'),
(10, '2023-03-26', 3, 10, 200, '2023-03-26'),
(11, '2023-03-27', 3, 10, 200, '2023-03-27'),
(12, '2023-03-27', 3, 10, 200, '2023-03-27'),
(13, '2023-03-27', 3, 10, 200, '2023-03-27'),
(14, '2023-03-27', 1, 5, 100, '0000-00-00'),
(15, '2023-03-27', 1, 10, 100, '2023-03-27'),
(16, '2023-03-27', 3, 10, 200, '2023-03-27'),
(17, '2023-03-30', 3, 10, 200, '2023-03-30'),
(18, '2023-04-08', 2, 10, 200, '2023-04-08'),
(23, '2023-04-12', 1, 20, 200, '2023-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `stateid` int(5) NOT NULL AUTO_INCREMENT,
  `statename` varchar(50) DEFAULT NULL,
  `shortname` varchar(5) DEFAULT NULL,
  `countryid` int(5) NOT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateid`, `statename`, `shortname`, `countryid`) VALUES
(2, 'gujrat', 'gj', 1),
(3, 'Rajasthan ', 'rj', 2),
(4, 'madhy pradesh', 'MP', 4),
(5, 'Delhi ', 'DL', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwregister`
--
CREATE TABLE IF NOT EXISTS `vwregister` (
`regid` int(5)
,`name` varchar(50)
,`email` varchar(50)
,`cno` varchar(15)
,`address` varchar(100)
,`cityname` varchar(50)
,`statename` varchar(50)
,`countryname` varchar(50)
,`image` varchar(20)
,`dob` date
,`gender` varchar(10)
,`quali` varchar(20)
,`business` varchar(30)
,`anincome` varchar(8)
,`about` varchar(100)
);
-- --------------------------------------------------------

--
-- Structure for view `vwregister`
--
DROP TABLE IF EXISTS `vwregister`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwregister` AS select `r`.`regid` AS `regid`,`r`.`name` AS `name`,`r`.`email` AS `email`,`r`.`cno` AS `cno`,`r`.`address` AS `address`,`c`.`cityname` AS `cityname`,`s`.`statename` AS `statename`,`co`.`countryname` AS `countryname`,`r`.`image` AS `image`,`r`.`dob` AS `dob`,`r`.`gender` AS `gender`,`r`.`quali` AS `quali`,`r`.`business` AS `business`,`r`.`anincome` AS `anincome`,`r`.`about` AS `about` from (((`register` `r` join `citypincode` `c`) join `state` `s`) join `country` `co`) where ((`r`.`cityid` = `c`.`cityid`) and (`c`.`stateid` = `s`.`stateid`) and (`s`.`countryid` = `co`.`countryid`));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
