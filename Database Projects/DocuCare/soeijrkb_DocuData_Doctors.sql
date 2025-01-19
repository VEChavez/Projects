-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2025 at 04:10 AM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soeijrkb_DocuData_Doctors`
--

DELIMITER $$
--
-- Procedures
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `doctors_order`
--

CREATE TABLE `doctors_order` (
  `Doctor_Order_ID` int(11) NOT NULL,
  `Ordered_by_Doctor` int(20) DEFAULT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Doctor_Order_Date` datetime DEFAULT NULL,
  `Observation_Progress` text DEFAULT NULL,
  `Doctor_Order` text DEFAULT NULL,
  `Current_Status` varchar(5) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors_order`
--

INSERT INTO `doctors_order` (`Doctor_Order_ID`, `Ordered_by_Doctor`, `Patient_ID`, `Doctor_Order_Date`, `Observation_Progress`, `Doctor_Order`, `Current_Status`, `Status`, `Deletion_Date`) VALUES
(43, 202409684, 202411014, '2024-12-27 15:18:00', '\r\nPatient presents with a 2-day history of fever (39.2Â°C), chills, and generalized body aches; physical exam reveals mild throat redness without exudates, clear lungs, and no rash noted; febrile illness of uncertain origin, likely viral or bacterial, pending diagnostic workup.', '\r\nMonitor vital signs every 4 hours, administer Paracetamol 500 mg orally every 6 hours as needed for fever, start IV Normal Saline at 60 mL/hour, and order CBC, blood culture, and urinalysis.', 'A', 'o', NULL),
(44, 202409684, 202411016, '2024-12-28 15:23:00', 'The patient presents with a moderate headache, rated 7/10 in intensity, with no signs of nausea or vomiting; vital signs stable, no neurological deficits observed; headache appears tension-type in nature, and pain management with Paracetamol initiated.', 'Monitor vital signs every 4 hours and administer Paracetamol 500 mg orally every 6 hours as needed for pain, encourage oral hydration, and consider ordering a CBC and CT scan of the head if the headache persists or worsens.', '', 'o', NULL),
(48, 202409684, 202411018, '2025-01-03 14:51:00', 'test', 'test', 'D', 'o', NULL),
(50, 202409684, 202411014, '2025-01-12 12:22:00', '- Patient seems to feel better\r\n- Normal temperature', '- Monitor vital signs every 4 hours', 'R', 'o', NULL),
(51, 202409684, 202411016, '2025-01-13 12:37:00', '- Patient feels moderately better\r\n- No signs of nausea', '- Monitor vitals every 4 hours', '', 'o', NULL),
(52, 202409684, 202411014, '2025-01-15 15:57:00', '- Patient seems to successfully recover', '- Continue monitoring of patient.', 'R', 'o', NULL),
(53, 202409684, 202411014, '2025-01-16 09:54:00', 'Test', 'Test', '', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_prn`
--

