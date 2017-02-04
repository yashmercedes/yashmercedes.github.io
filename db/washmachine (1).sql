-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2017 at 05:21 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `washmachine`
--

-- --------------------------------------------------------

--
-- Table structure for table `binvalues`
--

CREATE TABLE IF NOT EXISTS `binvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `one` int(11) NOT NULL,
  `two` int(11) NOT NULL,
  `three` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `five` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `seven` int(11) NOT NULL,
  `eight` int(11) NOT NULL,
  `nine` int(11) NOT NULL,
  `ten` int(11) NOT NULL,
  `eleven` int(11) NOT NULL,
  `twelve` int(11) NOT NULL,
  `thirteen` int(11) NOT NULL,
  `fourteen` int(11) NOT NULL,
  `fifteen` int(11) NOT NULL,
  `sixteen` int(11) NOT NULL,
  `seventeen` int(11) NOT NULL,
  `eighteen` int(11) NOT NULL,
  `nineteen` int(11) NOT NULL,
  `twenty` int(11) NOT NULL,
  `twentyone` int(11) NOT NULL,
  `twentytwo` int(11) NOT NULL,
  `twentythree` int(11) NOT NULL,
  `twentyfour` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `binvalues`
--

INSERT INTO `binvalues` (`id`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `eleven`, `twelve`, `thirteen`, `fourteen`, `fifteen`, `sixteen`, `seventeen`, `eighteen`, `nineteen`, `twenty`, `twentyone`, `twentytwo`, `twentythree`, `twentyfour`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `MobNumber` text NOT NULL,
  `RoomNumber` text NOT NULL,
  `Hostel` text NOT NULL,
  `Status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `Name`, `MobNumber`, `RoomNumber`, `Hostel`, `Status`) VALUES
(1, 'scsf', '3323', '1313', 'sdd', 'done'),
(2, 'asa', '233', '23', 'ddsd', 'progress'),
(3, 'sdds', '2332', '233', 'xxd', 'queed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
