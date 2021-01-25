-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 02:43 PM
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
  `created_by` date NOT NULL,
  `last_updated_by` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_short_desc`, `course_long_desc`, `course_start_date`, `course_end_date`, `no_of_class`, `course_total_hour`, `reg_open_date`, `reg_end_date`, `class_schedule_id`, `venue`, `course_objective`, `course_instructor`, `course_status`, `available_seat`, `course_img_id`, `review`, `old_price`, `new_price`, `created_date`, `last_updated_date`, `created_by`, `last_updated_by`) VALUES
(1, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic1.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(2, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic2.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(3, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic3.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(4, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic4.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(5, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic5.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(6, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic6.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(7, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic7.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(8, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic8.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29'),
(9, 'php Web Development', 'PHP Developers write server-side', 'PHP Developers write server-side web applications using Hypertext Preprocessor (PHP) scripting languages. They are tasked with developing and coding back-end components and connecting applications', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '', '', 0, 'pic9.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
