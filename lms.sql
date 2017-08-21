-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2017 at 02:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaveapp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeeblood`
--

CREATE TABLE `employeeblood` (
  `bId` int(11) NOT NULL,
  `bName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeblood`
--

INSERT INTO `employeeblood` (`bId`, `bName`) VALUES
(1, 'AB+'),
(2, 'AB-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `employeedepartment`
--

CREATE TABLE `employeedepartment` (
  `dptId` int(11) NOT NULL,
  `dptName` varchar(100) DEFAULT NULL,
  `dptEmployeEmailWhoAddDept` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedepartment`
--

INSERT INTO `employeedepartment` (`dptId`, `dptName`, `dptEmployeEmailWhoAddDept`) VALUES
(1, 'Production', 'mahesh@magellanix.com'),
(2, 'Development', 'mahesh@magellanix.com'),
(3, 'Digital Marketing', 'mahesh@magellanix.com');

-- --------------------------------------------------------

--
-- Table structure for table `employeedesignation`
--

CREATE TABLE `employeedesignation` (
  `desiId` int(11) NOT NULL,
  `desiDptId` int(11) DEFAULT NULL,
  `desiDesignationName` varchar(100) DEFAULT NULL,
  `desiEmployeEmailWhoAddDesi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedesignation`
--

INSERT INTO `employeedesignation` (`desiId`, `desiDptId`, `desiDesignationName`, `desiEmployeEmailWhoAddDesi`) VALUES
(1, 1, 'Production Engineer', 'mahesh@magellanix.com'),
(2, 2, 'Software Developer', 'mahesh@magellanix.com'),
(3, 2, 'Website Developer', 'mahesh@magellanix.com');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `eId` int(11) NOT NULL,
  `eEmployeeCodeNumber` varchar(100) DEFAULT NULL,
  `eFirstName` varchar(45) DEFAULT NULL,
  `eLastName` varchar(45) DEFAULT NULL,
  `eDateOfBirth` date DEFAULT NULL,
  `eBloodGroup` int(11) DEFAULT NULL,
  `eGender` varchar(10) DEFAULT NULL,
  `ePhoneNumberPersonal` varchar(20) DEFAULT NULL,
  `ePhoneNumberOffice` varchar(20) DEFAULT NULL,
  `eParmanentAddress` varchar(255) DEFAULT NULL,
  `ePresentAddress` varchar(255) DEFAULT NULL,
  `eDptId` int(11) DEFAULT NULL,
  `eDesignationId` int(11) DEFAULT NULL,
  `eEmailAddress` varchar(100) DEFAULT NULL,
  `ePassword` varchar(255) DEFAULT NULL,
  `eEmployeEmailWhoAddEmployee` varchar(100) DEFAULT NULL,
  `eEmployeeVerification` int(11) DEFAULT NULL,
  `eWhoVerifytheEmployee` varchar(100) DEFAULT NULL,
  `eLastLogin` datetime DEFAULT NULL,
  `eEmpType` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`eId`, `eEmployeeCodeNumber`, `eFirstName`, `eLastName`, `eDateOfBirth`, `eBloodGroup`, `eGender`, `ePhoneNumberPersonal`, `ePhoneNumberOffice`, `eParmanentAddress`, `ePresentAddress`, `eDptId`, `eDesignationId`, `eEmailAddress`, `ePassword`, `eEmployeEmailWhoAddEmployee`, `eEmployeeVerification`, `eWhoVerifytheEmployee`, `eLastLogin`, `eEmpType`) VALUES
