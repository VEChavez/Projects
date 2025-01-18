-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 11:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabaygubatdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Admin_ID` int(11) NOT NULL,
  `UName` varchar(20) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Admin_ID`, `UName`, `FName`, `LName`, `Email`, `Password`) VALUES
(7, 'Binsilog', 'Vincent', 'Chavez', 'bruh@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_time`
--

CREATE TABLE `scheduled_time` (
  `Schedule_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Activity` varchar(20) DEFAULT NULL,
  `Location` varchar(60) DEFAULT NULL,
  `Schedule` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Contact` int(12) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `FName`, `LName`, `Contact`, `Email`, `Password`) VALUES
(9, 'Vincent', 'Chavez', 2147483647, 'bins@gmail.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `scheduled_time`
--
ALTER TABLE `scheduled_time`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scheduled_time`
--
ALTER TABLE `scheduled_time`
  MODIFY `Schedule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scheduled_time`
--
ALTER TABLE `scheduled_time`
  ADD CONSTRAINT `scheduled_time_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
