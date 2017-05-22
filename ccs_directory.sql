-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 07:49 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ccs_directory`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `datePosted` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `title`, `content`, `datePosted`, `user_id`) VALUES
(34, 'CCS LEGACY SHIRTS', 'We are sorry for the long wait, ka-CCS\r\nBATCH 2 OF THE SHIRTS ARE NOW AVAILABLE!\r\nTo claim your order, just go to the CCS - CSC Office (5th Floor) every 12NN-1PM ONLY.\r\nThank you and God bless!', '2017-05-17', 5),
(35, 'Miting de Avance', 'Ka-CCS! You are highly encouraged to attend at the Miting de Avance today (Wednesday) 1PM Onwards at the TSU Gymnasium :)\r\n#KnowYourCandidates #ExerciseYourSuffrage\r\n* Only those who do not have examinations during the said time. *\r\n** EXAMS ARE NOT SUSPENDED **\r\n				', '2017-05-17', 5),
(36, 'UNIFORM SCHEME', 'CCS Students are now allowed to attend their classes wearing TSU, CCS, or Organization Shirts until the end of the second semester.\r\n\r\nShorts, Ripped Jeans, Leggings, Sleeveless, and Slippers are still prohibited.\r\n\r\nEffective: May 5, 2017\r\nOffice of the Dean - Office Memo No. 14, s. 2017\r\n2nd Semester, A.Y. 2016-2017	', '2017-05-17', 5),
(37, 'CCS NIGHT', 'All 4th year students are required to attend the CCS NIGHT which will be held on April 21, 2017 from 5PM to 9PM :)\r\n\r\nOther students and guests are also welcome to socialize and witness the event''s Variety Show and the 1st CCS Alumni Awards. &#128149;\r\n\r\nSee you there! ;)\r\n\r\n#TSUCCSTheInauguration #ThankYouTSU		', '2017-05-17', 5),
(38, 'THE INAUGURATION', 'Witness as we celebrate the grand launching of the Red Hawks'' new building &#128512;\r\n\r\nYou are invited to attend THE INAUGURATION which will be held on April 21, 2017 @ CCS Grounds, TSU San Isidro Campus :)\r\n\r\n#TSUCCSTheInauguration #ThankYouTSU		\r\n				', '2017-05-17', 5),
(39, '19th Cityhood Anniversary', 'WALANG PASOK! April 19, 2017 Wednesday in celebration of 19th Cityhood Anniversary in the City of Tarlac. Please be guided TSUians! :) #WalangPasok	', '2017-05-17', 5),
(40, 'Meeting Room 121', 'Good evening! To all class presidents, please be informed of a meeting tomorrow (Wednesday), 12NN at ROOM 121 :)\r\nAttendance is a must :)\r\n\r\nThank you \r\n				', '2017-05-17', 5),
(41, 'INTRAMURALS 2017: LEGACY', '\nINTRAMURALS 2017: LEGACY\nGRAND OPENING\n\nFor those who passed their bottles, please wear your CCS Intrams Legacy Shirt and your ID tomorrow\n\nAPRIL 3, 2017 - 3:30AM\nTSU MAIN GATE\n\n---\n** FIRST COME FIRST SERVE BASIS **\n\nTo those who want to watch but didn''t pass plastic bottles, you still have a chance to get a pass! Just make sure that:\na. You ordered the CCS Intramurals Legacy Shirt (First Batch: CTRL No. 001-501)\nb. You will be at the TSU MAIN GATE tomorrow (MONDAY) by 3:30AM or better if earlier.\n\nDon''t forget to wear your ID :) See you and God bless!\n\n#CCSRedHawks #TSUIntramurals2017', '2017-05-17', 5),
(42, 'Hello Programming', 'Do you want quality computer services but have a limited budget? Seize the opportunity and let our booth do the job for you! Hurry, our offerings will last until Saturday only (December 6, 2014)!\r\n\r\nYou can also claim your "Hello Programming" seminar certificates at our booth. Just drop by anytime from 9am - 6pm. 	', '2017-05-18', 11),
(43, 'Progden Activities', 'CCS Days\r\nProgrammers'' Den Activities\r\nDecember 3-6, 2014\r\n				', '2017-05-18', 11),
(44, 'Announcement', 'Good day guys.\r\nDi ako makaka attend ng class natin today dahil nilalagnat aq. Please do a review about basics of webprog. Thanks.', '2017-05-18', 10),
(45, 'Quiz today', 'We will meet today and please bring short bond paper.Thanks	', '2017-05-18', 10),
(57, 'Hacking Tutorials', 'From Hacking Forums W/ A Lot Tutorials And Files With Rats &#128513;&#128513;\r\nNow He Decided To Make Some Money In Easy Way\r\nHe Develop This Web Stresser , Not To Give You A Cheap But Working Web Stresser.				\r\n				', '2017-05-20', 11),
(58, 'Lab Exam for Finals', 'Tomorrow''s lab exam will be by batch. Lab exam will start on time so please be on time.\r\n\r\nBatch 1\r\nEgros to Tonelada\r\n\r\nBatch 2\r\nAgustin to Dungca	', '2017-05-20', 13),
(59, 'Finals Coverage', 'Reminders:\r\nCoverage of exam is from Chapters 5-8. Type of exam is Matching Type, Identification, True or False, and Syntax Analysis. You may wear any TSU-produced shirt from this week until next week. Prohibited are shorts and slippers. Thanks.	', '2017-05-20', 13),
(60, 'UPDATED schedule of activities', 'Please take note of our UPDATED schedule of activities:\r\nMay 15, 2017 - Make Up Class at Room 321 from 9:30AM to 12:00NN for Lab Quiz on Chapters 7 and 8\r\nMay 17, 2017 - Written Quiz on Chapters 7 and 8\r\nMay 19, 2017 - Lab Exam on Chapters 5, 6, 7 and 8	', '2017-05-20', 13),
(61, 'Support volleyball', 'Please support our very own volleyball team.. thanks.	', '2017-05-20', 10),
(62, 'BSCS 3B Quiz', 'Lecture quiz tomorrow. Thanks', '2017-05-20', 10),
(63, 'Pointers to review', 'Pointers to review: Please review Chapter 5 -7 , Identification 40 points, Enumeration 30 Points, Total of 70 points		', '2017-05-20', 14),
(64, 'Asking for makeup class', 'REQ 15, ok lang sa inyo make up class natin sa sabado 8:30-10:00?			\r\n				', '2017-05-20', 14),
(65, 'BSCS 3A make up class', 'BSCS 3A make up class on Friday 8:30 - 10:00		\r\n				', '2017-05-20', 14),
(66, 'Remedial Exam', 'Request 15 Make up class Tomorrow May 17, 2017 8:30-10:00 am for your remedial exam		', '2017-05-20', 14),
(67, 'Preparation for Inauguration', 'Guys kailangan nating makipag participate para sa ating isasagawang Inauguration please be remind the other members. meeting tomorrow at room 101 please coordinate!! thanks :)	', '2017-05-20', 15),
(68, 'Go Developers and ProgrammerS!!', 'Seminar Tomorrow . 4 guest speakers coming from Google :)\r\nwe are all excited !!!		', '2017-05-20', 11),
(69, 'Final requirements (Website)', 'Tomorrow is the final requirements of your grade which is the Website. \r\nPlease be on time and make sure you installed the website to your laptop or else you can use the laptop of your friends.\r\n\r\nGoodluck everyone. i hope you pass the final requirements for this subject.	', '2017-05-20', 10),
(70, 'Lab Exam Finals', 'After seminar you need to come on time in room for your final laboratory exam. please be inform your classmates. 15% of your grades comes from your laboratory exam. make a review for Chapter 6, 7, and 8. I hope you all of you pass the laboratory exam . Godbless and Goodluck			\r\n				', '2017-05-20', 13);

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE IF NOT EXISTS `day` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_id`, `day_name`) VALUES
(5, 'Friday'),
(1, 'Monday'),
(6, 'Saturday'),
(4, 'Thursday'),
(2, 'Tuesday'),
(3, 'Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`) VALUES
(9, 'Alejandro, Mary'),
(2, 'Baun, Erin Fay e'),
(17, 'Cura, Jo Anne'),
(4, 'Dela Cruz, Ma.'),
(18, 'Flores, Carios'),
(19, 'Garcia, Angelo'),
(3, 'Heramiosa, Imee'),
(16, 'Legaspi, Jerome'),
(13, 'Manalang, Mark'),
(7, 'Mandayag, Abegail'),
(12, 'Mercado, Ronnie'),
(8, 'Pabustan, Jay R.'),
(6, 'Pingol, Patima Susanne'),
(15, 'Prellejera, Gloria'),
(10, 'Samia, Micahel'),
(14, 'Sibal, Erwin'),
(20, 'Subiate, Michelle'),
(5, 'Supan, Kimberly'),
(11, 'Tolentino, Alex'),
(1, 'Vinluan, Ruby'),
(21, 'Virtuzado, Dennis');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`) VALUES
(1, 'Room 101'),
(2, 'Room 102'),
(3, 'Room 111');

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE IF NOT EXISTS `sched` (
  `sched_id` int(11) NOT NULL,
  `day_id` int(11) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`sched_id`, `day_id`, `time_id`, `section_id`, `subject_id`, `faculty_id`, `room_id`) VALUES
(1, 2, 1, 1, 1, 1, 1),
(2, 3, 1, 2, 1, 1, 1),
(3, 4, 1, 1, 1, 1, 1),
(4, 5, 1, 2, 1, 1, 1),
(5, 2, 2, 3, 1, 2, 1),
(7, 4, 2, 3, 1, 2, 1),
(8, 5, 2, 5, 2, 1, 1),
(9, 2, 3, 7, 1, 2, 1),
(10, 3, 3, 6, 2, 1, 1),
(11, 4, 3, 7, 1, 2, 1),
(12, 5, 3, 6, 2, 1, 1),
(13, 2, 4, 6, 3, 3, 1),
(15, 4, 4, 6, 3, 3, 1),
(17, 2, 11, 6, 46, 5, 2),
(18, 3, 2, 8, 54, 5, 2),
(19, 4, 17, 8, 63, 6, 2),
(20, 5, 13, 14, 60, 6, 2),
(21, 6, 6, 7, 52, 10, 2),
(22, 6, 2, 5, 46, 8, 2),
(23, 2, 11, 6, 46, 5, 2),
(24, 3, 2, 8, 54, 5, 2),
(25, 4, 17, 8, 63, 6, 2),
(26, 5, 13, 14, 60, 6, 2),
(27, 6, 6, 7, 52, 10, 2),
(28, 6, 2, 5, 46, 8, 2),
(29, 2, 14, 1, 49, 7, 2),
(30, 2, 4, 14, 72, 11, 2),
(31, 3, 11, 2, 61, 12, 2),
(32, 6, 15, 6, 50, 12, 2),
(33, 2, 5, 7, 74, 5, 2),
(58, 2, 7, 6, 72, 7, 3),
(59, 3, 11, 8, 53, 13, 3),
(60, 2, 11, 7, 74, 16, 3),
(61, 4, 5, 11, 53, 1, 3),
(62, 2, 11, 2, 70, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `subject`, `section`, `room`, `professor`, `day`, `start_time`, `end_time`) VALUES
(1, 'IT ELECT 3', 'BSIT-3F', '214', 'Samia, Macahel', 'Tuesday', '07:00:00', '08:00:00'),
(2, 'IT ELECT 3', 'BSIT-3F', '214', 'Samia, Micahel', 'Tuesday', '07:00:00', '08:00:00'),
(3, 'ETHICS', 'ACT 2B', '214', 'Samia, Micahel', 'Wednesday', '08:30:00', '09:30:00'),
(4, 'ADBMS', 'BSIT-3E', '214', 'Flores, Carlos P.', 'Thursday', '10:30:00', '11:30:00'),
(5, 'ADBMS', 'BSIT-3D', '214', 'Flores, Carlos P.', 'Friday', '01:00:00', '02:00:00'),
(6, 'SOFTENG', 'BSIT-3E', '213', 'Corpuz, John', 'Tuesday', '07:00:00', '08:00:00'),
(7, 'DATASTRUCT', 'ACT 2A', '213', 'Mercado, Ronnie', 'Wednesday', '08:30:00', '09:30:00'),
(8, 'SOFTENG', 'BSIT-3F', '213', 'Corpuz, John', 'Thursday', '10:30:00', '11:30:00'),
(9, 'SOFTENG', 'BSIT-3C', '213', 'Supan, Kimberly', 'Friday', '01:00:00', '02:00:00'),
(10, 'IS ELECT 3', 'BSIS-3A', '212', 'Alejandro, Mary', 'Tuessday', '01:00:00', '02:00:00'),
(11, 'ETHICS', 'BSIS-BA-2A', '212', 'Alejandro, Mary', 'Wednesday', '08:30:00', '09:30:00'),
(12, 'SOFTENG', 'BSIT-3B', '212', 'Corpuz, John', 'Thursday', '04:00:00', '05:00:00'),
(13, 'ETHICS', 'BSIT-TSM-2D', '212', 'Reyes, John', 'Friday', '07:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`) VALUES
(12, 'ACT 2A'),
(11, 'ACT 2B'),
(13, 'BSCS 2A'),
(14, 'BSCS 2B'),
(5, 'BSCS 3A'),
(6, 'BSCS 3B'),
(3, 'BSCS 4A'),
(1, 'BSCS 4B'),
(2, 'BSIS-BA-2A'),
(7, 'BSIS-BA-2B'),
(9, 'BSIT-2R1'),
(8, 'BSIT-NA-2A'),
(10, 'BSIT-NA-2B');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) DEFAULT NULL,
  `subject_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_description`) VALUES
