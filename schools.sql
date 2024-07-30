-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2024 at 07:09 AM
-- Server version: 8.3.0
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

DROP TABLE IF EXISTS `academic`;
CREATE TABLE IF NOT EXISTS `academic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, 2024, '2024-07-16 12:03:39', '2024-07-16 12:03:39'),
(2, 2023, '2024-07-16 12:03:39', '2024-07-16 12:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `academic_records`
--

DROP TABLE IF EXISTS `academic_records`;
CREATE TABLE IF NOT EXISTS `academic_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `academic_id` int NOT NULL,
  `fees_id` int NOT NULL,
  `report_id` int NOT NULL,
  `class_id` int NOT NULL,
  `promoted_from` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academic_records`
--

INSERT INTO `academic_records` (`id`, `student_id`, `academic_id`, `fees_id`, `report_id`, `class_id`, `promoted_from`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 11, '2024-07-16 12:30:25', '2024-07-16 12:30:25'),
(2, 2, 1, 2, 2, 2, 10, '2024-07-16 12:30:25', '2024-07-16 12:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_model` int NOT NULL,
  `bus_no` varchar(255) NOT NULL,
  `bus_driver_id` int NOT NULL,
  `bus_route_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_model`, `bus_no`, `bus_driver_id`, `bus_route_id`, `created_at`, `updated_at`) VALUES
(1, 2006, 'MP04CV5646', 1, 1, '2024-07-16 12:04:54', '2024-07-16 12:04:54'),
(2, 2011, 'MP04ZX6251', 1, 1, '2024-07-16 12:04:54', '2024-07-16 12:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `bus_driver`
--

DROP TABLE IF EXISTS `bus_driver`;
CREATE TABLE IF NOT EXISTS `bus_driver` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus_driver`
--

INSERT INTO `bus_driver` (`id`, `name`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'charlie', '851616523', 'bhopal', '2024-07-16 12:06:01', '2024-07-16 12:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

DROP TABLE IF EXISTS `bus_route`;
CREATE TABLE IF NOT EXISTS `bus_route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stop` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bus_route`
--

INSERT INTO `bus_route` (`id`, `from`, `to`, `stop`, `created_at`, `updated_at`) VALUES
(1, 'patel nagar', 'neelbad', 'neelbad', '2024-07-16 12:20:07', '2024-07-16 12:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '12', '2024-07-16 12:07:09', '2024-07-16 12:07:09'),
(2, '11', '2024-07-16 12:07:09', '2024-07-16 12:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'accountant', '2024-07-16 12:08:34', '2024-07-16 12:08:34'),
(2, 'faculty', '2024-07-16 12:08:34', '2024-07-16 12:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
CREATE TABLE IF NOT EXISTS `examination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `classroom` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`id`, `teacher_id`, `classroom`, `created_at`, `updated_at`) VALUES
(1, 1, 305, '2024-07-16 12:19:11', '2024-07-16 12:19:11'),
(2, 2, 501, '2024-07-16 12:19:11', '2024-07-16 12:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `total_amount` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `fee_type_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `class_id`, `total_amount`, `status`, `fee_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12000, 'pending', 1, '2024-07-16 12:25:27', '2024-07-16 12:25:27'),
(2, 1, 12000, 'paid', 1, '2024-07-16 12:25:27', '2024-07-16 12:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

DROP TABLE IF EXISTS `fee_type`;
CREATE TABLE IF NOT EXISTS `fee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `room_no` int NOT NULL,
  `warden` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` int NOT NULL,
  `year` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `student_id`, `room_no`, `warden`, `mobile`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 202, 'jsbkj', 974156478, 2015, '2024-07-16 12:17:46', '2024-07-16 12:17:46'),
(2, 2, 202, 'ssvcsc', 810658416, 2012, '2024-07-16 12:17:46', '2024-07-16 12:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `total_marks` int NOT NULL,
  `total_subjects` int NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `student_id`, `total_marks`, `total_subjects`, `result`, `created_at`, `updated_at`) VALUES
(1, 1, 500, 6, 'pass', '2024-07-16 12:22:28', '2024-07-16 12:22:28'),
(2, 2, 212, 6, 'fail', '2024-07-16 12:22:28', '2024-07-16 12:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'teacher', 2, '2024-07-16 12:12:41', '2024-07-16 12:12:41'),
(2, 'Counselors', 1, '2024-07-16 12:12:41', '2024-07-16 12:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `address`, `f_name`, `mobile_no`, `created_at`, `updated_at`) VALUES
(1, 'harsh', 'neelbad', 'sudesh', '8949844564', '2024-07-16 12:03:03', '2024-07-16 12:03:03'),
(2, 'ganesh', 'new market', 'shiv', '8651545511', '2024-07-16 12:03:03', '2024-07-16 12:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `class_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'maths', 2, '2024-07-16 12:18:28', '2024-07-16 12:18:28'),
(2, 'kajsbkab', 1, '2024-07-16 12:18:28', '2024-07-16 12:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `class_teacher` int DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `address`, `mobile_no`, `class_teacher`, `subject`, `year`, `created_at`, `updated_at`) VALUES
(1, 'miss kaur', 'bhopal', '841564146', 12, 'Economics', 2024, '2024-07-16 12:14:33', '2024-07-16 12:14:33'),
(2, 'mrs. M.sharma', 'bhopal', '9841654151', 11, 'Maths', 2020, '2024-07-16 12:15:42', '2024-07-16 12:15:42'),
(3, 'M.S.tiwari', 'BHOPAL', '884168416', 12, 'physics', 2021, '2024-07-16 12:16:29', '2024-07-16 12:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int NOT NULL,
  `bus_driver_id` int NOT NULL,
  `bus_route_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `bus_id`, `bus_driver_id`, `bus_route_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-07-16 12:23:16', '2024-07-16 12:23:16'),
(2, 1, 1, 1, '2024-07-16 12:23:16', '2024-07-16 12:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `transport_record`
--

DROP TABLE IF EXISTS `transport_record`;
CREATE TABLE IF NOT EXISTS `transport_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `transport_id` int NOT NULL,
  `bus_route_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transport_record`
--

INSERT INTO `transport_record` (`id`, `student_id`, `transport_id`, `bus_route_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-07-16 12:23:36', '2024-07-16 12:23:36'),
(2, 2, 1, 1, '2024-07-16 12:23:36', '2024-07-16 12:23:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
