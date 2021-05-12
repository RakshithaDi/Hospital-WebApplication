-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 07:01 PM
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
  `LineNo` int(10) NOT NULL,
  `PatientID` int(10) NOT NULL,
  `DoctorID` int(10) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `Time` varchar(90) NOT NULL,
  `Pharmacy` varchar(10) NOT NULL,
  `AptID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`LineNo`, `PatientID`, `DoctorID`, `Date`, `Time`, `Pharmacy`, `AptID`) VALUES
(1, 1, 1, '2021-05-17', '07:00 ', 'Yes', 1),
(2, 2, 4, '2021-05-22 ', '15:03 ', 'Yes', 2),
(3, 3, 2, '2021-05-19 ', '18:00 ', 'No', 3),
(4, 4, 5, '2021-05-25 ', '11:32 ', 'Yes', 4),
(5, 1, 3, '2021-05-10', '02:02 ', 'Yes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL,
  `DoctorType` varchar(90) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `RegNo` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(353) NOT NULL,
  `Username` varchar(90) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Email` varchar(89) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorType`, `NIC`, `RegNo`, `FirstName`, `LastName`, `Username`, `PhoneNo`, `Email`, `Password`, `Address`) VALUES
(1, 'Anesthesiologist', '98096765789V', '0001', 'Anoja', 'Abeyjeewa', 'Anoja', 785674383, 'anojaabeyjeewa@gmail.com', '[15, -2, 26, -67, 26, 8, 33, 83, 83, -62, 51, -42, -32, 9, 97, 62, -107, -18, -60, 37, 56, 50, -89, 97, -81, 40, -1, 55, -84, 90, 21, 12]', 'No 21, Kandy'),
(2, 'Anesthesiologist', '87679876546V', '0002', 'Ashan', 'Perera', 'Ashan', 765478987, 'ashanperera@gmail.com', '[-19, -18, 41, -8, -126, 84, 59, -107, 102, 32, -78, 109, 14, -32, -25, -23, 80, 57, -101, 28, 66, 34, -11, -34, 5, -32, 100, 37, -76, -55, -107, -23]', 'No 87, Gampola'),
(3, 'Cardiologist', '76866789678V', '0003', 'Harshani', 'Gunathilaka', 'Harshani', 786578678, 'harshanigunathilaka', '[49, -118, -18, 63, -19, -116, -99, 4, 13, 53, -89, -4, 31, -89, 118, -5, 49, 48, 56, 51, -86, 45, -24, -123, 53, 77, -33, 61, 68, -40, -5, 105]', 'No 02, Rathnapura'),
(4, 'Cardiologist', '87609876897V', '0004', 'Thusara', 'Ariyathilake', 'Thushara', 765758768, 'thusharaariyathilake@gmail.com', '[121, -16, 111, -113, -34, 51, 52, 97, 115, -97, 34, 0, -112, -94, 60, -78, -89, -97, 109, 113, 75, -18, 16, 13, 14, 75, 74, -14, 73, 41, 70, 25]', 'No 21, Godagama'),
(5, 'Dermatologist', '76349876906V', '0005', 'Lakmalee', 'Samaraweera', 'Lakmalee', 765456789, 'lakmaleesamaraweera@gmail.com', '[-59, 7, -90, -113, 48, -109, -24, -123, 118, 82, 87, -19, 63, 23, 108, 117, 122, -81, 98, -69, 76, -68, 46, -7, 75, 46, 125, -93, 64, 109, -106, 118]', 'No 32, Kahawaththa');

-- --------------------------------------------------------

--
-- Table structure for table `doctordatetime`
--

CREATE TABLE `doctordatetime` (
  `DoctorID` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctordatetime`
--

