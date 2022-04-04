-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 24, 2022 at 07:00 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipeDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe_author`
--

CREATE TABLE `recipe_author` (
  `recipe_ID` int DEFAULT NULL,
  `author_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe_author`
--

INSERT INTO `recipe_author` (`recipe_ID`, `author_ID`) VALUES
(1, 2),
(2, 15),
(3, 15),
(4, 2),
(5, 22),
(6, 1),
(7, 18),
(8, 10),
(9, 19),
(10, 13),
(11, 4),
(12, 19),
(13, 2),
(14, 8),
(15, 16),
(16, 10),
(17, 4),
(18, 6),
(19, 21),
(20, 20),
(21, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe_author`
--
ALTER TABLE `recipe_author`
  ADD UNIQUE KEY `recipe_ID` (`recipe_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
