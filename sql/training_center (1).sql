-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 01:53 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_user`, `admin_email`, `admin_password`) VALUES
(1, 'khalid', 'khalid@gmail.com', 'khalid');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(20) NOT NULL,
  `course_name` text NOT NULL,
  `course_short_desc` text NOT NULL,
  `course_long_desc` text NOT NULL,
  `course_start_date` date NOT NULL,
  `course_end_date` date NOT NULL,
  `no_of_class` int(255) NOT NULL,
  `course_total_hour` int(255) NOT NULL,
  `reg_open_date` date NOT NULL,
  `reg_end_date` date NOT NULL,
  `class_schedule_id` int(11) NOT NULL,
  `venue` text NOT NULL,
  `course_objective` text NOT NULL,
  `course_instructor` text NOT NULL,
  `course_status` text NOT NULL,
  `available_seat` int(100) NOT NULL,
  `course_img_id` text NOT NULL,
  `review` int(10) NOT NULL,
  `old_price` text NOT NULL,
  `new_price` text NOT NULL,
  `created_date` date NOT NULL,
  `last_updated_date` date NOT NULL,
  `created_by` text NOT NULL,
  `last_updated_by` text NOT NULL,
  `course_category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_short_desc`, `course_long_desc`, `course_start_date`, `course_end_date`, `no_of_class`, `course_total_hour`, `reg_open_date`, `reg_end_date`, `class_schedule_id`, `venue`, `course_objective`, `course_instructor`, `course_status`, `available_seat`, `course_img_id`, `review`, `old_price`, `new_price`, `created_date`, `last_updated_date`, `created_by`, `last_updated_by`, `course_category`) VALUES
(1, 'Basic Cybersecurity and Digital Forensic using Magnet Axiom', 'This course is entry level program designed for investigators to identify the tools, hardware and understand the general the forensic process. ', 'This course is entry level program designed for investigators to identify the tools, hardware and understand the general the forensic process. Participant will learn how the phases of the forensics process are related and demonstrate how to handle devices following best practices and also will able to conduct basic analysis of extracted device data and generate ', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '8', '', 0, 'Basic Cybersecurity and Digital Forensic using Magnet Axiom.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(2, 'Foundations in Digital Forensics with Magnet Axiom', 'This course is entry level program designed for investigators to identify the tools, hardware and understand the general the forensic process. ', 'This course is entry level program designed for investigators to identify the tools, hardware and understand the general the forensic process. Participant will learn how the phases of the forensics process are related and demonstrate how to handle devices following best practices and also will able to conduct basic analysis of extracted device data and generate reports ', '2020-03-03', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '11', '', 0, 'Foundations in Digital Forensics with Magnet Axiom.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(3, 'Basic Penetration Testing with Linux', 'This Penetration testing with Linux, class will immerse the students into an interactive environment where they will be shown how to scan, test, hack and secure their own systems. ', 'This Penetration testing with Linux, class will immerse the students into an interactive environment where they will be shown how to scan, test, hack and secure their own systems. The lab intensive environment gives each student in-depth knowledge and practical experience with the current essential security systems. ', '2020-03-18', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '1', '', 0, 'Basic Penetration Testing with Linux.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(4, 'Blockchain and Cryptocurrency', 'The course provides an overview of the Block chain technology including its history, evolution and the future. ', 'The course provides an overview of the Block chain technology including its history, evolution and the future. Students learn about bitcoin, which is powered by block chain technology, bitcoin mining, other cryptocurrencies such as Ethereum, Block, Hash, cryptography, how to develop a simple block chain application.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '10', '', 0, 'Blockchain and Cryptocurrency.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(5, 'Machine Learning and Artificial Intelligence Fundamentals with Python', 'The aim of this course is to provide a basic proficiency in applying Machine Learning methods and artificial in practice. ', 'Make participant have a basic concept of machine learning technology related to artificial intelligence.\r\nParticipants can understand the basic theory of machine learning, classifiers, neural networks, and enhanced learning.\r\n', '2020-03-11', '2020-03-11', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '2', '', 0, 'Machine Learning and Artificial Intelligence Fundamentals with Python.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(6, 'Fundamental and Architecture Internet of Things (IoT)', 'The Internet of Things, commonly referred to as IoT, is the network of physical objects, devices, vehicles, ', 'The Internet of Things, commonly referred to as IoT, is the network of physical objects, devices, vehicles, buildings, and other items that’s been integrated into the technology of modern electronics, software, sensors, and other “things” with network connectivity that enables them to collect and exchange data. Once collected, this data becomes a powerful resource, which companies and technologies are tapping into, in revolutionary ways.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '3', '', 0, 'Fundamental and Architecture Internet of Things (IoT).png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(7, 'Big Data & Data Analytic', 'This five-days instructor-led course provides participants with concepts beyond the Big Data knowledge to get a head start with Hadoop. ', 'This five-days instructor-led course provides participants with concepts beyond the Big Data knowledge to get a head start with Hadoop. This course will also teach about data analysis using Hadoop Ecosystem for data analysis using Hadoop Ecosystem for data analysts, business intelligence specialists, developers and system architects.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '12', '', 0, 'Big Data & Data Analytic.png', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `course_complete`
--

CREATE TABLE `course_complete` (
  `id` int(100) NOT NULL,
  `course_id` varchar(500) NOT NULL,
  `course_name` varchar(500) NOT NULL,
  `student_id` varchar(500) NOT NULL,
  `reference_id` varchar(500) NOT NULL,
  `student_name` varchar(500) NOT NULL,
  `course_start_date` varchar(500) NOT NULL,
  `course_end_date` varchar(500) NOT NULL,
  `result` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_complete`
--