INSERT INTO `doctordatetime` (`DoctorID`, `Date`, `Time`, `ID`) VALUES
(1, '2021-05-17', '07:00', 1),
(1, '2021-05-17', '18:00', 2),
(1, '2021-05-18', '00:00', 3),
(2, '2021-05-17', '10:30', 4),
(2, '2021-05-18', '10:30', 5),
(2, '2021-05-19', '18:00', 6),
(3, '2021-05-19', '13:00', 7),
(3, '2021-05-20', '02:02', 8),
(4, '2021-05-21', '17:03', 9),
(4, '2021-05-22', '15:03', 10),
(4, '2021-05-21', '19:03', 11),
(5, '2021-05-23', '08:36', 12),
(5, '2021-05-24', '00:04', 13),
(5, '2021-05-25', '11:32', 14),
(2, '2021-05-10', '11:20', 15);

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

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `Text`, `Stars`) VALUES
(1, 'Good Communication', 5),
(2, 'Terrible Service', 1),
(3, 'Good Service', 7),
(4, 'Bad Service', 3);

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
  `Password` varchar(255) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BloodType` varchar(3) NOT NULL,
  `PEC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `FirstName`, `LastName`, `Email`, `PhoneNo`, `Password`, `Address`, `DOB`, `Gender`, `BloodType`, `PEC`) VALUES
(1, 'Rakshitha', 'Dilshan', 'rakshithadilshan1@gmail.com', 766807668, '[15, -2, 26, -67, 26, 8, 33, 83, 83, -62, 51, -42, -32, 9, 97, 62, -107, -18, -60, 37, 56, 50, -89, 97, -81, 40, -1, 55, -84, 90, 21, 12]', 'No 21, Nuwara Eliya', '2000-01-01', 'Male', 'B-', 'Heart attack'),
(2, 'Kasun', 'Kalhara', 'kasunkalhara@gmail.com', 773456531, '[121, -16, 111, -113, -34, 51, 52, 97, 115, -97, 34, 0, -112, -94, 60, -78, -89, -97, 109, 113, 75, -18, 16, 13, 14, 75, 74, -14, 73, 41, 70, 25]', 'No 72, Horana', '2004-06-06', 'Male', 'A+', 'Kidney disease'),
(3, 'Dinusha', 'Lakmal', 'dinushalakmal1@gmail.com', 722726442, '[49, -118, -18, 63, -19, -116, -99, 4, 13, 53, -89, -4, 31, -89, 118, -5, 49, 48, 56, 51, -86, 45, -24, -123, 53, 77, -33, 61, 68, -40, -5, 105]', 'No 42, Malabe', '1997-06-30', 'Male', 'A+', 'Anxiety, depression or mood disorder resulting in recent hospitalization or time off work'),
(4, 'Lahiru', 'Madushanka', 'lahirumadushanka@gmail.com', 713033789, '[-19, -18, 41, -8, -126, 84, 59, -107, 102, 32, -78, 109, 14, -32, -25, -23, 80, 57, -101, 28, 66, 34, -11, -34, 5, -32, 100, 37, -76, -55, -107, -23]', 'No 01, Gampaha', '1997-07-08', 'Male', 'A+', 'Hydrocephalus');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `StaffID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(90) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`StaffID`, `Name`, `Username`, `Password`) VALUES
(1, 'Pasindu Gimhana', 'Pasindu', '[15, -2, 26, -67, 26, 8, 33, 83, 83, -62, 51, -42, -32, 9, 97, 62, -107, -18, -60, 37, 56, 50, -89, 97, -81, 40, -1, 55, -84, 90, 21, 12]'),
(2, 'Bawantha', 'Dilshan', '[-19, -18, 41, -8, -126, 84, 59, -107, 102, 32, -78, 109, 14, -32, -25, -23, 80, 57, -101, 28, 66, 34, -11, -34, 5, -32, 100, 37, -76, -55, -107, -23]'),
(3, 'Sadun Jayarathna', 'Sadun', '[49, -118, -18, 63, -19, -116, -99, 4, 13, 53, -89, -4, 31, -89, 118, -5, 49, 48, 56, 51, -86, 45, -24, -123, 53, 77, -33, 61, 68, -40, -5, 105]'),
(4, 'Sadeepa Damidu', 'Sadeepa', '[121, -16, 111, -113, -34, 51, 52, 97, 115, -97, 34, 0, -112, -94, 60, -78, -89, -97, 109, 113, 75, -18, 16, 13, 14, 75, 74, -14, 73, 41, 70, 25]'),
(5, 'Sachith Pathirana', 'Sachith', '[-63, -13, 48, -48, -81, -13, 28, 28, -121, 64, 63, 30, 67, 71, -68, -62, 26, -1, 124, 23, -103, 8, 114, 53, 53, -14, -77, 23, 35, 112, 37, 37]');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyorders`
--

