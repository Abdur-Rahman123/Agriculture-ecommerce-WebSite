-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro-commers`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(50) NOT NULL,
  `catname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`) VALUES
(1, 'apple'),
(2, 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `iid` int(50) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `uid`, `iid`, `comment`) VALUES
(2, 1, 2, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `conid` int(50) NOT NULL,
  `conmail` varchar(200) NOT NULL,
  `conmessage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `etype` varchar(200) NOT NULL,
  `esalary` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `iid` int(50) NOT NULL,
  `saddress` varchar(200) NOT NULL,
  `sphone` int(200) NOT NULL,
  `hdate` varchar(200) NOT NULL,
  `hstatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inid` int(50) NOT NULL,
  `inname` varchar(200) NOT NULL,
  `inamount` int(200) NOT NULL,
  `instatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invnumber` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `orderdate` varchar(200) NOT NULL,
  `subtotal` int(200) NOT NULL,
  `shipmethod` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `iid` int(50) NOT NULL,
  `iname` varchar(200) NOT NULL,
  `iprice` int(200) NOT NULL,
  `idetails` varchar(200) NOT NULL,
  `istatus` varchar(200) NOT NULL,
  `iimage` varchar(200) NOT NULL,
  `catid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`iid`, `iname`, `iprice`, `idetails`, `istatus`, `iimage`, `catid`) VALUES
(1, 'apple', 20, 'good', 'true', 'essfdff', 1),
(2, 'orange', 300, 'good', 'true', 'dsss', 2),
(4, 'banana', 30, 'good', 'good', 'ddf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(10) NOT NULL,
  `message` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `message`, `uid`) VALUES
(1, 'go to home', 1),
(2, 'heood ', 29),
(3, 'kdiidkk', 1),
(4, 'rffggg', 5),
(5, 'fffffsd', 7),
(6, 'erreeeee', 1),
(7, 'dddddd', 1),
(8, 'dfffgfghhh', 1),
(9, 'fghttth', 5),
(10, 'ddhhht', 7),
(11, 'ddfdfssssfdff', 1),
(12, 'ggfgfgfffgf', 5),
(13, 'ggtgg', 2),
(14, 'dfdfdfd', 1),
(15, 'dfdfdf', 1),
(16, 'dfdfdfdf', 7),
(17, 'gfgfgdfdg', 7),
(19, 'dfdfdffd', 5),
(20, 'ghghghgh', 1),
(21, 'ghghgh', 5),
(22, 'ghghgghgh', 7),
(23, 'j', 5),
(24, 'dfdfdfdf', 7),
(25, 'ggggg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `nid` int(50) NOT NULL,
  `notice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`nid`, `notice`) VALUES
(6, 'f'),
(9, 'jeifdiiefjjdd0'),
(10, 'fgfgfgfdsgsgfg'),
(13, 'fffffdd'),
(16, 'dfdfdf'),
(17, 'vgffg'),
(18, 'dfdfdfdfdf2'),
(20, 'yyyyiii'),
(21, 'ffgfg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` int(50) NOT NULL,
  `ostatus` varchar(200) NOT NULL,
  `hid` int(50) NOT NULL,
  `uid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shid` int(50) NOT NULL,
  `shname` varchar(200) NOT NULL,
  `cid` int(50) NOT NULL,
  `iid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shid`, `shname`, `cid`, `iid`) VALUES
(1, 'rahim', 1, 1),
(3, 'karim', 2, 4),
(4, 'jamil', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(50) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `uphone` int(200) NOT NULL,
  `umail` varchar(200) NOT NULL,
  `uaddress` varchar(200) NOT NULL,
  `upass` varchar(200) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `uphone`, `umail`, `uaddress`, `upass`, `user_role`) VALUES
(1, 'admin', 123456789, 'admin@gmail.com', 'nikunjo 2', '12345', 'admin'),
(5, 'karim', 33333, 'karim@gmail.com', 'edddff', '123', 'seller'),
(6, 'manager', 1825857470, 'manager@gmail.com', 'asdas', '1234', 'manager'),
(7, 'hasib', 45666, 'hasib@gmail.com', 'kdiiekd', '1234', 'buyer'),
(8, 'kdkd', 44455, 'kdkd@gmail.com', 'dhaka', '1234', 'manager'),
(9, 'rahim', 1738773, 'rahim@gmai.com', 'kikdnd', '1234', 'customer'),
(10, 'customer', 8498, 'customer@gmail.com', 'ddfdf', '123', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `uid_2` (`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `iid` (`iid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`conid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `iid` (`iid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invnumber`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `hid` (`hid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `iid` (`iid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `conid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invnumber` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `iid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `nid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `oid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`iid`) REFERENCES `items` (`iid`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `items` (`iid`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `history` (`hid`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`catid`),
  ADD CONSTRAINT `shop_ibfk_2` FOREIGN KEY (`iid`) REFERENCES `items` (`iid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
