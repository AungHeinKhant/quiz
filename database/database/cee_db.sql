-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sept 12, 2023 at 02:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@username', 'admin@password');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(72, 'COMPUTER SCIENCE', '2023-09-13 09:02:12'),
(73, 'BASIC THEORY COMPUTER SCIENCE QUIZ', '2023-09-13 12:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(15, 'Khaing Zin Oo', '72', 'female', '1999-03-03', 'final year', 'khaingzinoo@gmail.com', 'khaing123', 'active'),
(16, 'Kyaw Kyaw', '72', 'male', '1999-04-04', 'final year', 'hein@gmail.com', 'hein123', 'active'),
(17, 'Moe Moe', '72', 'female', '1992-04-01', 'final year', 'moe@gmail.com', 'moe123', 'active'),
(18, 'Aye Aye', '72', 'female', '1999-01-01', 'final year', 'aye@gmail.com', 'aye123', 'active'),
(19, 'Zay Zay', '72', 'male', '1999-01-01', 'final year', 'zay@gmail.com', 'zay123', 'active'),
(20, 'Hnin', '72', 'female', '1999-04-04', 'final year', 'hnin@gmail.com', 'hnin123', 'active'),
(21, 'Zun', '73', 'female', '1998-03-01', 'final year', 'zun@gmail.com', 'zun123', 'active'),
(22, 'Pyae', '72', 'female', '1999-01-01', 'final year', 'pyae@gmail.com', 'pyae123', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(340, 15, 30, 50, 'Letters', 'new', '2023-09-13 09:16:57'),
(341, 15, 30, 47, '1991', 'new', '2023-09-13 09:16:57'),
(342, 15, 30, 46, 'RAM', 'new', '2023-09-13 09:16:57'),
(343, 15, 30, 54, 'Speaker and printer', 'new', '2023-09-13 09:16:57'),
(344, 15, 30, 48, 'OS', 'new', '2023-09-13 09:16:57'),
(345, 15, 30, 56, 'CPU', 'new', '2023-09-13 09:16:57'),
(346, 15, 30, 49, ' Input Devices, Processing Unit, Storage, Output Devices', 'new', '2023-09-13 09:16:57'),
(347, 15, 30, 55, 'Microsoft Word', 'new', '2023-09-13 09:16:57'),
(348, 15, 30, 51, 'LAN', 'new', '2023-09-13 09:16:57'),
(349, 15, 30, 53, 'Graphical User Interface', 'new', '2023-09-13 09:16:57'),
(350, 16, 30, 50, 'Letters', 'new', '2023-09-13 09:19:16'),
(351, 16, 30, 51, 'LAN', 'new', '2023-09-13 09:19:16'),
(352, 16, 30, 53, 'Graphical User Interface', 'new', '2023-09-13 09:19:16'),
(353, 16, 30, 48, 'OS', 'new', '2023-09-13 09:19:16'),
(354, 16, 30, 46, 'RAM', 'new', '2023-09-13 09:19:16'),
(355, 16, 30, 56, 'CPU', 'new', '2023-09-13 09:19:16'),
(356, 16, 30, 54, ' Monitor and scanner      ', 'new', '2023-09-13 09:19:16'),
(357, 16, 30, 55, 'Microsoft Word', 'new', '2023-09-13 09:19:16'),
(358, 16, 30, 47, '1974', 'new', '2023-09-13 09:25:53'),
(359, 16, 30, 49, ' Input Devices, Processing Unit, Storage, Output Devices', 'new', '2023-09-13 09:19:16'),
(360, 17, 30, 53, 'Graphical User Interface', 'new', '2023-09-13 09:24:37'),
(361, 17, 30, 50, 'Packets', 'new', '2023-09-13 09:24:37'),
(362, 17, 30, 48, 'OS', 'new', '2023-08-13 09:24:37'),
(363, 17, 30, 54, ' Monitor and scanner      ', 'new', '2023-09-13 09:24:37'),
(364, 17, 30, 49, ' Input Devices, Processing Unit, Storage, Output Devices', 'new', '2023-09-13 09:24:37'),
(365, 17, 30, 47, '1991', 'new', '2023-09-13 09:27:10'),
(366, 17, 30, 46, 'RAM', 'new', '2023-09-13 09:24:37'),
(367, 17, 30, 55, 'Microsoft Word', 'new', '2023-09-13 09:24:37'),
(368, 17, 30, 56, 'CPU', 'new', '2023-09-13 09:24:37'),
(369, 17, 30, 51, 'MAN', 'new', '2023-09-13 09:24:37'),
(370, 18, 30, 46, 'RAM', 'new', '2023-09-13 09:30:56'),
(371, 18, 30, 50, 'Packets', 'new', '2023-09-13 09:30:56'),
(372, 18, 30, 54, 'Speaker and printer', 'new', '2023-09-13 09:30:56'),
(373, 18, 30, 56, 'CPU', 'new', '2023-09-13 09:30:56'),
(374, 18, 30, 51, 'LAN', 'new', '2023-09-13 09:30:56'),
(375, 18, 30, 55, 'Microsoft Word', 'new', '2023-09-13 09:30:56'),
(376, 18, 30, 49, ' Input Devices, Processing Unit, Storage, Output Devices', 'new', '2023-09-13 09:30:56'),
(377, 18, 30, 53, 'Graphical User Interface', 'new', '2023-09-13 09:30:56'),
(378, 18, 30, 48, 'OS', 'new', '2023-09-13 09:30:56'),
(379, 18, 30, 47, '1991', 'new', '2023-09-13 09:30:56'),
(380, 19, 30, 53, 'Graphical User Interim     ', 'new', '2023-09-13 12:06:57'),
(381, 19, 30, 47, '1991', 'new', '2023-09-13 12:06:57'),
(382, 19, 30, 51, 'LAN', 'new', '2023-09-13 12:06:57'),
(383, 19, 30, 50, 'Packets', 'new', '2023-09-13 12:06:57'),
(384, 19, 30, 49, ' Input Devices, Processing Unit, Storage, Output Devices', 'new', '2023-09-13 12:06:57'),
(385, 19, 30, 55, 'Microsoft Word', 'new', '2023-09-13 12:06:57'),
(386, 19, 30, 54, 'Speaker and keyboard', 'new', '2023-09-13 12:06:57'),
(387, 19, 30, 46, 'RIM', 'new', '2023-09-13 12:06:57'),
(388, 19, 30, 48, 'NIC', 'new', '2023-09-13 12:06:57'),
(389, 19, 30, 56, 'NIC', 'new', '2023-09-13 12:06:57'),
(390, 20, 30, 54, ' Monitor and scanner      ', 'new', '2023-09-13 12:09:22'),
(391, 20, 30, 47, '1974', 'new', '2023-09-13 12:09:22'),
(392, 20, 30, 49, 'Input Devices, CPU, Storage, Output Devices', 'new', '2023-09-13 12:09:22'),
(393, 20, 30, 48, 'OS', 'new', '2023-09-13 12:09:22'),
(394, 20, 30, 55, 'Microsoft Word', 'new', '2023-09-13 12:09:22'),
(395, 20, 30, 50, 'Packets', 'new', '2023-09-13 12:09:22'),
(396, 20, 30, 53, 'Graphical User Interface', 'new', '2023-09-13 12:09:22'),
(397, 20, 30, 56, 'CPU', 'new', '2023-09-13 12:09:22'),
(398, 20, 30, 51, 'LAN', 'new', '2023-09-13 12:09:22'),
(399, 20, 30, 46, 'REM', 'new', '2023-09-13 12:09:22'),
(400, 21, 30, 56, 'CPU', 'new', '2023-09-13 12:16:04'),
(401, 21, 30, 46, 'REM', 'new', '2023-09-13 12:16:04'),
(402, 21, 30, 51, 'SAN', 'new', '2023-09-13 12:16:04'),
(403, 21, 30, 47, '1991', 'new', '2023-09-13 12:16:04'),
(404, 21, 30, 50, 'Messages', 'new', '2023-09-13 12:16:04'),
(405, 21, 30, 55, 'Microsoft Word', 'new', '2023-09-13 12:16:04'),
(406, 21, 30, 53, 'Graphical User Interim     ', 'new', '2023-09-13 12:16:04'),
(407, 21, 30, 54, 'Speaker and keyboard', 'new', '2023-09-13 12:16:04'),
(408, 21, 30, 49, 'Input Devices, CPU, Storage, Output Devices', 'new', '2023-09-13 12:16:04'),
(409, 21, 30, 48, 'OS', 'new', '2023-09-13 12:16:04'),
(410, 21, 31, 60, '254', 'new', '2023-09-13 12:31:44'),
(411, 21, 31, 59, '170', 'new', '2023-09-13 12:31:44'),
(412, 21, 31, 57, '0.75', 'new', '2023-09-13 12:31:44'),
(413, 21, 31, 58, '01010010', 'new', '2023-09-13 12:31:44'),
(414, 21, 31, 61, 'x is the fraction, z is the exponent, and y is the radix.', 'new', '2023-09-13 12:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(61, 15, 30, 'used'),
(62, 16, 30, 'used'),
(63, 17, 30, 'used'),
(64, 18, 30, 'used'),
(65, 19, 30, 'used'),
(66, 20, 30, 'used'),
(67, 21, 30, 'used'),
(68, 21, 31, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(46, 30, 'Which is considered to be the computers short-term memory?', 'REM', 'ROM', 'RAM', 'RIM', 'RAM', 'active'),
(47, 30, 'When was the world wide web we invented?', '1974', '1982', '1991', '1999', '1991', 'active'),
(48, 30, 'What allows multiple programs to run on a computer?', 'GUI', 'OS', 'NIC', 'API', 'OS', 'active'),
(49, 30, 'What are the four major components of a computer?', 'Input Devices, CPU, Storage, Output Devices', ' Input Devices, Processing Unit, Storage, Output Devices', 'Motherboard, Processing Unit, Storage, Output Devices', 'Input Devices, Processing Unit, Memory, Output Devices', ' Input Devices, Processing Unit, Storage, Output Devices', 'active'),
(50, 30, 'Information that is broken down into small chunks before it is sent to another computer are called...', 'Letters', 'Packets', 'Packages', 'Messages', 'Packets', 'active'),
(51, 30, 'The Miss Porters Network is a', 'MAN', 'LAN', 'SAN', 'WAN', 'LAN', 'active'),
(53, 30, 'What does GUI stand for....?', 'Graphical User Interim     ', 'Graphical User Interface', 'Geographical User Interruption', ' Gain Upper Intensity', 'Graphical User Interface', 'active'),
(54, 30, 'Which one has two examples of output devices?', ' Monitor and scanner      ', 'Printer and scanner', 'Speaker and keyboard', 'Speaker and printer', 'Speaker and printer', 'active'),
(55, 30, 'What type of software is free to try but then you have to buy?', 'Commercial      ', 'Shareware', 'Opensource', 'Microsoft Word', 'Microsoft Word', 'active'),
(56, 30, 'What is the brain of the computer?', 'Motherboard', 'Memory', 'CPU', 'NIC', 'CPU', 'active'),
(57, 31, 'Which of the following represents the hexadecimal fraction 0.C as a decimal fraction?', '0.12', '0.55', '0.75', '0.84', '0.75', 'active'),
(58, 31, 'Which of the following is the absolute value of the negative value 10101110 represented in 2’s complement?', '01010000  ', '01010001', '01010010', '01010011', '01010010', 'active'),
(59, 31, 'Among the 1-byte data with equal numbers of 0s and 1s, which of the following represents the largest unsigned binary integer as a decimal integer?', '120', '127', '170', '240', '240', 'active'),
(60, 31, 'How many character strings with one to seven characters in length can be generated using the two characters A and B?', '128', '254', '255', '256', '254', 'active'),
(61, 31, 'Which of the following is an appropriate description of the floating point format that represents a real number a as z a = ±x × y .', 'x is the fraction, z is the exponent, and y is the radix.', 'x is the radix, z is the fraction, and y is the exponent.', 'x is the radix, z is the exponent, and y is the fraction.', 'x is the exponent, z is the radix, and y is the fraction.', 'x is the fraction, z is the exponent, and y is the radix.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(30, 72, 'Computer Science Quiz 2022', '3', 10, 'Practice for MCPA Quiz', '2023-09-13 09:03:24'),
(31, 73, 'Basic Theory Quiz', '3', 5, 'Practice Test\r\n', '2023-09-13 12:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
