-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 11:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AptID` int(10) NOT NULL,
  `LineNo` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Pharmacy` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AptID`, `LineNo`, `PatientID`, `DoctorID`, `Date`, `Pharmacy`) VALUES
(1, 0, 1, 1, '2021-04-13', 'Yes'),
(2, 2, 2, 1, '2021-04-13', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `RegNo` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(353) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Email` varchar(89) NOT NULL,
  `Address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `TypeID`, `NIC`, `RegNo`, `FirstName`, `LastName`, `PhoneNo`, `Email`, `Address`) VALUES
(1, 2, '123456789V', '34567891234', 'Chamara', 'Ratnayake', '1234567890', 'chamara.rat@gmail.com', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `doctortype`
--

CREATE TABLE `doctortype` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctortype`
--

INSERT INTO `doctortype` (`TypeID`, `TypeName`) VALUES
(1, 'Immunologist'),
(2, 'Anesthesiologist'),
(3, 'Cardiologist'),
(4, 'Dermatologist'),
(5, 'Endocrinologist'),
(6, 'Family Physician'),
(7, 'Gastroenterologist'),
(8, 'Hematologist'),
(9, 'Internist'),
(10, 'Anesthesiologist'),
(11, 'Cardiologist'),
(12, 'Dermatologist'),
(13, 'Endocrinologist'),
(14, 'Family Physician'),
(15, 'Gastroenterologist'),
(16, 'Hematologist'),
(17, 'Internist'),
(18, 'Nephrologist'),
(19, 'Neurologist'),
(20, 'Gynecologist'),
(21, 'Oncologist'),
(22, 'Ophthalmologist'),
(23, 'Osteopath'),
(24, 'Otolaryngologist'),
(25, 'Pediatrician'),
(26, 'Physiatrist'),
(27, 'Plastic Surgeon'),
(28, 'Psychiatrist'),
(29, 'Radiologist'),
(30, 'Pulmonologist'),
(31, 'Rheumatologist'),
(32, 'Urologist');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Stars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(89) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BloodType` varchar(3) NOT NULL,
  `PEC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `FirstName`, `LastName`, `Email`, `PhoneNo`, `Address`, `DOB`, `Gender`, `BloodType`, `PEC`) VALUES
(1, 'Nimal', 'Gamage', 'nim.gamage@gmail.com', 1236547895, 'Kandy', '1998-04-08', 'Male', 'A-', 'diabetes, allergic to paracetamol'),
(2, 'Rakshitha', 'Dilshan', 'rakshithadilshan2@gmail.com', 77348481, 'nuwara eliya', '1991-04-12', 'Male', 'B+', 'diabetes, COPD');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `StaffID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyorders`
--

CREATE TABLE `pharmacyorders` (
  `OrderID` int(11) NOT NULL,
  `PrscID` int(11) NOT NULL,
  `Ready` varchar(3) NOT NULL,
  `Payment` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pharmacyview`
-- (See below for the actual view)
--
CREATE TABLE `pharmacyview` (
`PrscID` int(11)
,`P_FName` varchar(25)
,`P_LName` varchar(30)
,`D_FName` varchar(25)
,`D_LName` varchar(353)
,`Date` date
,`Prescription` text
,`Email` varchar(89)
,`Phone` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PrscID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `PrscList` text NOT NULL,
  `Notes` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PrscID`, `PatientID`, `DoctorID`, `PrscList`, `Notes`, `Date`) VALUES
(1, 1, 1, 'Metformin 5mg', 'Hypertension', '2021-04-26'),
(2, 1, 1, 'Panadol 10mg', 'Fever', '2021-04-26'),
(3, 2, 1, 'Fortamet, Glumetza', 'Hypertension', '2021-04-26'),
(9, 2, 1, 'cvvcxvcxv', 'bvcb', '2021-04-26'),
(10, 2, 1, 'gfgfgfgfgfg', 'gfgfgfgf', '2021-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `StaffID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `webadmin`
--

CREATE TABLE `webadmin` (
  `StaffID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `pharmacyview`
--
DROP TABLE IF EXISTS `pharmacyview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pharmacyview`  AS  select `a`.`PrscID` AS `PrscID`,`b`.`FirstName` AS `P_FName`,`b`.`LastName` AS `P_LName`,`c`.`FirstName` AS `D_FName`,`c`.`LastName` AS `D_LName`,`a`.`Date` AS `Date`,`a`.`PrscList` AS `Prescription`,`b`.`Email` AS `Email`,`b`.`PhoneNo` AS `Phone` from ((`prescription` `a` join `patient` `b` on(`a`.`PatientID` = `b`.`PatientID`)) join `doctor` `c` on(`a`.`DoctorID` = `c`.`DoctorID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AptID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `doctortype`
--
ALTER TABLE `doctortype`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `pharmacyorders`
--
ALTER TABLE `pharmacyorders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PrscID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AptID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctortype`
--
ALTER TABLE `doctortype`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacyorders`
--
ALTER TABLE `pharmacyorders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PrscID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
