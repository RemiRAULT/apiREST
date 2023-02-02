-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 02 fév. 2023 à 09:08
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apirest`
--

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

DROP TABLE IF EXISTS `etape`;
CREATE TABLE IF NOT EXISTS `etape` (
  `numero` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `etape` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `km` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarque` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etape`
--

INSERT INTO `etape` (`numero`, `date`, `etape`, `km`, `type`, `remarque`) VALUES
(1, 'VEN. 01/07/2022', 'COPENHAGUE > COPENHAGUE', 13, ' C.L.M INDIVIDUEL', ''),
(2, 'SAM. 02/07/2022', 'ROSKILDE > NYBORG', 199, ' PLAT', ''),
(3, 'DIM. 03/07/2022', 'VEJLE > SØNDERBORG', 182, ' PLAT', ''),
(4, 'MAR. 05/07/2022', 'DUNKERQUE > CALAIS', 172, ' ACCIDENTÉE', ''),
(5, 'MER. 06/07/2022', 'LILLE MÉTROPOLE > ARENBERG PORTE DU HAINAUT', 155, ' ACCIDENTÉE', ''),
(6, 'JEU. 07/07/2022', 'BINCHE > LONGWY', 220, ' ACCIDENTÉE', 'étape la plus longue'),
(7, 'VEN. 08/07/2022', 'TOMBLAINE > LA SUPER PLANCHE DES BELLES FILLES', 176, ' MONTAGNE', ''),
(8, 'SAM. 09/07/2022', 'DOLE > LAUSANNE', 184, ' ACCIDENTÉE', ''),
(9, 'DIM. 10/07/2022', 'AIGLE > CHÂTEL LES PORTES DU SOLEIL', 183, ' MONTAGNE', ''),
(10, 'LUN. 11/07/2022', 'MORZINE LES PORTES DU SOLEIL', 0, ' REPOS', '');

-- --------------------------------------------------------

--
-- Structure de la table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `published`) VALUES
(1, 'Node Rest APIs', 'Tut#3 Description', 0),
(2, 'RAULTCORP', 'MaxTunas', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(6, '', ''),
(7, 'dzdzdzq', 'qscegesr'),
(8, 'cwscwscdw', 'password'),
(9, 'reqdq@dzqdqz', '5555'),
(10, 'remi', 'rault');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
