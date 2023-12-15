-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 déc. 2023 à 12:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` int(11) NOT NULL,
  `titre` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `description`, `date_publication`) VALUES
(1, 'un exemple d\'un titre', 'voici la description', '2023-11-28 10:50:39'),
(2, 'إصدار لعبة', 'الساعة 12 بمنتصف الليل بتوقيت مكة المكرمة سيكون موعدنا مع البث الخاص لإستعراض لعبة Dragon’s Dogma 2 من شركة كابكوم والذي يستمر لمدة 15 دقيقة.', '2023-11-28 11:40:36'),
(3, 'DSI', 'developement systeme  d\'information', '2023-12-13 16:28:46'),
(4, 'sgsfsf', 'qsqsfqfqsfsrg', '2023-12-13 16:30:33'),
(5, 'DSI', 'qzoifhqsd', '2023-12-13 16:39:03'),
(6, 'Marvel’s Blade', 'شرت Bethesda على موقعها الرسمي تدوينة تفيد بأن لعبة Marvel’s Blade ستكون أول لعبة لاستوديو آركين من منظور الشخص الثالث', '2023-12-13 22:27:06'),
(7, 'le baha', 'sqfhwskfjh', '2023-12-14 12:11:54');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
