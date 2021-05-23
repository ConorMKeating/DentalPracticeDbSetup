-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 07:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_ck`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `APPOINTMENTNO` int(11) NOT NULL,
  `APPOINTMENTDATE` date NOT NULL,
  `APPOINTMENTTIME` time NOT NULL,
  `LATECANCEL` bit(1) DEFAULT NULL,
  `TREATMENTNO` smallint(3) NOT NULL,
  `PATIENTNO` int(11) NOT NULL,
  `BILLNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`APPOINTMENTNO`, `APPOINTMENTDATE`, `APPOINTMENTTIME`, `LATECANCEL`, `TREATMENTNO`, `PATIENTNO`, `BILLNO`) VALUES
(1, '2020-04-22', '09:15:00', b'0', 4, 4, 1),
(2, '2020-04-22', '09:45:00', b'0', 1, 1, 2),
(3, '2020-04-22', '10:45:00', b'0', 1, 2, 3),
(4, '2020-04-22', '13:45:00', b'1', 3, 3, 4),
(5, '2020-04-23', '09:45:00', b'0', 1, 4, 5),
(6, '2020-04-23', '10:30:00', b'0', 2, 5, 6),
(7, '2020-04-24', '09:30:00', b'0', 4, 6, 7),
(8, '2020-04-24', '11:15:00', b'0', 1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BILLNO` int(11) NOT NULL,
  `BILLDATE` date NOT NULL,
  `PAIDINFULL` bit(1) DEFAULT NULL,
  `BILLOVERDUE` bit(1) DEFAULT NULL,
  `PATIENTNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BILLNO`, `BILLDATE`, `PAIDINFULL`, `BILLOVERDUE`, `PATIENTNO`) VALUES
(1, '2020-04-22', b'1', b'0', 4),
(2, '2020-04-22', b'1', b'0', 1),
(3, '2020-04-22', b'0', b'0', 2),
(4, '2020-04-22', b'0', b'0', 3),
(5, '2020-04-23', b'1', b'0', 4),
(6, '2020-04-23', b'0', b'0', 5),
(7, '2020-04-24', b'0', b'0', 6),
(8, '2020-04-24', b'1', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENTNO` int(11) NOT NULL,
  `PATIENTFNAME` varchar(15) DEFAULT NULL,
  `PATIENTSNAME` varchar(15) DEFAULT NULL,
  `PATIENTADDRESS` varchar(50) DEFAULT NULL,
  `PATIENTEIRCODE` varchar(7) DEFAULT NULL,
  `PATIENTCOUNTY` varchar(10) DEFAULT NULL,
  `PATIENTTEL` varchar(15) DEFAULT NULL,
  `PATIENTEMAIL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENTNO`, `PATIENTFNAME`, `PATIENTSNAME`, `PATIENTADDRESS`, `PATIENTEIRCODE`, `PATIENTCOUNTY`, `PATIENTTEL`, `PATIENTEMAIL`) VALUES
(1, 'Conor', 'Keating', '6 The Way, Blackrock', 'P43DH34', 'Cork', '0214377698', 'conorkeating@yahoo.com'),
(2, 'Alan', 'Murphy', '12 Grove street, Blackrock', 'P43DL84', 'Cork', '0214376858', 'alanmurphy@yahoo.com'),
(3, 'Jean', 'Casey', '5 Uptick, Knockdown', 'P43LR34', 'Cork', '0214897698', 'jeancasey@yahoo.com'),
(4, 'April', 'May', '76 The Nile, Splashtown', 'S53DH34', 'Limerick', '0214355698', 'aprilmay@yahoo.com'),
(5, 'Jimmy', 'Joe', '8 Dry Road, Oasis', 'T54FH34', 'Tipperary', '0214785698', 'jimmyjoe@yahoo.com'),
(6, 'Barry', 'Black', '15 Zeppelin Avenue, Awesometown', 'P43DO04', 'Cork', '0214373228', 'barryblack@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `RECEIPTNO` int(11) NOT NULL,
  `RECEIPTAMOUNT` decimal(7,2) DEFAULT NULL,
  `PAYMENTTYPE` varchar(15) DEFAULT NULL,
  `BILLNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`RECEIPTNO`, `RECEIPTAMOUNT`, `PAYMENTTYPE`, `BILLNO`) VALUES
(1, '75.00', 'VISA', 1),
(2, '50.00', 'Cash', 2),
(3, '25.00', 'Cheque', 3),
(4, '50.00', 'Cash', 5),
(5, '50.00', 'Cash', 6),
(6, '50.00', 'VISA', 8);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `SPECNO` int(11) NOT NULL,
  `SPECFNAME` varchar(15) DEFAULT NULL,
  `SPECSNAME` varchar(15) DEFAULT NULL,
  `SPECADDRESS` varchar(50) DEFAULT NULL,
  `SPECEIRCODE` varchar(7) DEFAULT NULL,
  `SPECCOUNTY` varchar(10) DEFAULT NULL,
  `SPECTEL` varchar(15) DEFAULT NULL,
  `SPECEMAIL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`SPECNO`, `SPECFNAME`, `SPECSNAME`, `SPECADDRESS`, `SPECEIRCODE`, `SPECCOUNTY`, `SPECTEL`, `SPECEMAIL`) VALUES
(1, 'Jeremiah', 'Bullfrog', '2 Expensive Street, Uptown', 'P48JH04', 'Cork', '0214395198', 'jerrythefrog@yahoo.com'),
(2, 'Rick', 'Shaw', '1 Expensive Road, Noriffraff', 'P47YT64', 'Cork', '0214376728', 'dontlaughatmyname@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TREATMENTNO` smallint(3) NOT NULL,
  `TREATMENTNAME` varchar(20) NOT NULL,
  `TREATMENTDESC` varchar(300) DEFAULT NULL,
  `TREATMENTCOST` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TREATMENTNO`, `TREATMENTNAME`, `TREATMENTDESC`, `TREATMENTCOST`) VALUES
(1, 'Cleaning', 'This is a thorough cleaning of the patients teeth', '50.00'),
(2, 'Filling', 'This is the application of fillings to the patients teeth', '90.00'),
(3, 'Root Canal', 'This is nerve removal and filling of the patients teeth', '250.00'),
(4, 'Extraction', 'This is a removal of the patients teeth', '75.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`APPOINTMENTNO`),
  ADD KEY `TREATMENTNO` (`TREATMENTNO`),
  ADD KEY `PATIENTNO` (`PATIENTNO`),
  ADD KEY `BILLNO` (`BILLNO`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BILLNO`),
  ADD KEY `PATIENTNO` (`PATIENTNO`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENTNO`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`RECEIPTNO`),
  ADD KEY `BILLNO` (`BILLNO`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`SPECNO`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TREATMENTNO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`TREATMENTNO`) REFERENCES `treatment` (`TREATMENTNO`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`PATIENTNO`) REFERENCES `patient` (`PATIENTNO`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`BILLNO`) REFERENCES `bill` (`BILLNO`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`PATIENTNO`) REFERENCES `patient` (`PATIENTNO`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BILLNO`) REFERENCES `bill` (`BILLNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
