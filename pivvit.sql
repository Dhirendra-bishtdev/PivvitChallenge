-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2017 at 05:13 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pivvit`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `PurchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Qty` int(11) NOT NULL,
  `UnitPrice` float NOT NULL,
  `TotalPrice` float NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated` timestamp NOT NULL,
  PRIMARY KEY (`PurchaseID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`PurchaseID`, `UserID`, `Title`, `Qty`, `UnitPrice`, `TotalPrice`, `Created`, `Updated`) VALUES
(1, 1, 'Test Object', 2, 5, 10, '2017-04-14 13:37:06', '2017-04-14 13:37:06'),
(2, 1, 'ATSAsyu', 2, 4, 8, '2017-04-14 14:55:24', '0000-00-00 00:00:00'),
(3, 1, 'YUSTDUD', 5, 5, 5, '2017-04-14 15:09:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `authKey` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated` timestamp NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Email`, `Password`, `authKey`, `accessToken`, `Created`, `Updated`) VALUES
(1, 'DSH', 'dhire@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'b9f9c5fc82fdcd944d7041adcc98ff36', '23c44f55a3a9e9410d08f7e0e42204af', '2017-04-14 13:36:31', '2017-04-14 13:36:31');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
