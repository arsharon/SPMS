-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 09:11 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g4spms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Mr. Admin',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `university_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `university_id`) VALUES
(1, 'Mr. Admin', 'admin@iub.edu.bd', '12345678', 'iub');

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `question_content` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `mark` int(11) NOT NULL,
  `attendence_number` int(11) DEFAULT NULL,
  `co_number` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `question_number`, `question_content`, `type`, `mark`, `attendence_number`, `co_number`, `section_id`) VALUES
(1, 1, '5e5631f84f444eba38e1c2d8667a6243.png', 'mid', 25, NULL, 1, 1),
(2, 2, NULL, 'mid', 25, NULL, 1, 1),
(3, 3, NULL, 'mid', 30, NULL, 1, 1),
(4, 4, '91b744147f4375d26e33dd1d6676b1e0.png', 'mid', 20, NULL, 2, 1),
(5, 5, NULL, 'mid', 30, NULL, 1, 1),
(6, 6, '2b65f169b01dcf8b46f23154f8b766ce.png', 'mid', 20, NULL, 1, 1),
(7, 1, NULL, 'final', 20, NULL, 1, 1),
(8, 2, NULL, 'final', 15, NULL, 1, 1),
(9, 3, NULL, 'final', 15, NULL, 2, 1),
(10, 4, NULL, 'final', 50, NULL, 3, 1),
(11, 1, NULL, 'lab', 30, NULL, 4, 1),
(12, 1, NULL, 'mid', 25, NULL, 1, 2),
(13, 2, NULL, 'mid', 25, NULL, 1, 2),
(14, 3, NULL, 'mid', 30, NULL, 1, 2),
(15, 4, NULL, 'mid', 20, NULL, 2, 2),
(16, 5, NULL, 'mid', 30, NULL, 1, 2),
(17, 6, NULL, 'mid', 20, NULL, 1, 2),
(18, 1, NULL, 'final', 20, NULL, 1, 2),
(19, 2, NULL, 'final', 15, NULL, 1, 2),
(20, 3, NULL, 'final', 15, NULL, 2, 2),
(21, 4, NULL, 'final', 50, NULL, 3, 2),
(22, 1, NULL, 'lab', 30, NULL, 4, 2),
(23, 1, NULL, 'mid', 25, NULL, 1, 3),
(24, 2, NULL, 'mid', 25, NULL, 1, 3),
(25, 3, NULL, 'mid', 30, NULL, 1, 3),
(26, 4, NULL, 'mid', 20, NULL, 2, 3),
(27, 5, NULL, 'mid', 30, NULL, 1, 3),
(28, 6, NULL, 'mid', 20, NULL, 1, 3),
(29, 1, NULL, 'final', 20, NULL, 1, 3),
(30, 2, NULL, 'final', 15, NULL, 1, 3),
(31, 3, NULL, 'final', 15, NULL, 2, 3),
(32, 4, NULL, 'final', 50, NULL, 3, 3),
(33, 1, NULL, 'lab', 30, NULL, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `id` int(11) NOT NULL,
  `indx` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `plo_id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`id`, `indx`, `name`, `detail`, `plo_id`, `course_id`, `section_id`) VALUES
(1, 2, NULL, NULL, 1, 'cse-303', NULL),
(2, 3, NULL, NULL, 1, 'cse-303', NULL),
(3, 1, NULL, NULL, 2, 'cse-303', NULL),
(4, 2, NULL, NULL, 2, 'cse-303', NULL),
(5, 2, NULL, NULL, 3, 'cse-303', NULL),
(6, 1, NULL, NULL, 4, 'cse-303', NULL),
(7, 3, NULL, NULL, 4, 'cse-303', NULL),
(8, 3, NULL, NULL, 6, 'cse-303', NULL),
(9, 4, NULL, NULL, 6, 'cse-303', NULL),
(10, 3, NULL, NULL, 7, 'cse-303', NULL),
(11, 1, NULL, NULL, 12, 'cse-303', NULL),
(12, 1, NULL, NULL, 13, 'cse-303', NULL),
(13, 1, NULL, NULL, 2, 'cse-303', 1),
(14, 2, NULL, NULL, 3, 'cse-303', 1),
(15, 3, NULL, NULL, 4, 'cse-303', 1),
(16, 4, NULL, NULL, 6, 'cse-303', 1),
(17, 1, NULL, NULL, 2, 'cse-303', 2),
(18, 2, NULL, NULL, 3, 'cse-303', 2),
(19, 3, NULL, NULL, 4, 'cse-303', 2),
(20, 4, NULL, NULL, 6, 'cse-303', 2),
(21, 1, NULL, NULL, 2, 'cse-303', 3),
(22, 2, NULL, NULL, 3, 'cse-303', 3),
(23, 3, NULL, NULL, 4, 'cse-303', 3),
(24, 4, NULL, NULL, 6, 'cse-303', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `credits` float NOT NULL,
  `level` int(11) NOT NULL,
  `total_co` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `credits`, `level`, `total_co`, `program_id`) VALUES
('cse-303', 'Database Management', 3, 300, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) DEFAULT NULL,
  `head_id` int(11) DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `head`, `head_id`, `school_id`) VALUES
('cse', 'Computer Science & Engineering', 'Mr Smith', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `student_id`, `section_id`) VALUES
(1, 1416455, 1),
(2, 1579288, 1),
(3, 1625654, 1),
(4, 1665555, 1),
(5, 1613273, 1),
(6, 1623112, 1),
(7, 1696326, 1),
(8, 1646434, 1),
(9, 1614142, 1),
(10, 1654432, 1),
(11, 1661638, 1),
(12, 1686272, 1),
(13, 1778274, 1),
(14, 1795656, 1),
(15, 1747457, 1),
(16, 1798883, 1),
(17, 1766156, 1),
(18, 1715578, 1),
(19, 1745484, 1),
(20, 1788337, 1),
(21, 1728439, 1),
(22, 1711619, 1),
(23, 1711729, 1),
(24, 1892367, 1),
(25, 1872128, 1),
(26, 1868128, 1),
(27, 1845457, 1),
(28, 1633554, 2),
(29, 1645333, 2),
(30, 1691291, 2),
(31, 1641252, 2),
(32, 1695837, 2),
(33, 1668314, 2),
(34, 1665491, 2),
(35, 1763881, 2),
(36, 1773277, 2),
(37, 1759787, 2),
(38, 1743714, 2),
(39, 1728125, 2),
(40, 1783512, 2),
(41, 1768463, 2),
(42, 1797625, 2),
(43, 1754681, 2),
(44, 1769463, 2),
(45, 1731817, 2),
(46, 1791753, 2),
(47, 1712983, 2),
(48, 1784847, 2),
(49, 1789481, 2),
(50, 1773384, 2),
(51, 1762565, 2),
(52, 1835874, 2),
(53, 1886577, 2),
(54, 1834433, 2),
(55, 1855787, 2),
(56, 1893863, 2),
(57, 1842333, 2),
(58, 1528882, 3),
(59, 1653725, 3),
(60, 1669953, 3),
(61, 1616161, 3),
(62, 1662147, 3),
(63, 1691483, 3),
(64, 1674181, 3),
(65, 1612985, 3),
(66, 1622731, 3),
(67, 1678812, 3),
(68, 1614733, 3),
(69, 1634352, 3),
(70, 1729416, 3),
(71, 1781682, 3),
(72, 1772947, 3),
(73, 1752538, 3),
(74, 1731852, 3),
(75, 1766176, 3),
(76, 1742892, 3),
(77, 1736425, 3),
(78, 1718437, 3),
(79, 1737824, 3),
(80, 1797789, 3),
(81, 1728139, 3),
(82, 1898334, 3),
(83, 1863951, 3),
(84, 1835298, 3),
(85, 1849651, 3),
(86, 1887973, 3),
(87, 1877262, 3),
(88, 1873255, 3);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `enrollment_id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `obtained_mark` int(11) NOT NULL,
  `attendence_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id`, `enrollment_id`, `assessment_id`, `obtained_mark`, `attendence_percentage`) VALUES
