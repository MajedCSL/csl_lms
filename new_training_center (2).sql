-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 06:58 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_training_center`
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
(1, 'khalid', 'khalid@gmail.com', 'khalid'),
(2, 'admin', 'admin@test.com', 'admin123');

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
  `category_id` int(11) NOT NULL,
  `venue` text NOT NULL,
  `course_objective` text NOT NULL,
  `course_instructor` text NOT NULL,
  `course_status` text NOT NULL,
  `course_type_id` int(100) NOT NULL,
  `course_img_id` text NOT NULL,
  `review` int(10) NOT NULL,
  `old_price` text NOT NULL,
  `new_price` text NOT NULL,
  `created_date` date NOT NULL,
  `last_updated_date` date NOT NULL,
  `created_by` text NOT NULL,
  `last_updated_by` text NOT NULL,
  `course_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_short_desc`, `course_long_desc`, `course_start_date`, `course_end_date`, `no_of_class`, `course_total_hour`, `reg_open_date`, `reg_end_date`, `category_id`, `venue`, `course_objective`, `course_instructor`, `course_status`, `course_type_id`, `course_img_id`, `review`, `old_price`, `new_price`, `created_date`, `last_updated_date`, `created_by`, `last_updated_by`, `course_category`) VALUES
(1, 'Learn Program in Java', 'Get started on the path to becoming a software engineer by learning core coding skills in Java--one of the most popular programming languages.', 'Get started on the path to becoming a software engineer by learning core coding skills in Java--one of the most popular programming languages.', '2020-05-15', '2020-06-15', 20, 8, '2020-05-04', '2020-05-12', 0, 'online', '1. Overview of Java 2. Java History and versioning 3. Java SE - core features 4. Java EE, Web application development and java 5. Popular frameworks', '13', '1', 20, '45226_5ecb_6.jpg', 3, '2000', '500', '2020-05-03', '2020-05-03', 'user', 'user', 0),
(2, 'Professional Web Development', 'Professional Web Development', 'Professional Web Development', '2020-05-04', '2020-05-04', 20, 36, '2020-05-04', '2020-05-15', 0, 'online', '', '8', '1', 20, 'main-qimg-1cbc1e565859b18d871d928f9d945735.png', 3, '2000', '500', '2020-05-03', '2020-05-03', 'user', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`id`, `category`) VALUES
(1, 'Web Development'),
(2, 'SEO');

-- --------------------------------------------------------

--
-- Table structure for table `course_module`
--

CREATE TABLE `course_module` (
  `id` int(255) NOT NULL,
  `course_id` int(255) NOT NULL,
  `course_module_title` varchar(255) NOT NULL,
  `course_module_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_module`
--

INSERT INTO `course_module` (`id`, `course_id`, `course_module_title`, `course_module_des`) VALUES
(1, 1, 'Introduction', 'Web development refers to building, creating, and an maintaining websites. It includes aspects such as web design, web publishing, web programming, and database management. ... A web developer may be involved in designing a website, but may also write web'),
(2, 1, 'What is loop?', 'A loop is a fundamental programming idea that is commonly used in writing programs.');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `id` int(255) NOT NULL,
  `course_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id`, `course_type`) VALUES
(1, 'Beginner '),
(2, 'Intermediate'),
(3, 'professional ');

-- --------------------------------------------------------

--
-- Table structure for table `leacture_content`
--

CREATE TABLE `leacture_content` (
  `id` int(255) NOT NULL,
  `course_module_id` int(255) NOT NULL,
  `web_link` varchar(255) NOT NULL,
  `video_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leacture_content`
--

INSERT INTO `leacture_content` (`id`, `course_module_id`, `web_link`, `video_location`) VALUES
(1, 1, 'https://www.w3schools.com/', 'y2mate.com - Upload and Play Video from Database using PHP MySQL_9fkld7LHUcQ_360p.mp4');

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_module`
--
ALTER TABLE `course_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leacture_content`
--
ALTER TABLE `leacture_content`
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
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course_module`
--
ALTER TABLE `course_module`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leacture_content`
--
ALTER TABLE `leacture_content`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