(1, '8100', 'Mahesh', 'Ramu', '1992-04-02', 1, 'male', '9483939219', '9834578623', 'test permanent Address', 'test present address', 1, 1, 'mahesh@magellanix.com', 'Netcom123', 'mahesh@magellanix.com', 1, 'mahesh@magellanix', '2017-08-08 18:26:21', 1),
(2, '8150', 'Kalai', 'vanan R', '1996-07-30', 5, 'Male', '9659437934', '9047936739', '4/24, MainRoad,Manavalanallur,Eravencherry(po),Kadavasal(tk),Thiruvarur(dt) Pin-609501', 'chennai', 2, 2, 'kalaivanan@magellanix.com', 'Netcom123', 'mahesh@magellanix.com', 1, 'mahesh@magellanix.com', NULL, 2),
(3, '8151', 'mohamed', 'azarudeen', '1998-04-09', 7, 'Male', '9629560353', '9787337372', 'test permanent address', 'test present address', 2, 2, 'azar@magellanix.com', 'Netcom123', 'mahesh@magellanix.com', 1, 'mahesh@magellanix.com', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaveapplicationdetails`
--

CREATE TABLE `employeeleaveapplicationdetails` (
  `lId` int(11) NOT NULL,
  `lEmployeEmailWhoApply` varchar(100) DEFAULT NULL,
  `lApplyDate` date DEFAULT NULL,
  `lLeaveId` tinyint(4) DEFAULT NULL,
  `lEmployeeImargencyAddress` varchar(255) DEFAULT NULL,
  `lLeaveFromDate` date DEFAULT NULL,
  `lLeaveToDate` date DEFAULT NULL,
  `lTotalLeaveDays` int(11) DEFAULT NULL,
  `lTotalLeaveDaysRemain` int(11) DEFAULT NULL,
  `lLeaveReason` varchar(255) DEFAULT NULL,
  `lAlternativeEmployeeEmail` varchar(100) DEFAULT NULL,
  `lIsApproved` tinyint(4) DEFAULT NULL,
  `lIsRecomanded` tinyint(4) DEFAULT NULL,
  `lWhoRecomand` varchar(100) DEFAULT NULL,
  `lWhoApproved` varchar(100) DEFAULT NULL,
  `lWhoEdit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeleaveapplicationdetails`
--

INSERT INTO `employeeleaveapplicationdetails` (`lId`, `lEmployeEmailWhoApply`, `lApplyDate`, `lLeaveId`, `lEmployeeImargencyAddress`, `lLeaveFromDate`, `lLeaveToDate`, `lTotalLeaveDays`, `lTotalLeaveDaysRemain`, `lLeaveReason`, `lAlternativeEmployeeEmail`, `lIsApproved`, `lIsRecomanded`, `lWhoRecomand`, `lWhoApproved`, `lWhoEdit`) VALUES
(1, 'mahesh@magellanix.com', '2017-08-08', 2, 'chennai', '2017-08-10', '2017-08-13', 3, 7, 'holidays', '', 1, 1, 'mahesh@magellanix.com', 'mahesh@magellanix.com', NULL),
(2, 'mahesh@magellanix.com', '2017-08-08', 1, 'chennai', '2017-08-15', '2017-08-16', 1, 3, 'fever', '', 1, 1, 'mahesh@magellanix.com', 'mahesh@magellanix.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leavedetails`
--

CREATE TABLE `leavedetails` (
  `lId` tinyint(4) NOT NULL,
  `lType` varchar(30) DEFAULT NULL,
  `lTotalDays` int(11) DEFAULT NULL,
  `lEmployeEmailWhoAddLeave` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavedetails`
--

INSERT INTO `leavedetails` (`lId`, `lType`, `lTotalDays`, `lEmployeEmailWhoAddLeave`) VALUES
(1, 'SickLeave', 4, 'mahesh@magellanix.com'),
(2, 'Vacaton Leave', 10, 'mahesh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeeblood`
--
ALTER TABLE `employeeblood`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  ADD PRIMARY KEY (`dptId`),
  ADD KEY `employeedepartment_ibfk_1` (`dptEmployeEmailWhoAddDept`);

--
-- Indexes for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD PRIMARY KEY (`desiId`),
  ADD KEY `desiDptId` (`desiDptId`) USING BTREE,
  ADD KEY `desiDesignationName` (`desiDesignationName`),
  ADD KEY `employeedesignation_ibfk_1` (`desiEmployeEmailWhoAddDesi`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`eId`),
  ADD UNIQUE KEY `eCodeNumber_UNIQUE` (`eEmployeeCodeNumber`);

--
-- Indexes for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lEmployeeLeaveType_fk_lType` (`lLeaveId`),
  ADD KEY `lEmployeEmailWhoApply` (`lEmployeEmailWhoApply`),
  ADD KEY `lWhoRecomand` (`lWhoRecomand`),
  ADD KEY `lWhoApproved` (`lWhoApproved`);

--
-- Indexes for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lType` (`lType`),
  ADD KEY `employeeleave_ibfk_1` (`lEmployeEmailWhoAddLeave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeeblood`
--
ALTER TABLE `employeeblood`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  MODIFY `dptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  MODIFY `desiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  MODIFY `lId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leavedetails`
--
ALTER TABLE `leavedetails`
  MODIFY `lId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
