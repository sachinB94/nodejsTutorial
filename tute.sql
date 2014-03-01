-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2014 at 07:47 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `table_improve_tute`
--

INSERT INTO `table_improve_tute` (`id`, `tute_id`, `problem`, `description`) VALUES
(1, 2, 'sdfsd', 'asdfsdfds'),
(2, 2, 'sdfsd', 'asdfsdfds'),
(3, 1, 'zvxcbv', 'gggggggggggqqqqqqqqqqqqq'),
(4, 1, '', ''),
(5, 1, '', ''),
(6, 1, '', ''),
(7, 1, '', ''),
(8, 1, '', ''),
(9, 1, 'sdcc', 'dscfdc');

-- --------------------------------------------------------

--
-- Table structure for table `table_nodejs`
--

CREATE TABLE IF NOT EXISTS `table_nodejs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `image` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `table_nodejs`
--

INSERT INTO `table_nodejs` (`id`, `head`, `description`, `image`) VALUES
(1, 'Introduction to Node.js', '<a href="nodejs.org">Node.js</a> is a JavaScript interpreter that runs in a server environment and gives us the ability to run JavaScript code directly on the server (i.e. outside of a browser) just like we can run server side code in other languages like PHP, Python, Ruby, C#, or Java.\n<br />\n<br />\nNode.js is based on the JavaScript engine that Google wrote and uses for the Chrome browser. The author of Node.js, Ryan Dahl, took this JavaScript engine (called V8) and repurposed it so that it can run in a server environment. Ryan also added some features that are important when running on a server, for example, the ability to read and write from the file system and the ability to receive and send HTTP requests.', ''),
(2, 'The Greeting "Hello World"', 'The goal of this post is to show how to use Node.js for web development, so let''s write a simple program to process web requests. The following program is a web server that will return "hello world" to the browser for any request to http://localhost:3000\n<br />\n<br />\n<div style="border:1px solid black;border-radius:10px;width:50%;margin-left:20%;padding-left:20px;background-color:#fff;">\nvar http = require("http");<br />\nvar port = 3000;<br />\nvar serverUrl = "localhost";<br />\n<br />\nvar server = http.createServer(function(req, res) {<br />\n<br />\n  console.log("Request: " + req.url);<br />\n  <br />\n  var now = new Date();<br />\n  var html = "Hello World, the time is " + now + ".";<br />\n  res.end(html);<br />\n<br />\n});<br />\n<br />\nconsole.log("Listening at " + serverUrl + ":" + port);<br />\nserver.listen(port, serverUrl);<br />\n</div>\n<br />\n<br />\nIf we save this program as webserver1.js we could run it from the console with node webserver1.js. If we launch our browser and point it to http://localhost:3000/somepage.html we should see something like this:\n<br />\n<br />\n<div style="border:1px solid black;border-radius:10px;width:50%;margin-left:20%;padding-left:20px;background-color:#fff;">\n$node webserver1.js<br />\nListening at localhost:3000<br />\nRequest: /somepage.html\n</div>\n', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `table_user_tute`
--

INSERT INTO `table_user_tute` (`id`, `email`, `head`, `description`, `image`) VALUES
(1, 'xcgvx', 'zfc', 'dfsdc', ''),
(2, 'adas', 'asfas', 'sdfsd', ''),
(3, 'adas', 'asfas', 'sdfsd', ''),
(4, '', '', '', ''),
(5, 'jhcbds@jdcd.co', 'cxvx', 'dscsxc', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
