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
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_ID` int NOT NULL,
  `recipe_Name` varchar(255) DEFAULT NULL,
  `star_rated` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_ID`, `recipe_Name`, `star_rated`) VALUES
(1, 'Sesame Beef & Wombok Stir-Fry', 4.7),
(2, 'Red Curry Pork Rissoles & Coconut Rice', 4.6),
(3, 'QuickSweet Chilli-Lime Chicken', 4.8),
(4, 'Mexican Beef Enchiladas With Corn Salsa', 4.8),
(5, 'Southeast Asian Tofu & Udon Stir-Fry', 4.5),
(6, 'Beef & Veggie Cottage Pie', 4.5),
(7, 'Mega Mozzarella-\r\nStuffed Burgers', 4.8),
(8, 'Crispy Garlicky \r\nChicken ', 4.8),
(9, 'Quick Steak Stir-Fry ', 4.6),
(10, 'Easy Chicken Okonomiyaki', 4.9),
(11, 'Bacon Rarebit Burger', 4.4),
(12, 'Bubble & Squeak \r\nHamburgs', 4.5),
(13, 'Brilliant Veggie Burger', 4.8),
(14, 'Haloumi & Tomato \r\nRelish Burger', 4.7),
(15, 'Ultimate British burger', 4.7),
(16, 'Satay Burgers', 4.5),
(17, 'Crazy Good Pork \r\nBurger', 4.5),
(18, 'Wild Boar Burgers', 4.8),
(19, 'Smoky Chorizo Salmon', 4.8),
(20, 'Pork & Mustard-Thyme Sauce', 4.8),
(21, 'Bacon,Zucchini & \r\nCheddar Fritters', 4.9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
