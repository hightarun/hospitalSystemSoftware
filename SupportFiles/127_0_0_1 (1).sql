-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 05:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanage`
--
CREATE DATABASE IF NOT EXISTS `eventmanage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eventmanage`;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventname` varchar(100) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `tm` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `dep` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `dep` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- Database: `hms`
--
CREATE DATABASE IF NOT EXISTS `hms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hms`;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_record`
--

CREATE TABLE `doctor_record` (
  `id` varchar(200) NOT NULL,
  `DoctorName` text NOT NULL,
  `Specialization` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_record`
--

INSERT INTO `doctor_record` (`id`, `DoctorName`, `Specialization`) VALUES
('1', 'BILAL', '');

-- --------------------------------------------------------

--
-- Table structure for table `paitient_record`
--

CREATE TABLE `paitient_record` (
  `id` varchar(200) NOT NULL,
  `PatientName` varchar(200) NOT NULL,
  `PatientDisease` text NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paitient_record`
--

INSERT INTO `paitient_record` (`id`, `PatientName`, `PatientDisease`, `date`, `time`) VALUES
('2', 'taha', '', '22-10-2020', '00:41:19:AM'),
('3', 'tom', 'typhoid', '22-10-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_record`
--
ALTER TABLE `doctor_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paitient_record`
--
ALTER TABLE `paitient_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

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

--
-- Dumping data for table `admit`
--

INSERT INTO `admit` (`PatientName`, `Gender`, `Blood`, `Disease`, `AdmitDate`, `RoomNo`, `DocName`, `DocSpec`, `Remarks`, `AdmitStatus`) VALUES
('Abhinav', 'M', 'O-', 'Fever', '2021-05-07', 1, 'tarun', 'Heart', '', 'Discharged'),
('Abhinav', 'M', 'O-', 'Fever', '2021-06-01', 4, 'tarun', 'Heart', 'Heart Attack', 'Discharged'),
('Abhinav', 'M', 'O-', 'Fever', '2021-06-01', 1, 'tarun', 'Heart', 'Heart Attack', 'Discharged'),
('Abhinav', 'M', 'O-', 'Fever', '2021-06-01', 1, 'tarun', 'Heart', 'Heart ATtack', 'Discharged'),
('Abhinav', 'M', 'O-', 'Fever', '2021-06-02', 1, 'tarun', 'Heart', 'Attack', 'Discharged'),
('Sahil', 'M', 'O-', 'Covid', '2021-06-01', 4, 'vaibhav ', 'Dentist', 'Covid', 'Discharged');

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
('CH002', 'DS002', 'PS002', 8, '2020-12-06', '3:30am'),
('CH003', 'DS001', 'PS001', 4, '2021-05-22', '1:00pm'),
('CH004', 'DS001', 'PS001', 5, '2021-06-01', '1:30pm');

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

--
-- Dumping data for table `discharge`
--

INSERT INTO `discharge` (`PatientName`, `RoomNo`, `AdmitDate`, `DoctorName`, `DischargeDate`) VALUES
('Abhinav', 1, '2021-05-07', 'tarun', '2021-05-20'),
('Abhinav', 4, '2021-06-01', 'tarun', '2021-06-13'),
('Abhinav', 1, '2021-06-01', 'tarun', '2021-06-13'),
('Abhinav', 1, '2021-06-01', 'tarun', '2021-06-13'),
('Abhinav', 1, '2021-06-02', 'tarun', '2021-06-13'),
('Sahil', 4, '2021-06-01', 'vaibhav ', '2021-06-16');

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
('DS002', 'tarun', 'Heart', 'MBBS', 500, 7412589637, 5, 3),
('DS003', 'new Doctor', 'Brain', 'MBBS', 500, 98574854, 5, 17),
('DS004', 'Newer Doctor', 'Dentist', 'BDS', 1000, 987654321, 10, 1);

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
('MD001', 'Aspirin', 'for headache', 16, 10, 50),
('MD002', 'Cough Syrup', 'for throat infection', 15, 10, 897),
('MD003', 'Dollo', 'Headache', 15, 10, 1005);

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
(41, '2021-05-12', 471, 500, 29),
(42, '2021-05-20', 150, 200, 50),
(43, '2021-06-13', 950, 1000, 50);

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
(50, 41, 'MD003', 15, 14, 210),
(51, 42, 'MD002', 15, 10, 150),
(52, 43, 'MD001', 16, 50, 800),
(53, 43, 'MD002', 15, 10, 150);

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
('CT Scan', 6000),
('Blood Test', 1000),
('RT-PCR', 1000);

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
(2, 'vaibhav', 'waynegod111@gmail.com', 'vaibhav', '1234567', 'Doctor'),
(3, 'tarun', 'doc1@hospital.com', 'tarun', '1234567', 'Doctor'),
(4, 'phar', 'phar@hospital.com', 'phar', '12345678', 'Pharmacist'),
(5, 'Williams', 'admin@hospital.com', 'daniel', '1234567', 'ADMIN');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hospital\",\"table\":\"user\"},{\"db\":\"eventmanage\",\"table\":\"student\"},{\"db\":\"eventmanage\",\"table\":\"hod\"},{\"db\":\"eventmanage\",\"table\":\"event\"},{\"db\":\"hospital\",\"table\":\"item\"},{\"db\":\"hospital\",\"table\":\"channel\"},{\"db\":\"hospital\",\"table\":\"prescription\"},{\"db\":\"hospital\",\"table\":\"doctor\"},{\"db\":\"hospital\",\"table\":\"patient\"},{\"db\":\"hospital\",\"table\":\"discharge\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hospital', 'admit', '{\"sorted_col\":\"`admit`.`AdmitDate`  ASC\"}', '2021-04-28 17:50:20'),
('root', 'hospital', 'prescription', '{\"CREATE_TIME\":\"2020-12-21 01:52:44\",\"col_order\":[0,1,2,3,4,5],\"col_visib\":[1,1,1,1,1,1]}', '2021-04-27 20:58:05'),
('root', 'hospital', 'user', '{\"CREATE_TIME\":\"2021-04-06 16:16:20\",\"sorted_col\":\"`user`.`utype` ASC\"}', '2021-06-16 04:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-22 15:37:45', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":334}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` varchar(255) NOT NULL,
  `d_id` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `d_id`, `pname`, `roomno`, `date`, `status`) VALUES
