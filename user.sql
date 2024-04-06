-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2024 at 01:39 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeifzn_ecomleads`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `uname` varchar(250) NOT NULL,
  `linkedin` varchar(250) NOT NULL,
  `website` varchar(250) NOT NULL,
  `logcode` varchar(250) NOT NULL,
  `plan` varchar(200) NOT NULL,
  `credits_left` int(11) NOT NULL,
  `otp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `pwd`, `uname`, `linkedin`, `website`, `logcode`, `plan`, `credits_left`, `otp`) VALUES
(23, 'dhgavali@gmail.com', '$2y$10$0fj7J29KMDjrs2jsjs4G1eMPddvAigZivIQvzI.lBQTwYbP4IWrlq', 'dhananjay', '', '', 'stq', 'gold', 980, 0),
(34, 'manaktalapranav+2@gmail.com', '$2y$10$1v46wI3VtjuhOKedCiGp3.jhTBQtt2M6g4j7CjWd8lmXbj79/hoEK', 'Pranav', '', '', '39C2D408-69C2-4196-B13C-D0227DDE3797', 'Agency', 26639, 0),
(40, 'preferbit@gmail.com', '$2y$10$wq5HwPTDk3cyWDID.h9h5usFQCmTkbfItoCAJyZQYc3R81kYxJW4u', 'Pradeep', '', '', '05882501-3A3F-4DD1-BFEB-9136439117D7', 'Agency', 9943, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
