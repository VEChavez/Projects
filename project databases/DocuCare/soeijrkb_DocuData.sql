-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2025 at 04:09 AM
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
-- Database: `soeijrkb_DocuData`
--

DELIMITER $$
--
-- Procedures
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ivfr_fast_drip`
--

CREATE TABLE `ivfr_fast_drip` (
  `Patient_ID` int(20) DEFAULT NULL,
  `SFD_Date` date DEFAULT NULL,
  `IVF` varchar(255) DEFAULT NULL,
  `Volume` varchar(255) DEFAULT NULL,
  `Incorporation` varchar(255) DEFAULT NULL,
  `Time_Taken` time DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ivfr_fast_drip`
--

INSERT INTO `ivfr_fast_drip` (`Patient_ID`, `SFD_Date`, `IVF`, `Volume`, `Incorporation`, `Time_Taken`, `Remarks`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-20', 'D5NSS (5% Dextrose in Normal Saline Solution)', '500 mL', '1 mg Vitamin B Complex', '04:00:00', 'Monitored closely, no complications.', 202409683, 'o', NULL),
(202411015, '2024-11-22', 'LR (Lactated Ringer\'s Solution)', '1,000 mL', 'None', '04:00:00', 'Patient tolerated well.', 202409681, 'o', NULL),
(202411016, '2024-11-21', 'D5W (5% Dextrose in Water)', '750 mL', '2 mg Multivitamins', '04:00:00', 'Mild redness around IV site, treated with repositioning.', 202409683, 'o', NULL),
(202411017, '2024-11-23', 'NSS (Normal Saline Solution)', '500 mL', '10 mg Potassium Chloride', '04:00:00', 'Good response, hydration improved.', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ivfr_iv`
--

CREATE TABLE `ivfr_iv` (
  `Patient_ID` int(20) DEFAULT NULL,
  `IV_Date` date DEFAULT NULL,
  `Bottle_No` varchar(255) DEFAULT NULL,
  `IV_Solution` varchar(255) DEFAULT NULL,
  `Volume` varchar(255) DEFAULT NULL,
  `Incorporation` varchar(255) DEFAULT NULL,
  `Regulation` varchar(255) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `Time_End` datetime DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ivfr_iv`
--

INSERT INTO `ivfr_iv` (`Patient_ID`, `IV_Date`, `Bottle_No`, `IV_Solution`, `Volume`, `Incorporation`, `Regulation`, `Start_Time`, `Time_End`, `Remarks`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-20', '1', 'D5NSS (5% Dextrose in Normal Saline Solution)', '500 mL', '1 mg Vitamin B Complex', '100 mL/hr', '04:00:00', '2024-11-20 17:00:00', 'Patient showed improvement after infusion.', 202409683, 'o', NULL),
(202411015, '2024-11-22', 'IVB67890', 'Dextrose 5%', '1000 mL', 'IV infusion', 'Continuous', '04:00:00', '2024-11-26 19:30:00', 'Rehydration therapy.', 202409681, 'o', NULL),
(202411016, '2024-11-21', 'IVB11223', 'Ringer’s Lactate', '500 mL', 'IV infusion', 'Continuous', '04:00:00', '2023-11-14 18:45:00', 'Given for electrolyte balance.', 202409683, 'o', NULL),
(202411017, '2023-07-17', 'IVB33456', 'Normal Saline', '1000 mL', 'IV infusion', 'Continuous', '04:00:00', '2023-07-17 19:00:00', 'To manage dehydration.', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ivfr_side_drips`
--

CREATE TABLE `ivfr_side_drips` (
  `Patient_ID` int(20) DEFAULT NULL,
  `SD_Date` date DEFAULT NULL,
  `Bottle_No` varchar(255) DEFAULT NULL,
  `IV_Solution` varchar(255) DEFAULT NULL,
  `Volume` varchar(255) DEFAULT NULL,
  `Incorporation` varchar(255) DEFAULT NULL,
  `Regulation` varchar(255) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `Time_End` datetime DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ivfr_side_drips`
--

INSERT INTO `ivfr_side_drips` (`Patient_ID`, `SD_Date`, `Bottle_No`, `IV_Solution`, `Volume`, `Incorporation`, `Regulation`, `Start_Time`, `Time_End`, `Remarks`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-20', '001', 'Dextrose 5%', '500 ml', '1L NS', 'IV drip', '10:00:00', '2024-11-20 17:00:00', 'Completed as prescribed', 202409683, 'o', NULL),
(202411015, '2024-11-26', '002', 'Saline', '250 ml', '500 ml D5W', 'Drip', '14:00:00', '2024-11-26 19:30:00', 'Adjusted per doctor\'s instructions', 202409681, 'o', NULL),
(202411016, '2023-11-14', '003', 'Lactated Ringer\'s', '500 ml', '1L NS', 'IV drip', '09:00:00', '2023-11-14 18:45:00', 'No issues noted', 202409683, 'o', NULL),
(202411017, '2023-07-17', '004', 'Normal Saline', '500 ml', '250 ml D5W', 'Drip', '13:00:00', '2023-07-17 19:00:00', 'Well tolerated by the patient', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_diagnostics`
--

CREATE TABLE `kardex_diagnostics` (
  `Patient_ID` int(20) NOT NULL,
  `Diagnostic_Date` date NOT NULL,
  `Diagnostics` varchar(255) DEFAULT NULL,
  `Diagnostics_Category` int(11) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_diagnostics`
--

INSERT INTO `kardex_diagnostics` (`Patient_ID`, `Diagnostic_Date`, `Diagnostics`, `Diagnostics_Category`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411015, '2024-11-26', 'Acute upper respiratory infection', 4, 202409681, 'o', NULL),
(202411017, '2023-07-17', 'Cough with mild wheezing', 5, 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_diagnostics_categories`
--

CREATE TABLE `kardex_diagnostics_categories` (
  `Diagnostics_Checks` int(11) NOT NULL,
  `Categories` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_diagnostics_categories`
--

INSERT INTO `kardex_diagnostics_categories` (`Diagnostics_Checks`, `Categories`) VALUES
(1, 'Request'),
(2, 'Extracted/Done'),
(3, 'Results in'),
(4, 'Relayed'),
(5, 'Acknowledge');

-- --------------------------------------------------------

--
-- Table structure for table `kardex_diet`
--

CREATE TABLE `kardex_diet` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Diet_Date` date DEFAULT NULL,
  `Diet_Category` int(11) DEFAULT NULL,
  `Other_Info` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_diet`
--

INSERT INTO `kardex_diet` (`Patient_ID`, `Diet_Date`, `Diet_Category`, `Other_Info`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-20', 1, NULL, 202409683, 'o', NULL),
(202411015, '2024-11-26', 2, NULL, 202409681, 'o', NULL),
(202411016, '2023-11-14', 4, NULL, 202409681, 'o', NULL),
(202411017, '2023-07-17', 9, 'Regular Diet', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_diet_categories`
--

CREATE TABLE `kardex_diet_categories` (
  `Diet_Checks` int(11) NOT NULL,
  `Categories` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_diet_categories`
--

INSERT INTO `kardex_diet_categories` (`Diet_Checks`, `Categories`) VALUES
(1, 'NPO'),
(2, 'DAT'),
(3, 'BRAT DIET'),
(4, 'SOFT DIET'),
(5, 'General Liquid'),
(6, 'Clear Liquid'),
(7, 'Diet for Age'),
(8, 'Breast Feeding'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `kardex_diet_last_meal`
--

CREATE TABLE `kardex_diet_last_meal` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Meal_Date` date DEFAULT NULL,
  `Last_Meal` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_diet_last_meal`
--

INSERT INTO `kardex_diet_last_meal` (`Patient_ID`, `Meal_Date`, `Last_Meal`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-20', 'Chicken broth, crackers, and apple juice', 202409681, 'o', NULL),
(202411015, '2024-11-26', 'Tomato soup, scrambled eggs, and vanilla pudding', 202409683, 'o', NULL),
(202411016, '2023-11-14', 'Mashed potatoes, scrambled eggs, and soft bread', 202409681, 'o', NULL),
(202411017, '2023-07-17', 'Grilled chicken, rice, and steamed vegetables', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_drips_transfusion`
--

CREATE TABLE `kardex_drips_transfusion` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Drips_Transfusion_Date` date DEFAULT NULL,
  `Drips_Transfusion` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_drips_transfusion`
--

INSERT INTO `kardex_drips_transfusion` (`Patient_ID`, `Drips_Transfusion_Date`, `Drips_Transfusion`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411016, '2024-12-18', 'Administered 1 liter of Lactated Ringer’s over 4 hours via side drips.', 202409681, 'o', NULL),
(202411014, '2025-01-10', 'Enter 500 mL of Normal Saline at 75 mL/hour for 2 hours', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_endorsements`
--

CREATE TABLE `kardex_endorsements` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Endorsement_Date` date DEFAULT NULL,
  `Special_Endorsement` text DEFAULT NULL,
  `Endorsement_Remarks` text DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_endorsements`
--

INSERT INTO `kardex_endorsements` (`Patient_ID`, `Endorsement_Date`, `Special_Endorsement`, `Endorsement_Remarks`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411015, '2024-11-26', 'Antibiotic therapy for cold symptoms.', 'Continue cold medications, monitor pulse and respiratory rate every 4 hours.', 202409683, 'o', NULL),
(202411017, '2023-07-17', 'Cough management and respiratory support.', 'Continue respiratory therapy, monitor oxygen levels, administer cough medication as prescribed.', 202409681, 'o', NULL),
(202411016, '2024-12-18', 'TEST', 'TEST', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_io`
--

CREATE TABLE `kardex_io` (
  `Patient_ID` int(20) DEFAULT NULL,
  `IO_Date` date NOT NULL,
  `IO_Category` int(11) DEFAULT NULL,
  `Other_Info` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_io`
--

INSERT INTO `kardex_io` (`Patient_ID`, `IO_Date`, `IO_Category`, `Other_Info`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-10-15', 1, NULL, 202409683, 'o', NULL),
(202411015, '2024-11-26', 2, NULL, 202409683, 'o', NULL),
(202411016, '2023-11-14', 4, NULL, 202409681, 'o', NULL),
(202411017, '2023-07-17', 3, NULL, 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_io_categories`
--

CREATE TABLE `kardex_io_categories` (
  `IO_Checks` int(11) NOT NULL,
  `Categories` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_io_categories`
--

INSERT INTO `kardex_io_categories` (`IO_Checks`, `Categories`) VALUES
(1, 'Q1'),
(2, 'Q2'),
(3, 'Q4'),
(4, 'Q Shift'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `kardex_iv`
--

CREATE TABLE `kardex_iv` (
  `Patient_ID` int(20) NOT NULL,
  `IVFluid_Date` date NOT NULL,
  `IVFluid` varchar(255) NOT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_iv`
--

INSERT INTO `kardex_iv` (`Patient_ID`, `IVFluid_Date`, `IVFluid`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411015, '2024-11-26', 'Ringer\'s Lactate', 202409683, 'o', NULL),
(202411016, '2023-11-14', 'Dextrose 5% in Water (D5W)', 202409681, 'o', NULL),
(202411017, '2023-07-17', 'Normal Saline (0.9%)', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_medications`
--

CREATE TABLE `kardex_medications` (
  `Patient_ID` int(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `Medication_Name` varchar(255) NOT NULL,
  `Medication_Remarks` varchar(255) NOT NULL,
  `Entered_By_Nurse` int(20) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_medications`
--

INSERT INTO `kardex_medications` (`Patient_ID`, `Date`, `Medication_Name`, `Medication_Remarks`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411015, '2024-11-26', 'Amoxicillin', 'For bacterial infection, twice daily for 7 days.', 202409683, 'o', NULL),
(202411016, '2023-11-14', 'Ibuprofen', 'For fever, every 6 hours as needed.', 202409681, 'o', NULL),
(202411017, '2023-07-17', 'Cough Syrup', 'For dry cough, 10 ml three times daily.', 202409681, 'o', NULL),
(202411016, '2024-12-18', 'TEST', 'TEST', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_notes`
--

CREATE TABLE `kardex_notes` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Date` date NOT NULL,
  `Contraptions` text DEFAULT NULL,
  `Monitoring` text DEFAULT NULL,
  `Other_Endorsement` text DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_notes`
--

INSERT INTO `kardex_notes` (`Patient_ID`, `Date`, `Contraptions`, `Monitoring`, `Other_Endorsement`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-10-15', 'Oxygen mask', 'Vital signs every 4 hours', 'None', 202409683, 'o', NULL),
(202411015, '2024-11-26', 'IV drip (normal saline)', 'Blood pressure and heart rate every 2 hours', 'None', 202409683, 'o', NULL),
(202411016, '2023-11-14', 'Nebulizer', 'Oxygen saturation and respiration rate every 4 hours', 'None', 202409681, 'o', NULL),
(202411017, '2023-07-17', 'None', 'Temperature and pulse rate every 6 hours', 'None', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_tbl`
--

CREATE TABLE `kardex_tbl` (
  `Patient_ID` int(20) NOT NULL,
  `Date` date NOT NULL,
  `Precautions` mediumtext NOT NULL,
  `Hospital_Num` varchar(25) NOT NULL,
  `Weight` float DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_tbl`
--

INSERT INTO `kardex_tbl` (`Patient_ID`, `Date`, `Precautions`, `Hospital_Num`, `Weight`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411015, '2024-11-26', 'Contact precautions due to cold symptoms', '202409685', 72, 202409683, 'o', NULL),
(202411016, '2023-11-14', 'Standard precautions for headache', '202409685', 65, 202409681, 'o', NULL),
(202411017, '2023-07-17', 'Respiratory precautions due to cough', '202409685', 70, 202409681, 'o', NULL),
(202411014, '2024-12-18', 'TEST', '1', 45, 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_vitals`
--

CREATE TABLE `kardex_vitals` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Vitals_Date` date NOT NULL,
  `Vitals_Category` int(11) DEFAULT NULL,
  `Other_Info` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_vitals`
--

INSERT INTO `kardex_vitals` (`Patient_ID`, `Vitals_Date`, `Vitals_Category`, `Other_Info`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-10-15', 1, 'Fever, Temperature monitoring', 202409683, 'o', NULL),
(202411015, '2024-11-26', 3, 'Cold, Pulse and respiratory rate monitoring', 202409683, 'o', NULL),
(202411016, '2023-11-14', 2, 'Headache, Blood pressure monitoring', 202409681, 'o', NULL),
(202411017, '2023-07-17', 4, 'Cough, Monitoring for heart rate', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kardex_vitals_categories`
--

CREATE TABLE `kardex_vitals_categories` (
  `Vitals_Checks` int(11) NOT NULL,
  `Categories` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kardex_vitals_categories`
--

INSERT INTO `kardex_vitals_categories` (`Vitals_Checks`, `Categories`) VALUES
(1, 'Q1'),
(2, 'Q2'),
(3, 'Q4'),
(4, 'FHT');

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_prn_response`
--

CREATE TABLE `medication_record_prn_response` (
  `Medication_PRN_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `PRN_10_6` varchar(20) DEFAULT NULL,
  `PRN_6_2` varchar(20) DEFAULT NULL,
  `PRN_2_10` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_so_response`
--

CREATE TABLE `medication_record_so_response` (
  `Medication_SO_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `SO_10_6` varchar(20) DEFAULT NULL,
  `SO_6_2` varchar(20) DEFAULT NULL,
  `SO_2_10` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication_record_so_response`
--

INSERT INTO `medication_record_so_response` (`Medication_SO_ID`, `Patient_ID`, `Ordered_By_Doctor`, `SO_10_6`, `SO_6_2`, `SO_2_10`) VALUES
(23, 202411014, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medication_record_stat_response`
--

CREATE TABLE `medication_record_stat_response` (
  `Medication_STAT_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Ordered_By_Doctor` int(20) DEFAULT NULL,
  `STAT_10_6` varchar(20) DEFAULT NULL,
  `STAT_6_2` varchar(20) DEFAULT NULL,
  `STAT_2_10` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nurse_notes`
--

CREATE TABLE `nurse_notes` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Date_Time` datetime DEFAULT NULL,
  `Shift` varchar(255) DEFAULT NULL,
  `Focus` varchar(255) DEFAULT NULL,
  `Action_Response` text DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse_notes`
--

INSERT INTO `nurse_notes` (`Patient_ID`, `Entered_By_Nurse`, `Date_Time`, `Shift`, `Focus`, `Action_Response`, `Status`, `Deletion_Date`) VALUES
(202411015, 202409683, '2024-11-26 14:00:00', 'PM', 'Cold, Respiratory rate', 'Administered antihistamines; monitored respiratory rate, stable', 'o', NULL),
(202411016, 202409681, '2023-11-14 10:00:00', 'AM', 'Headache, Blood pressure monitoring', 'Administered pain relief; BP normalized after 30 minutes', 'o', NULL),
(202411017, 202409681, '2023-07-17 22:00:00', 'Night', 'Cough, Heart rate monitoring', 'Cough suppressant given; monitored heart rate, stable', 'o', NULL),
(202411017, 202409681, '2024-12-18 22:45:00', 'AM-shift', 'TEST', 'test', 'o', NULL),
(202411014, 202409683, '2025-01-02 09:17:00', 'AM-shift', 'test', 'this is a test', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_sched`
--

CREATE TABLE `nurse_sched` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Day_Shift_Nurse_ID` int(20) DEFAULT NULL,
  `Day_Shift_Start` time DEFAULT NULL,
  `Day_Shift_End` time DEFAULT NULL,
  `Night_Shift_Nurse_ID` int(20) DEFAULT NULL,
  `Night_Shift_Start` time DEFAULT NULL,
  `Night_Shift_End` time DEFAULT NULL,
  `Entered_By_Nurse` int(11) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse_sched`
--

INSERT INTO `nurse_sched` (`Patient_ID`, `Date`, `Day_Shift_Nurse_ID`, `Day_Shift_Start`, `Day_Shift_End`, `Night_Shift_Nurse_ID`, `Night_Shift_Start`, `Night_Shift_End`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2025-01-13', 202409683, '06:00:00', '14:00:00', 202409681, '14:00:00', '22:00:00', 202409682, 'o', NULL),
(202411015, '2025-01-15', 202409683, '06:00:00', '18:00:00', 202409681, '18:00:00', '06:00:00', 202409682, 'o', NULL),
(202411016, '2025-01-15', 202409683, '06:00:00', '18:00:00', 202409681, '18:00:00', '06:00:00', 202409682, 'o', NULL),
(202411017, '2025-01-15', 202409683, '06:00:00', '18:00:00', 202409681, '18:00:00', '06:00:00', 202409682, 'o', NULL),
(202412004, '2025-01-13', 202409681, '07:30:00', '15:30:00', 202409687, '15:30:00', '23:30:00', 202409682, 'o', NULL),
(202411014, '2025-01-14', 202409687, '06:30:00', '14:30:00', 202409683, '14:30:00', '22:30:00', 202409682, 'o', NULL),
(202411014, '2025-01-15', 202409683, '06:30:00', '14:30:00', 202409687, '14:30:00', '22:30:00', 202409682, 'o', NULL),
(202411014, '2025-01-16', 202409683, '06:30:00', '14:30:00', 202409681, '14:30:00', '22:30:00', 202409682, 'o', NULL),
(202412004, '2025-01-14', 202409681, '10:05:00', '14:05:00', 202409683, '14:06:00', '22:06:00', 202409682, 'o', NULL),
(202411017, '2025-01-13', 202409681, '10:19:00', '14:19:00', 202409683, '14:19:00', '23:19:00', 202409682, 'o', NULL),
(202411014, '2025-01-17', 202409683, '10:20:00', '15:20:00', 202409687, '15:20:00', '22:20:00', 202409682, 'o', NULL),
(202412004, '2025-01-15', 202409681, '06:30:00', '14:30:00', 202409683, '14:30:00', '22:30:00', 202409682, 'o', NULL),
(202411015, '2025-01-14', 202409683, '06:30:00', '14:30:00', 202409681, '14:30:00', '22:30:00', 202409682, 'o', NULL),
(202411015, '2025-01-16', 202409683, '06:30:00', '14:30:00', 202409681, '14:30:00', '22:30:00', 202409682, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outpatient_info`
--

CREATE TABLE `outpatient_info` (
  `Outpatient_ID` int(20) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Civil_Status` varchar(20) DEFAULT NULL,
  `Patient_Companion` varchar(20) DEFAULT NULL,
  `Relation_To_Patient` varchar(20) DEFAULT NULL,
  `Travel_History` varchar(5) DEFAULT NULL,
  `Travel_Location` varchar(30) DEFAULT NULL,
  `Travel_Date` date DEFAULT NULL,
  `Chief_Complain` text DEFAULT NULL,
  `History_of_Illness` text DEFAULT NULL,
  `Present_History` text DEFAULT NULL,
  `Blood_Pressure` varchar(10) DEFAULT NULL,
  `Temperature` double DEFAULT NULL,
  `Respiratory_Rate` int(11) DEFAULT NULL,
  `Pulse_Rate` int(11) DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Height` double DEFAULT NULL,
  `FHT` int(11) DEFAULT NULL,
  `Pertinent_Findings` text DEFAULT NULL,
  `Impression_Diagnosis` text DEFAULT NULL,
  `Plan` text DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outpatient_info`
--

INSERT INTO `outpatient_info` (`Outpatient_ID`, `Patient_ID`, `Civil_Status`, `Patient_Companion`, `Relation_To_Patient`, `Travel_History`, `Travel_Location`, `Travel_Date`, `Chief_Complain`, `History_of_Illness`, `Present_History`, `Blood_Pressure`, `Temperature`, `Respiratory_Rate`, `Pulse_Rate`, `Weight`, `Height`, `FHT`, `Pertinent_Findings`, `Impression_Diagnosis`, `Plan`, `Date`, `Entered_By_Nurse`) VALUES
(2, 202411018, 'Single', 'Maria Nguyen', 'Aunt', 'No', NULL, NULL, 'Sore Throat', '3-day sore throat', 'Mild swelling in throat area', '108/68', 37.4, 19, 75, 14, 95, NULL, 'Mild throat redness, no fever.', 'Pharyngitis', 'Prescribed throat lozenges and fluids.', '2024-10-01', 202409683),
(3, 202411019, 'Single', 'Mark Santos', 'Family Friend', 'Yes', 'Cebu City', '2024-11-05', 'Cold', '5-day runny nose', 'Nasal congestion and mild cough', '102/64', 38, 21, 79, 17, 100, NULL, 'Slight nasal discharge, no wheeze.', 'Upper Respiratory Infection', 'Prescribed antihistamines and rest.', '2024-11-15', 202409681);

-- --------------------------------------------------------

--
-- Table structure for table `patient_contacts`
--

CREATE TABLE `patient_contacts` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Mother_Name` varchar(255) DEFAULT NULL,
  `Mother_Contact` varchar(25) DEFAULT NULL,
  `Father_Name` varchar(255) DEFAULT NULL,
  `Father_Contact` varchar(25) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_contacts`
--

INSERT INTO `patient_contacts` (`Patient_ID`, `Mother_Name`, `Mother_Contact`, `Father_Name`, `Father_Contact`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, 'Sarah Johnson', '+63 912 345 6789', 'Robert Johnson', '+63 917 654 3210', 202409681, 'o', NULL),
(202411015, 'Maria Martinez', '+63 918 123 4567', 'Juan Martinez', '+63 922 345 6789', 202409683, 'o', NULL),
(202411016, 'Linda Smith\r\n', '+63 920 234 5678', 'Michael Smith', '+63 918 876 5432', 202409683, 'o', NULL),
(202411017, 'Jessica Brown', '+63 915 234 7890', 'Thomas Brown', '+63 920 456 1234', 202409681, 'o', NULL),
(202412004, 'asfasf', '78077', 'dfhad', '3463436', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_emergency_contact`
--

CREATE TABLE `patient_emergency_contact` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Emergency_Contact_Name` varchar(255) DEFAULT NULL,
  `Emergency_Contact` varchar(25) DEFAULT NULL,
  `Relation_to_Patient` varchar(255) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_emergency_contact`
--

INSERT INTO `patient_emergency_contact` (`Patient_ID`, `Emergency_Contact_Name`, `Emergency_Contact`, `Relation_to_Patient`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, 'Patricia Johnson', '+63 922 345 6789', 'Aunt', 202409681, 'o', NULL),
(202411015, 'Veronica Martinez', '+63 919 876 5432', 'Grandmother', 202409683, 'o', NULL),
(202411016, 'Rachel Smith', '+63 917 654 3210', 'Aunt', 202409683, 'o', NULL),
(202411017, 'Emily Brown', '+63 918 765 4321', 'Older Sister', 202409681, 'o', NULL),
(202412004, 'afzxvzxv', '214115', 'afazvzvz', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `Patient_ID` int(20) NOT NULL,
  `Admission_Date` datetime DEFAULT NULL,
  `Patient_FName` varchar(30) DEFAULT NULL,
  `Patient_MName` varchar(30) NOT NULL,
  `Patient_LName` varchar(30) NOT NULL,
  `Patient_Type` varchar(20) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Room_Num` int(11) DEFAULT NULL,
  `Street` varchar(50) NOT NULL,
  `House_Num` varchar(50) NOT NULL,
  `Subdivision` varchar(50) DEFAULT NULL,
  `Barangay` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `Birthplace` varchar(255) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Attending_Physician` int(20) NOT NULL,
  `Admitting_Diagnosis` mediumtext DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL,
  `Discharge_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`Patient_ID`, `Admission_Date`, `Patient_FName`, `Patient_MName`, `Patient_LName`, `Patient_Type`, `Age`, `Sex`, `Room_Num`, `Street`, `House_Num`, `Subdivision`, `Barangay`, `City`, `Province`, `Birthplace`, `DoB`, `Attending_Physician`, `Admitting_Diagnosis`, `Entered_By_Nurse`, `Status`, `Deletion_Date`, `Discharge_Date`) VALUES
(202411014, '2024-12-18 21:51:45', 'Emily', '', 'Johnson', 'Inpatient', 4, 'Female', 206, 'Maple Lane', '123', 'Green Hills', 'Barangay 1', 'Cityville', 'Metro City', 'Cityville General', '2020-05-12', 202409684, 'Fever', 202409681, 'o', NULL, NULL),
(202411015, '2024-12-16 15:04:52', 'Liam', '', 'Martinez', 'Inpatient', 7, 'Male', 207, 'Oak Street', '456', NULL, 'Barangay 1', 'Cityville', 'Metro City', 'Townburg Medical', '2017-08-23', 202409685, 'Cold', 202409683, 'o', NULL, NULL),
(202411016, '2024-12-12 00:02:00', 'Ava', '', 'Smith', 'Inpatient', 6, 'Female', 208, 'Pine Road', '789', 'Maple Grove', 'Barangay 2', 'Villageton', 'Valley Province', 'Villageton Clinic', '2018-02-14', 202409684, 'Headache', 202409683, 'o', NULL, NULL),
(202411017, '2023-07-17 15:04:52', 'Noah', '', 'Brown', 'Inpatient', 3, 'Male', 208, 'Birch Avenue', '321', NULL, 'Barangay 2', 'Villageton', 'Valley Province', 'Metrotown Hospital', '2021-11-30', 202409685, 'Cough', 202409681, 'o', NULL, NULL),
(202411018, '2024-10-01 15:04:52', 'Sophia', '', 'Nguyen', 'Outpatient', 2, 'Female', NULL, 'Cedar Lane', '654', 'Hilltop Subdivision', 'Barangay 1', 'Cityville', 'Metro City', 'Urbancity Medical', '2022-04-18', 202409684, 'Sore Throat', 202409681, 'o', NULL, NULL),
(202411019, '2024-11-15 15:04:52', 'Benjamin', '', 'Garcia', 'Outpatient', 5, 'Male', NULL, 'Willow Way', '987', NULL, 'Barangay 2', 'Villageton', 'Valley Province', 'Countryside Health', '2019-09-10', 202409685, 'Cold', 202409683, 'o', NULL, NULL),
(202412004, '2024-12-18 10:03:22', 'Juan', 'Dela', 'Cruz', 'Inpatient', 3, 'Male', 207, 'uyoty', 'rtrw', 'sfafa', 'fsafsa', 'adA', 'ZCZC', 'dsgdsgdsgds', '2021-02-09', 202409684, NULL, 202409683, 'o', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_info_notes`
--

CREATE TABLE `patient_info_notes` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Medical_History` text DEFAULT NULL,
  `Allergies` text DEFAULT NULL,
  `Current_Medication` text DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_info_notes`
--

INSERT INTO `patient_info_notes` (`Patient_ID`, `Medical_History`, `Allergies`, `Current_Medication`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, 'Asthma (Diagnosed at age 3)\r\nChickenpox (Had at age 6)', 'Penicillin (Severe reaction)', 'Salbutamol Inhaler (Used as needed for asthma)', 202409681, 'o', NULL),
(202411015, 'No significant history', 'Dust mites (Mild irritation)', 'Paracetamol (As needed for fever or headache)', 202409683, 'o', NULL),
(202411016, 'Migraines (Occasional)', 'Pollen (Seasonal sneezing and itching)', 'Ibuprofen (For headache and migraines)', 202409683, 'o', NULL),
(202411017, 'Eczema (Flare-ups in winter)', 'Shellfish (Mild allergic reaction)', 'Hydrocortisone Cream (For eczema flare-ups)', 202409681, 'o', NULL),
(202412004, 'vzvxvnbvvb', 'mvbmv', 'ggaga', 202409683, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_intake`
--

CREATE TABLE `patient_intake` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` char(5) DEFAULT NULL,
  `Intake_Type` varchar(20) DEFAULT NULL,
  `Intake_Measure` decimal(5,2) DEFAULT NULL,
  `Intake_Remarks` text DEFAULT NULL,
  `Status` char(2) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_intake`
--

INSERT INTO `patient_intake` (`Patient_ID`, `Entered_By_Nurse`, `Date`, `Time`, `Intake_Type`, `Intake_Measure`, `Intake_Remarks`, `Status`, `Deletion_Date`) VALUES
(202411014, 202409683, '2025-01-03', 'Night', 'Oral', '2.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'Night', 'Parental', '3.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'Night', 'Other', '1.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Oral', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Parental', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Other', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Oral', '2.00', 'zxczxczczxcz', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Parental', '3.00', 'zxczxczczxcz', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Other', '1.00', 'zxczxczczxcz', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_results`
--

CREATE TABLE `patient_lab_results` (
  `Lab_Result_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` varchar(30) DEFAULT NULL,
  `File_Name` varchar(255) DEFAULT NULL,
  `Upload_Date` datetime DEFAULT NULL,
  `Image_Location` varchar(255) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_lab_results`
--

INSERT INTO `patient_lab_results` (`Lab_Result_ID`, `Patient_ID`, `Entered_By_Nurse`, `File_Name`, `Upload_Date`, `Image_Location`, `Status`, `Deletion_Date`) VALUES
(36, 202411014, 'Ron Weasley', '1736656445.png', '2025-01-12 23:34:05', '../DocuCare/lab/1736656445.png', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_output`
--

CREATE TABLE `patient_output` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` char(5) DEFAULT NULL,
  `Output_Type` varchar(20) DEFAULT NULL,
  `Output_Measure` decimal(5,2) DEFAULT NULL,
  `Output_Remarks` text DEFAULT NULL,
  `Status` char(2) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_output`
--

INSERT INTO `patient_output` (`Patient_ID`, `Entered_By_Nurse`, `Date`, `Time`, `Output_Type`, `Output_Measure`, `Output_Remarks`, `Status`, `Deletion_Date`) VALUES
(202411014, 202409683, '2025-01-03', 'Night', 'Urine', '2.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'Night', 'Stool', '3.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'Night', 'Drainage', '1.00', 'zxczxc', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Urine', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Stool', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'AM', 'Drainage', '5.00', 'shdhjds', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Urine', '1.00', 'zxczxczczxcz', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Stool', '2.00', 'zxczxczczxcz', 'o', NULL),
(202411014, 202409683, '2025-01-03', 'PM', 'Drainage', '3.00', 'zxczxczczxcz', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_scan_results`
--

CREATE TABLE `patient_scan_results` (
  `Scan_Result_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` varchar(30) DEFAULT NULL,
  `File_Name` varchar(255) DEFAULT NULL,
  `Upload_Date` datetime DEFAULT NULL,
  `Image_Location` varchar(255) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_scan_results`
--

INSERT INTO `patient_scan_results` (`Scan_Result_ID`, `Patient_ID`, `Entered_By_Nurse`, `File_Name`, `Upload_Date`, `Image_Location`, `Status`, `Deletion_Date`) VALUES
(18, 202411014, '202409683', '1736656468.jpg', '2025-01-12 23:34:05', '../DocuCare/scan/1736656468.jpg', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_vital_signs`
--

CREATE TABLE `patient_vital_signs` (
  `Patient_ID` int(20) NOT NULL,
  `Vitals_DateTime` datetime NOT NULL,
  `Blood_Pressure` varchar(10) NOT NULL,
  `Respiratory_Rate` int(11) NOT NULL,
  `Pulse_Rate` int(11) NOT NULL,
  `Temperature` double NOT NULL,
  `Oxygen_Lvl` int(11) NOT NULL,
  `Weight` double NOT NULL,
  `Pain_Scale` int(11) NOT NULL,
  `Intervention` mediumtext NOT NULL,
  `Entered_By_Nurse` int(20) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_vital_signs`
--

INSERT INTO `patient_vital_signs` (`Patient_ID`, `Vitals_DateTime`, `Blood_Pressure`, `Respiratory_Rate`, `Pulse_Rate`, `Temperature`, `Oxygen_Lvl`, `Weight`, `Pain_Scale`, `Intervention`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-12-11 07:19:04', '122/78', 18, 80, 38, 97, 72, 6, 'Administered paracetamol 500mg for fever and body aches.', 202409683, 'o', NULL),
(202411014, '2024-12-10 07:19:04', '110/70', 14, 70, 36.8, 99, 60, 3, 'Administered fluids (saline) and continued monitoring.', 202409681, 'o', NULL),
(202411014, '2024-12-09 07:19:04', '120/75', 17, 78, 37, 99, 68, 2, 'Administered cough syrup and continued monitoring.', 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_Number` int(11) NOT NULL,
  `Room_Type` varchar(20) DEFAULT NULL,
  `Bed_Capacity` int(11) DEFAULT NULL,
  `Available_Beds` int(11) DEFAULT NULL,
  `Room_Status` varchar(20) DEFAULT NULL,
  `Scheduled_Maintenance` datetime DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_Number`, `Room_Type`, `Bed_Capacity`, `Available_Beds`, `Room_Status`, `Scheduled_Maintenance`, `Status`, `Deletion_Date`) VALUES
(206, 'Single', 1, 0, 'Occupied', '2024-11-27 12:11:47', 'o', NULL),
(207, 'Double', 2, 0, 'Occupied', NULL, 'o', NULL),
(208, 'Double', 2, 0, 'Occupied', '2024-11-29 12:11:47', 'o', NULL),
(209, 'Single', 1, 0, 'Occupied', NULL, 'o', NULL),
(210, 'Double', 2, 1, 'Available', NULL, 'o', NULL),
(211, 'Double', 2, 2, 'Available', NULL, 'o', NULL),
(212, 'Single', 1, 1, 'Available', NULL, 'o', NULL),
(213, 'Double', 2, 1, 'Available', NULL, 'o', NULL),
(214, 'Single', 1, 1, 'Available', NULL, 'o', NULL),
(215, 'Double', 2, 2, 'Available', NULL, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_information`
--

CREATE TABLE `rooms_information` (
  `Room_Number` int(11) DEFAULT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Day_Shift_Nurse_ID` int(20) DEFAULT NULL,
  `Night_Shift_Nurse_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_information`
--

INSERT INTO `rooms_information` (`Room_Number`, `Patient_ID`, `Day_Shift_Nurse_ID`, `Night_Shift_Nurse_ID`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(206, 202411014, 202409683, 202409681, 202409682, 'o', NULL),
(207, 202411015, 202409683, 202409681, 202409682, 'o', NULL),
(208, 202411016, 202409683, 202409681, 202409682, 'o', NULL),
(208, 202411017, 202409683, 202409681, 202409682, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_maintenance`
--

CREATE TABLE `rooms_maintenance` (
  `Room_Number` int(11) DEFAULT NULL,
  `Scheduled_Maintenance` datetime DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_maintenance`
--

INSERT INTO `rooms_maintenance` (`Room_Number`, `Scheduled_Maintenance`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(206, '2025-01-16 10:02:00', 202409682, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standing_order_response`
--

CREATE TABLE `standing_order_response` (
  `Standing_Order_ID` int(11) NOT NULL,
  `Patient_ID` int(20) DEFAULT NULL,
  `Order_Start_Date` date DEFAULT NULL,
  `Order_Discontinued_Date` date DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standing_order_response`
--

INSERT INTO `standing_order_response` (`Standing_Order_ID`, `Patient_ID`, `Order_Start_Date`, `Order_Discontinued_Date`, `Remarks`, `Entered_By_Nurse`) VALUES
(39, 202411015, '2025-01-02', '2025-01-03', 'TEST', 202409681);

-- --------------------------------------------------------

--
-- Table structure for table `tpr_initial_vitals`
--

CREATE TABLE `tpr_initial_vitals` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Initial_Vitals_Date` datetime DEFAULT NULL,
  `Blood_Pressure` varchar(10) DEFAULT NULL,
  `Pulse_Rate` int(11) DEFAULT NULL,
  `Respiratory_Rate` int(11) DEFAULT NULL,
  `Temperature` double DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `IE` double DEFAULT NULL,
  `FHT` int(11) DEFAULT NULL,
  `Entered_By_Nurse` int(11) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpr_initial_vitals`
--

INSERT INTO `tpr_initial_vitals` (`Patient_ID`, `Initial_Vitals_Date`, `Blood_Pressure`, `Pulse_Rate`, `Respiratory_Rate`, `Temperature`, `Weight`, `IE`, `FHT`, `Entered_By_Nurse`, `Status`, `Deletion_Date`) VALUES
(202411014, '2024-11-26 08:00:00', '118/76', 75, 16, 37.5, 58, NULL, NULL, 202409683, 'o', NULL),
(202411016, '2024-12-16 19:30:00', '118/76', 89, 10, 37, 45, 6, 4, 202409681, 'o', NULL),
(202411015, '2024-12-18 19:46:00', '118/76', 89, 45, 37.5, 58, 12, 23, 202409681, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tpr_vital_signs`
--

CREATE TABLE `tpr_vital_signs` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Vitals_Date` date DEFAULT NULL,
  `Day_Number` int(11) DEFAULT NULL,
  `Vitals_Time_Check` time NOT NULL,
  `Temperature` decimal(5,2) NOT NULL,
  `Pulse` int(11) NOT NULL,
  `Respiration` int(11) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpr_vital_signs`
--

INSERT INTO `tpr_vital_signs` (`Patient_ID`, `Entered_By_Nurse`, `Vitals_Date`, `Day_Number`, `Vitals_Time_Check`, `Temperature`, `Pulse`, `Respiration`, `Status`, `Deletion_Date`) VALUES
(202411014, 202409681, '2024-11-26', 1, '00:00:00', '37.50', 75, 16, 'o', NULL),
(202411014, 202409681, '2024-11-26', 1, '04:00:00', '37.60', 76, 17, 'o', NULL),
(202411014, 202409681, '2024-11-26', 1, '08:00:00', '37.60', 76, 17, 'o', NULL),
(202411014, 202409683, '2024-11-26', 1, '12:00:00', '37.70', 78, 18, 'o', NULL),
(202411014, 202409683, '2024-11-26', 1, '16:00:00', '37.40', 74, 16, 'o', NULL),
(202411014, 202409681, '2024-11-26', 1, '20:00:00', '37.60', 75, 17, 'o', NULL),
(202411016, 202409681, '2024-12-16', 1, '08:00:00', '23.40', 43, 56, 'o', NULL),
(202411015, 202409681, '2024-12-19', 1, '00:00:00', '37.50', 67, 89, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '00:00:00', '35.00', 43, 12, 'o', NULL),
(202411014, 202409683, '2024-12-29', 2, '04:00:00', '35.00', 21, 23, 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tpr_vital_signs_output`
--

CREATE TABLE `tpr_vital_signs_output` (
  `Patient_ID` int(20) DEFAULT NULL,
  `Entered_By_Nurse` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Output_Time_Check` time NOT NULL,
  `Blood_Pressure` varchar(7) NOT NULL,
  `Urine` varchar(255) NOT NULL,
  `Stool` varchar(255) NOT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpr_vital_signs_output`
--

INSERT INTO `tpr_vital_signs_output` (`Patient_ID`, `Entered_By_Nurse`, `Date`, `Output_Time_Check`, `Blood_Pressure`, `Urine`, `Stool`, `Status`, `Deletion_Date`) VALUES
(202411014, 202409681, '2024-11-26', '00:00:00', '120/80', '500 ml', 'N/A', 'o', NULL),
(202411014, 202409683, '2024-11-26', '16:00:00', '125/85', '600 ml', 'N/A', 'o', NULL),
(202411014, 202409681, '2024-11-26', '08:00:00', '118/79', '550 ml', 'N/A', 'o', NULL),
(202411016, 202409681, '2024-12-16', '16:00:00', '125/85', '600', 'N/A', 'o', NULL),
(202411015, 202409681, '2024-12-19', '00:00:00', '120/80', '300', 'N/A', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL),
(202411014, 202409683, '2024-12-29', '00:00:00', '120/80', '1', '3.24', 'o', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `User_ID` int(11) NOT NULL,
  `User_FName` varchar(30) NOT NULL,
  `User_MName` varchar(30) NOT NULL,
  `User_LName` varchar(30) NOT NULL,
  `Contact_Num` varchar(25) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Account_Created` date DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `Deletion_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_ID`, `User_FName`, `User_MName`, `User_LName`, `Contact_Num`, `Department`, `Position`, `Email`, `Password`, `Account_Created`, `Status`, `Deletion_Date`) VALUES
(202409681, 'Neville', '', 'Longbottom', '09592855832', 'Pediatrics', 'Nurse 1', 'Neville@gmail.com', '1111', '2024-11-26', 'o', NULL),
(202409682, 'Severus', '', 'Snape', '09582746124', 'Pediatrics', 'Nurse 2', 'Snape@gmail.com', '1234', '2024-11-27', 'o', NULL),
(202409683, 'Ron', '', 'Weasley', '09948512751', 'Pediatrics', 'Nurse 1', 'Ron@gmail.com', '1111', '2024-11-24', 'o', NULL),
(202409684, 'Albus', '', 'Dumbledore', '07847385731', 'Pediatrics', 'Doctor', 'Albus@gmail.com', '4321', '2024-11-01', 'o', NULL),
(202409685, 'Minerva', '', 'McGonagall', '09987683219', 'Pediatrics', 'Doctor', 'Minerva@gmail.com', '4321', '2024-11-13', 'o', NULL),
(202409686, 'Tom', '', 'Riddle', '09968673295', 'Pediatrics', 'Admin', 'tom@gmail.com', '7890', '2024-10-01', 'o', NULL),
(202409687, 'Seamus', '', 'Finnigan', '0958271251', 'Pediatrics', 'Nurse 1', 'Seamus@gmail.com', '1111', '2024-12-27', 'o', NULL),
(202409691, 'test', 'test', 'test', '12412', 'Pediatrics', 'Nurse 1', 'test@gmail.com', '1111', '2025-01-15', 'x', '2025-01-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ivfr_fast_drip`
--
ALTER TABLE `ivfr_fast_drip`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `ivfr_iv`
--
ALTER TABLE `ivfr_iv`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `ivfr_side_drips`
--
ALTER TABLE `ivfr_side_drips`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_diagnostics`
--
ALTER TABLE `kardex_diagnostics`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Diagnostics_Category` (`Diagnostics_Category`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_diagnostics_categories`
--
ALTER TABLE `kardex_diagnostics_categories`
  ADD PRIMARY KEY (`Diagnostics_Checks`);

--
-- Indexes for table `kardex_diet`
--
ALTER TABLE `kardex_diet`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Diet_Category` (`Diet_Category`),
  ADD KEY `kardex_diet_ibfk_3` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_diet_categories`
--
ALTER TABLE `kardex_diet_categories`
  ADD PRIMARY KEY (`Diet_Checks`);

--
-- Indexes for table `kardex_diet_last_meal`
--
ALTER TABLE `kardex_diet_last_meal`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_drips_transfusion`
--
ALTER TABLE `kardex_drips_transfusion`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_endorsements`
--
ALTER TABLE `kardex_endorsements`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_io`
--
ALTER TABLE `kardex_io`
  ADD KEY `IO_Category` (`IO_Category`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_io_categories`
--
ALTER TABLE `kardex_io_categories`
  ADD PRIMARY KEY (`IO_Checks`);

--
-- Indexes for table `kardex_iv`
--
ALTER TABLE `kardex_iv`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_medications`
--
ALTER TABLE `kardex_medications`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_notes`
--
ALTER TABLE `kardex_notes`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_tbl`
--
ALTER TABLE `kardex_tbl`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_vitals`
--
ALTER TABLE `kardex_vitals`
  ADD KEY `Vitals_Category` (`Vitals_Category`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `kardex_vitals_categories`
--
ALTER TABLE `kardex_vitals_categories`
  ADD PRIMARY KEY (`Vitals_Checks`);

--
-- Indexes for table `medication_record_prn_response`
--
ALTER TABLE `medication_record_prn_response`
  ADD KEY `Medication_PRN_ID` (`Medication_PRN_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `medication_record_so_response`
--
ALTER TABLE `medication_record_so_response`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`),
  ADD KEY `Medication_SO_ID` (`Medication_SO_ID`);

--
-- Indexes for table `medication_record_stat_response`
--
ALTER TABLE `medication_record_stat_response`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Ordered_By_Doctor` (`Ordered_By_Doctor`),
  ADD KEY `Medication_STAT_ID` (`Medication_STAT_ID`);

--
-- Indexes for table `nurse_notes`
--
ALTER TABLE `nurse_notes`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `nurse_sched`
--
ALTER TABLE `nurse_sched`
  ADD KEY `Day_Shift_Nurse_ID` (`Day_Shift_Nurse_ID`),
  ADD KEY `Night_Shift_Nurse_ID` (`Night_Shift_Nurse_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `outpatient_info`
--
ALTER TABLE `outpatient_info`
  ADD PRIMARY KEY (`Outpatient_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_contacts`
--
ALTER TABLE `patient_contacts`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_emergency_contact`
--
ALTER TABLE `patient_emergency_contact`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`),
  ADD KEY `Room_Num` (`Room_Num`),
  ADD KEY `Attending_Physician` (`Attending_Physician`);

--
-- Indexes for table `patient_info_notes`
--
ALTER TABLE `patient_info_notes`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_intake`
--
ALTER TABLE `patient_intake`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_lab_results`
--
ALTER TABLE `patient_lab_results`
  ADD PRIMARY KEY (`Lab_Result_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `patient_output`
--
ALTER TABLE `patient_output`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `patient_scan_results`
--
ALTER TABLE `patient_scan_results`
  ADD PRIMARY KEY (`Scan_Result_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `patient_vital_signs`
--
ALTER TABLE `patient_vital_signs`
  ADD KEY `vitals_tbl_ibfk_1` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Indexes for table `rooms_information`
--
ALTER TABLE `rooms_information`
  ADD KEY `Room_Number` (`Room_Number`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Day_Shift_Nurse_ID` (`Day_Shift_Nurse_ID`),
  ADD KEY `Night_Shift_Nurse_ID` (`Night_Shift_Nurse_ID`),
  ADD KEY `fk_entered_by_nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `rooms_maintenance`
--
ALTER TABLE `rooms_maintenance`
  ADD KEY `Room_Number` (`Room_Number`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `standing_order_response`
--
ALTER TABLE `standing_order_response`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`),
  ADD KEY `Standing_Order_ID` (`Standing_Order_ID`);

--
-- Indexes for table `tpr_initial_vitals`
--
ALTER TABLE `tpr_initial_vitals`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `tpr_vital_signs`
--
ALTER TABLE `tpr_vital_signs`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `tpr_vital_signs_output`
--
ALTER TABLE `tpr_vital_signs_output`
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Entered_By_Nurse` (`Entered_By_Nurse`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `outpatient_info`
--
ALTER TABLE `outpatient_info`
  MODIFY `Outpatient_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `Patient_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202501002;

--
-- AUTO_INCREMENT for table `patient_lab_results`
--
ALTER TABLE `patient_lab_results`
  MODIFY `Lab_Result_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `patient_scan_results`
--
ALTER TABLE `patient_scan_results`
  MODIFY `Scan_Result_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202409692;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ivfr_fast_drip`
--
ALTER TABLE `ivfr_fast_drip`
  ADD CONSTRAINT `ivfr_fast_drip_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `ivfr_fast_drip_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `ivfr_iv`
--
ALTER TABLE `ivfr_iv`
  ADD CONSTRAINT `ivfr_iv_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `ivfr_iv_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `ivfr_side_drips`
--
ALTER TABLE `ivfr_side_drips`
  ADD CONSTRAINT `ivfr_side_drips_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `ivfr_side_drips_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_diagnostics`
--
ALTER TABLE `kardex_diagnostics`
  ADD CONSTRAINT `kardex_diagnostics_ibfk_2` FOREIGN KEY (`Diagnostics_Category`) REFERENCES `kardex_diagnostics_categories` (`Diagnostics_Checks`),
  ADD CONSTRAINT `kardex_diagnostics_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_diagnostics_ibfk_4` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_diet`
--
ALTER TABLE `kardex_diet`
  ADD CONSTRAINT `kardex_diet_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_diet_ibfk_2` FOREIGN KEY (`Diet_Category`) REFERENCES `kardex_diet_categories` (`Diet_Checks`),
  ADD CONSTRAINT `kardex_diet_ibfk_3` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_diet_last_meal`
--
ALTER TABLE `kardex_diet_last_meal`
  ADD CONSTRAINT `kardex_diet_last_meal_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_diet_last_meal_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_drips_transfusion`
--
ALTER TABLE `kardex_drips_transfusion`
  ADD CONSTRAINT `kardex_drips_transfusion_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_drips_transfusion_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_endorsements`
--
ALTER TABLE `kardex_endorsements`
  ADD CONSTRAINT `kardex_endorsements_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_endorsements_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_io`
--
ALTER TABLE `kardex_io`
  ADD CONSTRAINT `kardex_io_ibfk_2` FOREIGN KEY (`IO_Category`) REFERENCES `kardex_io_categories` (`IO_Checks`),
  ADD CONSTRAINT `kardex_io_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_io_ibfk_4` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_iv`
--
ALTER TABLE `kardex_iv`
  ADD CONSTRAINT `kardex_iv_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_iv_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_medications`
--
ALTER TABLE `kardex_medications`
  ADD CONSTRAINT `kardex_medications_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_medications_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_notes`
--
ALTER TABLE `kardex_notes`
  ADD CONSTRAINT `kardex_notes_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_notes_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_tbl`
--
ALTER TABLE `kardex_tbl`
  ADD CONSTRAINT `kardex_tbl_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_tbl_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `kardex_vitals`
--
ALTER TABLE `kardex_vitals`
  ADD CONSTRAINT `kardex_vitals_ibfk_2` FOREIGN KEY (`Vitals_Category`) REFERENCES `kardex_vitals_categories` (`Vitals_Checks`),
  ADD CONSTRAINT `kardex_vitals_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `kardex_vitals_ibfk_4` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `medication_record_prn_response`
--
ALTER TABLE `medication_record_prn_response`
  ADD CONSTRAINT `medication_record_prn_response_ibfk_1` FOREIGN KEY (`Medication_PRN_ID`) REFERENCES `soeijrkb_DocuData_Doctors`.`medication_record_prn` (`Medication_PRN_ID`),
  ADD CONSTRAINT `medication_record_prn_response_ibfk_2` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `medication_record_prn_response_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `medication_record_so_response`
--
ALTER TABLE `medication_record_so_response`
  ADD CONSTRAINT `medication_record_so_response_ibfk_1` FOREIGN KEY (`Medication_SO_ID`) REFERENCES `soeijrkb_DocuData_Doctors`.`medication_record_so` (`Medication_SO_ID`),
  ADD CONSTRAINT `medication_record_so_response_ibfk_2` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `medication_record_so_response_ibfk_3` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `medication_record_stat_response`
--
ALTER TABLE `medication_record_stat_response`
  ADD CONSTRAINT `medication_record_stat_response_ibfk_1` FOREIGN KEY (`Ordered_By_Doctor`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `medication_record_stat_response_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `medication_record_stat_response_ibfk_3` FOREIGN KEY (`Medication_STAT_ID`) REFERENCES `soeijrkb_DocuData_Doctors`.`medication_record_stat` (`Medication_STAT_ID`);

--
-- Constraints for table `nurse_notes`
--
ALTER TABLE `nurse_notes`
  ADD CONSTRAINT `nurse_notes_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `nurse_notes_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `nurse_sched`
--
ALTER TABLE `nurse_sched`
  ADD CONSTRAINT `nurse_sched_ibfk_1` FOREIGN KEY (`Day_Shift_Nurse_ID`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `nurse_sched_ibfk_2` FOREIGN KEY (`Night_Shift_Nurse_ID`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `nurse_sched_ibfk_3` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `nurse_sched_ibfk_4` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `outpatient_info`
--
ALTER TABLE `outpatient_info`
  ADD CONSTRAINT `outpatient_info_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `outpatient_info_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_contacts`
--
ALTER TABLE `patient_contacts`
  ADD CONSTRAINT `patient_contacts_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_contacts_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_emergency_contact`
--
ALTER TABLE `patient_emergency_contact`
  ADD CONSTRAINT `patient_emergency_contact_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_emergency_contact_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD CONSTRAINT `patient_info_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_info_ibfk_2` FOREIGN KEY (`Attending_Physician`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_info_ibfk_3` FOREIGN KEY (`Room_Num`) REFERENCES `rooms` (`Room_Number`);

--
-- Constraints for table `patient_info_notes`
--
ALTER TABLE `patient_info_notes`
  ADD CONSTRAINT `patient_info_notes_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `patient_info_notes_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `patient_intake`
--
ALTER TABLE `patient_intake`
  ADD CONSTRAINT `patient_intake_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_intake_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_lab_results`
--
ALTER TABLE `patient_lab_results`
  ADD CONSTRAINT `patient_lab_results_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_output`
--
ALTER TABLE `patient_output`
  ADD CONSTRAINT `patient_output_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_output_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_scan_results`
--
ALTER TABLE `patient_scan_results`
  ADD CONSTRAINT `patient_scan_results_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `patient_vital_signs`
--
ALTER TABLE `patient_vital_signs`
  ADD CONSTRAINT `patient_vital_signs_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `patient_vital_signs_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `rooms_information`
--
ALTER TABLE `rooms_information`
  ADD CONSTRAINT `rooms_information_ibfk_1` FOREIGN KEY (`Day_Shift_Nurse_ID`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `rooms_information_ibfk_2` FOREIGN KEY (`Night_Shift_Nurse_ID`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `rooms_information_ibfk_3` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `rooms_information_ibfk_4` FOREIGN KEY (`Room_Number`) REFERENCES `rooms` (`Room_Number`),
  ADD CONSTRAINT `rooms_information_ibfk_5` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `rooms_maintenance`
--
ALTER TABLE `rooms_maintenance`
  ADD CONSTRAINT `rooms_maintenance_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `rooms_maintenance_ibfk_2` FOREIGN KEY (`Room_Number`) REFERENCES `rooms` (`Room_Number`);

--
-- Constraints for table `standing_order_response`
--
ALTER TABLE `standing_order_response`
  ADD CONSTRAINT `standing_order_response_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `standing_order_response_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `standing_order_response_ibfk_3` FOREIGN KEY (`Standing_Order_ID`) REFERENCES `soeijrkb_DocuData_Doctors`.`standing_order` (`Standing_Order_ID`);

--
-- Constraints for table `tpr_initial_vitals`
--
ALTER TABLE `tpr_initial_vitals`
  ADD CONSTRAINT `tpr_initial_vitals_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`),
  ADD CONSTRAINT `tpr_initial_vitals_ibfk_2` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`);

--
-- Constraints for table `tpr_vital_signs`
--
ALTER TABLE `tpr_vital_signs`
  ADD CONSTRAINT `tpr_vital_signs_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `tpr_vital_signs_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);

--
-- Constraints for table `tpr_vital_signs_output`
--
ALTER TABLE `tpr_vital_signs_output`
  ADD CONSTRAINT `tpr_vital_signs_output_ibfk_1` FOREIGN KEY (`Entered_By_Nurse`) REFERENCES `user_tbl` (`User_ID`),
  ADD CONSTRAINT `tpr_vital_signs_output_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_info` (`Patient_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
