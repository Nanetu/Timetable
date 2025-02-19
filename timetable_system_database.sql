-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 08:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable system database`
--

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `ROOM ID` int(11) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `SCHOOL ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE CODE` varchar(20) NOT NULL,
  `PROGRAM  ID` int(11) NOT NULL,
  `COURSE NAME` varchar(50) NOT NULL,
  `ENROLLED  STUDENTS` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `LECTURE ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENT ID` int(11) NOT NULL,
  `DEPARTMENT NAME` varchar(50) NOT NULL,
  `SCHOOL ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `LECTURE ID` int(11) NOT NULL,
  `PASSWORD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `PROGRAM ID` int(11) NOT NULL,
  `PROGRAM NAME` varchar(50) NOT NULL,
  `DEPARTMENT ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `REGISTRATION CODE` int(11) NOT NULL,
  `STUDENT ID` int(11) NOT NULL,
  `COURSE CODE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SCHOOL ID` int(11) NOT NULL,
  `SCHOOL NAME` varchar(50) NOT NULL,
  `UNIVERSITY ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT ID` int(11) NOT NULL,
  `STUDENT NAME` varchar(50) NOT NULL,
  `PASSWORD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time slot`
--

CREATE TABLE `time slot` (
  `SLOT ID` int(11) NOT NULL,
  `DAY OF WEEK` varchar(50) NOT NULL,
  `START` varchar(50) NOT NULL,
  `END` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `time table`
--

CREATE TABLE `time table` (
  `TABLE ID` int(11) NOT NULL,
  `COURSE CODE` varchar(20) NOT NULL,
  `ROOM ID` int(11) NOT NULL,
  `SLOT ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timetable changer`
--

CREATE TABLE `timetable changer` (
  `TCHANGER ID` int(11) NOT NULL,
  `TABLE ID` int(11) NOT NULL,
  `CHANGED AT` varchar(50) NOT NULL,
  `USER ID` int(11) NOT NULL,
  `COMMENT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `UNIVERSITY ID` int(11) NOT NULL,
  `UNIVERSITY NAME` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER ID` int(11) NOT NULL,
  `USER ROLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`ROOM ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE CODE`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPARTMENT ID`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`LECTURE ID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`PROGRAM ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`REGISTRATION CODE`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`SCHOOL ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT ID`);

--
-- Indexes for table `time slot`
--
ALTER TABLE `time slot`
  ADD PRIMARY KEY (`SLOT ID`);

--
-- Indexes for table `time table`
--
ALTER TABLE `time table`
  ADD PRIMARY KEY (`TABLE ID`);

--
-- Indexes for table `timetable changer`
--
ALTER TABLE `timetable changer`
  ADD PRIMARY KEY (`TCHANGER ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`UNIVERSITY ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
