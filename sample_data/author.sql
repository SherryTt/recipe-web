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
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_ID` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_ID`, `name`, `email`, `password`) VALUES
(1, 'Martin', 'martin@gmail.com', '1234'),
(2, 'Lili', 'lili@gmail.com', '1234'),
(3, 'Galla', 'lili@hotmail.com', '1234'),
(4, 'David', 'david@gmail.com', '1234'),
(5, 'Fran', 'fran@gmail.com', '1234'),
(6, 'Jim', 'jim@hotmail.com', '1234'),
(7, 'Jack', 'Jack@gmail.com', '1234'),
(8, 'John', 'John@gmail.com', '1234'),
(9, 'Deb410', 'Deb410@gmail.com', '1234'),
(10, 'Elise', 'Elise@gmail.com', '1234'),
(11, 'Kelly', 'Kelly@outlook.com', '1234'),
(12, 'Haley', 'Haley@gmail.com', '1234'),
(13, 'Msudjmk', 'Msudjmk@gmail.com', '1234'),
(14, 'Swfimik', 'Swfimik@gmail.com', '1234'),
(15, 'Helen', 'Helen@hotmail.com', '1234'),
(16, 'Rocky', 'Rocky@gmail.com', '1234'),
(17, 'Mia1203', 'Mia1203@gmail.com', '1234'),
(18, 'Nagi', 'Nagi@gmail.com', '1234'),
(19, 'Nicloe', 'Nicloe@hotmail.com', '1234'),
(20, 'Kim', 'Kim@hotmail.com', '1234'),
(21, 'Yonantan', 'Yonantan@hotmail.com', '1234'),
(22, 'Jamine', 'Jamine@gmail.com', '1234'),
(23, 'Eleven', 'Eleven@gmail.com', '1234'),
(24, 'AndyWang', 'AndyWang@gmail.com', '1234'),
(25, 'YuYiYe', 'YuYiYe@hotmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
