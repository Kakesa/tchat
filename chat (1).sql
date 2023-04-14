-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 14 avr. 2023 à 11:18
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `dateco` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `nom`, `prix`, `descr`, `dateco`) VALUES
(1, ' ndbvh', 768, '?WBCWJH', '2022-10-10 13:29:37'),
(2, ' ndbvh', 768, '?WBCWJH', '2022-10-10 13:31:11'),
(3, ' naomie', 5, 'jfshkfhks', '2022-10-10 13:34:39');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `email`, `msg`, `date`) VALUES
(4, 'hon@gmail.com', 'bonjour eli', '2023-04-06 12:17:07'),
(5, 'hon@gmail.com', 'bonjour hon cava', '2023-04-06 12:17:34'),
(6, 'hon@gmail.com', 'oui je vais bien merci', '2023-04-06 12:18:15'),
(7, 'hon@gmail.com', 'tu etait a la fac', '2023-04-06 12:18:33'),
(8, 'hon@gmail.com', 'n b;jb;jk\r\n', '2023-04-06 12:20:49'),
(9, 'hon@gmail.com', ',,,;,;', '2023-04-06 12:21:07'),
(10, 'hon@gmail.com', ' ,nn', '2023-04-06 12:21:27'),
(11, 'hon@gmail.com', 'BBNNB', '2023-04-06 12:23:40'),
(12, 'hon@gmail.com', 'BBNNB', '2023-04-06 12:23:40'),
(13, 'hon@gmail.com', 'BNNN', '2023-04-06 12:23:48'),
(14, 'hor@gmail.com', 'salut espoir ', '2023-04-06 12:27:57'),
(15, 'hor@gmail.com', 'salut hor ca va', '2023-04-06 12:28:25'),
(16, 'espoirkakesa2@gmail.com', 'bbbb', '2023-04-06 12:29:28'),
(17, 'espoirkakesa2@gmail.com', 'ffff', '2023-04-06 12:29:41'),
(18, 'espoirkakesa2@gmail.com', 'vhhjhhj', '2023-04-06 12:31:54'),
(19, 'espoirkakesa2@gmail.com', ' nvn', '2023-04-06 12:32:03'),
(20, 'espoirkakesa2@gmail.com', 'cg g', '2023-04-06 12:32:38'),
(21, 'taj@gmail.com', '.....', '2023-04-06 13:42:28'),
(22, 'taj@gmail.com', 'VVVCXX', '2023-04-06 13:46:47'),
(23, 'taj@gmail.com', ' VN CG GGU ', '2023-04-06 14:00:55'),
(24, 'taj@gmail.com', 'VVVCXX', '2023-04-07 22:18:04'),
(25, 'taj@gmail.com', ' VN CG GGU ', '2023-04-07 22:18:06'),
(26, 'taj@gmail.com', 'nv vbc', '2023-04-07 22:19:24'),
(27, 'taj@gmail.com', 'je suis tellement désolé pour cz', '2023-04-07 22:19:59'),
(28, 'hor@gmail.com', ' VN CG GGU ', '2023-04-08 15:21:14'),
(29, 'espoirkakesa2@gmail.com', 'cc binji', '2023-04-08 15:23:59'),
(30, 'espoirkakesa2@gmail.com', 'salut hop', '2023-04-08 15:24:13'),
(31, 'espoirkakesa2@gmail.com', 'jwdjcbgsjkhcgcshgjwscgvkwhjkdcfvwdjvcfgwxbfbv, bvkhcfodtusjg, ', '2023-04-08 15:29:22'),
(32, 'espoirkakesa2@gmail.com', 'nkfkcjklwnhjsxwjdfhwjhfwxjhd', '2023-04-08 15:29:36'),
(33, 'muzola@gmail.com', 'salut espoir ', '2023-04-11 09:17:48'),
(34, 'muzola@gmail.com', 'salut ethyg h ca va ', '2023-04-11 09:18:10'),
(35, 'emaa@gmail.com', 'SALUT EMMA', '2023-04-12 19:28:01');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` int(25) NOT NULL,
  `dat` date DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `nombre` int(100) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `nom`, `email`, `tel`, `dat`, `tim`, `nombre`, `msg`) VALUES
(2, 'lumeda', 'lu@gmail.com', 828863897, '2022-10-10', '09:22:13', 3, 'jcjc'),
(3, 'lumeda', 'jj@gmail.com', 828863897, '2022-10-10', '09:24:55', 3, 'je suis'),
(4, 'christ', 'c@gmail.com', 828863897, '2022-10-10', '09:47:32', 14, 'nnnn');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mdp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `mdp`) VALUES
(3, 'espoirkakesa2@gmail.com', 'JehovahDieu1'),
(5, 'hor@gmail.com', 'hope'),
(13, 'kkk@gmail.com', 'bbb'),
(14, 'asnath@gmail.com', '123'),
(15, 'espoirkakesa@gmail.com', '1111'),
(16, 'espoirkake@gmail.com', '11'),
(17, 'kuza@gmail.com', '1122'),
(18, 'exaub@gmail.com', '11111'),
(19, 'taj@gmail.com', '1212'),
(20, 'hon@gmail.com', '11111'),
(21, 'Elie@gmail.com', '11111'),
(22, 'benji@gmail.com', '111111'),
(23, 'muzola@gmail.com', '11111111'),
(24, 'emaa@gmail.com', '1111');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
