-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2019 at 02:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javasql`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `uniqueid` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `creationtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`uniqueid`, `username`, `password`, `creationtime`) VALUES
(1, 'adminneel', 'adminneel', '2019-09-07 12:56:57'),
(2, 'wilsonrao', 'wilsonrao', '2019-09-15 12:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `Angular`
--

CREATE TABLE `Angular` (
  `quniqueid` int(11) NOT NULL,
  `questionid` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `opt1` varchar(225) NOT NULL,
  `opt2` varchar(225) NOT NULL,
  `opt3` varchar(225) NOT NULL,
  `opt4` varchar(225) NOT NULL,
  `ropt` varchar(225) NOT NULL,
  `qcreation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Angular`
--

INSERT INTO `Angular` (`quniqueid`, `questionid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ropt`, `qcreation_time`) VALUES
(1, '1', 'What is Angular JS?', 'Game 2', 'JavaScript Framework', 'Coffee machine', 'XML Language', 'JavaScript Framework', '2019-09-09 17:03:57'),
(2, '1', 'What is HTML?', 'Hyper Text Markup Language', 'Hyper text multiple language', 'server side language', 'Script', 'Hyper Text Markup Language', '2019-09-15 11:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fbuniqueid` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `feedbacktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fbuniqueid`, `username`, `message`, `email`, `feedbacktime`) VALUES
(2, 'neeldeshmukh', 'HI this is test by neel', 'neel@neelupdate.com', '2019-09-15 08:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `Html`
--

CREATE TABLE `Html` (
  `quniqueid` int(11) NOT NULL,
  `questionid` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(225) NOT NULL,
  `opt3` varchar(225) NOT NULL,
  `opt4` varchar(225) NOT NULL,
  `ropt` varchar(225) NOT NULL,
  `qcreation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Html`
--

INSERT INTO `Html` (`quniqueid`, `questionid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ropt`, `qcreation_time`) VALUES
(1, '1', 'What is HTML?', 'Hyper Text Markup Language', 'In Chennia', 'In assamaiafadf', 'Php:Markup Language', 'Hyper Text Markup Language', '2019-09-15 11:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `Java`
--

CREATE TABLE `Java` (
  `quniqueid` int(11) NOT NULL,
  `questionid` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `opt1` varchar(225) NOT NULL,
  `opt2` varchar(225) NOT NULL,
  `opt3` varchar(225) NOT NULL,
  `opt4` varchar(225) NOT NULL,
  `ropt` varchar(225) NOT NULL,
  `qcreation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Java` (`quniqueid`, `questionid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ropt`, `qcreation_time`) VALUES
(1, '1', 'where is mumbai?', 'In punjab', 'In Chennia', 'In America', 'In maharashtra', 'In maharashtra', '2019-09-15 06:53:05'),
(2, '2', 'What is java?', 'coffee brand', 'Robot', 'programming language', 'cellphone brand', 'programming language', '2019-09-15 06:54:44'),
(3, '3', 'When is Cyberstrike 2019?', '18 december', '16 november', '12 march', '17 september', '18 december', '2019-09-06 09:48:58'),
(4, '4', 'Where is jaihind college located?', 'Andheri', 'Bandra', 'Dadar', 'Churchgate', 'Churchgate', '2019-09-06 09:48:58'),
(5, '5', 'When is teachers day celebrated in India?', '5june', '5september', '5august', '5december', '5september', '2019-09-06 09:51:39'),
(6, '6', 'who is narendra modi?', 'political leader', 'teacher', 'yoga master', 'business man', 'political leader', '2019-09-06 09:51:39'),
(7, '7', 'Neel', 'neil', 'neele', 'nel', 'neel', 'neel', '2019-09-10 05:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `loginreg`
--

CREATE TABLE `loginreg` (
  `unique_id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `creationtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginreg`
--

INSERT INTO `loginreg` (`unique_id`, `username`, `email`, `password`, `score`, `creationtime`) VALUES
(1, 'neeldeshmukh', 'neel@neelupdate.com', 'neel', '103', '2019-09-15 11:12:00'),
(3, 'neeladmin', 'neel@neel.com', 'neel', '50', '2019-09-15 12:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `Php`
--

CREATE TABLE `Php` (
  `quniqueid` int(11) NOT NULL,
  `questionid` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `opt1` varchar(225) NOT NULL,
  `opt2` varchar(225) NOT NULL,
  `opt3` varchar(225) NOT NULL,
  `opt4` varchar(225) NOT NULL,
  `ropt` varchar(225) NOT NULL,
  `qcreation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Random`
--

CREATE TABLE `Random` (
  `quniqueid` int(11) NOT NULL,
  `questionid` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `opt1` varchar(225) NOT NULL,
  `opt2` varchar(225) NOT NULL,
  `opt3` varchar(225) NOT NULL,
  `opt4` varchar(225) NOT NULL,
  `ropt` varchar(225) NOT NULL,
  `qcreation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`uniqueid`);

--
-- Indexes for table `Angular`
--
ALTER TABLE `Angular`
  ADD PRIMARY KEY (`quniqueid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fbuniqueid`);

--
-- Indexes for table `Html`
--
ALTER TABLE `Html`
  ADD PRIMARY KEY (`quniqueid`);

--
-- Indexes for table `Java`
--
ALTER TABLE `Java`
  ADD PRIMARY KEY (`quniqueid`);

--
-- Indexes for table `loginreg`
--
ALTER TABLE `loginreg`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `Php`
--
ALTER TABLE `Php`
  ADD PRIMARY KEY (`quniqueid`);

--
-- Indexes for table `Random`
--
ALTER TABLE `Random`
  ADD PRIMARY KEY (`quniqueid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `uniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Angular`
--
ALTER TABLE `Angular`
  MODIFY `quniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fbuniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Html`
--
ALTER TABLE `Html`
  MODIFY `quniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Java`
--
ALTER TABLE `Java`
  MODIFY `quniqueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loginreg`
--
ALTER TABLE `loginreg`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Php`
--
ALTER TABLE `Php`
  MODIFY `quniqueid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Random`
--
ALTER TABLE `Random`
  MODIFY `quniqueid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
