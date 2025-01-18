-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 03:33 AM
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
-- Database: `bookkeepdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintbl`
--

CREATE TABLE `admintbl` (
  `Admin_ID` int(11) NOT NULL,
  `FName` varchar(20) DEFAULT NULL,
  `LName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admintbl`
--

INSERT INTO `admintbl` (`Admin_ID`, `FName`, `LName`, `Email`, `Pass`) VALUES
(2, 'John', 'Doe', 'john@gmail.com', 'john123'),
(3, 'Jane', 'Doe', 'jane@gmail.com', 'jane123');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Book_Title` varchar(60) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Author` varchar(30) DEFAULT NULL,
  `Publisher` varchar(30) DEFAULT NULL,
  `Publication_Year` int(10) DEFAULT NULL,
  `Book_Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Title`, `Genre`, `Author`, `Publisher`, `Publication_Year`, `Book_Image`) VALUES
(1031, 'Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 'J.K. Rowling', 'Scholastic, Inc.', 1997, 'uploads/fantasy.jpg'),
(1032, 'Harry Potter and the Prisoner of Azkaban', 'Fantasy', 'J.K. Rowling', 'Scholastic, Inc.', 1998, 'uploads/fantasy1.jpg'),
(1033, 'Harry Potter and the Goblet of Fire', 'Fantasy', 'J.K. Rowling', 'Scholastic, Inc.', 2000, 'uploads/fantasy2.jpg'),
(1034, 'Norse Mythology', 'Folklore', 'Neil Gaiman', 'W. W. Norton & Company', 2017, 'uploads/folklore1.jpg'),
(1035, 'Mythology: Timeless Tales of Gods and Heroes', 'Folklore', 'Edith Hamilton', 'Back Bay Books', 1942, 'uploads/folklore2.jpg'),
(1036, 'The Fault in Our Stars', 'Romance', 'John Green', 'Dutton Books', 2012, 'uploads/romance1.jpg'),
(1037, 'Me Before You', 'Romance', 'Jojo Moyes', 'Pamela Dorman Books', 2012, 'uploads/romance2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `borrowedtbl`
--

CREATE TABLE `borrowedtbl` (
  `Borrower_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Borrower` varchar(50) NOT NULL,
  `DateBorrowed` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `AdminFName` varchar(30) NOT NULL,
  `AdminLName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowedtbl`
--

INSERT INTO `borrowedtbl` (`Borrower_ID`, `Book_ID`, `Borrower`, `DateBorrowed`, `ReturnDate`, `AdminFName`, `AdminLName`) VALUES
(38, 1031, 'Jai', '2024-07-14', '2024-07-25', 'Jane', 'Doe'),
(39, 1032, 'Ju', '2024-07-14', '2024-07-26', 'Jane', 'Doe'),
(40, 1031, 'juju', '2024-07-14', '2024-07-27', 'Jane', 'Doe'),
(41, 1032, 'jew', '2024-07-14', '2024-07-31', 'Jane', 'Doe');

-- --------------------------------------------------------

--
-- Table structure for table `inventorytbl`
--

CREATE TABLE `inventorytbl` (
  `Inventory_ID` int(11) NOT NULL,
  `Book_ID` int(11) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventorytbl`
--

INSERT INTO `inventorytbl` (`Inventory_ID`, `Book_ID`, `Status`, `Stock`) VALUES
(27, 1031, 'available', 3),
(28, 1032, 'available', 3),
(29, 1033, 'available', 5),
(30, 1034, 'available', 5),
(31, 1035, 'available', 5),
(32, 1036, 'available', 5),
(33, 1037, 'available', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintbl`
--
ALTER TABLE `admintbl`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `borrowedtbl`
--
ALTER TABLE `borrowedtbl`
  ADD PRIMARY KEY (`Borrower_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `inventorytbl`
--
ALTER TABLE `inventorytbl`
  ADD PRIMARY KEY (`Inventory_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintbl`
--
ALTER TABLE `admintbl`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `borrowedtbl`
--
ALTER TABLE `borrowedtbl`
  MODIFY `Borrower_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `inventorytbl`
--
ALTER TABLE `inventorytbl`
  MODIFY `Inventory_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowedtbl`
--
ALTER TABLE `borrowedtbl`
  ADD CONSTRAINT `borrowedtbl_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`);

--
-- Constraints for table `inventorytbl`
--
ALTER TABLE `inventorytbl`
  ADD CONSTRAINT `inventorytbl_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
