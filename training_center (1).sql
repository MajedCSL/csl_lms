-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 11:59 AM
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
  `created_by` text NOT NULL,
  `last_updated_by` text NOT NULL,
  `course_category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_short_desc`, `course_long_desc`, `course_start_date`, `course_end_date`, `no_of_class`, `course_total_hour`, `reg_open_date`, `reg_end_date`, `class_schedule_id`, `venue`, `course_objective`, `course_instructor`, `course_status`, `available_seat`, `course_img_id`, `review`, `old_price`, `new_price`, `created_date`, `last_updated_date`, `created_by`, `last_updated_by`, `course_category`) VALUES
(1, 'Advance Web design and Development (Ecommerce CMS Development with Laravel & Vue.)', 'A web designer technically designs or redesign a website in cooperation with the developer to make lucrative visibility and make it visitors friendly by creative aspect.', 'A web designer technically designs or redesign a website in cooperation with the developer to make lucrative visibility and make it visitors friendly by creative aspect.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '5', '', 0, 'pic1.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(2, 'Practical SEO for Beginners', 'This is a complete practical training focused towards developing your SEO skills. You will get to know and learn all the basic SEO techniques and detailed strategies to maximize your expertise on SEO.', 'This is a complete practical training focused towards developing your SEO skills. You will get to know and learn all the basic SEO techniques and detailed strategies to maximize your expertise on SEO.', '2020-03-03', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '5', '', 0, 'pic2.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(3, 'Certificate Course on Android App Development with Java SE', 'By the end of this course, you will be fluently programming in Java and be ready to make your very own apps or start a job as an Android developer.', 'By the end of this course, you will be fluently programming in Java and be ready to make your very own apps or start a job as an Android developer.', '2020-03-18', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '6', '', 0, 'pic3.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(4, 'Ethical Hacking and Cyber Security', 'This course will give you the basics based on actual literature reviews, academic research and personal experience in global projects and work in cyber security.', 'This course will give you the basics based on actual literature reviews, academic research and personal experience in global projects and work in cyber security.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '5', '', 0, 'pic4.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(10, 'Advance Web design and Development (Ecommerce CMS Development with Laravel & Vue.)', 'A web designer technically designs or redesign a website in cooperation with the developer to make lucrative visibility and make it visitors friendly by creative aspect.', 'A web designer technically designs or redesign a website in cooperation with the developer to make lucrative visibility and make it visitors friendly by creative aspect.', '2020-03-11', '2020-03-11', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '7', '', 0, 'pic5.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'upcomming'),
(11, 'Practical SEO for Beginners', 'This is a complete practical training focused towards developing your SEO skills. You will get to know and learn all the basic SEO techniques and detailed strategies to maximize your expertise on SEO.', 'This is a complete practical training focused towards developing your SEO skills. You will get to know and learn all the basic SEO techniques and detailed strategies to maximize your expertise on SEO.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '6', '', 0, 'pic6.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(12, 'Certificate Course on Android App Development with Java SE', 'By the end of this course, you will be fluently programming in Java and be ready to make your very own apps or start a job as an Android developer.', 'By the end of this course, you will be fluently programming in Java and be ready to make your very own apps or start a job as an Android developer.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '5', '', 0, 'pic7.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(13, 'Ethical Hacking and Cyber Security', 'This course will give you the basics based on actual literature reviews, academic research and personal experience in global projects and work in cyber security.', 'This course will give you the basics based on actual literature reviews, academic research and personal experience in global projects and work in cyber security.', '2020-01-10', '2020-02-13', 10, 2, '2020-02-04', '2020-02-20', 11, 'Mohakhali', '', '6', '', 0, 'pic8.jpg', 3, '2000', '1800', '2020-02-05', '2020-02-28', '2020-02-04', '2020-02-29', 'new'),
(14, 'JAVA Basics', 'Test short des', 'Test long des', '2020-02-26', '2020-02-28', 12, 123, '2020-02-14', '2020-01-31', 12, 'contessa', '', '7', '1', 30, 'pic77.jpg', 3, '9000', '10000', '2020-02-25', '2020-02-25', 'user', 'user', '1');

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
(5, 'Md. Sabuj Sana', '01682606569', 'sabuj.sana@contessabd.com', 'Md. Sabuj Sana5e56340481a59.jpg', 'Android mobile apps development, web development, php, laravel', '2020-02-26', '2020-02-26', 'user', 'user'),
(6, 'Md. Anwar Hossain', '01954787407', 'anwarhossain@gmail.com', 'Md. Anwar Hossain5e56346e6c980.png', 'php, laravel, flutter', '2020-02-26', '2020-02-26', 'user', 'user'),
(7, 'Md. Yasin Arif', '01676555764', 'yasinarif@gmail.com', 'Md. Yasin Arif5e56384da4f85.jpg', 'Java EE, Wordpress, Flutter', '2020-02-26', '2020-02-26', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

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
  MODIFY `trainer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
