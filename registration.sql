-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 09:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `coursedis` varchar(255) DEFAULT NULL,
  `passmark` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursename`, `coursedis`, `passmark`) VALUES
(14, 'c++', 'it is a good progamring language', 0),
(15, '', 'a strong one ', 0),
(16, '', 'a strong one ', 0),
(17, '', 'a strong one ', 0),
(18, '', 'a strong one ', 0),
(19, '', 'testtest', 0),
(20, '', 'testtest', 0),
(21, '', 'testjava', 0),
(22, '', 'a good course', 0),
(23, '', 'testtest123444444', 0),
(24, 'newcourse', 'a good course', 0),
(25, 'newcourse1', 'a good course1', 0),
(26, 'newcourse', 'a good course', 0),
(27, 'testmark', 'testmark', 50),
(28, 'python', 'a good one', 50),
(29, 'test1235', 'a good course1', 50),
(30, 'newcourse', 'a good course', 50);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `setionID` int(11) NOT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `coursegrade` double DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sectioncourse`
--

CREATE TABLE `sectioncourse` (
  `setionID` int(11) NOT NULL,
  `studentname` varchar(255) DEFAULT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `coursegrade` double DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectioncourse`
--

INSERT INTO `sectioncourse` (`setionID`, `studentname`, `coursename`, `coursegrade`, `courseid`, `id`) VALUES
(1, 'murad', 'c++', 80, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `course` varchar(255) NOT NULL,
  `grade` varchar(8) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `PASSWORD`, `course`, `grade`, `isActive`, `type`) VALUES
(6, 'trtrrtrrrrrrr111111111111111111111111111', 'msamgghman75@gmail.com', '$2y$10$7zI58owF466V920hLetVEeXysKfMXBtJM3AQn4obByI5gAxB8Akvi', 'c++', '50', 1, 'user'),
(8, '123', 'muradsammantest1@gmail.com', '$2y$10$6KIQcktTNhOArQTJTabaS.zTJ.LGZhDHQmeN67kvuWz3Cs8XnsOl.', '', '0', 0, 'user'),
(10, 'murad', 'enghamzatest', '$2y$10$FlaiU08q2XHZX5o2jznER.FdsVdhy2o08zh66JGfK5cTstCyLYfEi', '', '0', NULL, 'user'),
(11, 'murad', 'enghamzatest', '$2y$10$c6dB599g5rxJm08.lISdaO6uLCgHc3NIcjpyGIOR407uFGM84xQH6', '', '0', NULL, 'user'),
(12, 'murad', 'enghamzatest', '$2y$10$C.apfUPkosMu.XkfOtMntuEgrLgJGFFHNDvBkTG1XmFYo1lx3xft.', '', '0', NULL, 'user'),
(19, 'enghamzatest', 'msamman75@gmail.com', '$2y$10$VJ3AoDddgGYVz7HQgjB8P.I/MR.Q6V9yCEOsxgoJj0qJ3r72NGHZy', '', '50', 0, 'admin'),
(20, 'enghamzatest', 'msamman75@gmail.com', '$2y$10$G.8gO6sbK26IOC3hc4RqzuEydnWZ5SqoO/eM7cgEII4GBiEAanc16', '', NULL, 0, 'admin'),
(22, 'admin', 'admin@admin.com', '$2y$10$2RTDn3kHawR12tAxa0828eKvzyO5S3oiKhgAY9JXVNberCl32Masi', '', NULL, 0, 'admin'),
(24, 'test', 'test@test.com', '$2y$10$EVxWsyJb6Xm1pr3grsUU3.rxWltt14iIUFOcPaIPghIElMwjSqAXu', '', NULL, 1, 'user'),
(25, 'abdullah', 'Abdullah123456789@gmail.com', '$2y$10$uNhcsdMjq5ikvOqW9yLYWOxhGPJZYMEDMDLxNInY.zH9bTYpjQB6e', '', NULL, 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`setionID`),
  ADD KEY `courseid` (`courseid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sectioncourse`
--
ALTER TABLE `sectioncourse`
  ADD PRIMARY KEY (`setionID`),
  ADD KEY `courseid` (`courseid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `setionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sectioncourse`
--
ALTER TABLE `sectioncourse`
  MODIFY `setionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`),
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sectioncourse`
--
ALTER TABLE `sectioncourse`
  ADD CONSTRAINT `sectioncourse_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`),
  ADD CONSTRAINT `sectioncourse_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
