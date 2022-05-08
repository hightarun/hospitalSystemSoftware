-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 11:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `admit`
--

CREATE TABLE `admit` (
  `PatientName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Blood` varchar(255) NOT NULL,
  `Disease` varchar(255) NOT NULL,
  `AdmitDate` date NOT NULL,
  `RoomNo` int(100) NOT NULL,
  `DocName` varchar(255) NOT NULL,
  `DocSpec` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  `AdmitStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`, `time`) VALUES
('CH001', 'DS001', 'PS001', 3, '2020-12-02', '5:30pm'),
('CH002', 'DS002', 'PS002', 8, '2020-12-06', '3:30am');

-- --------------------------------------------------------

--
-- Table structure for table `discharge`
--

CREATE TABLE `discharge` (
  `PatientName` varchar(255) NOT NULL,
  `RoomNo` int(11) NOT NULL,
  `AdmitDate` date NOT NULL,
  `DoctorName` varchar(255) NOT NULL,
  `DischargeDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `channelfee` int(11) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `room` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorno`, `name`, `special`, `qualification`, `channelfee`, `phone`, `room`, `log_id`) VALUES
('DS001', 'vaibhav ', 'Dentist', 'BDS', 600, 9898989898, 4, 2),
('DS002', 'tarun', 'chapri heart hacker', 'MBBS', 5000, 7412589637, 5, 3),
('DS003', 'Shbham', 'heart', 'btech', 10, 254545, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemname`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('MD001', 'Aspirin', 'for headache', 16, 10, 94),
('MD002', 'Cough Syrup', 'for throat infection', 15, 10, 917),
('MD003', 'Aspirin 500', 'for major headache', 15, 10, 486);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientno`, `name`, `gender`, `blood`, `phone`, `address`) VALUES
('PS001', 'Sahil', 'M', 'O-', 12312, '31231'),
('PS002', 'Abhinav', 'M', 'O-', 1231, '23221');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pid` varchar(255) NOT NULL,
  `channelid` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pid`, `channelid`, `doctorname`, `detype`, `description`, `patientname`) VALUES
('PC001', 'CH001', 'vaibhav ', 'Covid', 'dollo', 'Sahil'),
('PC002', 'CH002', 'tarun', 'Fever', 'High Fever', 'Abhinav');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(5) NOT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
(1, 'Deluxe', 2500, 'Vacant'),
(2, 'General', 1200, 'Booked'),
(3, 'General', 1200, 'Booked'),
(4, 'Deluxe', 2500, 'Vacant'),
(5, 'General', 1200, 'Vacant'),
(6, 'General', 1200, 'Vacant'),
(7, 'Deluxe', 2500, 'Vacant'),
(8, 'General', 1200, 'Vacant'),
(9, 'General', 1200, 'Vacant'),
(10, 'Deluxe', 2500, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(35, '2020-12-21', 139, 200, 61),
(36, '2020-12-21', 80, 1000, 920),
(37, '2020-12-21', 45, 100, 55),
(38, '2020-12-22', 75, 100, 25),
(39, '2020-12-23', 140, 200, 60),
(40, '2021-01-09', 75, 100, 25),
(41, '2021-05-12', 471, 500, 29);

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE `sale_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_product`
--

INSERT INTO `sale_product` (`id`, `sales_id`, `prod_id`, `sellprice`, `qty`, `total`) VALUES
(37, 32, 'MD002', 15, 5, 75),
(38, 33, 'MD002', 15, 1, 15),
(39, 34, 'MD002', 15, 3, 45),
(40, 35, 'MD002', 15, 5, 75),
(41, 35, 'MD001', 16, 4, 64),
(42, 36, 'MD001', 16, 5, 80),
(43, 37, 'MD002', 15, 3, 45),
(44, 38, 'MD002', 15, 5, 75),
(45, 39, 'MD002', 15, 4, 60),
(46, 39, 'MD001', 16, 5, 80),
(47, 40, 'MD002', 15, 5, 75),
(48, 41, 'MD001', 16, 6, 96),
(49, 41, 'MD002', 15, 11, 165),
(50, 41, 'MD003', 15, 14, 210);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceName` varchar(255) NOT NULL,
  `ServiceCost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceName`, `ServiceCost`) VALUES
('X-Ray', 5000),
('MRI', 4000),
('CT Scan', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `utype`) VALUES
(1, 'ram', 'recep@hospital.com', 'ram', '12345678', 'Receptionist'),
(2, 'vaibhav', 'doc@hospital.com', 'vaibhav', '1234567', 'Doctor'),
(3, 'tarun', 'doc1@hospital.com', 'tarun', '1234567', 'Doctor'),
(4, 'phar', 'phar@hospital.com', 'phar', '12345678', 'Pharmacist'),
(5, 'Williams', 'admin@hospital.com', 'daniel', '1234567', 'ADMIN'),
(6, 'Shubham', 'shbhmkushwaha35@gmail.com', 'shbhmk', '12345678', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
