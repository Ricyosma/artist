-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 05:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `artiest`
--

CREATE TABLE `artiest` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prijs` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artiest`
--

INSERT INTO `artiest` (`id`, `naam`, `genre`, `prijs`) VALUES
(1, 'Wayward Daughters', 'Rock', 12),
(2, 'Primals', 'rock, hard rock', 50);

-- --------------------------------------------------------

--
-- Table structure for table `optreden`
--

CREATE TABLE `optreden` (
  `id` int(11) NOT NULL,
  `artiest_id_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `aanvang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zaal` int(11) NOT NULL,
  `max_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optreden`
--

INSERT INTO `optreden` (`id`, `artiest_id_id`, `datum`, `aanvang`, `zaal`, `max_seats`) VALUES
(1, 1, '2020-01-01', '12:00', 1, 250),
(2, 2, '2021-06-10', '12:00', 2, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artiest`
--
ALTER TABLE `artiest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optreden`
--
ALTER TABLE `optreden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6286F65D1FDB2131` (`artiest_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artiest`
--
ALTER TABLE `artiest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `optreden`
--
ALTER TABLE `optreden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `optreden`
--
ALTER TABLE `optreden`
  ADD CONSTRAINT `FK_6286F65D1FDB2131` FOREIGN KEY (`artiest_id_id`) REFERENCES `artiest` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
