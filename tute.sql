-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2014 at 04:42 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tute`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_improve_tute`
--

CREATE TABLE IF NOT EXISTS `table_improve_tute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tute_id` int(11) NOT NULL,
  `problem` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_nodejs`
--

CREATE TABLE IF NOT EXISTS `table_nodejs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(20) NOT NULL,
  `image` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `table_nodejs`
--

INSERT INTO `table_nodejs` (`id`, `head`, `description`, `image`) VALUES
(1, 'Introduction to Node.js', 'tute_1.txt', ''),
(2, 'The Greeting "Hello World"', 'tute_2.txt', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_user_tute`
--

CREATE TABLE IF NOT EXISTS `table_user_tute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL DEFAULT '',
  `head` varchar(20) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
