-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 10:00 AM
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
-- Database: `family bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shubham Patil', 'Priyanka Kale', 100, '2021-12-10 10:08:56'),
(2, 'Jyoti Kadam', 'Pallavi Pawar', 150, '2021-12-10 12:08:56'),
(3, 'Shivani Bhalerao', 'Pratiksha Shinde', 100, '2021-12-10 14:55:43'),
(4, 'Rahul Mali', 'Jyoti Kadam', 200, '2021-12-10 14:58:55'),
(5, 'Priyanka Kale', 'Jivan Bhokare', 1000, '2021-12-10 16:49:16'),
(6, 'Pranita Rathod', 'Santosh Magar', 2000, '2021-12-10 18:41:06'),
(7, 'Jivan Bhokare', 'Shubham Patil', 3000, '2021-12-10 18:50:40'),
(8, 'Jyoti Kadam', 'Shivani Bhalerao', 5000, '2021-12-10 20:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Shubham Patil', 'Shubhampatil@gmail.com', 50000),
(2, 'Rahul Mali', 'Rahul98@gmail.com', 34900),
(3, 'Pranita Rathod', 'rathodpranita@gmail.com', 44800),
(4, 'Priyanka Kale', 'priyankakale@gmail.com', 60200),
(5, 'Pratiksha Shinde', 'shindepratiksha@gmail.com', 42200),
(6, 'Jyoti Kadam', 'jyotikadam@gmail.com', 24000),
(7, 'Santosh Magar', 'santoshmagar90@gmail.com', 80000),
(8, 'Pallavi Pawar', 'pallavipawar9@gmail.com', 48100),
(9, 'Jivan Bhokare', 'jivanbhokare8@gmail.com', 30000),
(10, 'Shivani Bhalerao', 'bhaleraoshivani@gmail.com', 68500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