CREATE TABLE `pharmacyorders` (
  `PrscID` int(11) NOT NULL,
  `Ready` varchar(30) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Note` varchar(90) NOT NULL,
  `OrderID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacyorders`
--

INSERT INTO `pharmacyorders` (`PrscID`, `Ready`, `Price`, `Note`, `OrderID`) VALUES
(1, 'Available', '200', '3 times for a day', 1),
(3, 'Available', '100', '2 times for a day', 2),
(4, 'Not Available', '', '', 3);

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
(1, 1, 1, 'aspirin tablets bp 75 mg', 'Fever', '2021-05-12'),
(2, 3, 2, 'glimepiride 1 mg', 'diabetes', '2021-05-12'),
(3, 2, 4, 'panadol 100 mg tablet', 'headache ', '2021-05-12'),
(4, 4, 5, '\r\nOmeprazole 10 mg gastro-resistant tablets', 'gastric', '2021-05-12'),
(5, 1, 3, 'amlodipine tablet 5mg', 'blood pressure', '2021-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `StaffID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(90) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`StaffID`, `Name`, `Username`, `Password`) VALUES
(1, 'Suranga Lakmal', 'Suranga', '[15, -2, 26, -67, 26, 8, 33, 83, 83, -62, 51, -42, -32, 9, 97, 62, -107, -18, -60, 37, 56, 50, -89, 97, -81, 40, -1, 55, -84, 90, 21, 12]'),
(2, 'Dilshan Sanjeewa', 'Sanjeewa', '[-19, -18, 41, -8, -126, 84, 59, -107, 102, 32, -78, 109, 14, -32, -25, -23, 80, 57, -101, 28, 66, 34, -11, -34, 5, -32, 100, 37, -76, -55, -107, -23]'),
(4, 'Gimsara Theekshana', 'Gimsara', '[49, -118, -18, 63, -19, -116, -99, 4, 13, 53, -89, -4, 31, -89, 118, -5, 49, 48, 56, 51, -86, 45, -24, -123, 53, 77, -33, 61, 68, -40, -5, 105]'),
(5, 'Kamal Perera', 'Kamal', '[-59, 7, -90, -113, 48, -109, -24, -123, 118, 82, 87, -19, 63, 23, 108, 117, 122, -81, 98, -69, 76, -68, 46, -7, 75, 46, 125, -93, 64, 109, -106, 118]');

-- --------------------------------------------------------

--
-- Table structure for table `webadmin`
--

CREATE TABLE `webadmin` (
  `StaffID` int(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(90) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webadmin`
--

INSERT INTO `webadmin` (`StaffID`, `Name`, `Username`, `Password`) VALUES
(1, 'Admin', 'admin', '[-116, 105, 118, -27, -75, 65, 4, 21, -67, -23, 8, -67, 77, -18, 21, -33, -79, 103, -87, -56, 115, -4, 75, -72, -88, 31, 111, 42, -76, 72, -87, 24]'),
(2, 'Dinith Thennakoon', 'Dinith', '[15, -2, 26, -67, 26, 8, 33, 83, 83, -62, 51, -42, -32, 9, 97, 62, -107, -18, -60, 37, 56, 50, -89, 97, -81, 40, -1, 55, -84, 90, 21, 12]');

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
-- Indexes for table `doctordatetime`
--
ALTER TABLE `doctordatetime`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`StaffID`);

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
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `webadmin`
--
ALTER TABLE `webadmin`
  ADD PRIMARY KEY (`StaffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AptID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctordatetime`
--
ALTER TABLE `doctordatetime`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctortype`
--
ALTER TABLE `doctortype`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pharmacyorders`
--
ALTER TABLE `pharmacyorders`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PrscID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `webadmin`
--
ALTER TABLE `webadmin`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
