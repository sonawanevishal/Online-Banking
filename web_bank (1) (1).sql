-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 07:53 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transact`
--

CREATE TABLE IF NOT EXISTS `transact` (
`tid` int(100) NOT NULL,
  `saccno` varchar(100) NOT NULL,
  `raccno` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`tid`, `saccno`, `raccno`, `amount`, `status`) VALUES
(2, '201101122', '-------', 3000, 'credited'),
(3, '201101123', '-------', 4534, 'debited'),
(4, '201101123', '201101121', 2341, 'Transfered'),
(5, '201101121', '201101122', 6000, 'Transfered'),
(6, '201101121', '201101123', 2314, 'Transfered'),
(7, '201101121', '201101122', 8734, 'Transfered'),
(8, '201101121', '-------', 2156, 'credited'),
(9, '201101121', '-------', 6523, 'debited'),
(10, '201101121', '201101123', 3000, 'Transfered'),
(11, '201101123', '-------', 3547, 'credited'),
(12, '201101122', '-------', 5432, 'debited'),
(13, '201101121', '-------', 2000, 'credited'),
(14, '201101121', '-------', 2000, 'debited'),
(15, '201101121', '201101123', 3000, 'Transfered'),
(16, '201101125', '-------', 6000, 'credited'),
(17, '201101125', '-------', 2412, 'debited'),
(18, '201101121', '201101125', 1500, 'Transfered'),
(19, '201101125', '201101121', 5000, 'Transfered'),
(20, '3554', '201101121', 3000, 'Transfered');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `accno` int(50) NOT NULL,
  `aname` varchar(50) NOT NULL,
  `amobile` varchar(50) NOT NULL,
  `abalance` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `apassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`accno`, `aname`, `amobile`, `abalance`, `email`, `address`, `apassword`) VALUES
(3554, 'qwer', '9875423458', 41567, 'vishalpatil2077@gmail.com', 'Dhamane', '123'),
(201101121, 'Kunal Bhagwan Sonawane', '9307691627', 9426, 'kunalpatil2077@gmail.com', 'At. Dhamane Post Deobhane tal dist dhule', 'Kunal@04'),
(201101123, 'Vishal Rajendra Parmar', '9765345754', 121986, 'vishal@gmail.com', 'Shindkheda', 'vishal'),
(201101125, 'Gaytri Patil', '9359934541', 25088, 'gaytripatil2077@gmail.com', 'Dhamane', 'gaytri@03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transact`
--
ALTER TABLE `transact`
 ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`accno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transact`
--
ALTER TABLE `transact`
MODIFY `tid` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