('CH001', 'DS001', 'PS001', 3, '2019-07-14', 'Active'),
('CH002', 'DS003', 'PS008', 4, '2019-07-14', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `log_id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `log_id`, `specialization`, `qualification`, `fee`, `email`, `room`) VALUES
('DS001', 'Kishan', 6, 'Ca', 'MBBS', 12000, 'kishan@gmail.com', '1'),
('DS002', 'Nira', 7, 'Ca', 'MBBS', 12000, 'nira@gmail.com', '3'),
('DS003', 'Laven', 10, 'Ca', 'MBBS', 12000, 'laven@gmail.com', '6');

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`id`, `item`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('DR001', 'Panadol', 'Panadol	', 12, 10, 88),
('DR002', 'cc', 'ccccc dsfsd', 12, 9, 64),
('DR003', 'aaaa', 'wqeqweqw qwe ewqwe ewwqe	', 15, 8, 100),
('DR004', 'abc', 'dsfsd dsfsdf sdfsdf', 15, 10, 100),
('DR005', 'd', 'dsdsd ', 12, 10, 100),
('DR006', 'ccc', 'dsfsdf sdfsdf 	', 20, 10, 100);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `phone`, `address`) VALUES
('PS002', 'Murugan', 232242, 'India'),
('PS003', 'Niranjan', 3242342, 'India'),
('PS004', 'Suren', 90000088, 'kerla'),
('PS005', 'suriya', 34345345, 'channai india'),
('PS006', 'john', 3423423, 'kerala '),
('PS007', 'magesh', 34324234, 'badulla'),
('PS008', 'Peter', 234324324, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `chid` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `chid`, `detype`, `description`) VALUES
(1, 'CH004', 'Fever', 'dsfdsf sdfsdfsdf'),
(2, 'CH007', 'Fever', 'Feverrr  ffffff'),
(3, 'CH008', 'Fever', 'Fever dfdfdfdfdf'),
(4, 'CH009', 'lssk', 'kksaa'),
(6, 'CH013', 'Fever', 'ewrewr e wrew  ewrew ewrew ewr\nerew ewrrw erewr'),
(7, 'CH002', 'Fever', 'dfsdf sdfsdf sdfsdf dsfsdfs\nsdfsdf sfsf \n');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2019-07-12', 24, 30, 6),
(2, '2019-07-12', 84, 90, 6),
(3, '2019-07-12', 60, 70, 10),
(4, '2019-07-12', 48, 50, 2),
(5, '2019-07-12', 36, 40, 4),
(6, '2019-07-12', 48, 50, 2),
(7, '2019-07-12', 84, 100, 16),
(8, '2019-07-12', 60, 70, 10),
(9, '2019-07-12', 72, 80, 8),
(10, '2019-07-12', 48, 50, 2),
(11, '2019-07-12', 48, 70, 22),
(12, '2019-07-12', 144, 150, 6),
(13, '2019-07-12', 120, 200, 80),
(14, '2019-07-12', 72, 80, 8),
(15, '2019-07-12', 192, 200, 8),
(16, '2019-07-13', 96, 100, 4),
(17, '2019-07-14', 132, 150, 18);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(255) NOT NULL,
  `pr_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `pr_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(2, 11, '1', 'DR001', 4, 12, 48),
(3, 12, '1', 'DR001', 12, 12, 144),
(4, 13, '3', 'DR001', 10, 12, 120),
(5, 14, '4', 'DR001', 6, 12, 72),
(6, 15, '6', 'DR001', 10, 12, 120),
(7, 15, '6', 'DR002', 6, 12, 72),
(8, 16, '6', 'DR001', 1, 12, 12),
(9, 16, '6', 'DR002', 7, 12, 84),
(10, 17, '7', 'DR001', 8, 12, 96),
(11, 17, '7', 'DR002', 3, 12, 36);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'rajan', 'rajan', '123', 'pharmacist'),
(2, 'raja', 'raja', '123', 'Receptionist'),
(3, 'ravi', 'ravi', '123', 'Receptionist'),
(4, 'sathis', 'sathis', '123', 'Receptionist'),
(5, 'hari', 'hari', '123', 'Doctor'),
(6, 'kishan', 'kishan', '123', 'Doctor'),
(7, 'nira', 'Nira', '123', 'Doctor'),
(8, 'jaya', 'jaya', '123', 'pharmacist'),
(9, 'sathis', 'sathis', '123', 'Doctor'),
(10, 'Laven', 'Laven', '123', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
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
-- AUTO_INCREMENT for table `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
