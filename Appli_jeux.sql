-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 20, 2024 at 10:20 AM
-- Server version: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Appli_jeux`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `right_answer` tinyint(1) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `right_answer`, `reponse`) VALUES
(1, 1, 1, 'Real Madrid FC'),
(7, 1, 0, 'P.S.G'),
(8, 1, 0, 'Bayern Munich'),
(11, 2, 1, 'Miroslav Klose'),
(12, 2, 0, 'Just Fontaine'),
(13, 2, 0, 'Ronaldo'),
(14, 3, 0, 'Lionel Messi'),
(15, 3, 0, 'Sergio Ramos'),
(16, 3, 1, 'Cristiano Ronaldo'),
(17, 7, 1, 'Sadio Mane '),
(18, 7, 0, 'Éric Cantona'),
(19, 7, 0, 'Sergio Agüero'),
(20, 8, 0, 'Costa Rica, Nicaragua et Mexique'),
(21, 8, 1, 'États-Unis, Canada et Mexique'),
(22, 8, 0, 'Canada, Colombie et Mexique'),
(26, 9, 0, '1993-1994'),
(27, 9, 1, '1992-1993'),
(28, 9, 0, '1991-1992'),
(29, 10, 1, 'à l\'Euro 2016'),
(30, 10, 0, 'à l\'Euro 2012'),
(31, 10, 0, 'à l\'Euro 2020'),
(32, 11, 0, 'Thomas Müller'),
(33, 11, 0, 'Robert Lewandowski'),
(34, 11, 1, 'Gerd Muller'),
(35, 12, 1, 'Cristiano Ronaldo'),
(36, 12, 0, 'Samuel Eto\'o'),
(37, 12, 0, 'Zinedine Zidane'),
(38, 13, 0, 'ACF Fiorentina'),
(39, 13, 1, 'Juventus Football Club'),
(40, 13, 0, 'AS Roma');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`) VALUES
(1, 'Quel est le club qui a gagner le plus de Ligue des champions ?'),
(2, 'quel footballeur a marqué le plus de but en coupe du monde ?'),
(3, 'Quel footballeur a le plus de sélection ?'),
(7, 'Quel joueur a réalisé le triplé le plus rapide de la Premier League ?'),
(8, 'La Coupe du monde 2026 sera organisée dans trois pays différents. Pouvez-vous les nommer ?'),
(9, 'En quelle saison la Coupe d\'Europe a-t-elle été rebaptisée \"Ligue des champions\" ?'),
(10, 'En quelle année le championnat d\'Europe est-il passé de 16 à 24 équipes ?'),
(11, 'Avec 365 buts, qui détient le record du meilleur buteur de Bundesliga de tous les temps ?'),
(12, 'J\'ai porté les numéros 7, 17, 28 et 9 au cours de ma carrière, effectuant mes classes en Angleterre, en Espagne, en Italie et au Portugal.'),
(13, 'Dans le jeu vidéo FIFA 20, l\'équipe Piemonte Calcio représente quel club réel ?');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `user-id`, `score`) VALUES
(1, 8, '4'),
(2, 8, '6'),
(3, 8, '0'),
(4, 8, '0'),
(5, 8, '1'),
(6, 8, '0'),
(7, 8, '1'),
(8, 8, '0'),
(9, 8, '0'),
(10, 8, '1'),
(11, 8, '1'),
(12, 8, '0'),
(13, 8, '0'),
(14, 8, '0'),
(15, 8, '1'),
(16, 8, '1'),
(17, 8, '0'),
(18, 8, '0'),
(19, 8, '1'),
(20, 8, '1'),
(21, 8, '1'),
(22, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `password`) VALUES
(8, 'Abdel', '$2y$10$T/wA2MUlODkfV7FZnBkVYORA5iMzSqk.DxwljeYraQ42D02pJvAOW'),
(9, 'toi', '$2y$10$/JUXBmx9nDFyXRH51mcXl.pF2y5p38TuyefGcNWc.B.dmY7G9eFd2'),
(10, 'orlane', '$2y$10$dbMC9huTCc6RHd9DkGEVm.H8BTauHTCnv5Kw3bV.Ep7fKmMC8MDna'),
(11, 'yacine', '$2y$10$tNtkQCO.7VEop7RyezPLPevG5XK1xg1z8P9VqDqwioMzWQNv3fkNK'),
(12, 'ara', '$2y$10$XNnAWcn3ATr6cGJsUrtzTeDeF9UqsHr34ntZfCm3GYt/q9RgI2cQS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user-id` (`user-id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`user-id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
