-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 24, 2022 at 06:59 AM
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
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_ID` int NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_ID`, `filename`) VALUES
(1, 'recipe_1.jpeg'),
(2, 'recipe_2.jpeg'),
(3, 'recipe_3.jpeg'),
(4, 'recipe_4.jpeg'),
(5, 'recipe_5.jpeg'),
(6, 'recipe_6.jpeg'),
(7, 'recipe_7.jpeg'),
(8, 'recipe_8.jpeg'),
(9, 'recipe_9.jpeg'),
(10, 'recipe_10.jpeg'),
(11, 'recipe_11.jpeg'),
(12, 'recipe_12.jpeg'),
(13, 'recipe_13.jpeg'),
(14, 'recipe_14.jpeg'),
(15, 'recipe_15.jpeg'),
(16, 'recipe_16.jpeg'),
(17, 'recipe_17.jpeg'),
(18, 'recipe_18.jpeg'),
(19, 'recipe_19.jpeg'),
(20, 'recipe_20.jpeg'),
(21, 'recipe_21.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