(1, 1, 1, 15, NULL),
(2, 1, 2, 0, NULL),
(3, 1, 3, 5, NULL),
(4, 1, 4, 15, NULL),
(5, 1, 5, 2, NULL),
(6, 1, 6, 7, NULL),
(7, 2, 1, 0, NULL),
(8, 2, 2, 0, NULL),
(9, 2, 3, 18, NULL),
(10, 2, 4, 0, NULL),
(11, 2, 5, 5, NULL),
(12, 2, 6, 12, NULL),
(13, 5, 1, 0, NULL),
(14, 5, 2, 0, NULL),
(15, 5, 3, 0, NULL),
(16, 5, 4, 16, NULL),
(17, 5, 5, 0, NULL),
(18, 5, 6, 4, NULL),
(19, 9, 1, 0, NULL),
(20, 9, 2, 0, NULL),
(21, 9, 3, 10, NULL),
(22, 9, 4, 16, NULL),
(23, 9, 5, 9, NULL),
(24, 9, 6, 10, NULL),
(25, 6, 1, 0, NULL),
(26, 6, 2, 0, NULL),
(27, 6, 3, 15, NULL),
(28, 6, 4, 16, NULL),
(29, 6, 5, 10, NULL),
(30, 6, 6, 8, NULL),
(31, 3, 1, 5, NULL),
(32, 3, 2, 15, NULL),
(33, 3, 3, 20, NULL),
(34, 3, 4, 0, NULL),
(35, 3, 5, 0, NULL),
(36, 3, 6, 0, NULL),
(37, 8, 1, 0, NULL),
(38, 8, 2, 0, NULL),
(39, 8, 3, 0, NULL),
(40, 8, 4, 0, NULL),
(41, 8, 5, 0, NULL),
(42, 8, 6, 0, NULL),
(43, 10, 1, 18, NULL),
(44, 10, 2, 0, NULL),
(45, 10, 3, 20, NULL),
(46, 10, 4, 18, NULL),
(47, 10, 5, 17, NULL),
(48, 10, 6, 14, NULL),
(49, 11, 1, 15, NULL),
(50, 11, 2, 5, NULL),
(51, 11, 3, 10, NULL),
(52, 11, 4, 0, NULL),
(53, 11, 5, 0, NULL),
(54, 11, 6, 15, NULL),
(55, 4, 1, 10, NULL),
(56, 4, 2, 0, NULL),
(57, 4, 3, 15, NULL),
(58, 4, 4, 6, NULL),
(59, 4, 5, 2, NULL),
(60, 4, 6, 0, NULL),
(61, 12, 1, 0, NULL),
(62, 12, 2, 0, NULL),
(63, 12, 3, 0, NULL),
(64, 12, 4, 14, NULL),
(65, 12, 5, 0, NULL),
(66, 12, 6, 0, NULL),
(67, 7, 1, 0, NULL),
(68, 7, 2, 0, NULL),
(69, 7, 3, 10, NULL),
(70, 7, 4, 16, NULL),
(71, 7, 5, 1, NULL),
(72, 7, 6, 9, NULL),
(73, 22, 1, 5, NULL),
(74, 22, 2, 5, NULL),
(75, 22, 3, 22, NULL),
(76, 22, 4, 0, NULL),
(77, 22, 5, 14, NULL),
(78, 22, 6, 18, NULL),
(79, 23, 1, 0, NULL),
(80, 23, 2, 0, NULL),
(81, 23, 3, 0, NULL),
(82, 23, 4, 0, NULL),
(83, 23, 5, 0, NULL),
(84, 23, 6, 6, NULL),
(85, 18, 1, 0, NULL),
(86, 18, 2, 10, NULL),
(87, 18, 3, 10, NULL),
(88, 18, 4, 18, NULL),
(89, 18, 5, 10, NULL),
(90, 18, 6, 5, NULL),
(91, 21, 1, 0, NULL),
(92, 21, 2, 0, NULL),
(93, 21, 3, 24, NULL),
(94, 21, 4, 0, NULL),
(95, 21, 5, 20, NULL),
(96, 21, 6, 14, NULL),
(97, 19, 1, 0, NULL),
(98, 19, 2, 7, NULL),
(99, 19, 3, 0, NULL),
(100, 19, 4, 0, NULL),
(101, 19, 5, 3, NULL),
(102, 19, 6, 9, NULL),
(103, 15, 1, 0, NULL),
(104, 15, 2, 0, NULL),
(105, 15, 3, 0, NULL),
(106, 15, 4, 0, NULL),
(107, 15, 5, 13, NULL),
(108, 15, 6, 1, NULL),
(109, 17, 1, 14, NULL),
(110, 17, 2, 0, NULL),
(111, 17, 3, 20, NULL),
(112, 17, 4, 20, NULL),
(113, 17, 5, 18, NULL),
(114, 17, 6, 0, NULL),
(115, 13, 1, 0, NULL),
(116, 13, 2, 7, NULL),
(117, 13, 3, 15, NULL),
(118, 13, 4, 14, NULL),
(119, 13, 5, 6, NULL),
(120, 13, 6, 4, NULL),
(121, 20, 1, 18, NULL),
(122, 20, 2, 18, NULL),
(123, 20, 3, 24, NULL),
(124, 20, 4, 0, NULL),
(125, 20, 5, 8, NULL),
(126, 20, 6, 17, NULL),
(127, 14, 1, 10, NULL),
(128, 14, 2, 3, NULL),
(129, 14, 3, 20, NULL),
(130, 14, 4, 19, NULL),
(131, 14, 5, 4, NULL),
(132, 14, 6, 5, NULL),
(133, 16, 1, 5, NULL),
(134, 16, 2, 0, NULL),
(135, 16, 3, 15, NULL),
(136, 16, 4, 0, NULL),
(137, 16, 5, 3, NULL),
(138, 16, 6, 10, NULL),
(139, 27, 1, 0, NULL),
(140, 27, 2, 0, NULL),
(141, 27, 3, 20, NULL),
(142, 27, 4, 0, NULL),
(143, 27, 5, 0, NULL),
(144, 27, 6, 0, NULL),
(145, 26, 1, 15, NULL),
(146, 26, 2, 15, NULL),
(147, 26, 3, 24, NULL),
(148, 26, 4, 15, NULL),
(149, 26, 5, 4, NULL),
(150, 26, 6, 15, NULL),
(151, 25, 1, 0, NULL),
(152, 25, 2, 0, NULL),
(153, 25, 3, 22, NULL),
(154, 25, 4, 16, NULL),
(155, 25, 5, 10, NULL),
(156, 25, 6, 6, NULL),
(157, 24, 1, 0, NULL),
(158, 24, 2, 0, NULL),
(159, 24, 3, 24, NULL),
(160, 24, 4, 16, NULL),
(161, 24, 5, 12, NULL),
(162, 24, 6, 7, NULL),
(163, 1, 7, 13, NULL),
(164, 1, 8, 13, NULL),
(165, 1, 9, 11, NULL),
(166, 1, 10, 28, NULL),
(167, 2, 7, 0, NULL),
(168, 2, 8, 10, NULL),
(169, 2, 9, 13, NULL),
(170, 2, 10, 23, NULL),
(171, 3, 7, 8, NULL),
(172, 3, 8, 10, NULL),
(173, 3, 9, 10, NULL),
(174, 3, 10, 4, NULL),
(175, 4, 7, 13, NULL),
(176, 4, 8, 12, NULL),
(177, 4, 9, 13, NULL),
(178, 4, 10, 4, NULL),
(179, 5, 7, 9, NULL),
(180, 5, 8, 13, NULL),
(181, 5, 9, 12, NULL),
(182, 5, 10, 4, NULL),
(183, 6, 7, 9, NULL),
(184, 6, 8, 12, NULL),
(185, 6, 9, 12, NULL),
(186, 6, 10, 12, NULL),
(187, 7, 7, 9, NULL),
(188, 7, 8, 12, NULL),
(189, 7, 9, 13, NULL),
(190, 7, 10, 26, NULL),
(191, 8, 7, 9, NULL),
(192, 8, 8, 13, NULL),
(193, 8, 9, 11, NULL),
(194, 8, 10, 26, NULL),
(195, 9, 7, 9, NULL),
(196, 9, 8, 13, NULL),
(197, 9, 9, 10, NULL),
(198, 9, 10, 26, NULL),
(199, 10, 7, 9, NULL),
(200, 10, 8, 12, NULL),
(201, 10, 9, 0, NULL),
(202, 10, 10, 26, NULL),
(203, 11, 7, 14, NULL),
(204, 11, 8, 10, NULL),
(205, 11, 9, 10, NULL),
(206, 11, 10, 13, NULL),
(207, 12, 7, 9, NULL),
(208, 12, 8, 13, NULL),
(209, 12, 9, 10, NULL),
(210, 12, 10, 26, NULL),
(211, 13, 7, 9, NULL),
(212, 13, 8, 5, NULL),
(213, 13, 9, 9, NULL),
(214, 13, 10, 22, NULL),
(215, 14, 7, 9, NULL),
(216, 14, 8, 10, NULL),
(217, 14, 9, 10, NULL),
(218, 14, 10, 19, NULL),
(219, 15, 7, 13, NULL),
(220, 15, 8, 11, NULL),
(221, 15, 9, 12, NULL),
(222, 15, 10, 19, NULL),
(223, 16, 7, 14, NULL),
(224, 16, 8, 11, NULL),
(225, 16, 9, 12, NULL),
(226, 16, 10, 19, NULL),
(227, 17, 7, 12, NULL),
(228, 17, 8, 8, NULL),
(229, 17, 9, 10, NULL),
(230, 17, 10, 6, NULL),
(231, 18, 7, 19, NULL),
(232, 18, 8, 12, NULL),
(233, 18, 9, 12, NULL),
(234, 18, 10, 26, NULL),
(235, 19, 7, 0, NULL),
(236, 19, 8, 0, NULL),
(237, 19, 9, 0, NULL),
(238, 19, 10, 0, NULL),
(239, 20, 7, 15, NULL),
(240, 20, 8, 13, NULL),
(241, 20, 9, 13, NULL),
(242, 20, 10, 20, NULL),
(243, 21, 7, 14, NULL),
(244, 21, 8, 13, NULL),
(245, 21, 9, 12, NULL),
(246, 21, 10, 20, NULL),
(247, 22, 7, 16, NULL),
(248, 22, 8, 12, NULL),
(249, 22, 9, 11, NULL),
(250, 22, 10, 11, NULL),
(251, 23, 7, 8, NULL),
(252, 23, 8, 11, NULL),
(253, 23, 9, 13, NULL),
(254, 23, 10, 6, NULL),
(255, 24, 7, 10, NULL),
(256, 24, 8, 13, NULL),
(257, 24, 9, 13, NULL),
(258, 24, 10, 34, NULL),
(259, 25, 7, 10, NULL),
(260, 25, 8, 13, NULL),
(261, 25, 9, 15, NULL),
(262, 25, 10, 24, NULL),
(263, 26, 7, 18, NULL),
(264, 26, 8, 13, NULL),
(265, 26, 9, 11, NULL),
(266, 26, 10, 27, NULL),
(267, 27, 7, 0, NULL),
(268, 27, 8, 0, NULL),
(269, 27, 9, 0, NULL),
(270, 27, 10, 0, NULL),
(271, 1, 11, 24, NULL),
(272, 2, 11, 23, NULL),
(273, 3, 11, 24, NULL),
(274, 4, 11, 27, NULL),
(275, 5, 11, 12, NULL),
(276, 6, 11, 12, NULL),
(277, 7, 11, 12, NULL),
(278, 8, 11, 12, NULL),
(279, 9, 11, 12, NULL),
(280, 10, 11, 25, NULL),
(281, 11, 11, 20, NULL),
(282, 12, 11, 12, NULL),
(283, 13, 11, 27, NULL),
(284, 14, 11, 25, NULL),
(285, 15, 11, 27, NULL),
(286, 16, 11, 20, NULL),
(287, 17, 11, 0, NULL),
(288, 18, 11, 26, NULL),
(289, 19, 11, 0, NULL),
(290, 20, 11, 23, NULL),
(291, 21, 11, 22, NULL),
(292, 22, 11, 27, NULL),
(293, 23, 11, 0, NULL),
(294, 24, 11, 29, NULL),
(295, 25, 11, 27, NULL),
(296, 26, 11, 27, NULL),
(297, 27, 11, 0, NULL),
(298, 28, 12, 0, NULL),
(299, 28, 13, 10, NULL),
(300, 28, 14, 5, NULL),
(301, 28, 15, 15, NULL),
(302, 28, 16, 0, NULL),
(303, 28, 17, 0, NULL),
(304, 31, 12, 22, NULL),
(305, 31, 13, 22, NULL),
(306, 31, 14, 24, NULL),
(307, 31, 15, 14, NULL),
(308, 31, 16, 25, NULL),
(309, 31, 17, 17, NULL),
(310, 29, 12, 22, NULL),
(311, 29, 13, 0, NULL),
(312, 29, 14, 23, NULL),
(313, 29, 15, 16, NULL),
(314, 29, 16, 15, NULL),
(315, 29, 17, 13, NULL),
(316, 34, 12, 18, NULL),
(317, 34, 13, 0, NULL),
(318, 34, 14, 20, NULL),
(319, 34, 15, 16, NULL),
(320, 34, 16, 0, NULL),
(321, 34, 17, 5, NULL),
(322, 33, 12, 0, NULL),
(323, 33, 13, 0, NULL),
(324, 33, 14, 0, NULL),
(325, 33, 15, 0, NULL),
(326, 33, 16, 0, NULL),
(327, 33, 17, 0, NULL),
(328, 30, 12, 6, NULL),
(329, 30, 13, 10, NULL),
(330, 30, 14, 0, NULL),
(331, 30, 15, 0, NULL),
(332, 30, 16, 2, NULL),
(333, 30, 17, 11, NULL),
(334, 32, 12, 19, NULL),
(335, 32, 13, 0, NULL),
(336, 32, 14, 24, NULL),
(337, 32, 15, 0, NULL),
(338, 32, 16, 5, NULL),
(339, 32, 17, 7, NULL),
(340, 47, 12, 8, NULL),
(341, 47, 13, 10, NULL),
(342, 47, 14, 22, NULL),
(343, 47, 15, 0, NULL),
(344, 47, 16, 20, NULL),
(345, 47, 17, 13, NULL),
(346, 39, 12, 15, NULL),
(347, 39, 13, 0, NULL),
(348, 39, 14, 24, NULL),
(349, 39, 15, 16, NULL),
(350, 39, 16, 0, NULL),
(351, 39, 17, 18, NULL),
(352, 45, 12, 22, NULL),
(353, 45, 13, 18, NULL),
(354, 45, 14, 22, NULL),
(355, 45, 15, 16, NULL),
(356, 45, 16, 27, NULL),
(357, 45, 17, 16, NULL),
(358, 38, 12, 8, NULL),
(359, 38, 13, 0, NULL),
(360, 38, 14, 20, NULL),
(361, 38, 15, 0, NULL),
(362, 38, 16, 3, NULL),
(363, 38, 17, 2, NULL),
(364, 43, 12, 18, NULL),
(365, 43, 13, 15, NULL),
(366, 43, 14, 27, NULL),
(367, 43, 15, 18, NULL),
(368, 43, 16, 5, NULL),
(369, 43, 17, 19, NULL),
(370, 37, 12, 13, NULL),
(371, 37, 13, 0, NULL),
(372, 37, 14, 20, NULL),
(373, 37, 15, 0, NULL),
(374, 37, 16, 5, NULL),
(375, 37, 17, 10, NULL),
(376, 51, 12, 6, NULL),
(377, 51, 13, 22, NULL),
(378, 51, 14, 0, NULL),
(379, 51, 15, 0, NULL),
(380, 51, 16, 15, NULL),
(381, 51, 17, 4, NULL),
(382, 35, 12, 0, NULL),
(383, 35, 13, 0, NULL),
(384, 35, 14, 27, NULL),
(385, 35, 15, 0, NULL),
(386, 35, 16, 0, NULL),
(387, 35, 17, 15, NULL),
(388, 41, 12, 10, NULL),
(389, 41, 13, 0, NULL),
(390, 41, 14, 20, NULL),
(391, 41, 15, 16, NULL),
(392, 41, 16, 0, NULL),
(393, 41, 17, 11, NULL),
(394, 44, 12, 20, NULL),
(395, 44, 13, 0, NULL),
(396, 44, 14, 0, NULL),
(397, 44, 15, 0, NULL),
(398, 44, 16, 0, NULL),
(399, 44, 17, 0, NULL),
(400, 36, 12, 17, NULL),
(401, 36, 13, 0, NULL),
(402, 36, 14, 22, NULL),
(403, 36, 15, 18, NULL),
(404, 36, 16, 0, NULL),
(405, 36, 17, 0, NULL),
(406, 50, 12, 15, NULL),
(407, 50, 13, 0, NULL),
(408, 50, 14, 20, NULL),
(409, 50, 15, 0, NULL),
(410, 50, 16, 0, NULL),
(411, 50, 17, 9, NULL),
(412, 40, 12, 10, NULL),
(413, 40, 13, 0, NULL),
(414, 40, 14, 22, NULL),
(415, 40, 15, 16, NULL),
(416, 40, 16, 0, NULL),
(417, 40, 17, 13, NULL),
(418, 48, 12, 23, NULL),
(419, 48, 13, 15, NULL),
(420, 48, 14, 20, NULL),
(421, 48, 15, 0, NULL),
(422, 48, 16, 28, NULL),
(423, 48, 17, 19, NULL),
(424, 49, 12, 22, NULL),
(425, 49, 13, 19, NULL),
(426, 49, 14, 24, NULL),
(427, 49, 15, 0, NULL),
(428, 49, 16, 27, NULL),
(429, 49, 17, 17, NULL),
(430, 46, 12, 20, NULL),
(431, 46, 13, 18, NULL),
(432, 46, 14, 22, NULL),
(433, 46, 15, 15, NULL),
(434, 46, 16, 17, NULL),
(435, 46, 17, 15, NULL),
(436, 42, 12, 15, NULL),
(437, 42, 13, 0, NULL),
(438, 42, 14, 22, NULL),
(439, 42, 15, 0, NULL),
(440, 42, 16, 14, NULL),
(441, 42, 17, 14, NULL),
(442, 54, 12, 22, NULL),
(443, 54, 13, 20, NULL),
(444, 54, 14, 27, NULL),
(445, 54, 15, 18, NULL),
(446, 54, 16, 22, NULL),
(447, 54, 17, 19, NULL),
(448, 52, 12, 18, NULL),
(449, 52, 13, 25, NULL),
(450, 52, 14, 10, NULL),
(451, 52, 15, 0, NULL),
(452, 52, 16, 0, NULL),
(453, 52, 17, 0, NULL),
(454, 57, 12, 20, NULL),
(455, 57, 13, 0, NULL),
(456, 57, 14, 15, NULL),
(457, 57, 15, 14, NULL),
(458, 57, 16, 6, NULL),
(459, 57, 17, 0, NULL),
(460, 55, 12, 20, NULL),
(461, 55, 13, 15, NULL),
(462, 55, 14, 26, NULL),
(463, 55, 15, 10, NULL),
(464, 55, 16, 0, NULL),
(465, 55, 17, 0, NULL),
(466, 53, 12, 17, NULL),
(467, 53, 13, 7, NULL),
(468, 53, 14, 20, NULL),
(469, 53, 15, 10, NULL),
(470, 53, 16, 7, NULL),
(471, 53, 17, 18, NULL),
(472, 56, 12, 0, NULL),
(473, 56, 13, 0, NULL),
(474, 56, 14, 20, NULL),
(475, 56, 15, 6, NULL),
(476, 56, 16, 0, NULL),
(477, 56, 17, 0, NULL),
(478, 28, 18, 0, NULL),
(479, 28, 19, 0, NULL),
(480, 28, 20, 0, NULL),
(481, 28, 21, 0, NULL),
(482, 29, 18, 10, NULL),
(483, 29, 19, 12, NULL),
(484, 29, 20, 11, NULL),
(485, 29, 21, 18, NULL),
(486, 30, 18, 17, NULL),
(487, 30, 19, 10, NULL),
(488, 30, 20, 10, NULL),
(489, 30, 21, 17, NULL),
(490, 31, 18, 15, NULL),
(491, 31, 19, 14, NULL),
(492, 31, 20, 11, NULL),
(493, 31, 21, 22, NULL),
(494, 32, 18, 14, NULL),
(495, 32, 19, 5, NULL),
(496, 32, 20, 9, NULL),
(497, 32, 21, 25, NULL),
(498, 33, 18, 17, NULL),
(499, 33, 19, 5, NULL),
(500, 33, 20, 11, NULL),
(501, 33, 21, 27, NULL),
(502, 34, 18, 14, NULL),
(503, 34, 19, 13, NULL),
(504, 34, 20, 10, NULL),
(505, 34, 21, 6, NULL),
(506, 35, 18, 0, NULL),
(507, 35, 19, 0, NULL),
(508, 35, 20, 0, NULL),
(509, 35, 21, 0, NULL),
(510, 36, 18, 14, NULL),
(511, 36, 19, 13, NULL),
(512, 36, 20, 13, NULL),
(513, 36, 21, 18, NULL),
(514, 37, 18, 0, NULL),
(515, 37, 19, 0, NULL),
(516, 37, 20, 0, NULL),
(517, 37, 21, 0, NULL),
(518, 38, 18, 16, NULL),
(519, 38, 19, 0, NULL),
(520, 38, 20, 11, NULL),
(521, 38, 21, 12, NULL),
(522, 39, 18, 18, NULL),
(523, 39, 19, 0, NULL),
(524, 39, 20, 8, NULL),
(525, 39, 21, 20, NULL),
(526, 40, 18, 10, NULL),
(527, 40, 19, 10, NULL),
(528, 40, 20, 12, NULL),
(529, 40, 21, 28, NULL),
(530, 41, 18, 14, NULL),
(531, 41, 19, 10, NULL),
(532, 41, 20, 11, NULL),
(533, 41, 21, 21, NULL),
(534, 42, 18, 14, NULL),
(535, 42, 19, 10, NULL),
(536, 42, 20, 11, NULL),
(537, 42, 21, 19, NULL),
(538, 43, 18, 10, NULL),
(539, 43, 19, 0, NULL),
(540, 43, 20, 15, NULL),
(541, 43, 21, 29, NULL),
(542, 44, 18, 0, NULL),
(543, 44, 19, 0, NULL),
(544, 44, 20, 0, NULL),
(545, 44, 21, 0, NULL),
(546, 45, 18, 18, NULL),
(547, 45, 19, 11, NULL),
(548, 45, 20, 10, NULL),
(549, 45, 21, 8, NULL),
(550, 46, 18, 18, NULL),
(551, 46, 19, 13, NULL),
(552, 46, 20, 11, NULL),
(553, 46, 21, 15, NULL),
(554, 47, 18, 17, NULL),
(555, 47, 19, 10, NULL),
(556, 47, 20, 10, NULL),
(557, 47, 21, 30, NULL),
(558, 48, 18, 17, NULL),
(559, 48, 19, 13, NULL),
(560, 48, 20, 11, NULL),
(561, 48, 21, 27, NULL),
(562, 49, 18, 19, NULL),
(563, 49, 19, 12, NULL),
(564, 49, 20, 10, NULL),
(565, 49, 21, 21, NULL),
(566, 50, 18, 14, NULL),
(567, 50, 19, 8, NULL),
(568, 50, 20, 11, NULL),
(569, 50, 21, 18, NULL),
(570, 51, 18, 18, NULL),
(571, 51, 19, 10, NULL),
(572, 51, 20, 11, NULL),
(573, 51, 21, 17, NULL),
(574, 52, 18, 18, NULL),
(575, 52, 19, 10, NULL),
(576, 52, 20, 11, NULL),
(577, 52, 21, 19, NULL),
(578, 53, 18, 14, NULL),
(579, 53, 19, 5, NULL),
(580, 53, 20, 14, NULL),
(581, 53, 21, 22, NULL),
(582, 54, 18, 18, NULL),
(583, 54, 19, 12, NULL),
(584, 54, 20, 8, NULL),
(585, 54, 21, 25, NULL),
(586, 55, 18, 9, NULL),
(587, 55, 19, 13, NULL),
(588, 55, 20, 14, NULL),
(589, 55, 21, 15, NULL),
(590, 56, 18, 0, NULL),
(591, 56, 19, 0, NULL),
(592, 56, 20, 0, NULL),
(593, 56, 21, 0, NULL),
(594, 57, 18, 14, NULL),
(595, 57, 19, 12, NULL),
(596, 57, 20, 11, NULL),
(597, 57, 21, 15, NULL),
(598, 28, 22, 0, NULL),
(599, 29, 22, 23, NULL),
(600, 30, 22, 30, NULL),
(601, 31, 22, 34, NULL),
(602, 32, 22, 24, NULL),
(603, 33, 22, 11, NULL),
(604, 34, 22, 23, NULL),
(605, 35, 22, 0, NULL),
(606, 36, 22, 23, NULL),
(607, 37, 22, 0, NULL),
(608, 38, 22, 11, NULL),
(609, 39, 22, 11, NULL),
(610, 40, 22, 11, NULL),
(611, 41, 22, 11, NULL),
(612, 42, 22, 11, NULL),
(613, 43, 22, 23, NULL),
(614, 44, 22, 0, NULL),
(615, 45, 22, 34, NULL),
(616, 46, 22, 34, NULL),
(617, 47, 22, 23, NULL),
(618, 48, 22, 34, NULL),
(619, 49, 22, 34, NULL),
(620, 50, 22, 25, NULL),
(621, 51, 22, 31, NULL),
(622, 52, 22, 31, NULL),
(623, 53, 22, 30, NULL),
(624, 54, 22, 31, NULL),
(625, 55, 22, 23, NULL),
(626, 56, 22, 0, NULL),
(627, 57, 22, 25, NULL),
(628, 58, 23, 15, NULL),
(629, 58, 24, 7, NULL),
(630, 58, 25, 0, NULL),
(631, 58, 26, 0, NULL),
(632, 58, 27, 0, NULL),
(633, 58, 28, 4, NULL),
(634, 65, 23, 0, NULL),
(635, 65, 24, 0, NULL),
(636, 65, 25, 22, NULL),
(637, 65, 26, 12, NULL),
(638, 65, 27, 0, NULL),
(639, 65, 28, 8, NULL),
(640, 68, 23, 0, NULL),
(641, 68, 24, 0, NULL),
(642, 68, 25, 0, NULL),
(643, 68, 26, 0, NULL),
(644, 68, 27, 0, NULL),
(645, 68, 28, 0, NULL),
(646, 61, 23, 0, NULL),
(647, 61, 24, 0, NULL),
(648, 61, 25, 18, NULL),
(649, 61, 26, 11, NULL),
(650, 61, 27, 20, NULL),
(651, 61, 28, 20, NULL),
(652, 66, 23, 0, NULL),
(653, 66, 24, 0, NULL),
(654, 66, 25, 0, NULL),
(655, 66, 26, 0, NULL),
(656, 66, 27, 0, NULL),
(657, 66, 28, 0, NULL),
(658, 69, 23, 10, NULL),
(659, 69, 24, 10, NULL),
(660, 69, 25, 15, NULL),
(661, 69, 26, 6, NULL),
(662, 69, 27, 6, NULL),
(663, 69, 28, 13, NULL),
(664, 59, 23, 0, NULL),
(665, 59, 24, 0, NULL),
(666, 59, 25, 0, NULL),
(667, 59, 26, 0, NULL),
(668, 59, 27, 0, NULL),
(669, 59, 28, 0, NULL),
(670, 62, 23, 15, NULL),
(671, 62, 24, 0, NULL),
(672, 62, 25, 0, NULL),
(673, 62, 26, 5, NULL),
(674, 62, 27, 0, NULL),
(675, 62, 28, 5, NULL),
(676, 60, 23, 0, NULL),
(677, 60, 24, 0, NULL),
(678, 60, 25, 5, NULL),
(679, 60, 26, 0, NULL),
(680, 60, 27, 0, NULL),
(681, 60, 28, 0, NULL),
(682, 64, 23, 20, NULL),
(683, 64, 24, 0, NULL),
(684, 64, 25, 5, NULL),
(685, 64, 26, 5, NULL),
(686, 64, 27, 0, NULL),
(687, 64, 28, 8, NULL),
(688, 67, 23, 0, NULL),
(689, 67, 24, 0, NULL),
(690, 67, 25, 0, NULL),
(691, 67, 26, 16, NULL),
(692, 67, 27, 1, NULL),
(693, 67, 28, 0, NULL),
(694, 63, 23, 0, NULL),
(695, 63, 24, 0, NULL),
(696, 63, 25, 20, NULL),
(697, 63, 26, 15, NULL),
(698, 63, 27, 0, NULL),
(699, 63, 28, 0, NULL),
(700, 78, 23, 18, NULL),
(701, 78, 24, 0, NULL),
(702, 78, 25, 22, NULL),
(703, 78, 26, 12, NULL),
(704, 78, 27, 20, NULL),
(705, 78, 28, 20, NULL),
(706, 81, 23, 5, NULL),
(707, 81, 24, 0, NULL),
(708, 81, 25, 10, NULL),
(709, 81, 26, 0, NULL),
(710, 81, 27, 0, NULL),
(711, 81, 28, 15, NULL),
(712, 70, 23, 0, NULL),
(713, 70, 24, 20, NULL),
(714, 70, 25, 18, NULL),
(715, 70, 26, 20, NULL),
(716, 70, 27, 0, NULL),
(717, 70, 28, 13, NULL),
(718, 74, 23, 0, NULL),
(719, 74, 24, 20, NULL),
(720, 74, 25, 0, NULL),
(721, 74, 26, 0, NULL),
(722, 74, 27, 0, NULL),
(723, 74, 28, 17, NULL),
(724, 77, 23, 17, NULL),
(725, 77, 24, 20, NULL),
(726, 77, 25, 22, NULL),
(727, 77, 26, 0, NULL),
(728, 77, 27, 20, NULL),
(729, 77, 28, 19, NULL),
(730, 79, 23, 15, NULL),
(731, 79, 24, 20, NULL),
(732, 79, 25, 22, NULL),
(733, 79, 26, 20, NULL),
(734, 79, 27, 0, NULL),
(735, 79, 28, 10, NULL),
(736, 76, 23, 5, NULL),
(737, 76, 24, 0, NULL),
(738, 76, 25, 5, NULL),
(739, 76, 26, 0, NULL),
(740, 76, 27, 0, NULL),
(741, 76, 28, 0, NULL),
(742, 73, 23, 0, NULL),
(743, 73, 24, 20, NULL),
(744, 73, 25, 0, NULL),
(745, 73, 26, 15, NULL),
(746, 73, 27, 0, NULL),
(747, 73, 28, 0, NULL),
(748, 75, 23, 10, NULL),
(749, 75, 24, 22, NULL),
(750, 75, 25, 18, NULL),
(751, 75, 26, 16, NULL),
(752, 75, 27, 10, NULL),
(753, 75, 28, 8, NULL),
(754, 72, 23, 15, NULL),
(755, 72, 24, 0, NULL),
(756, 72, 25, 27, NULL),
(757, 72, 26, 16, NULL),
(758, 72, 27, 5, NULL),
(759, 72, 28, 19, NULL),
(760, 71, 23, 12, NULL),
(761, 71, 24, 7, NULL),
(762, 71, 25, 0, NULL),
(763, 71, 26, 13, NULL),
(764, 71, 27, 0, NULL),
(765, 71, 28, 7, NULL),
(766, 80, 23, 0, NULL),
(767, 80, 24, 0, NULL),
(768, 80, 25, 15, NULL),
(769, 80, 26, 0, NULL),
(770, 80, 27, 0, NULL),
(771, 80, 28, 8, NULL),
(772, 84, 23, 4, NULL),
(773, 84, 24, 18, NULL),
(774, 84, 25, 20, NULL),
(775, 84, 26, 20, NULL),
(776, 84, 27, 16, NULL),
(777, 84, 28, 17, NULL),
(778, 85, 23, 15, NULL),
(779, 85, 24, 12, NULL),
(780, 85, 25, 22, NULL),
(781, 85, 26, 13, NULL),
(782, 85, 27, 0, NULL),
(783, 85, 28, 8, NULL),
(784, 83, 23, 10, NULL),
(785, 83, 24, 20, NULL),
(786, 83, 25, 15, NULL),
(787, 83, 26, 20, NULL),
(788, 83, 27, 17, NULL),
(789, 83, 28, 16, NULL),
(790, 88, 23, 18, NULL),
(791, 88, 24, 0, NULL),
(792, 88, 25, 22, NULL),
(793, 88, 26, 19, NULL),
(794, 88, 27, 28, NULL),
(795, 88, 28, 19, NULL),
(796, 87, 23, 18, NULL),
(797, 87, 24, 2, NULL),
(798, 87, 25, 22, NULL),
(799, 87, 26, 18, NULL),
(800, 87, 27, 28, NULL),
(801, 87, 28, 18, NULL),
(802, 86, 23, 19, NULL),
(803, 86, 24, 15, NULL),
(804, 86, 25, 0, NULL),
(805, 86, 26, 0, NULL),
(806, 86, 27, 10, NULL),
(807, 86, 28, 18, NULL),
(808, 82, 23, 10, NULL),
(809, 82, 24, 18, NULL),
(810, 82, 25, 0, NULL),
(811, 82, 26, 0, NULL),
(812, 82, 27, 1, NULL),
(813, 82, 28, 6, NULL),
(814, 58, 29, 2, NULL),
(815, 58, 30, 7, NULL),
(816, 58, 31, 8, NULL),
(817, 58, 32, 13, NULL),
(818, 59, 29, 0, NULL),
(819, 59, 30, 0, NULL),
(820, 59, 31, 0, NULL),
(821, 59, 32, 0, NULL),
(822, 60, 29, 0, NULL),
(823, 60, 30, 0, NULL),
(824, 60, 31, 0, NULL),
(825, 60, 32, 0, NULL),
(826, 61, 29, 14, NULL),
(827, 61, 30, 13, NULL),
(828, 61, 31, 8, NULL),
(829, 61, 32, 15, NULL),
(830, 62, 29, 9, NULL),
(831, 62, 30, 2, NULL),
(832, 62, 31, 8, NULL),
(833, 62, 32, 4, NULL),
(834, 63, 29, 2, NULL),
(835, 63, 30, 12, NULL),
(836, 63, 31, 12, NULL),
(837, 63, 32, 4, NULL),
(838, 64, 29, 9, NULL),
(839, 64, 30, 12, NULL),
(840, 64, 31, 8, NULL),
(841, 64, 32, 6, NULL),
(842, 65, 29, 15, NULL),
(843, 65, 30, 0, NULL),
(844, 65, 31, 14, NULL),
(845, 65, 32, 21, NULL),
(846, 66, 29, 0, NULL),
(847, 66, 30, 0, NULL),
(848, 66, 31, 0, NULL),
(849, 66, 32, 0, NULL),
(850, 67, 29, 13, NULL),
(851, 67, 30, 13, NULL),
(852, 67, 31, 13, NULL),
(853, 67, 32, 19, NULL),
(854, 68, 29, 14, NULL),
(855, 68, 30, 10, NULL),
(856, 68, 31, 13, NULL),
(857, 68, 32, 9, NULL),
(858, 69, 29, 15, NULL),
(859, 69, 30, 10, NULL),
(860, 69, 31, 7, NULL),
(861, 69, 32, 13, NULL),
(862, 70, 29, 14, NULL),
(863, 70, 30, 13, NULL),
(864, 70, 31, 15, NULL),
(865, 70, 32, 5, NULL),
(866, 71, 29, 9, NULL),
(867, 71, 30, 7, NULL),
(868, 71, 31, 8, NULL),
(869, 71, 32, 18, NULL),
(870, 72, 29, 14, NULL),
(871, 72, 30, 12, NULL),
(872, 72, 31, 11, NULL),
(873, 72, 32, 15, NULL),
(874, 73, 29, 14, NULL),
(875, 73, 30, 13, NULL),
(876, 73, 31, 11, NULL),
(877, 73, 32, 18, NULL),
(878, 74, 29, 14, NULL),
(879, 74, 30, 13, NULL),
(880, 74, 31, 11, NULL),
(881, 74, 32, 22, NULL),
(882, 75, 29, 14, NULL),
(883, 75, 30, 13, NULL),
(884, 75, 31, 10, NULL),
(885, 75, 32, 18, NULL),
(886, 76, 29, 0, NULL),
(887, 76, 30, 2, NULL),
(888, 76, 31, 8, NULL),
(889, 76, 32, 2, NULL),
(890, 77, 29, 14, NULL),
(891, 77, 30, 13, NULL),
(892, 77, 31, 13, NULL),
(893, 77, 32, 27, NULL),
(894, 78, 29, 19, NULL),
(895, 78, 30, 13, NULL),
(896, 78, 31, 9, NULL),
(897, 78, 32, 21, NULL),
(898, 79, 29, 9, NULL),
(899, 79, 30, 13, NULL),
(900, 79, 31, 15, NULL),
(901, 79, 32, 6, NULL),
(902, 80, 29, 0, NULL),
(903, 80, 30, 12, NULL),
(904, 80, 31, 12, NULL),
(905, 80, 32, 12, NULL),
(906, 81, 29, 0, NULL),
(907, 81, 30, 10, NULL),
(908, 81, 31, 7, NULL),
(909, 81, 32, 14, NULL),
(910, 82, 29, 9, NULL),
(911, 82, 30, 13, NULL),
(912, 82, 31, 11, NULL),
(913, 82, 32, 26, NULL),
(914, 83, 29, 18, NULL),
(915, 83, 30, 13, NULL),
(916, 83, 31, 15, NULL),
(917, 83, 32, 9, NULL),
(918, 84, 29, 14, NULL),
(919, 84, 30, 12, NULL),
(920, 84, 31, 15, NULL),
(921, 84, 32, 5, NULL),
(922, 85, 29, 10, NULL),
(923, 85, 30, 8, NULL),
(924, 85, 31, 11, NULL),
(925, 85, 32, 9, NULL),
(926, 86, 29, 14, NULL),
(927, 86, 30, 5, NULL),
(928, 86, 31, 10, NULL),
(929, 86, 32, 15, NULL),
(930, 87, 29, 18, NULL),
(931, 87, 30, 13, NULL),
(932, 87, 31, 15, NULL),
(933, 87, 32, 9, NULL),
(934, 88, 29, 18, NULL),
(935, 88, 30, 13, NULL),
(936, 88, 31, 13, NULL),
(937, 88, 32, 7, NULL),
(938, 58, 33, 6, NULL),
(939, 59, 33, 0, NULL),
(940, 60, 33, 0, NULL),
(941, 61, 33, 0, NULL),
(942, 62, 33, 9, NULL),
(943, 63, 33, 6, NULL),
(944, 64, 33, 11, NULL),
(945, 65, 33, 12, NULL),
(946, 66, 33, 0, NULL),
(947, 67, 33, 23, NULL),
(948, 68, 33, 10, NULL),
(949, 69, 33, 12, NULL),
(950, 70, 33, 19, NULL),
(951, 71, 33, 11, NULL),
(952, 72, 33, 0, NULL),
(953, 73, 33, 0, NULL),
(954, 74, 33, 0, NULL),
(955, 75, 33, 0, NULL),
(956, 76, 33, 23, NULL),
(957, 77, 33, 9, NULL),
(958, 78, 33, 19, NULL),
(959, 79, 33, 19, NULL),
(960, 80, 33, 9, NULL),
(961, 81, 33, 9, NULL),
(962, 82, 33, 19, NULL),
(963, 83, 33, 20, NULL),
(964, 84, 33, 17, NULL),
(965, 85, 33, 12, NULL),
(966, 86, 33, 24, NULL),
(967, 87, 33, 24, NULL),
(968, 88, 33, 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `email`, `password`, `department_id`) VALUES
(111111, 'Mr John', 'faculty@iub.edu.bd', '12345678', 'cse'),
(222222, 'Mr Smith', 'faculty2@iub.edu.bd', '12345678', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `id` int(11) NOT NULL,
  `indx` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plo`
--

INSERT INTO `plo` (`id`, `indx`, `name`, `details`, `program_id`) VALUES
(1, 1, 'Knowledge', NULL, 1),
(2, 2, 'Requirement Analysis', NULL, 1),
(3, 3, 'Problem Analysis', NULL, 1),
(4, 4, 'Design', NULL, 1),
(5, 5, 'Problem Solving', NULL, 1),
(6, 6, 'Implementation', NULL, 1),
(7, 7, 'Experiment and Analysis', NULL, 1),
(8, 8, 'Community Engagement & Engg.', NULL, 1),
(9, 9, 'Teamwork', NULL, 1),
(10, 10, 'Communication', NULL, 1),
(11, 11, 'Self-Motivated', NULL, 1),
(12, 12, 'Ethics', NULL, 1),
(13, 13, 'Process Management', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `total_credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `name`, `department_id`, `total_credits`) VALUES
(1, 'BSc', 'cse', 120);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dean` varchar(255) DEFAULT NULL,
  `dean_id` int(11) DEFAULT NULL,
  `university_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name`, `dean`, `dean_id`, `university_id`) VALUES
(1, 'School of Engineering, Technology & Sciences', 'Mr John', NULL, 'iub');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `num` varchar(10) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `num`, `semester`, `course_id`, `faculty_id`) VALUES
(1, 'A', 'Summer-2021', 'cse-303', 111111),
(2, 'B', 'Summer-2021', 'cse-303', 111111),
(3, 'C', 'Summer-2021', 'cse-303', 222222);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `password`, `program_id`) VALUES
(1416455, 'Student1', '1416455@iub.edu.bd', '12345678', 1),
(1528882, 'Student3', '1528882@iub.edu.bd', '12345678', 1),
(1579288, 'Student2', '1579288@iub.edu.bd', '12345678', 1),
(1612985, 'Student18', '1612985@iub.edu.bd', '12345678', 1),
(1613273, 'Student17', '1613273@iub.edu.bd', '12345678', 1),
(1614142, 'Student24', '1614142@iub.edu.bd', '12345678', 1),
(1614733, 'Student27', '1614733@iub.edu.bd', '12345678', 1),
(1616161, 'Student8', '1616161@iub.edu.bd', '12345678', 1),
(1622731, 'Student21', '1622731@iub.edu.bd', '12345678', 1),
(1623112, 'Student19', '1623112@iub.edu.bd', '12345678', 1),
(1625654, 'Student5', '1625654@iub.edu.bd', '12345678', 1),
(1633554, 'Student9', '1633554@iub.edu.bd', '12345678', 1),
(1634352, 'Student29', '1634352@iub.edu.bd', '12345678', 1),
(1641252, 'Student15', '1641252@iub.edu.bd', '12345678', 1),
(1645333, 'Student10', '1645333@iub.edu.bd', '12345678', 1),
(1646434, 'Student23', '1646434@iub.edu.bd', '12345678', 1),
(1653725, 'Student4', '1653725@iub.edu.bd', '12345678', 1),
(1654432, 'Student25', '1654432@iub.edu.bd', '12345678', 1),
(1661638, 'Student30', '1661638@iub.edu.bd', '12345678', 1),
(1662147, 'Student12', '1662147@iub.edu.bd', '12345678', 1),
(1665491, 'Student28', '1665491@iub.edu.bd', '12345678', 1),
(1665555, 'Student7', '1665555@iub.edu.bd', '12345678', 1),
(1668314, 'Student20', '1668314@iub.edu.bd', '12345678', 1),
(1669953, 'Student6', '1669953@iub.edu.bd', '12345678', 1),
(1674181, 'Student14', '1674181@iub.edu.bd', '12345678', 1),
(1678812, 'Student26', '1678812@iub.edu.bd', '12345678', 1),
(1686272, 'Student31', '1686272@iub.edu.bd', '12345678', 1),
(1691291, 'Student11', '1691291@iub.edu.bd', '12345678', 1),
(1691483, 'Student13', '1691483@iub.edu.bd', '12345678', 1),
(1695837, 'Student16', '1695837@iub.edu.bd', '12345678', 1),
(1696326, 'Student22', '1696326@iub.edu.bd', '12345678', 1),
(1711619, 'Student67', '1711619@iub.edu.bd', '12345678', 1),
(1711729, 'Student69', '1711729@iub.edu.bd', '12345678', 1),
(1712983, 'Student61', '1712983@iub.edu.bd', '12345678', 1),
(1715578, 'Student54', '1715578@iub.edu.bd', '12345678', 1),
(1718437, 'Student62', '1718437@iub.edu.bd', '12345678', 1),
(1728125, 'Student41', '1728125@iub.edu.bd', '12345678', 1),
(1728139, 'Student66', '1728139@iub.edu.bd', '12345678', 1),
(1728439, 'Student60', '1728439@iub.edu.bd', '12345678', 1),
(1729416, 'Student32', '1729416@iub.edu.bd', '12345678', 1),
(1731817, 'Student50', '1731817@iub.edu.bd', '12345678', 1),
(1731852, 'Student52', '1731852@iub.edu.bd', '12345678', 1),
(1736425, 'Student59', '1736425@iub.edu.bd', '12345678', 1),
(1737824, 'Student64', '1737824@iub.edu.bd', '12345678', 1),
(1742892, 'Student57', '1742892@iub.edu.bd', '12345678', 1),
(1743714, 'Student39', '1743714@iub.edu.bd', '12345678', 1),
(1745484, 'Student55', '1745484@iub.edu.bd', '12345678', 1),
(1747457, 'Student40', '1747457@iub.edu.bd', '12345678', 1),
(1752538, 'Student51', '1752538@iub.edu.bd', '12345678', 1),
(1754681, 'Student45', '1754681@iub.edu.bd', '12345678', 1),
(1759787, 'Student38', '1759787@iub.edu.bd', '12345678', 1),
(1762565, 'Student71', '1762565@iub.edu.bd', '12345678', 1),
(1763881, 'Student33', '1763881@iub.edu.bd', '12345678', 1),
(1766156, 'Student48', '1766156@iub.edu.bd', '12345678', 1),
(1766176, 'Student53', '1766176@iub.edu.bd', '12345678', 1),
(1768463, 'Student43', '1768463@iub.edu.bd', '12345678', 1),
(1769463, 'Student47', '1769463@iub.edu.bd', '12345678', 1),
(1772947, 'Student49', '1772947@iub.edu.bd', '12345678', 1),
(1773277, 'Student37', '1773277@iub.edu.bd', '12345678', 1),
(1773384, 'Student70', '1773384@iub.edu.bd', '12345678', 1),
(1778274, 'Student35', '1778274@iub.edu.bd', '12345678', 1),
(1781682, 'Student34', '1781682@iub.edu.bd', '12345678', 1),
(1783512, 'Student42', '1783512@iub.edu.bd', '12345678', 1),
(1784847, 'Student63', '1784847@iub.edu.bd', '12345678', 1),
(1788337, 'Student58', '1788337@iub.edu.bd', '12345678', 1),
(1789481, 'Student68', '1789481@iub.edu.bd', '12345678', 1),
(1791753, 'Student56', '1791753@iub.edu.bd', '12345678', 1),
(1795656, 'Student36', '1795656@iub.edu.bd', '12345678', 1),
(1797625, 'Student44', '1797625@iub.edu.bd', '12345678', 1),
(1797789, 'Student65', '1797789@iub.edu.bd', '12345678', 1),
(1798883, 'Student46', '1798883@iub.edu.bd', '12345678', 1),
(1834433, 'Student83', '1834433@iub.edu.bd', '12345678', 1),
(1835298, 'Student75', '1835298@iub.edu.bd', '12345678', 1),
(1835874, 'Student76', '1835874@iub.edu.bd', '12345678', 1),
(1842333, 'Student88', '1842333@iub.edu.bd', '12345678', 1),
(1845457, 'Student85', '1845457@iub.edu.bd', '12345678', 1),
(1849651, 'Student77', '1849651@iub.edu.bd', '12345678', 1),
(1855787, 'Student86', '1855787@iub.edu.bd', '12345678', 1),
(1863951, 'Student74', '1863951@iub.edu.bd', '12345678', 1),
(1868128, 'Student84', '1868128@iub.edu.bd', '12345678', 1),
(1872128, 'Student78', '1872128@iub.edu.bd', '12345678', 1),
(1873255, 'Student82', '1873255@iub.edu.bd', '12345678', 1),
(1877262, 'Student81', '1877262@iub.edu.bd', '12345678', 1),
(1886577, 'Student80', '1886577@iub.edu.bd', '12345678', 1),
(1887973, 'Student79', '1887973@iub.edu.bd', '12345678', 1),
(1892367, 'Student73', '1892367@iub.edu.bd', '12345678', 1),
(1893863, 'Student87', '1893863@iub.edu.bd', '12345678', 1),
(1898334, 'Student72', '1898334@iub.edu.bd', '12345678', 1);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `vc` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `name`, `address`, `city`, `country`, `vc`, `email`, `phone`) VALUES
('iub', 'Independent University, Bangladesh', 'Plot 16 Block B, Aftabuddin Ahmed Road,  Bashundhara R/A', 'Dhaka', 'Bangladesh', 'Tanweer Hasan', 'info@iub.edu.bd', '+91215611554');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plo_id` (`plo_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollment_id` (`enrollment_id`),
  ADD KEY `assessment_id` (`assessment_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `plo`
--
ALTER TABLE `plo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `co`
--
ALTER TABLE `co`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;

--
-- AUTO_INCREMENT for table `plo`
--
ALTER TABLE `plo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`);

--
-- Constraints for table `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `co`
--
ALTER TABLE `co`
  ADD CONSTRAINT `co_ibfk_1` FOREIGN KEY (`plo_id`) REFERENCES `plo` (`id`),
  ADD CONSTRAINT `co_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `co_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`assessment_id`) REFERENCES `assessment` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `plo`
--
ALTER TABLE `plo`
  ADD CONSTRAINT `plo_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
