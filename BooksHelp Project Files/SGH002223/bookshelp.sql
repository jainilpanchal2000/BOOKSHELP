-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 07:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshelp`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `donated` tinyint(1) NOT NULL,
  `bookphoto` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `view` tinyint(1) NOT NULL,
  `wantToBuy` tinyint(1) NOT NULL DEFAULT '1',
  `whichUser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`uid`, `bid`, `bookname`, `authorname`, `subject`, `branch`, `price`, `donated`, `bookphoto`, `date`, `view`, `wantToBuy`, `whichUser`) VALUES
(15, 65, 'C++ programming', 'bjarne stroustrup', 'C++', 'Computer/IT', 299, 1, 'book/65.jpeg', '2020-02-27', 1, 0, 'kaushal123'),
(15, 66, 'The Complete Reference PHP', 'Steve', 'web tech', 'Computer/IT', 300, 0, 'book/66.jpeg', '2020-02-27', 0, 1, ''),
(15, 67, 'Java Programming', 'balaguruswamy', 'java', 'Computer/IT', 190, 1, 'book/67.jpeg', '2020-02-27', 0, 0, 'kaushal123'),
(17, 68, 'Railway Engineering', 'S.P.Arora', 'Railway and bridge', 'Civil', 500, 1, 'book/68.jpg', '2020-02-27', 0, 0, 'jainil'),
(17, 69, 'PHP Programming', 'Marvin Raval', 'Web Tech', 'Production', 456, 0, 'book/69.png', '2020-02-27', 1, 0, 'marvin'),
(17, 70, 'Tea for two and a piece of cake', 'Priti Shenoy', 'Love story', 'Electronics', 0, 1, 'book/70.jpg', '2020-02-27', 0, 1, ''),
(17, 71, 'Rail', 'J.S.Pethani', 'Civil', 'Mechanical', 420, 0, 'book/71.PNG', '2020-02-28', 0, 1, ''),
(17, 72, 'Python', 'RamPrasad Sharma', 'Pehli fursat me Nika', 'Mechanical', 0, 1, 'book/72.jpeg', '2020-02-28', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 2, 'hello', '2020-02-23 06:11:27', 0),
(2, 2, 1, 'byee\n', '2020-02-23 06:11:44', 0),
(5, 1, 15, 'Hello', '2020-02-28 04:36:40', 1),
(6, 1, 15, 'I want to buy your book', '2020-02-28 04:36:49', 1),
(7, 15, 17, 'Hello \n', '2020-02-28 04:42:22', 0),
(8, 15, 17, 'I want to buy your book', '2020-02-28 04:42:34', 0),
(9, 17, 15, 'Hello', '2020-02-28 04:43:27', 0),
(10, 17, 15, 'Yaa sure', '2020-02-28 04:43:46', 0),
(11, 15, 17, 'Where can we meet?', '2020-02-28 04:45:37', 0),
(12, 15, 17, 'And time?\n', '2020-02-28 04:45:45', 0),
(13, 17, 15, 'Hello', '2020-02-28 05:33:19', 0),
(14, 17, 15, 'Hii', '2020-02-28 05:33:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `INST CODE` varchar(13) DEFAULT NULL,
  `Institute Name` varchar(58) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`INST CODE`, `Institute Name`) VALUES