(1, 'SS 2', 'Principles of Economics with Taxation and Agrarian Reform'),
(2, 'SS 4', 'General Sociology'),
(3, 'MATH 9', 'Statistics'),
(4, 'ENG 4', 'Effective Writings'),
(40, 'ENG 3', 'Effective Speech'),
(41, 'MATH 5', 'Analytic Geometry'),
(42, 'DIGDESIGN', 'Digital Design'),
(43, 'DATASTRUCT', 'Data Structures'),
(44, 'SS 5', 'Rizal''s Life, Works and Wrings'),
(45, 'PHYS 1A', 'Mechanics and Sounds/Lec'),
(46, 'PHYS 1AL', 'Mechanics and Sounds/Lab'),
(47, 'CCNA 1', 'CISCO 1'),
(48, 'CCNA 2', 'CISCO 2'),
(49, 'CCNA 3', 'CISCO 3'),
(50, 'CCNA 4', 'CISCO 4'),
(51, 'MATH 6A', 'Differential Calculus'),
(52, 'OOP', 'Object Oriented Programming'),
(53, 'COAL', 'Computer Organization and Assembly Language'),
(54, 'DBS', 'Database Systems'),
(55, 'PHL 1', 'Logic'),
(56, 'HUM 1', 'Introduction to Arts'),
(57, 'FIL 2', 'Pagbasa''t Pagsulat Tungo sa Pananaliksik'),
(58, 'MATH 7A', 'Integral Calculus'),
(59, 'PROG 3', 'Omputer Programming 3 (C++/Java)'),
(60, 'OS', 'Operating Systems'),
(61, 'DAA', 'Design and Analysis of Algorithm'),
(62, 'PROG 4', 'Computer Programming 4 (Visual Basic)'),
(63, 'WEBPROG', 'Web Programming'),
(64, 'ALT', 'Automata & Language Theory'),
(65, 'MATH 9A', 'Probability and Statistics'),
(66, 'LIT 2', 'World Literature'),
(67, 'FREE 1', 'Free Elective 1'),
(68, 'FREE 2', 'Free Elective 2'),
(69, 'FREE 3', 'Free Elective 3'),
(70, 'CS ELEC 3', 'CS Elective 3'),
(71, 'CS ELEC 1', 'CS Elective 1'),
(72, 'CS ELEC 2', 'CS Elective 2'),
(73, 'CS ELEC 4', 'CS Elective 4'),
(74, 'PL', 'Programming Languages');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `time_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `start_time`, `end_time`) VALUES
(1, '07:00:00', '08:00:00'),
(2, '08:30:00', '09:30:00'),
(3, '10:00:00', '11:00:00'),
(4, '01:00:00', '02:00:00'),
(5, '02:30:00', '03:00:00'),
(6, '02:30:00', '03:30:00'),
(7, '04:00:00', '05:00:00'),
(8, '09:30:00', '11:30:00'),
(9, '09:30:00', '10:30:00'),
(10, '01:00:00', '03:00:00'),
(11, '07:00:00', '08:30:00'),
(12, '01:00:00', '02:30:00'),
(13, '01:00:00', '04:00:00'),
(14, '02:30:00', '04:00:00'),
(15, '03:30:00', '05:00:00'),
(16, '08:30:00', '10:30:00'),
(17, '10:30:00', '12:00:00'),
(18, '09:00:00', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `position`) VALUES
(5, 'admin', 'admin', 'CCS', 'Student Counsil', 'Administrator'),
(10, 'patima', 'patima', 'Patima Susanne', 'Pingol', 'Faculty'),
(11, 'progden', 'progden', 'CCS', 'Progden', 'Organization'),
(13, 'alex', 'alex', 'Alex Morales', 'Tolentino', 'Faculty'),
(14, 'abegail', 'abegail', 'Abegail', 'Madayag', 'Faculty'),
(15, 'jpcs', 'jpcs', 'CCS', 'JPCS', 'Organization');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`), ADD UNIQUE KEY `day_name` (`day_name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`), ADD UNIQUE KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`), ADD UNIQUE KEY `room_name` (`room_name`);

--
-- Indexes for table `sched`
--
ALTER TABLE `sched`
  ADD PRIMARY KEY (`sched_id`), ADD KEY `day_id` (`day_id`), ADD KEY `time_id` (`time_id`), ADD KEY `section_id` (`section_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `faculty_id` (`faculty_id`), ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`), ADD UNIQUE KEY `section_name` (`section_name`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`), ADD UNIQUE KEY `subject_code` (`subject_code`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sched`
--
ALTER TABLE `sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sched`
--
ALTER TABLE `sched`
ADD CONSTRAINT `sched_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`),
ADD CONSTRAINT `sched_ibfk_2` FOREIGN KEY (`time_id`) REFERENCES `time` (`time_id`),
ADD CONSTRAINT `sched_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`),
ADD CONSTRAINT `sched_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
ADD CONSTRAINT `sched_ibfk_5` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
ADD CONSTRAINT `sched_ibfk_6` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