CREATE TABLE `medication_record_prn` (
  `Medication_PRN_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `Medication_PRN_Date` date DEFAULT NULL,
  `PRN_Medication` text DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication_record_prn`
--

INSERT INTO `medication_record_prn` (`Medication_PRN_ID`, `Patient_ID`, `Ordered_By_Doctor`, `Medication_PRN_Date`, `PRN_Medication`, `Status`, `Deletion_Date`) VALUES
(23, 202411016, 202409684, '2024-12-18', 'test', 'o', NULL),
(24, 202411014, 202409684, '2024-12-27', 'Administer Paracetamol 500 mg orally every 6 hours as needed for fever above 38.5Â°C or Ibuprofen 400 mg every 8 hours as needed for pain.', 'o', NULL),
(25, 202411014, 202409684, '2025-01-12', 'â€“ Administer Paracetamol for fever or discomfort', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_so`
--

CREATE TABLE `medication_record_so` (
  `Medication_SO_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `Medication_SO_Date` date DEFAULT NULL,
  `Hospital_Day` varchar(10) DEFAULT NULL,
  `Standing_Order` text DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication_record_so`
--

INSERT INTO `medication_record_so` (`Medication_SO_ID`, `Patient_ID`, `Ordered_By_Doctor`, `Medication_SO_Date`, `Hospital_Day`, `Standing_Order`, `Status`, `Deletion_Date`) VALUES
(22, 202411016, 202409684, '2024-12-18', 'Monday', '', 'o', NULL),
(23, 202411014, 202409684, '2024-12-27', 'Friday', 'Monitor vital signs every 4 hours and ensure hydration with oral fluids or IV Normal Saline at 60 mL/hour if needed.', 'o', NULL),
(34, 202411014, 202409684, '2025-01-12', 'Sunday', 'â€“ Encourage frequent fluid intake (water, herbal teas, etc.)', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_stat`
--

CREATE TABLE `medication_record_stat` (
  `Medication_STAT_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `Medication_STAT_Date` date DEFAULT NULL,
  `STAT_Order` text DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication_record_stat`
--

INSERT INTO `medication_record_stat` (`Medication_STAT_ID`, `Patient_ID`, `Ordered_By_Doctor`, `Medication_STAT_Date`, `STAT_Order`, `Status`, `Deletion_Date`) VALUES
(23, 202411016, 202409684, '2024-12-18', 'test', 'o', NULL),
(24, 202411014, 202409684, '2024-12-28', 'Give IV Ceftriaxone 1g immediately if sepsis is suspected or confirmed by blood culture.', 'o', NULL),
(25, 202411014, 202409684, '2025-01-12', 'â€“ Administer IV for hydration in severe cases of dehydration', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standing_order`
--

CREATE TABLE `standing_order` (
  `Standing_Order_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_by_Doctor` int(20) DEFAULT NULL,
  `Date_Ordered` date DEFAULT NULL,
  `Order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standing_order`
--

INSERT INTO `standing_order` (`Standing_Order_ID`, `Patient_ID`, `Ordered_by_Doctor`, `Date_Ordered`, `Order`) VALUES
(39, 202411015, 202409685, '2024-12-18', 'testtest'),
(42, 202411016, 202409684, '2025-01-03', 'test'),
(46, 202411014, 202409684, '2025-01-12', 'â€“ Encourage frequent intake of fluids (water, herbal teas)\r\n- Support immune system with vitamin c supplementation.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors_order`
--
ALTER TABLE `doctors_order`
  ADD PRIMARY KEY (`Doctor_Order_ID`),
  ADD KEY `Ordered_by_Doctor` (`Ordered_by_Doctor`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `medication_record_prn`
--
ALTER TABLE `medication_record_prn`
  ADD PRIMARY KEY (`Medication_PRN_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`);

--
-- Indexes for table `medication_record_so`
--
ALTER TABLE `medication_record_so`
  ADD PRIMARY KEY (`Medication_SO_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`);

--
-- Indexes for table `medication_record_stat`
--
ALTER TABLE `medication_record_stat`
  ADD PRIMARY KEY (`Medication_STAT_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`);

--
-- Indexes for table `standing_order`
--
ALTER TABLE `standing_order`
  ADD PRIMARY KEY (`Standing_Order_ID`),
  ADD KEY `Ordered_by_Doctor` (`Ordered_by_Doctor`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors_order`
--
ALTER TABLE `doctors_order`
  MODIFY `Doctor_Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `medication_record_prn`
--
ALTER TABLE `medication_record_prn`
  MODIFY `Medication_PRN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `medication_record_so`
--
ALTER TABLE `medication_record_so`
  MODIFY `Medication_SO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `medication_record_stat`
--
ALTER TABLE `medication_record_stat`
  MODIFY `Medication_STAT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `standing_order`
--
ALTER TABLE `standing_order`
  MODIFY `Standing_Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors_order`
--
ALTER TABLE `doctors_order`
  ADD CONSTRAINT `doctors_order_ibfk_1` FOREIGN KEY (`Ordered_by_Doctor`) REFERENCES `soeijrkb_DocuData`.`user_tbl` (`User_ID`),
  ADD CONSTRAINT `doctors_order_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `soeijrkb_DocuData`.`patient_info` (`Patient_ID`);

--
-- Constraints for table `medication_record_prn`
--
ALTER TABLE `medication_record_prn`
  ADD CONSTRAINT `medication_record_prn_ibfk_1` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `soeijrkb_DocuData`.`user_tbl` (`User_ID`),
  ADD CONSTRAINT `medication_record_prn_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `soeijrkb_DocuData`.`patient_info` (`Patient_ID`);

--
-- Constraints for table `medication_record_so`
--
ALTER TABLE `medication_record_so`
  ADD CONSTRAINT `medication_record_so_ibfk_1` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `soeijrkb_DocuData`.`user_tbl` (`User_ID`),
  ADD CONSTRAINT `medication_record_so_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `soeijrkb_DocuData`.`patient_info` (`Patient_ID`),
  ADD CONSTRAINT `medication_record_so_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `soeijrkb_DocuData`.`patient_info` (`Patient_ID`);

--
-- Constraints for table `medication_record_stat`
--
ALTER TABLE `medication_record_stat`
  ADD CONSTRAINT `medication_record_stat_ibfk_1` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `soeijrkb_DocuData`.`user_tbl` (`User_ID`);

--
-- Constraints for table `standing_order`
--
ALTER TABLE `standing_order`
  ADD CONSTRAINT `standing_order_ibfk_1` FOREIGN KEY (`Ordered_by_Doctor`) REFERENCES `soeijrkb_DocuData`.`user_tbl` (`User_ID`),
  ADD CONSTRAINT `standing_order_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `soeijrkb_DocuData`.`patient_info` (`Patient_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
