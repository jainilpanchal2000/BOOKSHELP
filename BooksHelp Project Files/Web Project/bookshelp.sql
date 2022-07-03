-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2019 at 10:06 AM
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
  `sid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `bookphoto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`sid`, `bid`, `bookname`, `authorname`, `subject`, `branch`, `price`, `bookphoto`) VALUES
(1, 1, 'C++ Programming', 'Stroustroup', 'C++', 'Compute', '200', 'book/3.jpeg'),
(1, 2, 'OS Concept', 'George', 'Operating System', 'Computer', '150', 'book/5.jpeg'),
(1, 3, 'Python Programming', 'Nathan Clark', 'Python', 'Computer', '250', 'book/4.jpeg'),
(2, 4, 'Complete Reference PHP', 'Steve', 'Web Tech', 'Computer', '300', 'book/2.jpeg'),
(2, 5, 'Java', 'Balagurusamy', 'Java', 'Computer', '190', 'book/1.jpeg'),
(1, 6, 'java', 'abc', 'java', 'Computer', '520', 'book/3.jpg');

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
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `branch` varchar(15) NOT NULL,
  `year` varchar(20) NOT NULL,
  `college` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `branch`, `year`, `college`, `address`, `photo`) VALUES
(1, 'Computer', 'Third Year', 'BVM', 'Shivshakti Society', 'upload/kaushal.jpg'),
(2, 'Computer', 'Third Year', 'BVM', 'Shivshakti Society', 'upload/sahid.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `bdate` date NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `cpasswd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `bdate`, `mobile`, `passwd`, `cpasswd`) VALUES
(1, 'Kaushal Mistry', 'kaushalmistry2611@gmail.com', '0000-00-00', 8153047061, 'abc@123', 'abc@123'),
(2, 'Sahid Vhora', 'sahidvhora51@gmail.com', '0000-00-00', 9106093843, 'xyz@123', 'xyz@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`Msg_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `Msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
