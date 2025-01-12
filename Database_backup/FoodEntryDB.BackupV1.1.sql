-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2023 at 04:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FoodEntryDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_entries`
--

CREATE TABLE `food_entries` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `food` varchar(255) DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fats` float DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_entries`
--

INSERT INTO `food_entries` (`id`, `date`, `food`, `calories`, `protein`, `carbs`, `fats`, `userID`) VALUES
(1, '2023-03-08', 'Chicken Breast', 234, 34, 2, 5, 130),
(2, '2023-03-08', 'Hot Dog', 334, 34, 2, 5, 131),
(3, '2023-03-08', 'Hamburger', 434, 34, 2, 5, 131),
(4, '2023-03-08', 'French Fries', 534, 34, 2, 5, 130),
(5, '2023-03-08', 'Ice Cream', 634, 34, 2, 5, 131),
(6, '2023-03-08', 'Pizza', 300, 32, 55, 22, 130),
(7, '2023-03-08', 'Hotdog', 300, 22, 33, 23, 131),
(8, '2023-03-08', 'celery', 1, 2, 3, 4, 130);

-- --------------------------------------------------------
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `age` int(255) DEFAULT NULL,
  `gender` char(6) DEFAULT NULL,
  `activity_level` varchar(255) DEFAULT NULL,
  `goal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `weight`, `height`, `age`, `gender`, `activity_level`, `goal`) VALUES
(130, 'CatDaddy', 'Admin#1', 'cat@uga.edu', '107', '1.83', '44', 'Male', 'MedHighActivity', 'LoseWeight'),
(131, 'Tree', 'Admin#2', 'tree@me.com', '80', '1.68', '45', 'Female', 'MedLowActivity', 'GainWeight'),
(132, 'DaffyD', 'Admin#3', 'DaffyD@looneytunes.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'MaintainWeight'),
(133, 'BugsB', 'Admin#4', 'bugsbunny@looneytunes.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'LoseWeight'),
(134, 'WileyC', 'Admin#5', 'wileyc@looneytunes.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'GainWeight'),
(135, 'RoadrunnerB', 'Admin#6', 'rr@looneytunes.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'MaintainWeight'),
(136, 'DaisyD', 'Admin#7', 'daisyd@looneytunes.com', '107', '1.83', '44', 'Female', 'MedHighActivity', 'LoseWeight'),
(137, 'MickeyM', 'Admin#8', 'mickeym@disney.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'GainWeight'),
(138, 'MinneyM', 'Admin#9', 'mineym@disney.com', '107', '1.83', '44', 'Female', 'MedHighActivity', 'MaintainWeight'),
(139, 'FoghornL', 'Admin#10', 'foghornl@looneytunes.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'LoseWeight'),
(140, 'SnoopyD', 'Admin#11', 'snoopyd@peanuts.com', '107', '1.83', '44', 'Male', 'MedHighActivity', 'GainWeight');


--
-- Database Table: Food Entry DB
--

-- --------------------------------------------------------
--
-- Table structure for table `Recommended Values`
--

CREATE TABLE `recommended_values` (
  `id` int(11) NOT NULL,
  `fats` int(11) DEFAULT NULL,
  `carbs` int(11) DEFAULT NULL,
  `proteins` int(11) DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Providing recommended macro levels for default users (i.e., the creators)
--

INSERT INTO `recommended_values` (`id`, `fats`, `carbs`, `proteins`, `calories`, `userId`) VALUES
(130, 40, 60, 50, 2000, 130),
(131, 43, 68, 55, 2200, 131),
(132, 43, 68, 55, 2200, 132),
(133, 43, 68, 55, 2200, 133),
(134, 43, 68, 55, 2200, 134),
(135, 43, 68, 55, 2200, 135),
(136, 43, 68, 55, 2200, 136),
(137, 43, 68, 55, 2200, 137),
(138, 43, 68, 55, 2200, 138),
(139, 43, 68, 55, 2200, 139),
(140, 43, 68, 55, 2200, 140);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_entries`
--
ALTER TABLE `food_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `recommended_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userId2` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_entries`
--
ALTER TABLE `food_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

-- AUTO_INCREMENT for table `recommended_values`
ALTER TABLE `recommended_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_entries`
--
ALTER TABLE `food_entries`
  ADD CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

-- Constraints for table `recommended_values`
ALTER TABLE `recommended_values`
  ADD CONSTRAINT `fk_userId2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
