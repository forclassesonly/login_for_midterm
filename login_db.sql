-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 03:32 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `A_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `A_code` int(11) NOT NULL,
  `Created_at` datetime NOT NULL,
  `Expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`A_id`, `user_id`, `A_code`, `Created_at`, `Expiration`) VALUES
(37, 1, 847672, '2021-04-01 14:45:41', '2021-04-01 14:48:41'),
(53, 1, 360418, '2021-04-01 18:11:06', '2021-04-01 18:16:06'),
(54, 1, 100201, '2021-04-01 18:12:56', '2021-04-01 18:17:56'),
(55, 1, 529946, '2021-04-03 13:10:48', '2021-04-03 13:15:48'),
(56, 28, 209769, '2021-04-03 13:13:46', '2021-04-03 13:18:46'),
(57, 1, 527228, '2021-04-03 14:08:00', '2021-04-03 14:13:00'),
(58, 1, 166968, '2021-04-03 14:10:14', '2021-04-03 14:15:14'),
(59, 28, 654633, '2021-04-03 14:10:56', '2021-04-03 14:15:56'),
(60, 0, 739800, '2021-04-05 16:05:10', '2021-04-05 16:10:10'),
(61, 0, 501484, '2021-04-05 16:05:41', '2021-04-05 16:10:41'),
(62, 1, 492075, '2021-04-05 16:11:06', '2021-04-05 16:16:06'),
(63, 1, 979846, '2021-04-28 02:24:43', '2021-04-28 02:29:43'),
(64, 1, 974436, '2021-04-28 02:32:22', '2021-04-28 02:37:22'),
(65, 1, 758843, '2021-04-28 02:41:05', '2021-04-28 02:46:05'),
(66, 1, 752745, '2021-04-28 02:46:37', '2021-04-28 02:51:37'),
(67, 31, 683163, '2021-04-28 03:04:30', '2021-04-28 03:09:30'),
(68, 1, 126474, '2021-04-28 20:33:39', '2021-04-28 20:38:39'),
(69, 1, 322042, '2021-04-28 20:36:40', '2021-04-28 20:41:40'),
(70, 1, 954336, '2021-04-28 20:50:31', '2021-04-28 20:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eid` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `userid`, `activity`, `date_time`) VALUES
(1, '1', 'Login', '2021-04-27 18:46:46'),
(3, '31', 'Login', '2021-04-27 19:04:41'),
(4, '31', 'Logout', '2021-04-27 19:04:44'),
(6, '1', 'Login', '2021-04-28 12:33:48'),
(7, '1', 'Logout', '2021-04-28 12:35:10'),
(8, '1', 'Login', '2021-04-28 12:36:47'),
(9, '1', 'Logout', '2021-04-28 12:37:09'),
(10, '1', 'Login', '2021-04-28 12:50:38'),
(11, '1', 'Logout', '2021-04-28 12:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`) VALUES
(1, 'ADMIN', 'ADMIN123', ''),
(28, 'rachel10', 'Rachel3@', 'rhil@gmail.com'),
(31, 'minato', 'Minato123?', 'minato@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
