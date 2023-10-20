-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 mai 2023 à 17:26
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
-- Base de données : `wf3_php_intermediaire_julien`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `type` enum('location','vente','','') NOT NULL,
  `price` int(11) NOT NULL,
  `reservation_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(3, 'Pied à terre en Beauce', 'Petit studio avec vue sur le fleuve', 28000, 'Chartres', 'location', 750, NULL),
(4, 'Charmante villa', 'Grande maison datant de la révolution. Ancien vignoble', 33000, 'Bordeaux', 'vente', 200000, NULL),
(5, 'Studio pour les bonnes', 'Petit 9m2 pour les étudiants au 8ème étage. Idéal pour faire du sport', 75007, 'Paris', 'location', 900, NULL),
(6, 'Maison de campagne', 'Maison 700m2 avec 1 hectare de terrain. Prix à débattre', 55000, 'VilleTest', 'vente', 250000, NULL),
(7, 'Appartement mignon', 'Petite surface de 25m2 avec studette et totalemen rénové.', 69000, 'Marly Gomont', 'location', 550, NULL),
(8, 'Titre 6', 'Description 6', 6000, 'Ville6', 'location', 6000, NULL),
(9, 'Titre 7', 'Description 7', 7000, 'Ville 7', 'location', 7000, NULL),
(10, 'Titre 8', 'Description 8', 8000, 'Ville 8', 'location', 8000, NULL),
(11, 'Titre 9', 'Description 9', 9000, 'Ville 9', 'location', 9000, NULL),
(12, 'Titre 10', 'Description 10', 10000, 'Ville 10', 'location', 10, NULL),
(13, 'Titre 11', 'Description 11', 11000, 'Ville 11', 'location', 11, NULL),
(14, 'Titre 12', 'Description 12', 12000, 'Ville 12', 'location', 12, NULL),
(15, 'Titre 13', 'Description 13', 13000, 'Ville 13', 'location', 13, NULL),
(16, 'Titre 14', 'Description 14', 14000, 'Ville 14', 'location', 14, NULL),
(18, 'Titre 15', 'Description 15', 15000, 'Ville 15', 'location', 15, NULL),
(19, 'Titre 16', 'Description 16', 16000, 'Ville 16', 'location', 16, NULL),
(20, 'Titre 17', 'Description 17', 16000, 'Ville 17', 'location', 17, NULL),
(21, 'Titre 18', 'Description 18', 18000, 'Ville 18', 'location', 18, NULL),
(22, 'Titre 19', 'Description 19', 19000, 'Ville 19', 'location', 19, NULL),
(23, 'Titre 20', 'Description 20', 20000, 'Ville 20', 'location', 20, NULL),
(24, 'Titre 20', 'Description 20', 20000, 'Ville 20', 'location', 20, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
