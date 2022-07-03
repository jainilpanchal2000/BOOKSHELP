-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 07:59 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkhere`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `user_id` int(20) NOT NULL,
  `loc_id` int(20) NOT NULL,
  `park_opt` varchar(10) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`user_id`, `loc_id`, `park_opt`, `fdate`, `tdate`) VALUES
(0, 1, 'abc', '2020-04-08', '2020-04-09'),
(0, 1, 'Premium', '2020-01-11', '2020-04-18'),
(0, 2, 'Premium', '2020-04-11', '2020-04-15'),
(0, 1, 'Premium', '2020-04-21', '2020-04-30'),
(1, 3, 'Basic', '2020-04-08', '2020-04-10'),
(1, 3, 'Standard', '2020-04-11', '2020-04-13'),
(1, 3, 'Premium', '2020-04-09', '2020-04-12'),
(3, 1, 'Premium', '2020-04-09', '2020-04-30'),
(3, 2, 'Premium', '2020-09-10', '2020-09-23'),
(3, 3, 'Premium', '2020-04-20', '2020-04-22'),
(4, 1, 'Basic', '2020-04-28', '2020-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `no` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`no`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Nisarg', 'abc@xyz.com', 'Bookshelp', 'Hello'),
(2, 'Parth Narodia', 'xyz@abc.com', 'Hackathon', 'Thank You'),
(3, 'Kaushal Mistry ', '17cp023@bvmengineering.ac.in', 'Review', 'Thank you for the service. It\'s been nice to find a place where I can park my vehicle without worrying about safety. \r\nThanks a lot!');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc_id` int(20) NOT NULL,
  `parkingname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `capacity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `parkingname`, `address`, `city`, `pincode`, `capacity`) VALUES
(1, 'Om Parking', 'Borsad Chowkdi', 'Anand', 388001, 30),
(2, 'Krishna Parking', 'Chikuwadi', 'Surat', 356789, 50),
(3, 'Anchor Parking', 'Ganesh Chowkdi', 'Anand', 388001, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`email`) VALUES
('jainilpanchal2000@gmail.com'),
('kaushalmistry2611@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `passwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `uname`, `email`, `contactno`, `passwd`) VALUES
(1, 'Kaushal Mistry', 'abc@xyz.com', 8153047061, 'abc@123'),
(2, 'Hasmukhbhai', 'hnmistry@gmail.com', 9924874427, '123456'),
(3, 'nisarg', 'nisarg@gmail.com', 8153047061, '2042003'),
(4, 'Niraj Mahant', 'niraj@gmail.com', 5963214782, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
