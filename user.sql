-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 01:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_name`, `id`) VALUES
('design', 2),
('testing', 3),
('mobile', 4),
('it', 5),
('development', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female','other','') NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `firstName`, `lastName`, `email`, `password`, `gender`, `hobbies`, `departmentId`, `is_deleted`, `profile_picture`) VALUES
(1, 'yagnesh', 'patoriya', 'mail@mail.com', '$2b$10$KHskz9ZffQrjRa2hSoQws.8p5B1qZptxwIWbCPLtXJEsWj7SNpXd2', 'male', 'play, sing', 2, 0, ''),
(2, 'harsh', 'karia', 'mail@mail.com', '1234650', 'male', 'play, sing', 2, 0, ''),
(4, 'savan', 'ponda', 'mail@mail.com', '1234650', 'male', 'play, sing', 2, 0, ''),
(5, 'dhruval', 'h', 'mail@mail.com', '$2b$10$GppAzQrx7FUuAMphQXEi0uTx00mRsYZXPT25h27xXpQjuhZ/Bm4mG', 'male', 'play, sing', 3, 0, ''),
(6, 'jayesh', 'p', 'jayesh@mail.com', '$2b$10$Jd9QEzzV3WyXkpgaPGUMIuhNGkjm6iHNLzfiN3wZ8cA8efvqvLgaa', 'male', 'play, sing', 4, 0, ''),
(7, 'niknj', 'k', 'nikunj@mail.com', '$2b$10$qnU.smtOy3awBn99kNd.l.UXhYmq/eNI0fFBh3e00fFGw8Ul9XJ7C', 'male', 'play, sing', 4, 1, ''),
(8, 'mehul', 'savaliya', 'mehul@mail.com', '$2b$10$g43Z.IlvWqJegVxZcMFiT.x4.Al1bkaog7JRUl.vVNIWXod5cU3SC', 'male', 'play, sing', 1, 0, '/public/assets/1711625093509.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
