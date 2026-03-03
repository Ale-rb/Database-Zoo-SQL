-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2022 at 03:02 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `animali`
--

CREATE TABLE `animali` (
  `id_animale` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Specie` varchar(30) NOT NULL,
  `Età` decimal(10,0) NOT NULL,
  `Responsabile` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animali`
--

INSERT INTO `animali` (`id_animale`, `Nome`, `Specie`, `Età`, `Responsabile`) VALUES
(1, 'Benny', 'Leopardo', '7', 5),
(2, 'Bonny', 'Ghepardo', '5', 7),
(3, 'Brad', 'Leone bianco', '4', 5),
(4, 'Fil', 'Leopardo', '2', 5),
(5, 'Fred', 'Koala', '8', 6),
(6, 'Jonny', 'Koala', '5', 6),
(7, 'Kimba ', 'Rinoceronte', '6', 4),
(8, 'Mike', 'Lince', '6', 7),
(9, 'Red', 'Giraffa', '7', 1),
(10, 'Rosco', 'Tigre', '5', 8);

-- --------------------------------------------------------

--
-- Table structure for table `cibi`
--

CREATE TABLE `cibi` (
  `id_cibo` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Prezzo` decimal(10,0) NOT NULL,
  `Marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cibi`
--

INSERT INTO `cibi` (`id_cibo`, `Nome`, `Prezzo`, `Marca`) VALUES
(1, 'Bistecche', '50', 'Monge'),
(2, 'Frutta', '45', 'Valfrutta'),
(3, 'Gemme Eucalipto', '80', 'Eucaly'),
(4, 'Mele', '25', 'Golden');

-- --------------------------------------------------------

--
-- Table structure for table `cibi_animali`
--

CREATE TABLE `cibi_animali` (
  `id_animale` int(10) UNSIGNED NOT NULL,
  `id_cibo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cibi_animali`
--

INSERT INTO `cibi_animali` (`id_animale`, `id_cibo`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(10, 1),
(7, 2),
(5, 3),
(6, 3),
(9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `responsabili`
--

CREATE TABLE `responsabili` (
  `id_responsabile` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Cognome` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `responsabili`
--

INSERT INTO `responsabili` (`id_responsabile`, `Nome`, `Cognome`, `Email`) VALUES
(1, 'Fabrizio', 'Del Bufalo', 'delbufa@hotmail.it'),
(2, 'Federica', 'Damiani', 'dami23@hotmail.com'),
(3, 'Federico', 'Fabbeni ', 'fabfede@gmail.com'),
(4, 'Francesca ', 'Lobello', 'lobels@gmail.com'),
(5, 'Loredana', 'Desimei ', 'desime@gmail.it'),
(6, 'Marco ', 'Bellini', 'bellin@gmail.com'),
(7, 'Martina ', 'Pargini', 'pargen@hotmail.it'),
(8, 'Mattia ', 'Forcu', 'matforc@gmail.it');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animali`
--
ALTER TABLE `animali`
  ADD PRIMARY KEY (`id_animale`),
  ADD KEY `Responsabile` (`Responsabile`);

--
-- Indexes for table `cibi`
--
ALTER TABLE `cibi`
  ADD PRIMARY KEY (`id_cibo`);

--
-- Indexes for table `cibi_animali`
--
ALTER TABLE `cibi_animali`
  ADD PRIMARY KEY (`id_animale`,`id_cibo`),
  ADD KEY `cibi_animali_ibfk_2` (`id_cibo`);

--
-- Indexes for table `responsabili`
--
ALTER TABLE `responsabili`
  ADD PRIMARY KEY (`id_responsabile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animali`
--
ALTER TABLE `animali`
  MODIFY `id_animale` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cibi`
--
ALTER TABLE `cibi`
  MODIFY `id_cibo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `responsabili`
--
ALTER TABLE `responsabili`
  MODIFY `id_responsabile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animali`
--
ALTER TABLE `animali`
  ADD CONSTRAINT `animali_ibfk_1` FOREIGN KEY (`Responsabile`) REFERENCES `responsabili` (`id_responsabile`);

--
-- Constraints for table `cibi_animali`
--
ALTER TABLE `cibi_animali`
  ADD CONSTRAINT `cibi_animali_ibfk_1` FOREIGN KEY (`id_animale`) REFERENCES `animali` (`id_animale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cibi_animali_ibfk_2` FOREIGN KEY (`id_cibo`) REFERENCES `cibi` (`id_cibo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