INSERT INTO `course_complete` (`id`, `course_id`, `course_name`, `student_id`, `reference_id`, `student_name`, `course_start_date`, `course_end_date`, `result`, `status`) VALUES
(1, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1509011', 'SN:HT-C-BCS-001', 'KAZI RIAD UDDIN ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(2, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604082', 'SN:HT-C-BCS-002', 'OMAR FARUK ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(3, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1602063', 'SN:HT-C-BCS-003', 'TRISHITA GHOSH TROYEE ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(4, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604103', 'SN:HT-C-BCS-004', 'RAHNUMA ESHA ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(5, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604080', 'SN:HT-C-BCS-005', 'MD. GOLAM SARWAR ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(6, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604096', 'SN:HT-C-BCS-006', 'IRFANA ALI ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(7, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1504045', 'SN:HT-C-BCS-007', 'KANIZ FATEMA ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(8, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1508005', 'SN:HT-C-BCS-008', 'SAZNIN AKTER LAMIA ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(9, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1502095', 'SN:HT-C-BCS-009', 'SHARMIN JAHAN ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(10, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604048', 'SN:HT-C-BCS-010', 'SAMSUN NAHER ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(11, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1609029', 'SN:HT-C-BCS-011', 'MD.HASIBUL HOSSAIN ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(12, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1609022', 'SN:HT-C-BCS-012', 'MITU SHIKDER ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(13, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604095', 'SN:HT-C-BCS-013', 'SUMAIYA SULTANA ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(14, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604038', 'SN:HT-C-BCS-014', 'RATUL BHOWMICK ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(15, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1502050', 'SN:HT-C-BCS-022', 'MD. AMINUL ISLAM ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(16, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1502006', 'SN:HT-C-BCS-023', 'SHAHRIN AKTER ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(17, ' 1', '\"Basic Cybersecurity and Digital Forensic using Magnet Axiom\"', 'CUET Student ID:1604012', 'SN:HT-C-BCS-024', 'MD.RAUFUR RAHMAN ', '15/06/2019', '18/06/2019', 'Pass', 'Completed'),
(18, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504012', 'SN:HT-C-FF-001', 'MD. EHTESHAMUL KABIR', '15/06/2020', '18/06/2020', 'Pass', 'Completed'),
(19, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504032', 'SN:HT-C-FF-002', 'MUHSINA KHAN', '15/06/2021', '18/06/2021', 'Pass', 'Completed'),
(20, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504036', 'SN:HT-C-FF-003', 'UWAISE IBNA ISLAM', '15/06/2022', '18/06/2022', 'Pass', 'Completed'),
(21, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504063', 'SN:HT-C-FF-004', 'MD.ZUBAIR', '15/06/2023', '18/06/2023', 'Pass', 'Completed'),
(22, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504092', 'SN:HT-C-FF-005', 'AFZALUL ALAM', '15/06/2024', '18/06/2024', 'Pass', 'Completed'),
(23, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504116', 'SN:HT-C-FF-006', 'MD. RAFIUR RAHMAN', '15/06/2025', '18/06/2025', 'Pass', 'Completed'),
(24, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604013', 'SN:HT-C-FF-007', 'SHAHRIAR MAHMUD SABUJ', '15/06/2026', '18/06/2026', 'Pass', 'Completed'),
(25, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604085', 'SN:HT-C-FF-008', 'NISHAN PAUL', '15/06/2027', '18/06/2027', 'Pass', 'Completed'),
(26, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604087', 'SN:HT-C-FF-009', 'KAZI TASNUVA ALVI', '15/06/2028', '18/06/2028', 'Pass', 'Completed'),
(27, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604092', 'SN:HT-C-FF-010', 'CINMOY DAS SHUBRA', '15/06/2029', '18/06/2029', 'Pass', 'Completed'),
(28, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509002', 'SN:HT-C-FF-011', 'ASIFUL HAQUE JOARDER', '15/06/2030', '18/06/2030', 'Pass', 'Completed'),
(29, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502056', 'SN:HT-C-FF-012', 'ZILLUR RAHMAN', '15/06/2031', '18/06/2031', 'Pass', 'Completed'),
(30, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508012', 'SN:HT-C-FF-013', 'FATEMA NAWRIN', '15/06/2032', '18/06/2032', 'Pass', 'Completed'),
(31, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1608026', 'SN:HT-C-FF-014', 'JOBAYER ALAM MAHIN', '15/06/2033', '18/06/2033', 'Pass', 'Completed'),
(32, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1608029', 'SN:HT-C-FF-015', 'SAZZAD YOUSUF SOURAB', '15/06/2034', '18/06/2034', 'Pass', 'Completed'),
(33, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509024', 'SN:HT-C-FF-016', 'NISHAT TASNIM', '15/06/2035', '18/06/2035', 'Pass', 'Completed'),
(34, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509012', 'SN:HT-C-FF-017', 'KAZI SAFAYET MD. SHABBIR', '15/06/2036', '18/06/2036', 'Pass', 'Completed'),
(35, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509006', 'SN:HT-C-FF-018', 'SOURAV RAXIT', '15/06/2037', '18/06/2037', 'Pass', 'Completed'),
(36, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509023', 'SN:HT-C-FF-019', 'JUNAYED RAHMAN KHAN', '15/06/2038', '18/06/2038', 'Pass', 'Completed'),
(37, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609013', 'SN:HT-C-FF-020', 'MD. ABDULLAH SHOUMIK', '15/06/2039', '18/06/2039', 'Pass', 'Completed'),
(38, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504007', 'SN:HT-C-FF-021', 'SUMAIYA BINTA HADAYET', '15/06/2040', '18/06/2040', 'Pass', 'Completed'),
(39, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504025', 'SN:HT-C-FF-022', 'SUVADRA BARUA', '15/06/2041', '18/06/2041', 'Pass', 'Completed'),
(40, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609016', 'SN:HT-C-FF-023', 'ARIFUL ISLAM AKASH', '15/06/2042', '18/06/2042', 'Pass', 'Completed'),
(41, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502010', 'SN:HT-C-FF-024', 'ABU NAYEM MD. NOMAN', '15/06/2043', '18/06/2043', 'Pass', 'Completed'),
(42, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609004', 'SN:HT-C-FF-025', 'MD. RIFATUL ISLAM', '15/06/2044', '18/06/2044', 'Pass', 'Completed'),
(43, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502126', 'SN:HT-C-FF-026', 'KAZI FARID', '15/06/2045', '18/06/2045', 'Pass', 'Completed'),
(44, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508025', 'SN:HT-C-FF-027', 'MD.SAIFUR RAHMAN', '15/06/2046', '18/06/2046', 'Pass', 'Completed'),
(45, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609019', 'SN:HT-C-FF-028', 'SHAFIN HASNAT', '15/06/2047', '18/06/2047', 'Pass', 'Completed'),
(46, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1608012', 'SN:HT-C-FF-029', 'SABBIR AHMED', '15/06/2048', '18/06/2048', 'Pass', 'Completed'),
(47, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1404077', 'SN:HT-C-FF-030', 'REZOAN SHAKIL', '15/06/2049', '18/06/2049', 'Pass', 'Completed'),
(48, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504109', 'SN:HT-C-FF-031', 'ARPITA CHAKRABORTY', '15/06/2050', '18/06/2050', 'Pass', 'Completed'),
(49, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609003', 'SN:HT-C-FF-032', 'KHANDAKER SABRINA SAHIM', '15/06/2051', '18/06/2051', 'Pass', 'Completed'),
(50, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502045', 'SN:HT-C-FF-033', 'MD. SHOHANUR RAHMAN SHOHAN', '15/06/2052', '18/06/2052', 'Pass', 'Completed'),
(51, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504056', 'SN:HT-C-FF-034', 'MOHAMMAD KAMRUL ISLAM', '15/06/2053', '18/06/2053', 'Pass', 'Completed'),
(52, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604099', 'SN:HT-C-FF-035', 'MD. ISHTIAQ ISLAM', '15/06/2054', '18/06/2054', 'Pass', 'Completed'),
(53, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1509005', 'SN:HT-C-FF-036', 'MD. NEAMOT TARIK', '15/06/2055', '18/06/2055', 'Pass', 'Completed'),
(54, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604102', 'SN:HT-C-FF-037', 'MEHEDI HASAN RASEL', '15/06/2056', '18/06/2056', 'Pass', 'Completed'),
(55, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609009', 'SN:HT-C-FF-038', 'TASFIA AMIN CHOWDHURY', '15/06/2057', '18/06/2057', 'Pass', 'Completed'),
(56, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504045', 'SN:HT-C-FF-039', 'KANIZ FATEMA', '15/06/2058', '18/06/2058', 'Pass', 'Completed'),
(57, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604034', 'SN:HT-C-FF-040', 'MD. AMINUL ISLAM', '15/06/2059', '18/06/2059', 'Pass', 'Completed'),
(58, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504002', 'SN:HT-C-FF-041', 'RIFAT IBN TAHER', '15/06/2060', '18/06/2060', 'Pass', 'Completed'),
(59, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604066', 'SN:HT-C-FF-042', 'MD SHIHAB HOSSAIN', '15/06/2061', '18/06/2061', 'Pass', 'Completed'),
(60, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502053', 'SN:HT-C-FF-043', 'MONISHA DEY', '15/06/2062', '18/06/2062', 'Pass', 'Completed'),
(61, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604007', 'SN:HT-C-FF-044', 'SURESH PAUL PRANTA', '15/06/2063', '18/06/2063', 'Pass', 'Completed'),
(62, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504016', 'SN:HT-C-FF-045', 'SUMITRA DAS GUPTTA', '15/06/2064', '18/06/2064', 'Pass', 'Completed'),
(63, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604022', 'SN:HT-C-FF-046', 'FARHANA AKTER', '15/06/2065', '18/06/2065', 'Pass', 'Completed'),
(64, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604094', 'SN:HT-C-FF-047', 'NUZAER OMAR', '15/06/2066', '18/06/2066', 'Pass', 'Completed'),
(65, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504016', 'SN:HT-C-FF-048', 'IMTIAJ AHMED', '15/06/2067', '18/06/2067', 'Pass', 'Completed'),
(66, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504015', 'SN:HT-C-FF-049', 'MAHATHIR BISHAL', '15/06/2068', '18/06/2068', 'Pass', 'Completed'),
(67, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604022', 'SN:HT-C-FF-050', 'A.R.SANAULLAH', '15/06/2069', '18/06/2069', 'Pass', 'Completed'),
(68, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502059', 'SN:HT-C-FF-051', 'GOLAM SARWAR MD. MURSALIN', '15/06/2070', '18/06/2070', 'Pass', 'Completed'),
(69, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504099', 'SN:HT-C-FF-052', 'MD. NAZMUL ISLAM', '15/06/2071', '18/06/2071', 'Pass', 'Completed'),
(70, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604083', 'SN:HT-C-FF-053', 'RUDAINA TASNUVA', '15/06/2072', '18/06/2072', 'Pass', 'Completed'),
(71, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604050', 'SN:HT-C-FF-054', 'ABU NAIM KHAN', '15/06/2073', '18/06/2073', 'Pass', 'Completed'),
(72, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604014', 'SN:HT-C-FF-055', 'URMI SAHA', '15/06/2074', '18/06/2074', 'Pass', 'Completed'),
(73, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504080', 'SN:HT-C-FF-056', 'TULI BISWAS', '15/06/2075', '18/06/2075', 'Pass', 'Completed'),
(74, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504046', 'SN:HT-C-FF-057', 'DEBOBROTO SARKER', '15/06/2076', '18/06/2076', 'Pass', 'Completed'),
(75, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609007', 'SN:HT-C-FF-058', 'PRANTO KUMAR', '15/06/2077', '18/06/2077', 'Pass', 'Completed'),
(76, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1404092', 'SN:HT-C-FF-059', 'ARIF ISTIAQUE', '15/06/2078', '18/06/2078', 'Pass', 'Completed'),
(77, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604093', 'SN:HT-C-FF-060', 'PRIYANTI PAUL TUMPA', '15/06/2079', '18/06/2079', 'Pass', 'Completed'),
(78, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504048', 'SN:HT-C-FF-061', 'SUPARNA DAS TULI', '15/06/2080', '18/06/2080', 'Pass', 'Completed'),
(79, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1404076', 'SN:HT-C-FF-062', 'LABIB AHMED', '15/06/2081', '18/06/2081', 'Pass', 'Completed'),
(80, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508010', 'SN:HT-C-FF-063', 'NAFEEZ FAHAD', '15/06/2082', '18/06/2082', 'Pass', 'Completed'),
(81, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508003', 'SN:HT-C-FF-064', 'SHAWNOCK GUHA PAUL', '15/06/2083', '18/06/2083', 'Pass', 'Completed'),
(82, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508018', 'SN:HT-C-FF-065', 'MOHAMMAD HABIBUR RAHMAN RAZIB', '15/06/2084', '18/06/2084', 'Pass', 'Completed'),
(83, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604065', 'SN:HT-C-FF-066', 'MD. RAGHIB SHARIYER SHORON', '15/06/2085', '18/06/2085', 'Pass', 'Completed'),
(84, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604019', 'SN:HT-C-FF-067', 'MD.SHARIFUL ISLAM', '15/06/2086', '18/06/2086', 'Pass', 'Completed'),
(85, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604028', 'SN:HT-C-FF-068', 'NIZIA NAHYAN', '15/06/2087', '18/06/2087', 'Pass', 'Completed'),
(86, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508019', 'SN:HT-C-FF-069', 'Mohammad Habibur Rahman Razib', '15/06/2088', '18/06/2088', 'Pass', 'Completed'),
(87, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508028', 'SN:HT-C-FF-070', 'Md. Raghib Shariyer Shoron', '15/06/2089', '18/06/2089', 'Pass', 'Completed'),
(88, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604064', 'SN:HT-C-FF-071', 'Md.Shariful Islam', '15/06/2090', '18/06/2090', 'Pass', 'Completed'),
(89, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504043', 'SN:HT-C-FF-072', 'Nizia Nahyan ', '15/06/2091', '18/06/2091', 'Pass', 'Completed'),
(90, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604024', 'SN:HT-C-FF-073', 'A. S. M. MOFAKH-KHARUL ISLAM', '15/06/2092', '18/06/2092', 'Pass', 'Completed'),
(91, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604053', 'SN:HT-C-FF-074', 'KANIZ FATIMA TONNI', '15/06/2093', '18/06/2093', 'Pass', 'Completed'),
(92, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504011', 'SN:HT-C-FF-075', 'ABIR EBNE', '15/06/2094', '18/06/2094', 'Pass', 'Completed'),
(93, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609001', 'SN:HT-C-FF-076', 'SEMONTI BANIK', '15/06/2095', '18/06/2095', 'Pass', 'Completed'),
(94, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609002', 'SN:HT-C-FF-077', 'SAMIUL ALAM', '15/06/2096', '18/06/2096', 'Pass', 'Completed'),
(95, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609027', 'SN:HT-C-FF-078', 'QUAZI SADMAN KABIR', '15/06/2097', '18/06/2097', 'Pass', 'Completed'),
(96, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609024', 'SN:HT-C-FF-079', 'MUMTAHINA ALAM', '15/06/2098', '18/06/2098', 'Pass', 'Completed'),
(97, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504096', 'SN:HT-C-FF-080', 'AUDRI BANIK', '15/06/2099', '18/06/2099', 'Pass', 'Completed'),
(98, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1608011', 'SN:HT-C-FF-081', 'UMME AFRUZ', '15/06/2100', '18/06/2100', 'Pass', 'Completed'),
(99, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1608010', 'SN:HT-C-FF-082', 'FOWZIA HOSSAIN', '15/06/2101', '18/06/2101', 'Pass', 'Completed'),
(100, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508017', 'SN:HT-C-FF-083', 'ABU HENA MORSHED', '15/06/2102', '18/06/2102', 'Pass', 'Completed'),
(101, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508027', 'SN:HT-C-FF-084', 'MOST. FATEMATOZZOHORA', '15/06/2103', '18/06/2103', 'Pass', 'Completed'),
(102, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508020', 'SN:HT-C-FF-085', 'NABANITA SAHA', '15/06/2104', '18/06/2104', 'Pass', 'Completed'),
(103, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508029', 'SN:HT-C-FF-086', 'NAZIA BINTE HABIB', '15/06/2105', '18/06/2105', 'Pass', 'Completed'),
(104, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1504070', 'SN:HT-C-FF-087', 'ABHIJEET DHALI', '15/06/2106', '18/06/2106', 'Pass', 'Completed'),
(105, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502068', 'SN:HT-C-FF-088', 'BISHAL DAS', '15/06/2107', '18/06/2107', 'Pass', 'Completed'),
(106, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609014', 'SN:HT-C-FF-089', 'A.K.M SHABBIR', '15/06/2108', '18/06/2108', 'Pass', 'Completed'),
(107, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508014', 'SN:HT-C-FF-090', 'NAFISA YEASMIN KHAN', '15/06/2109', '18/06/2109', 'Pass', 'Completed'),
(108, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1508009', 'SN:HT-C-FF-091', 'ABIDA AFRIN', '15/06/2110', '18/06/2110', 'Pass', 'Completed'),
(109, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604070', 'SN:HT-C-FF-092', 'SABIHA ISLAM', '15/06/2111', '18/06/2111', 'Pass', 'Completed'),
(110, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1609023', 'SN:HT-C-FF-093', 'RIFAT AHMMED', '15/06/2112', '18/06/2112', 'Pass', 'Completed'),
(111, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1502129', 'SN:HT-C-FF-094', 'SUMAIA JAHAN MISHU', '15/06/2113', '18/06/2113', 'Pass', 'Completed'),
(112, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604118', 'SN:HT-C-FF-095', 'SAYMA KASHEM MAHJUBA', '15/06/2114', '18/06/2114', 'Pass', 'Completed'),
(113, ' 2', '\"Foundations in Digital Forensics with Magnet Axiom\"', 'CUET Student ID:1604062', 'SN:HT-C-FF-096', 'KARABI KUMARI MEDHA', '15/06/2115', '18/06/2115', 'Pass', 'Completed'),
(114, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504058', 'SN:HT-C-PL-001', 'JEWEL RANA', '15/06/2116', '18/06/2116', 'Pass', 'Completed'),
(115, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504009', 'SN:HT-C-PL-002', 'DIPON TALUKDER', '15/06/2117', '18/06/2117', 'Pass', 'Completed'),
(116, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604044', 'SN:HT-C-PL-003', 'SHARMIN ARA', '15/06/2118', '18/06/2118', 'Pass', 'Completed'),
(117, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504106', 'SN:HT-C-PL-004', 'SAMIUL HAQUE', '15/06/2119', '18/06/2119', 'Pass', 'Completed'),
(118, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604019', 'SN:HT-C-PL-005', 'MD. NAFEEZ FAHAD', '15/06/2120', '18/06/2120', 'Pass', 'Completed'),
(119, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604077', 'SN:HT-C-PL-006', 'ASHIK MAHMUD', '15/06/2121', '18/06/2121', 'Pass', 'Completed'),
(120, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504028', 'SN:HT-C-PL-007', 'FAHMID RAHIM NOOR', '15/06/2122', '18/06/2122', 'Pass', 'Completed'),
(121, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604056', 'SN:HT-C-PL-008', 'MD. NIZAM UDDIN', '15/06/2123', '18/06/2123', 'Pass', 'Completed'),
(122, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604122', 'SN:HT-C-PL-009', 'SADIA TASNUVA PRITHA', '15/06/2124', '18/06/2124', 'Pass', 'Completed'),
(123, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1404076', 'SN:HT-C-PL-010', 'PRANTO KUMAR BISWAS', '15/06/2125', '18/06/2125', 'Pass', 'Completed'),
(124, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1502019', 'SN:HT-C-PL-012', 'AFIA IBNATH', '15/06/2126', '18/06/2126', 'Pass', 'Completed'),
(125, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1502031', 'SN:HT-C-PL-013', 'JOYNOB BINTE AHMED', '15/06/2127', '18/06/2127', 'Pass', 'Completed'),
(126, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504018', 'SN:HT-C-PL-014', 'AVISHEK DAS', '15/06/2128', '18/06/2128', 'Pass', 'Completed'),
(127, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504010', 'SN:HT-C-PL-015', 'MD. ASIF IQBAL', '15/06/2129', '18/06/2129', 'Pass', 'Completed'),
(128, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504026', 'SN:HT-C-PL-017', 'SAADMAN SAKIB', '15/06/2130', '18/06/2130', 'Pass', 'Completed'),
(129, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504052', 'SN:HT-C-PL-018', 'AVIJEET SHIL', '15/06/2131', '18/06/2131', 'Pass', 'Completed'),
(130, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504061', 'SN:HT-C-PL-019', 'REDOANUL HAQUE', '15/06/2132', '18/06/2132', 'Pass', 'Completed'),
(131, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504025', 'SN:HT-C-PL-022', 'SUVADRA BARUA', '15/06/2133', '18/06/2133', 'Pass', 'Completed'),
(132, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604071', 'SN:HT-C-PL-023', 'ASHISH PONDIT', '15/06/2134', '18/06/2134', 'Pass', 'Completed'),
(133, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604110', 'SN:HT-C-PL-024', 'RUSHNAN FARIA', '15/06/2135', '18/06/2135', 'Pass', 'Completed'),
(134, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604107', 'SN:HT-C-PL-025', 'FAHMIDA AHMED', '15/06/2136', '18/06/2136', 'Pass', 'Completed'),
(135, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604035', 'SN:HT-C-PL-026', 'SABIHA SAMAD', '15/06/2137', '18/06/2137', 'Pass', 'Completed'),
(136, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604023', 'SN:HT-C-PL-027', 'MD. ESHAQUE ALI RUKON', '15/06/2138', '18/06/2138', 'Pass', 'Completed'),
(137, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604065', 'SN:HT-C-PL-028', 'LABIB AHMED', '15/06/2139', '18/06/2139', 'Pass', 'Completed'),
(138, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604026', 'SN:HT-C-PL-029', 'SIBBIR AHMED', '15/06/2140', '18/06/2140', 'Pass', 'Completed'),
(139, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604034', 'SN:HT-C-PL-030', 'MD. AMINUL ISLAM', '15/06/2141', '18/06/2141', 'Pass', 'Completed'),
(140, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604031', 'SN:HT-C-PL-031', 'SHUHENA SALAM', '15/06/2142', '18/06/2142', 'Pass', 'Completed'),
(141, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604064', 'SN:HT-C-PL-032', 'MD. SHARIFUL ISLAM', '15/06/2143', '18/06/2143', 'Pass', 'Completed'),
(142, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604016', 'SN:HT-C-PL-033', 'MEHERUN NESA SHRABONI', '15/06/2144', '18/06/2144', 'Pass', 'Completed'),
(143, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604059', 'SN:HT-C-PL-034', 'MD. RAKIBUL HASSAN CHOWDORY', '15/06/2145', '18/06/2145', 'Pass', 'Completed'),
(144, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604033', 'SN:HT-C-PL-035', 'TAHIR TALHA PRODHAN', '15/06/2146', '18/06/2146', 'Pass', 'Completed'),
(145, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:', 'SN:HT-C-PL-036', 'MOHAMMAD SHAFIQUL ISLAM', '15/06/2147', '18/06/2147', 'Pass', 'Completed'),
(146, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604037', 'SN:HT-C-PL-037', 'MD. MUZAHIDUL ISLAM', '15/06/2148', '18/06/2148', 'Pass', 'Completed'),
(147, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604083', 'SN:HT-C-PL-038', 'MAHATHIR MOHAMMAD', '15/06/2149', '18/06/2149', 'Pass', 'Completed'),
(148, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604051', 'SN:HT-C-PL-039', 'S.M. AFIF IBNE HAYAT', '15/06/2150', '18/06/2150', 'Pass', 'Completed'),
(149, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604052', 'SN:HT-C-PL-040', 'SADMAN SAKIB CHOUDHURY', '15/06/2151', '18/06/2151', 'Pass', 'Completed'),
(150, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504066', 'SN:HT-C-PL-041', 'MD. SABBIR AL AHSAN', '15/06/2152', '18/06/2152', 'Pass', 'Completed'),
(151, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1404092', 'SN:HT-C-PL-042', 'MD. JAHIRUL ISLAM', '15/06/2153', '18/06/2153', 'Pass', 'Completed'),
(152, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1404050', 'SN:HT-C-PL-043', 'ATANU KUMAR BISWAS', '15/06/2154', '18/06/2154', 'Pass', 'Completed'),
(153, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604093', 'SN:HT-C-PL-044', 'TULI BISWAS', '15/06/2155', '18/06/2155', 'Pass', 'Completed'),
(154, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1604116', 'SN:HT-C-PL-045', 'MD. MUKTADIR MAULA', '15/06/2156', '18/06/2156', 'Pass', 'Completed'),
(155, '3', '\"Basic Penetration Testing with Linux\"', 'CUET Student ID:1504093', 'SN:HT-C-PL-046', 'AHMED JUBAYER', '15/06/2157', '18/06/2157', 'Pass', 'Completed'),
(156, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504022', 'SN:HT-C-BC-001', 'MD. SHAHRIAR MRIDHA RAHUL', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(157, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504034', 'SN:HT-C-BC-003', 'MAHMUDUR RAHMAN', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(158, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504087', 'SN:HT-C-BC-004', 'SWARNA CHAKRABORTY', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(159, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504006', 'SN:HT-C-BC-005', 'FAHIM SHAHRIAR', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(160, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504039', 'SN:HT-C-BC-007', 'J.M. IMTINAN UDDIN', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(161, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504050', 'SN:HT-C-BC-009', 'KAZI GOLAM MAHBUB', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(162, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504097', 'SN:HT-C-BC-010', 'HAFIZUL HAQUE', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(163, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504104', 'SN:HT-C-BC-011', 'MD. IHSANUL HAQUE', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(164, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604023', 'SN:HT-C-BC-012', 'MUHAMMAD ESHAQUE ALI RUKON', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(165, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604028', 'SN:HT-C-BC-013', 'SHAWNOCK GUHA PAUL', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(166, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604059', 'SN:HT-C-BC-014', 'MD. RAKIBUL HASAN CHOWDHURY', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(167, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1508008', 'SN:HT-C-BC-015', 'MD. ALI AMZAD TAPU', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(168, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504004', 'SN:HT-C-BC-016', 'JAHEDUL ALAM', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(169, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1509014', 'SN:HT-C-BC-017', 'JOBAIR HOSSAIN GOUROB', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(170, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1608019', 'SN:HT-C-BC-018', 'MOSABBIR BHUIYAN', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(171, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1608002', 'SN:HT-C-BC-019', 'MD SAIFUL ISLAM', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(172, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1502039', 'SN:HT-C-BC-020', 'MD. REZA-E-RABBY', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(173, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604116', 'SN:HT-C-BC-021', 'MD MUKTADIR MAULA', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(174, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604107', 'SN:HT-C-BC-022', 'FAHMIDA AHMED', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(175, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1604078', 'SN:HT-C-BC-023', 'MEHEDI HASAN', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(176, '4', '\"Blockchain and Cryptocurrency\"', 'CUET Student ID:1504025', 'SN:HT-C-BC-024', 'SUVADRA BARUA', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(177, '4', '\"Blockchain and Cryptocurrency\"', 'N/A', 'SN:HT-C-BC-025', 'SABIHA ANAN', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(178, '4', '\"Blockchain and Cryptocurrency\"', 'N/A', 'SN:HT-C-BC-026', 'ANNESHA DAS', '20/06/2019', '20/06/2020', 'Pass', 'Completed'),
(179, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504009', 'SN:HT-C-ML-001', 'DIPON TALUKDAR', '20/06/2019', '24/06/2019', 'Pass', 'Completed'),
(180, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604064', 'SN:HT-C-ML-002', 'MD. SHARIFUL ISLAM', '20/06/2020', '24/06/2020', 'Pass', 'Completed'),
(181, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504107', 'SN:HT-C-ML-003', 'FAHMIDA LIZA PIYA', '20/06/2021', '24/06/2021', 'Pass', 'Completed'),
(182, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504005', 'SN:HT-C-ML-004', 'ABU HENA MUSTAFA', '20/06/2022', '24/06/2022', 'Pass', 'Completed'),
(183, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504017', 'SN:HT-C-ML-006', 'MD. TALAT MORSHED', '20/06/2023', '24/06/2023', 'Pass', 'Completed'),
(184, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504018', 'SN:HT-C-ML-007', 'AVISHEK DAS', '20/06/2024', '24/06/2024', 'Pass', 'Completed'),
(185, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504026', 'SN:HT-C-ML-008', 'SAADMAN SAKIB', '20/06/2025', '24/06/2025', 'Pass', 'Completed'),
(186, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504051', 'SN:HT-C-ML-009', 'YEASIN ARAFAT', '20/06/2026', '24/06/2026', 'Pass', 'Completed'),
(187, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504052', 'SN:HT-C-ML-010', 'AVIJEET SHIL', '20/06/2027', '24/06/2027', 'Pass', 'Completed'),
(188, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504061', 'SN:HT-C-ML-011', 'REDOANUL HAQUE', '20/06/2028', '24/06/2028', 'Pass', 'Completed'),
(189, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504105', 'SN:HT-C-ML-012', 'FATIMA JAHARA', '20/06/2029', '24/06/2029', 'Pass', 'Completed'),
(190, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604005', 'SN:HT-C-ML-013', 'SHEIKH SOWMEN RAHMAN', '20/06/2030', '24/06/2030', 'Pass', 'Completed'),
(191, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604061', 'SN:HT-C-ML-014', 'SAIFUL ISLAM RIMON', '20/06/2031', '24/06/2031', 'Pass', 'Completed'),
(192, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604073', 'SN:HT-C-ML-015', 'MD. NAHIDUL ISLAM OPU', '20/06/2032', '24/06/2032', 'Pass', 'Completed'),
(193, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604089', 'SN:HT-C-ML-016', 'MARUF HASAN', '20/06/2033', '24/06/2033', 'Pass', 'Completed'),
(194, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1509016', 'SN:HT-C-ML-017', 'S.M. FAHIM FAISAL', '20/06/2034', '24/06/2034', 'Pass', 'Completed'),
(195, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1502068', 'SN:HT-C-ML-018', 'BISHAL DAS', '20/06/2035', '24/06/2035', 'Pass', 'Completed'),
(196, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1608015', 'SN:HT-C-ML-019', 'KHONDOKAR JUBAYER RAHMAN', '20/06/2036', '24/06/2036', 'Pass', 'Completed'),
(197, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1508003', 'SN:HT-C-ML-020', 'PRIYANTI PAUL TUMPA', '20/06/2037', '24/06/2037', 'Pass', 'Completed'),
(198, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1508013', 'SN:HT-C-ML-021', 'FAHIM TALUKDAR', '20/06/2038', '24/06/2038', 'Pass', 'Completed'),
(199, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1608013', 'SN:HT-C-ML-022', 'MD. YEASIN PARVEZ', '20/06/2039', '24/06/2039', 'Pass', 'Completed'),
(200, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1604014', 'SN:HT-C-ML-023', 'GOLAM SARWAR MD MURSALIN', '20/06/2040', '24/06/2040', 'Pass', 'Completed'),
(201, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504056', 'SN:HT-C-ML-024', 'MOHAMMAD KAMRUL ISLAM', '20/06/2041', '24/06/2041', 'Pass', 'Completed'),
(202, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504045', 'SN:HT-C-ML-025', 'KANIZ FATEMA', '20/06/2042', '24/06/2042', 'Pass', 'Completed'),
(203, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504103', 'SN:HT-C-ML-026', 'MOUMITA SEN SARMA', '20/06/2043', '24/06/2043', 'Pass', 'Completed'),
(204, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504071', 'SN:HT-C-ML-027', 'ADRITA BARUA', '20/06/2044', '24/06/2044', 'Pass', 'Completed'),
(205, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504071', 'SN:HT-C-ML-028', 'MD. MASHIUR RAHAMAN', '20/06/2045', '24/06/2045', 'Pass', 'Completed'),
(206, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504048', 'SN:HT-C-ML-029', 'DABOBROTO SARKAR', '20/06/2046', '24/06/2046', 'Pass', 'Completed'),
(207, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1404084', 'SN:HT-C-ML-030', 'ATANU KUMAR BISWAS', '20/06/2047', '24/06/2047', 'Pass', 'Completed'),
(208, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504084', 'SN:HT-C-ML-031', 'SALMA FARIHA', '20/06/2048', '24/06/2048', 'Pass', 'Completed'),
(209, '5', '\"Machine Learning and Artificial Intelligence Fundamentals with Python\"', 'CUET Student ID:1504063', 'SN:HT-C-ML-032', 'MD. ZUBAIR', '20/06/2049', '24/06/2049', 'Pass', 'Completed'),
(210, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504069', 'SN:HT-C-IoT-001', 'TASNIMATUL  JANNAH', '20/06/2050', '24/06/2050', 'Pass', 'Completed'),
(211, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504081', 'SN:HT-C-IoT-002', 'SAYEDA SUAIBA ANWAR', '20/06/2051', '24/06/2051', 'Pass', 'Completed'),
(212, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504037', 'SN:HT-C-IoT-004', 'MOHAMMAD JAHID IBNA BASHER', '20/06/2052', '24/06/2052', 'Pass', 'Completed'),
(213, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504043', 'SN:HT-C-IoT-005', 'NIZIA NAHYAN', '20/06/2053', '24/06/2053', 'Pass', 'Completed'),
(214, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504057', 'SN:HT-C-IoT-006', 'MD. NAHIDUL ISLAM', '20/06/2054', '24/06/2054', 'Pass', 'Completed'),
(215, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1606031', 'SN:HT-C-IoT-008', 'SHUHENA SALAM AONTY', '20/06/2055', '24/06/2055', 'Pass', 'Completed'),
(216, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1604055', 'SN:HT-C-IoT-009', 'ARIFUL ISLAM', '20/06/2056', '24/06/2056', 'Pass', 'Completed'),
(217, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1604072', 'SN:HT-C-IoT-010', 'MD. MEHADI HASAN SHUVO', '20/06/2057', '24/06/2057', 'Pass', 'Completed'),
(218, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1504111', 'SN:HT-C-IoT-011', 'S.M. ABTAHEE AZAD', '20/06/2058', '24/06/2058', 'Pass', 'Completed'),
(219, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1502011', 'SN:HT-C-IoT-012', 'RAZIA SULTANA RIMU', '20/06/2059', '24/06/2059', 'Pass', 'Completed'),
(220, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1502090', 'SN:HT-C-IoT-014', 'RUBAIYAT ALIM HRIDHEE', '20/06/2060', '24/06/2060', 'Pass', 'Completed'),
(221, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508018', 'SN:HT-C-IoT-015', 'SUPARNA DAS', '20/06/2061', '24/06/2061', 'Pass', 'Completed'),
(222, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508009', 'SN:HT-C-IoT-016', 'ABIDA AFRIN', '20/06/2062', '24/06/2062', 'Pass', 'Completed'),
(223, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508024', 'SN:HT-C-IoT-017', 'TAKOWA RAHMAN', '20/06/2063', '24/06/2063', 'Pass', 'Completed'),
(224, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508001', 'SN:HT-C-IoT-018', 'MD WAHID SADIQ', '20/06/2064', '24/06/2064', 'Pass', 'Completed'),
(225, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508002', 'SN:HT-C-IoT-019', 'ABIDA SULTANA', '20/06/2065', '24/06/2065', 'Pass', 'Completed'),
(226, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508011', 'SN:HT-C-IoT-020', 'MARUFA AFRIN', '20/06/2066', '24/06/2066', 'Pass', 'Completed'),
(227, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1508014', 'SN:HT-C-IoT-021', 'NAFISA YEASMIN KHAN', '20/06/2067', '24/06/2067', 'Pass', 'Completed'),
(228, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', 'CUET Student ID:1509020', 'SN:HT-C-IoT-022', 'S.M. PARVEZ AHMED', '20/06/2068', '24/06/2068', 'Pass', 'Completed'),
(229, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', '', 'SN:HT-C-IoT-023', 'ASHIM DEY', '20/06/2069', '24/06/2069', 'Pass', 'Completed'),
(230, '6', '\"Fundamental and Architecture Internet of Things (IoT)\"', '', 'SN:HT-C-IoT-024', 'MD. ATIQUL ISLAM RIZVI', '20/06/2070', '24/06/2070', 'Pass', 'Completed'),
(231, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504040', 'SN:HT-C-BD-001', 'K.M. SHAHARIN AHMED', '20/06/2071', '24/06/2071', 'Pass', 'Completed'),
(232, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504020', 'SN:HT-C-BD-002', 'SOURAV ADHIKARY', '20/06/2072', '24/06/2072', 'Pass', 'Completed'),
(233, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504024', 'SN:HT-C-BD-005', 'MD. MUHYMINUL HAQUE', '20/06/2073', '24/06/2073', 'Pass', 'Completed'),
(234, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504027', 'SN:HT-C-BD-006', 'FARIA ZARIN SUBAH', '20/06/2074', '24/06/2074', 'Pass', 'Completed'),
(235, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504062', 'SN:HT-C-BD-007', 'SIMON ISLAM', '20/06/2075', '24/06/2075', 'Pass', 'Completed'),
(236, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504066', 'SN:HT-C-BD-008', 'MD. SABBIR AL AHSAN', '20/06/2076', '24/06/2076', 'Pass', 'Completed'),
(237, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504075', 'SN:HT-C-BD-010', 'TASMINA TASIN', '20/06/2077', '24/06/2077', 'Pass', 'Completed'),
(238, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504094', 'SN:HT-C-BD-011', 'NUSRAT JAHAN EURA', '20/06/2078', '24/06/2078', 'Pass', 'Completed'),
(239, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1604001', 'SN:HT-C-BD-012', 'SUBORNO DEB BAPPON', '20/06/2079', '24/06/2079', 'Pass', 'Completed'),
(240, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1604037', 'SN:HT-C-BD-013', 'MD.MUZAHIDUL ISLAM', '20/06/2080', '24/06/2080', 'Pass', 'Completed'),
(241, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1604097', 'SN:HT-C-BD-014', 'GOUROB MAZUMDER', '20/06/2081', '24/06/2081', 'Pass', 'Completed'),
(242, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1604065', 'SN:HT-C-BD-015', 'LABIB AHMED', '20/06/2082', '24/06/2082', 'Pass', 'Completed'),
(243, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1508010', 'SN:HT-C-BD-017', 'ARIF ISTIAQUE', '20/06/2083', '24/06/2083', 'Pass', 'Completed'),
(244, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1508016', 'SN:HT-C-BD-018', 'ASIF RIDWANULLALH', '20/06/2084', '24/06/2084', 'Pass', 'Completed'),
(245, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1609006', 'SN:HT-C-BD-019', 'KAZI NAIMUR RAHMAN', '20/06/2085', '24/06/2085', 'Pass', 'Completed'),
(246, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1508022', 'SN:HT-C-BD-020', 'SAIFE SHUHAIB MD. ENAN', '20/06/2086', '24/06/2086', 'Pass', 'Completed'),
(247, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1609008', 'SN:HT-C-BD-021', 'MD. SUBAYER ISLAM', '20/06/2087', '24/06/2087', 'Pass', 'Completed'),
(248, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1508007', 'SN:HT-C-BD-022', 'MIFTAHUL JANNAT', '20/06/2088', '24/06/2088', 'Pass', 'Completed'),
(249, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1404076', 'SN:HT-C-BD-023', 'PRANTO KUMAR BISWAS', '20/06/2089', '24/06/2089', 'Pass', 'Completed'),
(250, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1404092', 'SN:HT-C-BD-024', 'MD. JAHIRUL ISLAM', '20/06/2090', '24/06/2090', 'Pass', 'Completed'),
(251, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1504010', 'SN:HT-C-BD-025', 'MD. ASIF IQBAL', '20/06/2091', '24/06/2091', 'Pass', 'Completed'),
(252, '7', '\"Big Data & Data Analytic\"', 'CUET Student ID:1304027', 'SN:HT-C-BD-026', 'MD. BILLAL HOSSAIN', '20/06/2092', '24/06/2092', 'Pass', 'Completed'),
(253, '7', '\"Big Data & Data Analytic\"', 'N/A', 'SN:HT-C-BD-027', 'MD. SABIR HOSSAIN', '20/06/2093', '24/06/2093', 'Pass', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(1100) NOT NULL,
  `full_name` varchar(110) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `gender` varchar(110) NOT NULL,
  `organization` varchar(110) NOT NULL,
  `designation` varchar(1000) NOT NULL,
  `division` varchar(110) NOT NULL,
  `district` varchar(110) NOT NULL,
  `upazila` varchar(110) NOT NULL,
  `address` varchar(110) NOT NULL,
  `profile_photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `username`, `password`, `email`, `full_name`, `contact_number`, `gender`, `organization`, `designation`, `division`, `district`, `upazila`, `address`, `profile_photo`, `status`) VALUES
(1, 'use4', 'password1', 'email1', 'f1ull_name', 121615, '1gender', '4organization', '4designation', '', '', '', '4address', '', ''),
(2, 'hh', 'hgh', 'jhjk', 'hgjkhb', 121, 'M', 'ujyf', 'jyg', 'juh', 'kjhkj', '', '', '', ''),
(3, 'adsfasdf', 'asd', 'sayeed4782@gmail.com', 'SASDFA', 212121, 'M', 'asdfad', 'asdf', '', '', '', 'asdf', '', ''),
(4, 'asdfasdf', '12345', 'sayeed4782@gmail.com', 'asdfasd', 18215444, 'M', 'adsfasdf', 'asdfasd', '', '', '', 'adsfads', '', ''),
(5, 'sayeed4782@gmail.com', '123', 'sayeed4782@gmail.com', 'sgf', 212410554, 'M', 'adfa', 'asdfasdf', '', '', '', 'sdfgs', '', ''),
(6, 'sayeed4782@gmail.com', '123', 'sayeed4782@gmail.com', 'sgf', 212410554, 'M', 'adfa', 'asdfasdf', '', '', '', 'sdfgs', '', ''),
(7, 'adsfa', 'asdf', 'sayeed4782@gmail.com', 'asdfasd', 121414, 'M', 'adsfasd', 'asdfasd', '', '', '', 'asdfasdf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_id` int(20) NOT NULL,
  `trainer_name` text NOT NULL,
  `trainer_phone_no` text NOT NULL,
  `trainer_email` text NOT NULL,
  `trainer_img_id` text NOT NULL,
  `trainer_skills` text NOT NULL,
  `created_date` date NOT NULL,
  `last_updated_date` date NOT NULL,
  `created_by` text NOT NULL,
  `last_updated_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`trainer_id`, `trainer_name`, `trainer_phone_no`, `trainer_email`, `trainer_img_id`, `trainer_skills`, `created_date`, `last_updated_date`, `created_by`, `last_updated_by`) VALUES
(1, 'Md. Sabuj Sana', '01682606569', 'sabuj.sana@contessabd.com', 'Md. Sabuj Sana5e56340481a59.jpg', 'Android mobile apps development, web development, php, laravel', '2020-02-26', '2020-02-26', 'user', 'user'),
(2, 'Md. Anwar Hossain', '01954787407', 'anwarhossain@gmail.com', 'Md. Anwar Hossain5e56346e6c980.png', 'php, laravel, flutter', '2020-02-26', '2020-02-26', 'user', 'user'),
(3, 'Md. Yasin Arif', '01676555764', 'yasinarif@gmail.com', 'Md. Yasin Arif5e56384da4f85.jpg', 'Java EE, Wordpress, Flutter', '2020-02-26', '2020-02-26', 'user', 'user'),
(8, 'Md. Golam Kibra', '01682606569', 'golamkibria@contessabd.com', 'Md. Golam Kibra5e5b9e50f165b.png', 'Magnet Axiom ,cyber security,Forensic Tool', '2020-03-01', '2020-03-01', 'user', 'user'),
(9, 'Shamim Ahamed', '01723123134', 'shamim@contessabd.com', 'Shamim Ahamed5e5ba243bc032.png', 'Linux ,Windows ,security', '2020-03-01', '2020-03-01', 'user', 'user'),
(10, 'Himesh Yadav', '01723123134', 'himeshyadav33@gmail.com', 'Himesh Yadav5e5ba33c9fa56.png', 'Block chain,Cryptocurrency', '2020-03-01', '2020-03-01', 'user', 'user'),
(11, 'Md. Motashim Billah', '01676555764', 'motashim@contessabd.com', 'Md. Motashim Billah5e5ba3ae191bf.png', 'EnCase ,Magnet Axiom ,MSAB XRY ', '2020-03-01', '2020-03-01', 'user', 'user'),
(12, 'Vamsi Krishna Guttula ', '01676555764', 'krishna', 'Vamsi Krishna Guttula 5e5ba3e9217d6.png', 'Big Data ,Data analytic', '2020-03-01', '2020-03-01', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_complete`
--
ALTER TABLE `course_complete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `trainer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
