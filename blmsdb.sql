-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblassignlocker`
--

CREATE TABLE `tblassignlocker` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `CompleteAddress` mediumtext DEFAULT NULL,
  `Occupation` varchar(250) DEFAULT NULL,
  `LockerSize` int(10) DEFAULT NULL,
  `LockerNumber` int(10) DEFAULT NULL,
  `KeyNumber` int(10) DEFAULT NULL,
  `Instructions` mediumtext DEFAULT NULL,
  `NomineeName` varchar(250) DEFAULT NULL,
  `Relationwithnominee` varchar(250) DEFAULT NULL,
  `ValuableDetails` mediumtext DEFAULT NULL,
  `IDcard` varchar(250) DEFAULT NULL,
  `IDproof` varchar(250) DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Status` int(5) DEFAULT NULL,
  `LockerAssigndate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblassignlocker`
--

INSERT INTO `tblassignlocker` (`ID`, `FullName`, `Email`, `MobileNumber`, `CompleteAddress`, `Occupation`, `LockerSize`, `LockerNumber`, `KeyNumber`, `Instructions`, `NomineeName`, `Relationwithnominee`, `ValuableDetails`, `IDcard`, `IDproof`, `Photo`, `Status`, `LockerAssigndate`) VALUES
(1, 'Monish', 'monish@gmail.com', 9113566712, 'No 311 F-Block Sunflower apartment Dadhar Mumbai', 'Entreprenur', 1, 12345, 12345, 'NA', 'akshay', 'friend', 'Golden rings (4)\r\nGolden bracelet\r\nProperty documents\r\n', 'Aadhar Card', '55ccf27d26d7b23839986b6ae2e447ab1716792020.jpg', 'e9db84d0e11b5c26723e9951e4f7204b1716792020.jpg', 1, '2024-10-27 06:40:20'),
(2, 'Chandana', 'Chandana@gmail.com', 9353547198, 'Door No-15, 2 main road,5th cross,Rajive Gandhi Nagar,Bangalore', 'Government Employee', 1, 6789, 6789, 'NA', 'tanu', 'daughter', 'Gold ring,silver chain', 'Voter Card', 'b3f98875d8f39496698e36c9f2ec4d9d1716803238.jpg', 'adde6949ed2e18517b2f13ad80c8d4091716803238.jpg', 1, '2024-10-27 09:47:18'),
(3, 'Chandan', 'chandan@gmail.com', 9353547198, 'B-Block sector 886, Noida, Madhya Pradesh', 'Software Developer', 3, 9876, 9876, 'NA', 'Kushal', 'friend', 'Property documents,\r\nGold Necklace\r\nGold ring', 'Driving Licence', '1e6ae4ada992769567b71815f124fac51716803484.jpg', '2d99ae9e904f880eef8feb4e61882b791716803484.jpg', 1, '2024-10-27 09:51:24'),
(7, 'sindhu sp', 'sindhu@gmail.com', 9663128695, 'No 89 Mathrushree Nilaya Bangalore North Bangalore North Bengaluru 560091', 'manager', 3, 54321, 54321, '', 'charu', 'daugther', '2 gold rings, property document ,insurance policy ,4 gold chain', 'Aadhar Card', '380cb858844050207ecf117851c62fb21745997050.jpg', 'c7738c4b86a680a02d48da9f2183e6361745997050.jpg', 1, '2025-10-30 07:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbanker`
--

CREATE TABLE `tblbanker` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbanker`
--

INSERT INTO `tblbanker` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(13, 'Monish', 'Monish', 9113566712, 'monish@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2025-02-20 09:52:32', 1),
(14, 'Chandan', 'Chandan', 9353547198, 'chandan@gmail.com', '01cfcd4f6b8770febfb40cb906715822', '2025-02-20 09:58:29', 0),
(15, 'chandana', 'chandana', 9743799059, 'chandana@gmail.com', '01cfcd4f6b8770febfb40cb906715822', '2025-04-30 06:59:43', 0),
(16, 'sindhu sp', 'sindhu sp', 9663128695, 'sindhu@gmail.com', '01cfcd4f6b8770febfb40cb906715822', '2025-04-30 07:00:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllockertype`
--

CREATE TABLE `tbllockertype` (
  `ID` int(5) NOT NULL,
  `SizeofLocker` varchar(50) DEFAULT NULL,
  `Priceoflocker` decimal(10,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllockertype`
--

INSERT INTO `tbllockertype` (`ID`, `SizeofLocker`, `Priceoflocker`, `CreationDate`) VALUES
(1, 'Small', 11000, '2024-12-29 02:45:38'),
(2, 'Medium', 12500, '2024-12-29 02:50:59'),
(3, 'Large', 15000, '2024-12-29 02:56:07'),
(4, 'Xtra Large', 20000, '2024-12-29 03:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '132178q34h0wo,4e9iwshyehzwsk,e4mwzsi', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'No 125, 6th main RK layout, JP Nagar, Bangalore-560091', 'bankerinfo@gmail.com', 7896541239, NULL, '10:30 am to 8:30 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassignlocker`
--
ALTER TABLE `tblassignlocker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbanker`
--
ALTER TABLE `tblbanker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllockertype`
--
ALTER TABLE `tbllockertype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassignlocker`
--
ALTER TABLE `tblassignlocker`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbanker`
--
ALTER TABLE `tblbanker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbllockertype`
--
ALTER TABLE `tbllockertype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