('1', 'A. D. PATEL INSTITUTE OF TECHNOLOGY, KARAMSAD'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('2', 'AHMEDABAD INSTITUTE OF TECHNOLOGY, GOTA, AHMEDABAD'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('3', 'ATMIYA INSTITUTE OF TECHNOLOGY & SCIENCE, RAJKOT'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('4', 'B. H. GARDI COLLEGE OF\nENGINEERING & TECHNOLOGY, RAJKOT'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('5', 'BABARIA INSTITUTE OF TECHNOLOGY, VARNAMA'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('6', 'BHAGWAN MAHAVIR COLLEGE OF ENGINEERING & TECHNOLOGY, SURAT'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('7', 'BIRLA VISHVAKARMA MAHAVIDYALAYA, VALLABH VIDYANAGAR'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('8', 'BIRLA VISHVAKARMA MAHAVIDYALAYA, VALLABH VIDYANAGAR'),
('', ''),
('', ''),
('', ''),
('', 'C. K. PITHAWALLA'),
('', ''),
('9', 'COLLEGE OF ENGINEERING & TECHNOLOGY, SURAT'),
('', ''),
('', ''),
('11', 'G. H. PATEL COLLEGE OF\nENGINEERING & TECHNOLOGY, V V NAGAR'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('12', 'GANDHINAGAR INSTITUTE OF TECHNOLOGY, GANDHINAGAR'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('13', 'GOVERNMENT ENGINEERING COLLEGE, SECTOR - 28, GANDHINAGAR'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('14', 'GOVERNMENT ENGINEERING COLLEGE, BHARUCH'),
('', ''),
('', ''),
('', ''),
('', ''),
('15', 'GOVERNMENT\nENGINEERING COLLEGE, BHUJ'),
('', ''),
('', ''),
('', ''),
('', ''),
('KUTCH, 370001', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `Msg_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`) VALUES
(3, 'bhavesh'),
(15, 'marvin'),
(16, 'jainil123'),
(17, 'kaushal123');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-02-23 07:19:53', 'no'),
(2, 2, '2020-02-23 08:08:10', 'no'),
(3, 6, '2020-02-23 08:28:49', 'no'),
(4, 6, '2020-02-23 08:28:55', 'no'),
(5, 6, '2020-02-23 08:33:21', 'no'),
(6, 1, '2020-02-23 08:33:41', 'no'),
(7, 1, '2020-02-23 08:44:39', 'no'),
(8, 1, '2020-02-23 08:46:05', 'no'),
(9, 1, '2020-02-23 08:47:09', 'no'),
(10, 1, '2020-02-23 08:54:17', 'no'),
(11, 1, '2020-02-23 08:56:16', 'no'),
(12, 1, '2020-02-23 09:00:30', 'no'),
(13, 6, '2020-02-23 09:07:48', 'no'),
(14, 6, '2020-02-23 09:20:50', 'no'),
(15, 1, '2020-02-23 12:12:32', 'no'),
(16, 1, '2020-02-23 12:22:15', 'no'),
(17, 1, '2020-02-23 12:25:11', 'no'),
(18, 6, '2020-02-23 12:27:08', 'no'),
(19, 1, '2020-02-24 13:23:17', 'no'),
(20, 1, '2020-02-24 16:25:13', 'no'),
(21, 1, '2020-02-25 04:37:19', 'no'),
(22, 1, '2020-02-25 08:35:20', 'no'),
(23, 1, '2020-02-25 09:46:40', 'no'),
(24, 1, '2020-02-25 09:58:16', 'no'),
(25, 6, '2020-02-25 11:13:36', 'no'),
(26, 6, '2020-02-25 13:04:36', 'no'),
(27, 1, '2020-02-26 05:33:06', 'no'),
(28, 1, '2020-02-26 05:41:46', 'no'),
(29, 1, '2020-02-26 05:41:59', 'no'),
(30, 6, '2020-02-26 06:25:51', 'no'),
(31, 15, '2020-02-26 08:12:22', 'no'),
(32, 15, '2020-02-26 08:30:30', 'no'),
(33, 15, '2020-02-26 08:37:58', 'no'),
(34, 12, '2020-02-26 09:01:09', 'no'),
(35, 17, '2020-02-26 09:42:18', 'no'),
(36, 17, '2020-02-26 12:00:30', 'no'),
(37, 17, '2020-02-26 16:22:22', 'no'),
(38, 17, '2020-02-27 05:41:20', 'no'),
(39, 17, '2020-02-27 06:22:29', 'no'),
(40, 15, '2020-02-27 09:51:59', 'no'),
(41, 17, '2020-02-27 11:50:40', 'no'),
(42, 17, '2020-02-27 13:24:44', 'no'),
(43, 17, '2020-02-27 15:44:47', 'no'),
(44, 17, '2020-02-27 15:46:31', 'no'),
(45, 15, '2020-02-27 15:48:39', 'no'),
(46, 17, '2020-02-27 16:07:39', 'no'),
(47, 17, '2020-02-27 16:16:55', 'no'),
(48, 14, '2020-02-27 16:22:11', 'no'),
(49, 14, '2020-02-27 16:39:57', 'no'),
(50, 17, '2020-02-27 18:03:36', 'no'),
(51, 14, '2020-02-27 18:04:23', 'no'),
(52, 17, '2020-02-27 18:05:56', 'no'),
(53, 17, '2020-02-27 20:02:38', 'no'),
(54, 17, '2020-02-27 20:03:44', 'no'),
(55, 17, '2020-02-27 21:51:47', 'no'),
(56, 17, '2020-02-27 22:14:40', 'no'),
(57, 17, '2020-02-28 01:51:46', 'no'),
(58, 15, '2020-02-28 02:03:05', 'no'),
(59, 15, '2020-02-28 02:24:28', 'no'),
(60, 15, '2020-02-28 02:27:04', 'no'),
(61, 17, '2020-02-28 03:09:25', 'no'),
(62, 15, '2020-02-28 03:22:32', 'no'),
(63, 15, '2020-02-28 04:27:26', 'no'),
(64, 15, '2020-02-28 04:28:00', 'no'),
(65, 17, '2020-02-28 04:32:30', 'no'),
(66, 15, '2020-02-28 04:36:54', 'no'),
(67, 17, '2020-02-28 04:37:56', 'no'),
(68, 17, '2020-02-28 04:42:39', 'no'),
(69, 15, '2020-02-28 04:43:50', 'no'),
(70, 17, '2020-02-28 04:45:43', 'no'),
(71, 15, '2020-02-28 05:33:26', 'no'),
(72, 17, '2020-02-28 06:00:07', 'no'),
(73, 17, '2020-02-28 06:11:38', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transid` int(11) NOT NULL,
  `fromid` int(11) NOT NULL,
  `toid` int(11) NOT NULL,
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transid`, `fromid`, `toid`, `bid`) VALUES
(53, 15, 17, 65),
(56, 17, 15, 69);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` text NOT NULL,
  `uidusers` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `upassword` text NOT NULL,
  `college` text NOT NULL,
  `uimage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uidusers`, `email`, `upassword`, `college`, `uimage`) VALUES
(15, 'salman', 'marvin', '1234@456.com', '$2y$10$QM8fM1twBoGPH0/BEquy4.bSdrxeRH6p6QdA2GJKJMG95qLQ3Rsc2', '', 'upload/15.jpg'),
(17, 'kaushal', 'kaushal123', 'yajuvendrachahal98@gmail.com', '$2y$10$y/Ussop3YHU8Du9M/ZkyfulfP/Ou0jPlCJtRELoWuQ/GGcZWLZkTW', '', 'upload/17.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `validuserr`
--

CREATE TABLE `validuserr` (
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validuserr`
--

INSERT INTO `validuserr` (`email`) VALUES
('kaushalmistry2611@gmail.com'),
('marvinraval99@gmail.com'),
('17cp032@bvmengineering.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`Msg_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `Msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
