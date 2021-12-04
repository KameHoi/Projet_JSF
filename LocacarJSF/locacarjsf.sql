-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 24 mars 2021 à 20:49
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `locacarjsf`
--

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `ID` int(11) NOT NULL,
  `ID_Cities` int(11) UNSIGNED NOT NULL,
  `ID_Users` int(11) UNSIGNED NOT NULL,
  `Street` varchar(255) COLLATE utf8_bin NOT NULL,
  `Number` varchar(255) COLLATE utf8_bin NOT NULL,
  `Box` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`ID`, `ID_Cities`, `ID_Users`, `Street`, `Number`, `Box`) VALUES
(1, 1, 8, 'test', '15', NULL),
(3, 1, 10, 'alabama', '145', NULL),
(4, 1, 11, 'Mercedes', '10', '12'),
(5, 12, 12, 'blabla', '10', '');

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE `ads` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Cars` int(10) UNSIGNED NOT NULL,
  `ID_Users` int(10) UNSIGNED NOT NULL,
  `Price` double UNSIGNED NOT NULL,
  `Date_Start` datetime NOT NULL,
  `Date_End` datetime NOT NULL,
  `Type_Ads` enum('Sale','Leasing') COLLATE utf8_bin NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ads`
--

INSERT INTO `ads` (`ID`, `ID_Cars`, `ID_Users`, `Price`, `Date_Start`, `Date_End`, `Type_Ads`, `Label`, `IsActive`) VALUES
(1, 52, 8, 30000, '2021-03-17 09:17:42', '2021-04-17 08:17:42', 'Sale', 'Moka neuve', 1),
(2, 12, 8, 30000, '2021-03-19 09:18:01', '2021-04-19 08:18:01', 'Sale', 'Vw neuve', 1),
(3, 14, 10, 20000, '2021-03-17 10:47:01', '2021-04-17 10:47:01', 'Leasing', 'Touran en leasing ', 1),
(4, 16, 10, 22000, '2021-03-17 10:48:53', '2021-04-17 10:48:53', 'Sale', 'Bonne Opel citadine', 1),
(5, 53, 8, 70000, '2021-03-19 13:14:48', '2021-04-19 12:14:48', 'Leasing', 'BMW M3 à saisir !!!!', 1),
(6, 54, 8, 25000, '2021-03-20 10:36:38', '2021-04-20 09:36:38', 'Sale', 'Classe A 1 ans ', 1),
(7, 55, 10, 7000, '2021-03-22 17:47:00', '2021-04-22 16:47:00', 'Sale', '206 Bon état', 1),
(8, 60, 10, 1500, '2021-03-21 11:11:04', '2021-04-21 10:11:04', 'Sale', 'RENAULT CLIO 3 1.2 16V ANNÉE 2006', 1),
(9, 63, 8, 450, '2021-03-24 15:04:11', '2021-04-24 14:04:11', 'Sale', 'Laguna de collection', 1),
(10, 64, 8, 110000, '2021-03-24 20:22:50', '2021-04-24 19:22:50', 'Leasing', 'BMW i8 ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`ID`, `Label`) VALUES
(4, 'Audi'),
(3, 'BMW'),
(5, 'Mercedes'),
(1, 'Opel'),
(6, 'Peugeot'),
(7, 'Renault'),
(2, 'Volkswagen');

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Models` int(10) UNSIGNED NOT NULL,
  `ID_Cars_Types` int(10) UNSIGNED NOT NULL,
  `ID_Cars_GearBox` int(10) UNSIGNED NOT NULL,
  `ID_Cars_Fuels` int(10) UNSIGNED NOT NULL,
  `ID_Cars_Colors` int(10) UNSIGNED NOT NULL,
  `Release_Year` datetime NOT NULL,
  `HorsePower` int(10) UNSIGNED NOT NULL,
  `Kilometer` int(10) UNSIGNED NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`ID`, `ID_Models`, `ID_Cars_Types`, `ID_Cars_GearBox`, `ID_Cars_Fuels`, `ID_Cars_Colors`, `Release_Year`, `HorsePower`, `Kilometer`, `IsActive`) VALUES
(12, 4, 1, 1, 1, 2, '2014-02-01 11:00:00', 110, 90000, 1),
(13, 6, 2, 1, 1, 2, '2018-02-01 11:00:00', 140, 110000, 1),
(14, 1, 2, 1, 1, 2, '2011-02-09 11:00:00', 90, 12000, 1),
(15, 5, 1, 1, 1, 2, '2018-02-01 14:13:20', 140, 110000, 1),
(16, 2, 2, 1, 1, 2, '2020-10-05 10:00:00', 125, 150000, 1),
(17, 3, 1, 1, 1, 2, '2010-08-04 22:00:00', 99, 250000, 1),
(18, 7, 1, 1, 1, 1, '2010-07-01 10:00:00', 120, 99000, 1),
(19, 9, 2, 1, 1, 2, '2015-10-02 10:00:00', 110, 250000, 1),
(20, 7, 1, 1, 1, 2, '2021-02-28 11:00:00', 115, 25000, 1),
(21, 7, 1, 1, 1, 2, '2021-02-18 11:00:00', 110, 25000, 1),
(22, 9, 2, 1, 1, 2, '2005-05-21 10:00:00', 110, 1250000, 1),
(23, 7, 2, 1, 1, 2, '2021-02-06 11:00:00', 150, 125000, 1),
(24, 10, 2, 1, 1, 2, '2020-12-01 11:00:00', 110, 250000, 1),
(25, 8, 2, 1, 1, 2, '2020-12-08 11:00:00', 200, 150, 0),
(26, 7, 1, 1, 1, 1, '2020-11-10 11:00:00', 150, 25000, 1),
(27, 7, 1, 1, 1, 2, '2020-06-09 10:00:00', 250, 15000, 1),
(28, 11, 2, 1, 1, 2, '2005-07-15 10:00:00', 99, 250000, 1),
(29, 11, 2, 1, 1, 2, '2005-07-15 10:00:00', 99, 250000, 1),
(30, 11, 2, 1, 1, 2, '2005-07-15 10:00:00', 99, 250000, 1),
(31, 11, 2, 1, 1, 2, '2020-09-15 10:00:00', 125, 25000, 1),
(32, 7, 2, 1, 1, 1, '2020-09-01 10:00:00', 200, 15000, 1),
(33, 7, 1, 1, 1, 1, '2020-11-09 11:00:00', 250, 1250, 1),
(34, 7, 1, 2, 2, 1, '2020-12-06 11:00:00', 210, 5000, 1),
(35, 10, 1, 3, 3, 1, '2021-01-06 11:00:00', 200, 5000, 1),
(36, 12, 1, 1, 5, 2, '2021-02-12 11:00:00', 150, 100, 1),
(37, 12, 1, 2, 2, 2, '2021-03-01 11:00:00', 155, 5000, 1),
(38, 12, 1, 3, 2, 2, '2021-02-01 11:00:00', 155, 1000, 1),
(39, 12, 1, 3, 2, 2, '2021-02-01 11:00:00', 155, 1000, 1),
(40, 12, 1, 3, 2, 2, '2021-01-12 11:00:00', 155, 5000, 1),
(41, 12, 1, 2, 2, 2, '2021-03-01 11:00:00', 155, 500, 1),
(42, 12, 1, 1, 2, 2, '2021-03-06 11:00:00', 155, 5000, 1),
(43, 6, 2, 2, 2, 4, '2021-03-02 11:00:00', 110, 5000, 1),
(44, 6, 2, 2, 2, 4, '2021-03-02 11:00:00', 110, 5000, 1),
(45, 6, 2, 2, 2, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(46, 6, 2, 2, 1, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(47, 6, 2, 2, 1, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(48, 6, 2, 1, 1, 2, '2021-03-06 11:00:00', 110, 5000, 1),
(49, 6, 2, 2, 5, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(50, 6, 2, 1, 1, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(51, 6, 2, 2, 5, 4, '2021-03-06 11:00:00', 110, 5000, 1),
(52, 6, 2, 1, 5, 5, '2021-03-02 11:00:00', 110, 5000, 1),
(53, 7, 1, 3, 2, 2, '2021-03-11 11:00:00', 155, 5000, 0),
(54, 9, 1, 2, 2, 4, '2019-11-04 11:00:00', 115, 25000, 1),
(55, 11, 1, 2, 5, 2, '2011-03-02 11:00:00', 85, 115000, 1),
(56, 13, 1, 2, 3, 4, '2020-11-05 11:00:00', 125, 110000, 1),
(57, 14, 2, 2, 2, 2, '2006-03-03 11:00:00', 75, 150000, 1),
(58, 14, 2, 2, 2, 2, '2006-03-11 11:00:00', 75, 150000, 1),
(59, 14, 2, 2, 2, 2, '2006-03-03 11:00:00', 75, 110000, 1),
(60, 14, 2, 2, 2, 2, '2006-03-06 11:00:00', 75, 150000, 0),
(61, 10, 1, 2, 2, 5, '2010-03-17 11:00:00', 125, 50000, 1),
(62, 10, 2, 3, 2, 5, '2010-03-16 11:00:00', 125, 111000, 1),
(63, 17, 1, 2, 2, 7, '1998-03-24 11:00:00', 85, 250000, 0),
(64, 18, 3, 1, 5, 5, '2020-01-13 11:00:00', 231, 10000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cars_colors`
--

CREATE TABLE `cars_colors` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_colors`
--

INSERT INTO `cars_colors` (`ID`, `Label`) VALUES
(5, 'Blanc'),
(2, 'Bleu'),
(7, 'Gris'),
(1, 'Noir'),
(6, 'Orange'),
(4, 'Rouge'),
(3, 'Vert');

-- --------------------------------------------------------

--
-- Structure de la table `cars_fuels`
--

CREATE TABLE `cars_fuels` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_fuels`
--

INSERT INTO `cars_fuels` (`ID`, `Label`) VALUES
(1, 'Diesel'),
(5, 'Electrique'),
(2, 'Essence'),
(6, 'Gaz'),
(3, 'Hybrid'),
(4, 'Plug-In Hybrid');

-- --------------------------------------------------------

--
-- Structure de la table `cars_gearbox`
--

CREATE TABLE `cars_gearbox` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_gearbox`
--

INSERT INTO `cars_gearbox` (`ID`, `Label`) VALUES
(1, 'Automatique'),
(2, 'Manuelle'),
(3, 'Séquentielle');

-- --------------------------------------------------------

--
-- Structure de la table `cars_options`
--

CREATE TABLE `cars_options` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Options` int(11) UNSIGNED NOT NULL,
  `ID_Cars` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_options`
--

INSERT INTO `cars_options` (`ID`, `ID_Options`, `ID_Cars`) VALUES
(10, 16, 44),
(11, 9, 44),
(12, 2, 44),
(13, 12, 44),
(14, 23, 44),
(15, 24, 44),
(16, 19, 44),
(17, 33, 45),
(18, 38, 45),
(19, 1, 45),
(20, 35, 45),
(21, 25, 46),
(22, 10, 46),
(23, 26, 46),
(24, 12, 46),
(25, 22, 46),
(26, 24, 46),
(27, 15, 47),
(28, 17, 47),
(29, 7, 47),
(30, 2, 47),
(31, 10, 47),
(32, 22, 47),
(33, 17, 48),
(34, 16, 48),
(35, 9, 48),
(36, 2, 48),
(37, 16, 49),
(38, 9, 49),
(39, 25, 49),
(40, 2, 49),
(41, 26, 49),
(42, 12, 49),
(43, 33, 50),
(44, 38, 50),
(45, 16, 50),
(46, 9, 50),
(47, 25, 50),
(48, 26, 50),
(49, 10, 51),
(50, 26, 51),
(51, 12, 51),
(52, 22, 51),
(53, 23, 51),
(54, 24, 51),
(55, 18, 51),
(56, 21, 51),
(91, 33, 56),
(92, 14, 56),
(93, 38, 56),
(94, 37, 56),
(95, 35, 56),
(96, 36, 56),
(97, 32, 56),
(98, 3, 56),
(217, 6, 54),
(218, 13, 54),
(219, 33, 54),
(220, 35, 54),
(221, 8, 54),
(222, 17, 54),
(223, 24, 54),
(224, 21, 54),
(237, 38, 52),
(238, 15, 52),
(239, 16, 52),
(240, 31, 52),
(241, 9, 52),
(242, 25, 52),
(243, 10, 52),
(244, 19, 52),
(245, 27, 52),
(246, 28, 52),
(247, 11, 52),
(248, 20, 52),
(249, 14, 57),
(250, 3, 57),
(251, 31, 57),
(252, 2, 57),
(253, 27, 57),
(254, 11, 57),
(255, 14, 58),
(256, 27, 58),
(257, 11, 58),
(258, 27, 59),
(259, 28, 59),
(260, 11, 59),
(261, 20, 59),
(262, 6, 60),
(263, 12, 60),
(264, 23, 60),
(265, 19, 60),
(276, 6, 12),
(277, 13, 12),
(278, 33, 12),
(279, 7, 12),
(280, 2, 12),
(281, 12, 12),
(329, 33, 16),
(330, 14, 16),
(331, 38, 16),
(332, 1, 16),
(333, 3, 16),
(334, 31, 16),
(335, 10, 16),
(336, 19, 16),
(337, 27, 16),
(338, 28, 16),
(339, 31, 14),
(340, 25, 14),
(341, 19, 14),
(342, 23, 55),
(343, 24, 55),
(344, 19, 55),
(345, 21, 55),
(346, 38, 61),
(347, 15, 61),
(348, 16, 61),
(349, 9, 61),
(350, 38, 62),
(351, 15, 62),
(352, 16, 62),
(353, 9, 62),
(364, 6, 53),
(365, 33, 53),
(366, 17, 53),
(367, 16, 53),
(368, 9, 53),
(369, 26, 53),
(370, 23, 53),
(371, 24, 53),
(372, 19, 53),
(373, 21, 53),
(381, 4, 63),
(382, 1, 63),
(383, 15, 63),
(384, 35, 63),
(385, 25, 63),
(386, 2, 63),
(387, 26, 63),
(388, 36, 64),
(389, 8, 64),
(390, 3, 64),
(391, 16, 64),
(392, 31, 64),
(393, 9, 64),
(394, 2, 64),
(395, 10, 64),
(396, 23, 64),
(397, 24, 64);

-- --------------------------------------------------------

--
-- Structure de la table `cars_pictures`
--

CREATE TABLE `cars_pictures` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Cars` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_pictures`
--

INSERT INTO `cars_pictures` (`ID`, `ID_Cars`, `Label`) VALUES
(38, 49, 'opel-mokka-512751.jpg'),
(39, 50, '643223770_opel-mokka-512751.jpg'),
(40, 51, '461810906_opel-mokka-512751.jpg'),
(41, 52, '815515898_opel-mokka-512751.jpg'),
(42, 12, '146051_Volkswagen_Jetta_Hybrid_2014.jpg'),
(43, 52, '2020_Opel-Mokka_01.jpg'),
(44, 12, '945342367_146051_Volkswagen_Jetta_Hybrid_2014.jpg'),
(45, 53, 'bmw-m3-cs-2018-015.jpg'),
(46, 54, 'mercedes_classe_a_tarifs_essence_diesel.png'),
(47, 55, 'peugeot-206plus-l-02.jpg'),
(48, 60, 'Renault_Clio_3_006.jpg'),
(49, 16, 'ijJ404vMwEYnX0tLaJsxF-4b5083d9042089323394fe2e7b85ee58-03_Opel_507836-1100.jpg'),
(50, 14, 'VOLKSWAGEN-Touran-4342_51.jpg'),
(51, 16, '4Ml4C8GQkTJG5SDmc9Q62r-5ff229f2c63942ea2077babf5c192715-Opel-Astra-2020-1280-05-1100.jpg'),
(52, 16, 'opel-astra-restylee-2019-1-750x410.jpg'),
(53, 14, 'touran 3.jpg'),
(54, 14, 'touran 2.jpg'),
(55, 63, 'RENAULTLaguna-1960_4.jpg'),
(56, 64, '687710.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `cars_types`
--

CREATE TABLE `cars_types` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL,
  `Seats_Numbers` int(11) NOT NULL,
  `Doors_Numbers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cars_types`
--

INSERT INTO `cars_types` (`ID`, `Label`, `Seats_Numbers`, `Doors_Numbers`) VALUES
(1, 'Break', 5, 5),
(2, 'Monospace', 7, 5),
(3, 'Berline', 5, 5),
(4, 'Citadine', 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Countries` int(10) UNSIGNED NOT NULL,
  `Region` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Postal_Code` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`ID`, `ID_Countries`, `Region`, `Postal_Code`, `Label`) VALUES
(1, 1, 'Hainaut', 6200, 'Châtelineau'),
(2, 1, NULL, 1020, 'Laeken'),
(3, 1, NULL, 1030, 'Schaerbeek'),
(4, 1, NULL, 1040, 'Etterbeek'),
(5, 1, NULL, 1050, 'Ixelles'),
(6, 1, NULL, 1060, 'Saint-Gilles'),
(7, 1, NULL, 1070, 'Anderlecht'),
(8, 1, NULL, 1080, 'Molenbeek-Saint-Jean'),
(9, 1, NULL, 1081, 'Koekelberg'),
(10, 1, NULL, 1082, 'Berchem-Sainte-Agathe'),
(11, 1, NULL, 1083, 'Ganshoren'),
(12, 1, NULL, 1090, 'Jette'),
(13, 1, NULL, 1120, 'Neder-Over-Heembeek'),
(14, 1, NULL, 1130, 'Haren'),
(15, 1, NULL, 1140, 'Evere'),
(16, 1, NULL, 1150, 'Woluwe-Saint-Pierre'),
(17, 1, NULL, 1160, 'Auderghem'),
(18, 1, NULL, 1170, 'Watermael-Boitsfort'),
(19, 1, NULL, 1180, 'Uccle'),
(20, 1, NULL, 1190, 'Forest'),
(21, 1, NULL, 1200, 'Woluwe-Saint-Lambert'),
(22, 1, NULL, 1210, 'Saint-Josse-Ten-Noode'),
(23, 1, NULL, 1300, 'Limal'),
(24, 1, NULL, 1300, 'Wavre'),
(25, 1, NULL, 1301, 'Bierges'),
(26, 1, NULL, 1310, 'La Hulpe'),
(27, 1, NULL, 1315, 'Glimes'),
(28, 1, NULL, 1315, 'Incourt'),
(29, 1, NULL, 1315, 'Opprebais'),
(30, 1, NULL, 1315, 'Piétrebais'),
(31, 1, NULL, 1315, 'Roux-Miroir'),
(32, 1, NULL, 1320, 'Beauvechain'),
(33, 1, NULL, 1320, 'Hamme-Mille'),
(34, 1, NULL, 1320, 'L\'Ecluse'),
(35, 1, NULL, 1320, 'Nodebais'),
(36, 1, NULL, 1320, 'Tourinnes-La-Grosse'),
(37, 1, NULL, 1325, 'Bonlez'),
(38, 1, NULL, 1325, 'Chaumont-Gistoux'),
(39, 1, NULL, 1325, 'Corroy-Le-Grand'),
(40, 1, NULL, 1325, 'Dion-Valmont'),
(41, 1, NULL, 1325, 'Longueville'),
(42, 1, NULL, 1330, 'Rixensart'),
(43, 1, NULL, 1331, 'Rosières'),
(44, 1, NULL, 1332, 'Genval'),
(45, 1, NULL, 1340, 'Ottignies'),
(46, 1, NULL, 1341, 'Céroux-Mousty'),
(47, 1, NULL, 1342, 'Limelette'),
(48, 1, NULL, 1348, 'Louvain-La-Neuve'),
(49, 1, NULL, 1350, 'Enines'),
(50, 1, NULL, 1350, 'Folx-Les-Caves'),
(51, 1, NULL, 1350, 'Jandrain-Jandrenouille'),
(52, 1, NULL, 1350, 'Jauche'),
(53, 1, NULL, 1350, 'Marilles'),
(54, 1, NULL, 1350, 'Noduwez'),
(55, 1, NULL, 1350, 'Orp-Le-Grand'),
(56, 1, NULL, 1357, 'Linsmeau'),
(57, 1, NULL, 1357, 'Neerheylissem'),
(58, 1, NULL, 1357, 'Opheylissem'),
(59, 1, NULL, 1360, 'Malèves-Sainte-Marie-Wastinnes'),
(60, 1, NULL, 1360, 'Orbais'),
(61, 1, NULL, 1360, 'Perwez'),
(62, 1, NULL, 1360, 'Thorembais-Les-Béguines'),
(63, 1, NULL, 1360, 'Thorembais-Saint-Trond'),
(64, 1, NULL, 1367, 'Autre-Eglise'),
(65, 1, NULL, 1367, 'Bomal'),
(66, 1, NULL, 1367, 'Geest-Gérompont-Petit-Rosière'),
(67, 1, NULL, 1367, 'Gérompont'),
(68, 1, NULL, 1367, 'Grand-Rosicre-Hottomont'),
(69, 1, NULL, 1367, 'Huppaye'),
(70, 1, NULL, 1367, 'Mont-Saint-André'),
(71, 1, NULL, 1367, 'Ramillies'),
(72, 1, NULL, 1370, 'Dongelberg'),
(73, 1, NULL, 1370, 'Jauchelette'),
(74, 1, NULL, 1370, 'Jodoigne'),
(75, 1, NULL, 1370, 'Jodoigne-Souveraine'),
(76, 1, NULL, 1370, 'Lathuy'),
(77, 1, NULL, 1370, 'Mélin'),
(78, 1, NULL, 1370, 'Piétrain'),
(79, 1, NULL, 1370, 'Saint-Jean-Geest'),
(80, 1, NULL, 1370, 'Saint-Remy-Geest'),
(81, 1, NULL, 1370, 'Zétrud-Lumay'),
(82, 1, NULL, 1380, 'Couture-Saint-Germain'),
(83, 1, NULL, 1380, 'Lasne-Chapelle-Saint-Lambert'),
(84, 1, NULL, 1380, 'Maransart'),
(85, 1, NULL, 1380, 'Ohain'),
(86, 1, NULL, 1380, 'Plancenoit'),
(87, 1, NULL, 1390, 'Archennes'),
(88, 1, NULL, 1390, 'Biez'),
(89, 1, NULL, 1390, 'Bossut-Gottechain'),
(90, 1, NULL, 1390, 'Grez-Doiceau'),
(91, 1, NULL, 1390, 'Nethen'),
(92, 1, NULL, 1400, 'Monstreux'),
(93, 1, NULL, 1400, 'Nivelles'),
(94, 1, NULL, 1401, 'Baulers'),
(95, 1, NULL, 1402, 'Thines'),
(96, 1, NULL, 1404, 'Bornival'),
(97, 1, NULL, 1410, 'Waterloo'),
(98, 1, NULL, 1420, 'Braine-L\'Alleud'),
(99, 1, NULL, 1421, 'Ophain-Bois-Seigneur-Isaac'),
(100, 1, NULL, 1428, 'Lillois-Witterzée'),
(101, 1, NULL, 1430, 'Bierghes'),
(102, 1, NULL, 1430, 'Quenast'),
(103, 1, NULL, 1430, 'Rebecq-Rognon'),
(104, 1, NULL, 1435, 'Corbais'),
(105, 1, NULL, 1435, 'Hévillers'),
(106, 1, NULL, 1435, 'Mont-Saint-Guibert'),
(107, 1, NULL, 1440, 'Braine-Le-Château'),
(108, 1, NULL, 1440, 'Wauthier-Braine'),
(109, 1, NULL, 1450, 'Chastre-Villeroux-Blanmont'),
(110, 1, NULL, 1450, 'Cortil-Noirmont'),
(111, 1, NULL, 1450, 'Gentinnes'),
(112, 1, NULL, 1450, 'Saint-Géry'),
(113, 1, NULL, 1457, 'Nil-Saint-Vincent-Saint-Martin'),
(114, 1, NULL, 1457, 'Tourinnes-Saint-Lambert'),
(115, 1, NULL, 1457, 'Walhain-Saint-Paul'),
(116, 1, NULL, 1460, 'Ittre'),
(117, 1, NULL, 1460, 'Virginal-Samme'),
(118, 1, NULL, 1461, 'Haut-Ittre'),
(119, 1, NULL, 1470, 'Baisy-Thy'),
(120, 1, NULL, 1470, 'Bousval'),
(121, 1, NULL, 1470, 'Genappe'),
(122, 1, NULL, 1471, 'Loupoigne'),
(123, 1, NULL, 1472, 'Vieux-Genappe'),
(124, 1, NULL, 1473, 'Glabais'),
(125, 1, NULL, 1474, 'Ways'),
(126, 1, NULL, 1476, 'Houtain-Le-Val'),
(127, 1, NULL, 1480, 'Clabecq'),
(128, 1, NULL, 1480, 'Oisquercq'),
(129, 1, NULL, 1480, 'Saintes'),
(130, 1, NULL, 1480, 'Tubize'),
(131, 1, NULL, 1490, 'Court-Saint-Etienne'),
(132, 1, NULL, 1495, 'Marbais'),
(133, 1, NULL, 1495, 'Mellery'),
(134, 1, NULL, 1495, 'Sart-Dames-Avelines'),
(135, 1, NULL, 1495, 'Tilly'),
(136, 1, NULL, 1495, 'Villers-La-Ville'),
(137, 1, NULL, 1500, 'Halle'),
(138, 1, NULL, 1501, 'Buizingen'),
(139, 1, NULL, 1502, 'Lembeek'),
(140, 1, NULL, 1540, 'Herfelingen'),
(141, 1, NULL, 1540, 'Herne'),
(142, 1, NULL, 1541, 'Sint-Pieters-Kapelle'),
(143, 1, NULL, 1547, 'Biévène'),
(144, 1, NULL, 1560, 'Hoeilaart'),
(145, 1, NULL, 1570, 'Galmaarden'),
(146, 1, NULL, 1570, 'Tollembeek'),
(147, 1, NULL, 1570, 'Vollezele'),
(148, 1, NULL, 1600, 'Oudenaken'),
(149, 1, NULL, 1600, 'Sint-Laureins-Berchem'),
(150, 1, NULL, 1600, 'Sint-Pieters-Leeuw'),
(151, 1, NULL, 1601, 'Ruisbroek'),
(152, 1, NULL, 1602, 'Vlezenbeek'),
(153, 1, NULL, 1620, 'Drogenbos'),
(154, 1, NULL, 1630, 'Linkebeek'),
(155, 1, NULL, 1640, 'Rhode-Saint-Gencse'),
(156, 1, NULL, 1650, 'Beersel'),
(157, 1, NULL, 1651, 'Lot'),
(158, 1, NULL, 1652, 'Alsemberg'),
(159, 1, NULL, 1653, 'Dworp'),
(160, 1, NULL, 1654, 'Huizingen'),
(161, 1, NULL, 1670, 'Bogaarden'),
(162, 1, NULL, 1670, 'Heikruis'),
(163, 1, NULL, 1670, 'Pepingen'),
(164, 1, NULL, 1671, 'Elingen'),
(165, 1, NULL, 1673, 'Beert'),
(166, 1, NULL, 1674, 'Bellingen'),
(167, 1, NULL, 1700, 'Dilbeek'),
(168, 1, NULL, 1700, 'Sint-Martens-Bodegem'),
(169, 1, NULL, 1700, 'Sint-Ulriks-Kapelle'),
(170, 1, NULL, 1701, 'Itterbeek'),
(171, 1, NULL, 1702, 'Groot-Bijgaarden'),
(172, 1, NULL, 1703, 'Schepdaal'),
(173, 1, NULL, 1730, 'Asse'),
(174, 1, NULL, 1730, 'Bekkerzeel'),
(175, 1, NULL, 1730, 'Kobbegem'),
(176, 1, NULL, 1730, 'Mollem'),
(177, 1, NULL, 1731, 'Relegem'),
(178, 1, NULL, 1731, 'Zellik'),
(179, 1, NULL, 1733, 'HighCo DATA'),
(180, 1, NULL, 1740, 'Ternat'),
(181, 1, NULL, 1741, 'Wambeek'),
(182, 1, NULL, 1742, 'Sint-Katherina-Lombeek'),
(183, 1, NULL, 1745, 'Mazenzele'),
(184, 1, NULL, 1745, 'Opwijk'),
(185, 1, NULL, 1750, 'Gaasbeek'),
(186, 1, NULL, 1750, 'Sint-Kwintens-Lennik'),
(187, 1, NULL, 1750, 'Sint-Martens-Lennik'),
(188, 1, NULL, 1755, 'Gooik'),
(189, 1, NULL, 1755, 'Kester'),
(190, 1, NULL, 1755, 'Leerbeek'),
(191, 1, NULL, 1755, 'Oetingen'),
(192, 1, NULL, 1760, 'Onze-Lieve-Vrouw-Lombeek'),
(193, 1, NULL, 1760, 'Pamel'),
(194, 1, NULL, 1760, 'Roosdaal'),
(195, 1, NULL, 1760, 'Strijtem'),
(196, 1, NULL, 1761, 'Borchtlombeek'),
(197, 1, NULL, 1770, 'Liedekerke'),
(198, 1, NULL, 1780, 'Wemmel'),
(199, 1, NULL, 1785, 'Brussegem'),
(200, 1, NULL, 1785, 'Hamme'),
(201, 1, NULL, 1785, 'Merchtem'),
(202, 1, NULL, 1790, 'Affligem'),
(203, 1, NULL, 1790, 'Essene'),
(204, 1, NULL, 1790, 'Hekelgem'),
(205, 1, NULL, 1790, 'Teralfene'),
(206, 1, NULL, 1800, 'Peutie'),
(207, 1, NULL, 1800, 'Vilvoorde'),
(208, 1, NULL, 1804, 'Cargovil'),
(209, 1, NULL, 1818, 'VTM'),
(210, 1, NULL, 1820, 'Melsbroek'),
(211, 1, NULL, 1820, 'Perk'),
(212, 1, NULL, 1820, 'Steenokkerzeel'),
(213, 1, NULL, 1830, 'Machelen'),
(214, 1, NULL, 1831, 'Diegem'),
(215, 1, NULL, 1840, 'Londerzeel'),
(216, 1, NULL, 1840, 'Malderen'),
(217, 1, NULL, 1840, 'Steenhuffel'),
(218, 1, NULL, 1850, 'Grimbergen'),
(219, 1, NULL, 1851, 'Humbeek'),
(220, 1, NULL, 1852, 'Beigem'),
(221, 1, NULL, 1853, 'Strombeek-Bever'),
(222, 1, NULL, 1860, 'Meise'),
(223, 1, NULL, 1861, 'Wolvertem'),
(224, 1, NULL, 1880, 'Kapelle-Op-Den-Bos'),
(225, 1, NULL, 1880, 'Nieuwenrode'),
(226, 1, NULL, 1880, 'Ramsdonk'),
(227, 1, NULL, 1910, 'Berg'),
(228, 1, NULL, 1910, 'Buken'),
(229, 1, NULL, 1910, 'Kampenhout'),
(230, 1, NULL, 1910, 'Nederokkerzeel'),
(231, 1, NULL, 1930, 'Nossegem'),
(232, 1, NULL, 1930, 'Zaventem'),
(233, 1, NULL, 1932, 'Sint-Stevens-Woluwe'),
(234, 1, NULL, 1933, 'Sterrebeek'),
(235, 1, NULL, 1950, 'Kraainem'),
(236, 1, NULL, 1970, 'Wezembeek-Oppem'),
(237, 1, NULL, 1980, 'Eppegem'),
(238, 1, NULL, 1980, 'Zemst'),
(239, 1, NULL, 1981, 'Hofstade'),
(240, 1, NULL, 1982, 'Elewijt'),
(241, 1, NULL, 1982, 'Weerde'),
(242, 1, NULL, 2000, 'Antwerpen'),
(243, 1, NULL, 2018, 'Antwerpen'),
(244, 1, NULL, 2020, 'Antwerpen'),
(245, 1, NULL, 2030, 'Antwerpen'),
(246, 1, NULL, 2040, 'Antwerpen'),
(247, 1, NULL, 2040, 'Berendrecht'),
(248, 1, NULL, 2040, 'Lillo'),
(249, 1, NULL, 2040, 'Zandvliet'),
(250, 1, NULL, 2050, 'Antwerpen'),
(251, 1, NULL, 2060, 'Antwerpen'),
(252, 1, NULL, 2070, 'Burcht'),
(253, 1, NULL, 2070, 'Zwijndrecht'),
(254, 1, NULL, 2099, 'Antwerpen x'),
(255, 1, NULL, 2100, 'Deurne'),
(256, 1, NULL, 2110, 'Wijnegem'),
(257, 1, NULL, 2140, 'Borgerhout'),
(258, 1, NULL, 2150, 'Borsbeek'),
(259, 1, NULL, 2160, 'Wommelgem'),
(260, 1, NULL, 2170, 'Merksem'),
(261, 1, NULL, 2180, 'Ekeren'),
(262, 1, NULL, 2200, 'Herentals'),
(263, 1, NULL, 2200, 'Morkhoven'),
(264, 1, NULL, 2200, 'Noorderwijk'),
(265, 1, NULL, 2220, 'Hallaar'),
(266, 1, NULL, 2220, 'Heist-Op-Den-Berg'),
(267, 1, NULL, 2221, 'Booischot'),
(268, 1, NULL, 2222, 'Itegem'),
(269, 1, NULL, 2222, 'Wiekevorst'),
(270, 1, NULL, 2223, 'Schriek'),
(271, 1, NULL, 2230, 'Herselt'),
(272, 1, NULL, 2230, 'Ramsel'),
(273, 1, NULL, 2235, 'Houtvenne'),
(274, 1, NULL, 2235, 'Hulshout'),
(275, 1, NULL, 2235, 'Westmeerbeek'),
(276, 1, NULL, 2240, 'Massenhoven'),
(277, 1, NULL, 2240, 'Viersel'),
(278, 1, NULL, 2240, 'Zandhoven'),
(279, 1, NULL, 2242, 'Pulderbos'),
(280, 1, NULL, 2243, 'Pulle'),
(281, 1, NULL, 2250, 'Olen'),
(282, 1, NULL, 2260, 'Oevel'),
(283, 1, NULL, 2260, 'Tongerlo'),
(284, 1, NULL, 2260, 'Westerlo'),
(285, 1, NULL, 2260, 'Zoerle-Parwijs'),
(286, 1, NULL, 2270, 'Herenthout'),
(287, 1, NULL, 2275, 'Gierle'),
(288, 1, NULL, 2275, 'Lille'),
(289, 1, NULL, 2275, 'Poederlee'),
(290, 1, NULL, 2275, 'Wechelderzande'),
(291, 1, NULL, 2280, 'Grobbendonk'),
(292, 1, NULL, 2288, 'Bouwel'),
(293, 1, NULL, 2290, 'Vorselaar'),
(294, 1, NULL, 2300, 'Turnhout'),
(295, 1, NULL, 2310, 'Rijkevorsel'),
(296, 1, NULL, 2320, 'Hoogstraten'),
(297, 1, NULL, 2321, 'Meer'),
(298, 1, NULL, 2322, 'Minderhout'),
(299, 1, NULL, 2323, 'Wortel'),
(300, 1, NULL, 2328, 'Meerle'),
(301, 1, NULL, 2330, 'Merksplas'),
(302, 1, NULL, 2340, 'Beerse'),
(303, 1, NULL, 2340, 'Vlimmeren'),
(304, 1, NULL, 2350, 'Vosselaar'),
(305, 1, NULL, 2360, 'Oud-Turnhout'),
(306, 1, NULL, 2370, 'Arendonk'),
(307, 1, NULL, 2380, 'Ravels'),
(308, 1, NULL, 2381, 'Weelde'),
(309, 1, NULL, 2382, 'Poppel'),
(310, 1, NULL, 2387, 'Baarle-Hertog'),
(311, 1, NULL, 2390, 'Malle'),
(312, 1, NULL, 2390, 'Oostmalle'),
(313, 1, NULL, 2390, 'Westmalle'),
(314, 1, NULL, 2400, 'Mol'),
(315, 1, NULL, 2430, 'Eindhout'),
(316, 1, NULL, 2430, 'Vorst'),
(317, 1, NULL, 2431, 'Varendonk'),
(318, 1, NULL, 2431, 'Veerle'),
(319, 1, NULL, 2440, 'Geel'),
(320, 1, NULL, 2450, 'Meerhout'),
(321, 1, NULL, 2460, 'Kasterlee'),
(322, 1, NULL, 2460, 'Lichtaart'),
(323, 1, NULL, 2460, 'Tielen'),
(324, 1, NULL, 2470, 'Retie'),
(325, 1, NULL, 2480, 'Dessel'),
(326, 1, NULL, 2490, 'Balen'),
(327, 1, NULL, 2491, 'Olmen'),
(328, 1, NULL, 2500, 'Koningshooikt'),
(329, 1, NULL, 2500, 'Lier'),
(330, 1, NULL, 2520, 'Broechem'),
(331, 1, NULL, 2520, 'Emblem'),
(332, 1, NULL, 2520, 'Oelegem'),
(333, 1, NULL, 2520, 'Ranst'),
(334, 1, NULL, 2530, 'Boechout'),
(335, 1, NULL, 2531, 'Vremde'),
(336, 1, NULL, 2540, 'Hove'),
(337, 1, NULL, 2547, 'Lint'),
(338, 1, NULL, 2550, 'Kontich'),
(339, 1, NULL, 2550, 'Waarloos'),
(340, 1, NULL, 2560, 'Bevel'),
(341, 1, NULL, 2560, 'Kessel'),
(342, 1, NULL, 2560, 'Nijlen'),
(343, 1, NULL, 2570, 'Duffel'),
(344, 1, NULL, 2580, 'Beerzel'),
(345, 1, NULL, 2580, 'Putte'),
(346, 1, NULL, 2590, 'Berlaar'),
(347, 1, NULL, 2590, 'Gestel'),
(348, 1, NULL, 2600, 'Berchem'),
(349, 1, NULL, 2610, 'Wilrijk'),
(350, 1, NULL, 2620, 'Hemiksem'),
(351, 1, NULL, 2627, 'Schelle'),
(352, 1, NULL, 2630, 'Aartselaar'),
(353, 1, NULL, 2640, 'Mortsel'),
(354, 1, NULL, 2650, 'Edegem'),
(355, 1, NULL, 2660, 'Hoboken'),
(356, 1, NULL, 2800, 'Mechelen'),
(357, 1, NULL, 2800, 'Walem'),
(358, 1, NULL, 2801, 'Heffen'),
(359, 1, NULL, 2811, 'Hombeek'),
(360, 1, NULL, 2811, 'Leest'),
(361, 1, NULL, 2812, 'Muizen'),
(362, 1, NULL, 2820, 'Bonheiden'),
(363, 1, NULL, 2820, 'Rijmenam'),
(364, 1, NULL, 2830, 'Blaasveld'),
(365, 1, NULL, 2830, 'Heindonk'),
(366, 1, NULL, 2830, 'Tisselt'),
(367, 1, NULL, 2830, 'Willebroek'),
(368, 1, NULL, 2840, 'Reet'),
(369, 1, NULL, 2840, 'Rumst'),
(370, 1, NULL, 2840, 'Terhagen'),
(371, 1, NULL, 2845, 'Niel'),
(372, 1, NULL, 2850, 'Boom'),
(373, 1, NULL, 2860, 'Sint-Katelijne-Waver'),
(374, 1, NULL, 2861, 'Onze-Lieve-Vrouw-Waver'),
(375, 1, NULL, 2870, 'Breendonk'),
(376, 1, NULL, 2870, 'Liezele'),
(377, 1, NULL, 2870, 'Puurs'),
(378, 1, NULL, 2870, 'Ruisbroek'),
(379, 1, NULL, 2880, 'Bornem'),
(380, 1, NULL, 2880, 'Hingene'),
(381, 1, NULL, 2880, 'Mariekerke'),
(382, 1, NULL, 2880, 'Weert'),
(383, 1, NULL, 2890, 'Lippelo'),
(384, 1, NULL, 2890, 'Oppuurs'),
(385, 1, NULL, 2890, 'Sint-Amands'),
(386, 1, NULL, 2900, 'Schoten'),
(387, 1, NULL, 2910, 'Essen'),
(388, 1, NULL, 2920, 'Kalmthout'),
(389, 1, NULL, 2930, 'Brasschaat'),
(390, 1, NULL, 2940, 'Hoevenen'),
(391, 1, NULL, 2940, 'Stabroek'),
(392, 1, NULL, 2950, 'Kapellen'),
(393, 1, NULL, 2960, 'Brecht'),
(394, 1, NULL, 2960, 'Sint-Job-In-\'T-Goor'),
(395, 1, NULL, 2960, 'Sint-Lenaarts'),
(396, 1, NULL, 2970, '\'S Gravenwezel'),
(397, 1, NULL, 2970, 'Schilde'),
(398, 1, NULL, 2980, 'Halle'),
(399, 1, NULL, 2980, 'Zoersel'),
(400, 1, NULL, 2990, 'Loenhout'),
(401, 1, NULL, 2990, 'Wuustwezel'),
(402, 1, NULL, 3000, 'Leuven'),
(403, 1, NULL, 3001, 'Heverlee'),
(404, 1, NULL, 3010, 'Kessel Lo'),
(405, 1, NULL, 3012, 'Wilsele'),
(406, 1, NULL, 3018, 'Wijgmaal'),
(407, 1, NULL, 3020, 'Herent'),
(408, 1, NULL, 3020, 'Veltem-Beisem'),
(409, 1, NULL, 3020, 'Winksele'),
(410, 1, NULL, 3040, 'Huldenberg'),
(411, 1, NULL, 3040, 'Loonbeek'),
(412, 1, NULL, 3040, 'Neerijse'),
(413, 1, NULL, 3040, 'Ottenburg'),
(414, 1, NULL, 3040, 'Sint-Agatha-Rode'),
(415, 1, NULL, 3050, 'Oud-Heverlee'),
(416, 1, NULL, 3051, 'Sint-Joris-Weert'),
(417, 1, NULL, 3052, 'Blanden'),
(418, 1, NULL, 3053, 'Haasrode'),
(419, 1, NULL, 3054, 'Vaalbeek'),
(420, 1, NULL, 3060, 'Bertem'),
(421, 1, NULL, 3060, 'Korbeek-Dijle'),
(422, 1, NULL, 3061, 'Leefdaal'),
(423, 1, NULL, 3070, 'Kortenberg'),
(424, 1, NULL, 3071, 'Erps-Kwerps'),
(425, 1, NULL, 3078, 'Everberg'),
(426, 1, NULL, 3078, 'Meerbeek'),
(427, 1, NULL, 3080, 'Duisburg'),
(428, 1, NULL, 3080, 'Tervuren'),
(429, 1, NULL, 3080, 'Vossem'),
(430, 1, NULL, 3090, 'Overijse'),
(431, 1, NULL, 3110, 'Rotselaar'),
(432, 1, NULL, 3111, 'Wezemaal'),
(433, 1, NULL, 3118, 'Werchter'),
(434, 1, NULL, 3120, 'Tremelo'),
(435, 1, NULL, 3128, 'Baal'),
(436, 1, NULL, 3130, 'Begijnendijk'),
(437, 1, NULL, 3130, 'Betekom'),
(438, 1, NULL, 3140, 'Keerbergen'),
(439, 1, NULL, 3150, 'Haacht'),
(440, 1, NULL, 3150, 'Tildonk'),
(441, 1, NULL, 3150, 'Wespelaar'),
(442, 1, NULL, 3190, 'Boortmeerbeek'),
(443, 1, NULL, 3191, 'Hever'),
(444, 1, NULL, 3200, 'Aarschot'),
(445, 1, NULL, 3200, 'Gelrode'),
(446, 1, NULL, 3201, 'Langdorp'),
(447, 1, NULL, 3202, 'Rillaar'),
(448, 1, NULL, 3210, 'Linden'),
(449, 1, NULL, 3210, 'Lubbeek'),
(450, 1, NULL, 3211, 'Binkom'),
(451, 1, NULL, 3212, 'Pellenberg'),
(452, 1, NULL, 3220, 'Holsbeek'),
(453, 1, NULL, 3220, 'Kortrijk-Dutsel'),
(454, 1, NULL, 3220, 'Sint-Pieters-Rode'),
(455, 1, NULL, 3221, 'Nieuwrode'),
(456, 1, NULL, 3270, 'Scherpenheuvel'),
(457, 1, NULL, 3271, 'Averbode'),
(458, 1, NULL, 3271, 'Zichem'),
(459, 1, NULL, 3272, 'Messelbroek'),
(460, 1, NULL, 3272, 'Testelt'),
(461, 1, NULL, 3290, 'Deurne'),
(462, 1, NULL, 3290, 'Diest'),
(463, 1, NULL, 3290, 'Schaffen'),
(464, 1, NULL, 3290, 'Webbekom'),
(465, 1, NULL, 3293, 'Kaggevinne'),
(466, 1, NULL, 3294, 'Molenstede'),
(467, 1, NULL, 3300, 'Bost'),
(468, 1, NULL, 3300, 'Goetsenhoven'),
(469, 1, NULL, 3300, 'Hakendover'),
(470, 1, NULL, 3300, 'Kumtich'),
(471, 1, NULL, 3300, 'Oorbeek'),
(472, 1, NULL, 3300, 'Oplinter'),
(473, 1, NULL, 3300, 'Sint-Margriete-Houtem'),
(474, 1, NULL, 3300, 'Tienen'),
(475, 1, NULL, 3300, 'Vissenaken'),
(476, 1, NULL, 3320, 'Hoegaarden'),
(477, 1, NULL, 3320, 'Meldert'),
(478, 1, NULL, 3321, 'Outgaarden'),
(479, 1, NULL, 3350, 'Drieslinter'),
(480, 1, NULL, 3350, 'Linter'),
(481, 1, NULL, 3350, 'Melkwezer'),
(482, 1, NULL, 3350, 'Neerhespen'),
(483, 1, NULL, 3350, 'Neerlinter'),
(484, 1, NULL, 3350, 'Orsmaal-Gussenhoven'),
(485, 1, NULL, 3350, 'Overhespen'),
(486, 1, NULL, 3350, 'Wommersom'),
(487, 1, NULL, 3360, 'Bierbeek'),
(488, 1, NULL, 3360, 'Korbeek-Lo'),
(489, 1, NULL, 3360, 'Lovenjoel'),
(490, 1, NULL, 3360, 'Opvelp'),
(491, 1, NULL, 3370, 'Boutersem'),
(492, 1, NULL, 3370, 'Kerkom'),
(493, 1, NULL, 3370, 'Neervelp'),
(494, 1, NULL, 3370, 'Roosbeek'),
(495, 1, NULL, 3370, 'Vertrijk'),
(496, 1, NULL, 3370, 'Willebringen'),
(497, 1, NULL, 3380, 'Bunsbeek'),
(498, 1, NULL, 3380, 'Glabbeek'),
(499, 1, NULL, 3381, 'Kapellen'),
(500, 1, NULL, 3384, 'Attenrode'),
(501, 1, NULL, 3390, 'Houwaart'),
(502, 1, NULL, 3390, 'Sint-Joris-Winge'),
(503, 1, NULL, 3390, 'Tielt'),
(504, 1, NULL, 3391, 'Meensel-Kiezegem'),
(505, 1, NULL, 3400, 'Eliksem'),
(506, 1, NULL, 3400, 'Ezemaal'),
(507, 1, NULL, 3400, 'Laar'),
(508, 1, NULL, 3400, 'Landen'),
(509, 1, NULL, 3400, 'Neerwinden'),
(510, 1, NULL, 3400, 'Overwinden'),
(511, 1, NULL, 3400, 'Rumsdorp'),
(512, 1, NULL, 3400, 'Wange'),
(513, 1, NULL, 3401, 'Waasmont'),
(514, 1, NULL, 3401, 'Walsbets'),
(515, 1, NULL, 3401, 'Walshoutem'),
(516, 1, NULL, 3401, 'Wezeren'),
(517, 1, NULL, 3404, 'Attenhoven'),
(518, 1, NULL, 3404, 'Neerlanden'),
(519, 1, NULL, 3440, 'Budingen'),
(520, 1, NULL, 3440, 'Dormaal'),
(521, 1, NULL, 3440, 'Halle-Booienhoven'),
(522, 1, NULL, 3440, 'Helen-Bos'),
(523, 1, NULL, 3440, 'Zoutleeuw'),
(524, 1, NULL, 3450, 'Geetbets'),
(525, 1, NULL, 3450, 'Grazen'),
(526, 1, NULL, 3454, 'Rummen'),
(527, 1, NULL, 3460, 'Assent'),
(528, 1, NULL, 3460, 'Bekkevoort'),
(529, 1, NULL, 3461, 'Molenbeek-Wersbeek'),
(530, 1, NULL, 3470, 'Kortenaken'),
(531, 1, NULL, 3470, 'Ransberg'),
(532, 1, NULL, 3470, 'Sint-Margriete-Houtem'),
(533, 1, NULL, 3471, 'Hoeleden'),
(534, 1, NULL, 3472, 'Kersbeek-Miskom'),
(535, 1, NULL, 3473, 'Waanrode'),
(536, 1, NULL, 3500, 'Hasselt'),
(537, 1, NULL, 3500, 'Sint-Lambrechts-Herk'),
(538, 1, NULL, 3501, 'Wimmertingen'),
(539, 1, NULL, 3510, 'Kermt'),
(540, 1, NULL, 3510, 'Spalbeek'),
(541, 1, NULL, 3511, 'Kuringen'),
(542, 1, NULL, 3511, 'Stokrooie'),
(543, 1, NULL, 3512, 'Stevoort'),
(544, 1, NULL, 3520, 'Zonhoven'),
(545, 1, NULL, 3530, 'Helchteren'),
(546, 1, NULL, 3530, 'Houthalen'),
(547, 1, NULL, 3540, 'Berbroek'),
(548, 1, NULL, 3540, 'Donk'),
(549, 1, NULL, 3540, 'Herk-De-Stad'),
(550, 1, NULL, 3540, 'Schulen'),
(551, 1, NULL, 3545, 'Halen'),
(552, 1, NULL, 3545, 'Loksbergen'),
(553, 1, NULL, 3545, 'Zelem'),
(554, 1, NULL, 3550, 'Heusden'),
(555, 1, NULL, 3550, 'Heusden-Zolder'),
(556, 1, NULL, 3550, 'Zolder'),
(557, 1, NULL, 3560, 'Linkhout'),
(558, 1, NULL, 3560, 'Lummen'),
(559, 1, NULL, 3560, 'Meldert'),
(560, 1, NULL, 3570, 'Alken'),
(561, 1, NULL, 3580, 'Beringen'),
(562, 1, NULL, 3581, 'Beverlo'),
(563, 1, NULL, 3582, 'Koersel'),
(564, 1, NULL, 3583, 'Paal'),
(565, 1, NULL, 3590, 'Diepenbeek'),
(566, 1, NULL, 3600, 'Genk'),
(567, 1, NULL, 3620, 'Gellik'),
(568, 1, NULL, 3620, 'Lanaken'),
(569, 1, NULL, 3620, 'Neerharen'),
(570, 1, NULL, 3620, 'Veldwezelt'),
(571, 1, NULL, 3621, 'Rekem'),
(572, 1, NULL, 3630, 'Eisden'),
(573, 1, NULL, 3630, 'Leut'),
(574, 1, NULL, 3630, 'Maasmechelen'),
(575, 1, NULL, 3630, 'Mechelen-Aan-De-Maas'),
(576, 1, NULL, 3630, 'Meeswijk'),
(577, 1, NULL, 3630, 'Opgrimbie'),
(578, 1, NULL, 3630, 'Vucht'),
(579, 1, NULL, 3631, 'Boorsem'),
(580, 1, NULL, 3631, 'Uikhoven'),
(581, 1, NULL, 3640, 'Kessenich'),
(582, 1, NULL, 3640, 'Kinrooi'),
(583, 1, NULL, 3640, 'Molenbeersel'),
(584, 1, NULL, 3640, 'Ophoven'),
(585, 1, NULL, 3650, 'Dilsen'),
(586, 1, NULL, 3650, 'Dilsen-Stokkem'),
(587, 1, NULL, 3650, 'Elen'),
(588, 1, NULL, 3650, 'Lanklaar'),
(589, 1, NULL, 3650, 'Rotem'),
(590, 1, NULL, 3650, 'Stokkem'),
(591, 1, NULL, 3660, 'Opglabbeek'),
(592, 1, NULL, 3665, 'As'),
(593, 1, NULL, 3668, 'Niel-Bij-As'),
(594, 1, NULL, 3670, 'Ellikom'),
(595, 1, NULL, 3670, 'Gruitrode'),
(596, 1, NULL, 3670, 'Meeuwen'),
(597, 1, NULL, 3670, 'Neerglabbeek'),
(598, 1, NULL, 3670, 'Wijshagen'),
(599, 1, NULL, 3680, 'Maaseik'),
(600, 1, NULL, 3680, 'Neeroeteren'),
(601, 1, NULL, 3680, 'Opoeteren'),
(602, 1, NULL, 3690, 'Zutendaal'),
(603, 1, NULL, 3700, '\'S Herenelderen'),
(604, 1, NULL, 3700, 'Berg'),
(605, 1, NULL, 3700, 'Diets-Heur'),
(606, 1, NULL, 3700, 'Haren'),
(607, 1, NULL, 3700, 'Henis'),
(608, 1, NULL, 3700, 'Kolmont'),
(609, 1, NULL, 3700, 'Koninksem'),
(610, 1, NULL, 3700, 'Lauw'),
(611, 1, NULL, 3700, 'Mal'),
(612, 1, NULL, 3700, 'Neerrepen'),
(613, 1, NULL, 3700, 'Nerem'),
(614, 1, NULL, 3700, 'Overrepen'),
(615, 1, NULL, 3700, 'Piringen'),
(616, 1, NULL, 3700, 'Riksingen'),
(617, 1, NULL, 3700, 'Rutten'),
(618, 1, NULL, 3700, 'Sluizen'),
(619, 1, NULL, 3700, 'Tongeren'),
(620, 1, NULL, 3700, 'Vreren'),
(621, 1, NULL, 3700, 'Widooie'),
(622, 1, NULL, 3717, 'Herstappe'),
(623, 1, NULL, 3720, 'Kortessem'),
(624, 1, NULL, 3721, 'Vliermaalroot'),
(625, 1, NULL, 3722, 'Wintershoven'),
(626, 1, NULL, 3723, 'Guigoven'),
(627, 1, NULL, 3724, 'Vliermaal'),
(628, 1, NULL, 3730, 'Hoeselt'),
(629, 1, NULL, 3730, 'Romershoven'),
(630, 1, NULL, 3730, 'Sint-Huibrechts-Hern'),
(631, 1, NULL, 3730, 'Werm'),
(632, 1, NULL, 3732, 'Schalkhoven'),
(633, 1, NULL, 3740, 'Beverst'),
(634, 1, NULL, 3740, 'Bilzen'),
(635, 1, NULL, 3740, 'Eigenbilzen'),
(636, 1, NULL, 3740, 'Grote-Spouwen'),
(637, 1, NULL, 3740, 'Hees'),
(638, 1, NULL, 3740, 'Kleine-Spouwen'),
(639, 1, NULL, 3740, 'Mopertingen'),
(640, 1, NULL, 3740, 'Munsterbilzen'),
(641, 1, NULL, 3740, 'Rijkhoven'),
(642, 1, NULL, 3740, 'Rosmeer'),
(643, 1, NULL, 3740, 'Waltwilder'),
(644, 1, NULL, 3742, 'Martenslinde'),
(645, 1, NULL, 3746, 'Hoelbeek'),
(646, 1, NULL, 3770, 'Genoelselderen'),
(647, 1, NULL, 3770, 'Herderen'),
(648, 1, NULL, 3770, 'Kanne'),
(649, 1, NULL, 3770, 'Membruggen'),
(650, 1, NULL, 3770, 'Millen'),
(651, 1, NULL, 3770, 'Riemst'),
(652, 1, NULL, 3770, 'Val-Meer'),
(653, 1, NULL, 3770, 'Vlijtingen'),
(654, 1, NULL, 3770, 'Vroenhoven'),
(655, 1, NULL, 3770, 'Zichen-Zussen-Bolder'),
(656, 1, NULL, 3790, 'Fouron-Saint-Martin'),
(657, 1, NULL, 3790, 'Mouland'),
(658, 1, NULL, 3791, 'Remersdaal'),
(659, 1, NULL, 3792, 'Fouron-Saint-Pierre'),
(660, 1, NULL, 3793, 'Teuven'),
(661, 1, NULL, 3798, 'Fouron-Le-Comte'),
(662, 1, NULL, 3800, 'Aalst'),
(663, 1, NULL, 3800, 'Brustem'),
(664, 1, NULL, 3800, 'Engelmanshoven'),
(665, 1, NULL, 3800, 'Gelinden'),
(666, 1, NULL, 3800, 'Groot-Gelmen'),
(667, 1, NULL, 3800, 'Halmaal'),
(668, 1, NULL, 3800, 'Kerkom-Bij-Sint-Truiden'),
(669, 1, NULL, 3800, 'Ordingen'),
(670, 1, NULL, 3800, 'Sint-Truiden'),
(671, 1, NULL, 3800, 'Zepperen'),
(672, 1, NULL, 3803, 'Duras'),
(673, 1, NULL, 3803, 'Gorsem'),
(674, 1, NULL, 3803, 'Runkelen'),
(675, 1, NULL, 3803, 'Wilderen'),
(676, 1, NULL, 3806, 'Velm'),
(677, 1, NULL, 3830, 'Berlingen'),
(678, 1, NULL, 3830, 'Wellen'),
(679, 1, NULL, 3831, 'Herten'),
(680, 1, NULL, 3832, 'Ulbeek'),
(681, 1, NULL, 3840, 'Bommershoven'),
(682, 1, NULL, 3840, 'Borgloon'),
(683, 1, NULL, 3840, 'Broekom'),
(684, 1, NULL, 3840, 'Gors-Opleeuw'),
(685, 1, NULL, 3840, 'Gotem'),
(686, 1, NULL, 3840, 'Groot-Loon'),
(687, 1, NULL, 3840, 'Haren'),
(688, 1, NULL, 3840, 'Hendrieken'),
(689, 1, NULL, 3840, 'Hoepertingen'),
(690, 1, NULL, 3840, 'Jesseren'),
(691, 1, NULL, 3840, 'Kerniel'),
(692, 1, NULL, 3840, 'Kolmont'),
(693, 1, NULL, 3840, 'Kuttekoven'),
(694, 1, NULL, 3840, 'Rijkel'),
(695, 1, NULL, 3840, 'Voort'),
(696, 1, NULL, 3850, 'Binderveld'),
(697, 1, NULL, 3850, 'Kozen'),
(698, 1, NULL, 3850, 'Nieuwerkerken'),
(699, 1, NULL, 3850, 'Wijer'),
(700, 1, NULL, 3870, 'Batsheers'),
(701, 1, NULL, 3870, 'Bovelingen'),
(702, 1, NULL, 3870, 'Gutshoven'),
(703, 1, NULL, 3870, 'Heers'),
(704, 1, NULL, 3870, 'Heks'),
(705, 1, NULL, 3870, 'Horpmaal'),
(706, 1, NULL, 3870, 'Klein-Gelmen'),
(707, 1, NULL, 3870, 'Mechelen-Bovelingen'),
(708, 1, NULL, 3870, 'Mettekoven'),
(709, 1, NULL, 3870, 'Opheers'),
(710, 1, NULL, 3870, 'Rukkelingen-Loon'),
(711, 1, NULL, 3870, 'Vechmaal'),
(712, 1, NULL, 3870, 'Veulen'),
(713, 1, NULL, 3890, 'Boekhout'),
(714, 1, NULL, 3890, 'Gingelom'),
(715, 1, NULL, 3890, 'Jeuk'),
(716, 1, NULL, 3890, 'Kortijs'),
(717, 1, NULL, 3890, 'Montenaken'),
(718, 1, NULL, 3890, 'Niel-Bij-Sint-Truiden'),
(719, 1, NULL, 3890, 'Vorsen'),
(720, 1, NULL, 3891, 'Borlo'),
(721, 1, NULL, 3891, 'Buvingen'),
(722, 1, NULL, 3891, 'Mielen-Boven-Aalst'),
(723, 1, NULL, 3891, 'Muizen'),
(724, 1, NULL, 3900, 'Overpelt'),
(725, 1, NULL, 3910, 'Neerpelt'),
(726, 1, NULL, 3910, 'Sint-Huibrechts-Lille'),
(727, 1, NULL, 3920, 'Lommel'),
(728, 1, NULL, 3930, 'Achel'),
(729, 1, NULL, 3930, 'Hamont'),
(730, 1, NULL, 3940, 'Hechtel'),
(731, 1, NULL, 3941, 'Eksel'),
(732, 1, NULL, 3945, 'Kwaadmechelen'),
(733, 1, NULL, 3945, 'Oostham'),
(734, 1, NULL, 3950, 'Bocholt'),
(735, 1, NULL, 3950, 'Kaulille'),
(736, 1, NULL, 3950, 'Reppel'),
(737, 1, NULL, 3960, 'Beek'),
(738, 1, NULL, 3960, 'Bree'),
(739, 1, NULL, 3960, 'Gerdingen'),
(740, 1, NULL, 3960, 'Opitter'),
(741, 1, NULL, 3960, 'Tongerlo'),
(742, 1, NULL, 3970, 'Leopoldsburg'),
(743, 1, NULL, 3971, 'Heppen'),
(744, 1, NULL, 3980, 'Tessenderlo'),
(745, 1, NULL, 3990, 'Grote-Brogel'),
(746, 1, NULL, 3990, 'Kleine-Brogel'),
(747, 1, NULL, 3990, 'Peer'),
(748, 1, NULL, 3990, 'Wijchmaal'),
(749, 1, NULL, 4000, 'Glain'),
(750, 1, NULL, 4000, 'Licge'),
(751, 1, NULL, 4000, 'Rocourt'),
(752, 1, NULL, 4020, 'Bressoux'),
(753, 1, NULL, 4020, 'Jupille-Sur-Meuse'),
(754, 1, NULL, 4020, 'Licge'),
(755, 1, NULL, 4020, 'Wandre'),
(756, 1, NULL, 4030, 'Grivegnée'),
(757, 1, NULL, 4031, 'Angleur'),
(758, 1, NULL, 4032, 'Chenée'),
(759, 1, NULL, 4040, 'Herstal'),
(760, 1, NULL, 4041, 'Milmort'),
(761, 1, NULL, 4041, 'Vottem'),
(762, 1, NULL, 4042, 'Liers'),
(763, 1, NULL, 4050, 'Chaudfontaine'),
(764, 1, NULL, 4051, 'Vaux-Sous-Chèvremont'),
(765, 1, NULL, 4052, 'Beaufays'),
(766, 1, NULL, 4053, 'Embourg'),
(767, 1, NULL, 4099, 'Licge X'),
(768, 1, NULL, 4100, 'Boncelles'),
(769, 1, NULL, 4100, 'Seraing'),
(770, 1, NULL, 4101, 'Jemeppe-Sur-Meuse'),
(771, 1, NULL, 4102, 'Ougrée'),
(772, 1, NULL, 4120, 'Ehein'),
(773, 1, NULL, 4120, 'Rotheux-Rimicre'),
(774, 1, NULL, 4121, 'Neuville-En-Condroz'),
(775, 1, NULL, 4122, 'Plainevaux'),
(776, 1, NULL, 4130, 'Esneux'),
(777, 1, NULL, 4130, 'Tilff'),
(778, 1, NULL, 4140, 'Dolembreux'),
(779, 1, NULL, 4140, 'Gomzé-Andoumont'),
(780, 1, NULL, 4140, 'Rouvreux'),
(781, 1, NULL, 4140, 'Sprimont'),
(782, 1, NULL, 4141, 'Louveigné'),
(783, 1, NULL, 4160, 'Anthisnes'),
(784, 1, NULL, 4161, 'Villers-Aux-Tours'),
(785, 1, NULL, 4162, 'Hody'),
(786, 1, NULL, 4163, 'Tavier'),
(787, 1, NULL, 4170, 'Comblain-Au-Pont'),
(788, 1, NULL, 4171, 'Poulseur'),
(789, 1, NULL, 4180, 'Comblain-Fairon'),
(790, 1, NULL, 4180, 'Comblain-La-Tour'),
(791, 1, NULL, 4180, 'Hamoir'),
(792, 1, NULL, 4181, 'Filot'),
(793, 1, NULL, 4190, 'Ferricres'),
(794, 1, NULL, 4190, 'My'),
(795, 1, NULL, 4190, 'Vieuxville'),
(796, 1, NULL, 4190, 'Werbomont'),
(797, 1, NULL, 4190, 'Xhoris'),
(798, 1, NULL, 4210, 'Burdinne'),
(799, 1, NULL, 4210, 'Hanneche'),
(800, 1, NULL, 4210, 'Lamontzée'),
(801, 1, NULL, 4210, 'Marneffe'),
(802, 1, NULL, 4210, 'Oteppe'),
(803, 1, NULL, 4217, 'Héron'),
(804, 1, NULL, 4217, 'Lavoir'),
(805, 1, NULL, 4217, 'Waret-L\'Eveque'),
(806, 1, NULL, 4218, 'Couthuin'),
(807, 1, NULL, 4219, 'Acosse'),
(808, 1, NULL, 4219, 'Ambresin'),
(809, 1, NULL, 4219, 'Meeffe'),
(810, 1, NULL, 4219, 'Wasseiges'),
(811, 1, NULL, 4250, 'Boëlhe'),
(812, 1, NULL, 4250, 'Geer'),
(813, 1, NULL, 4250, 'Hollogne-Sur-Geer'),
(814, 1, NULL, 4250, 'Lens-Saint-Servais'),
(815, 1, NULL, 4252, 'Omal'),
(816, 1, NULL, 4253, 'Darion'),
(817, 1, NULL, 4254, 'Ligney'),
(818, 1, NULL, 4257, 'Berloz'),
(819, 1, NULL, 4257, 'Corswarem'),
(820, 1, NULL, 4257, 'Rosoux-Crenwick'),
(821, 1, NULL, 4260, 'Avennes'),
(822, 1, NULL, 4260, 'Braives'),
(823, 1, NULL, 4260, 'Ciplet'),
(824, 1, NULL, 4260, 'Fallais'),
(825, 1, NULL, 4260, 'Fumal'),
(826, 1, NULL, 4260, 'Ville-En-Hesbaye'),
(827, 1, NULL, 4261, 'Latinne'),
(828, 1, NULL, 4263, 'Tourinne'),
(829, 1, NULL, 4280, 'Abolens'),
(830, 1, NULL, 4280, 'Avernas-Le-Bauduin'),
(831, 1, NULL, 4280, 'Avin'),
(832, 1, NULL, 4280, 'Bertrée'),
(833, 1, NULL, 4280, 'Blehen'),
(834, 1, NULL, 4280, 'Cras-Avernas'),
(835, 1, NULL, 4280, 'Crehen'),
(836, 1, NULL, 4280, 'Grand-Hallet'),
(837, 1, NULL, 4280, 'Hannut'),
(838, 1, NULL, 4280, 'Lens-Saint-Remy'),
(839, 1, NULL, 4280, 'Merdorp'),
(840, 1, NULL, 4280, 'Moxhe'),
(841, 1, NULL, 4280, 'Petit-Hallet'),
(842, 1, NULL, 4280, 'Poucet'),
(843, 1, NULL, 4280, 'Thisnes'),
(844, 1, NULL, 4280, 'Trognée'),
(845, 1, NULL, 4280, 'Villers-Le-Peuplier'),
(846, 1, NULL, 4280, 'Wansin'),
(847, 1, NULL, 4287, 'Lincent'),
(848, 1, NULL, 4287, 'Pellaines'),
(849, 1, NULL, 4287, 'Racour'),
(850, 1, NULL, 4300, 'Bettincourt'),
(851, 1, NULL, 4300, 'Bleret'),
(852, 1, NULL, 4300, 'Bovenistier'),
(853, 1, NULL, 4300, 'Grand-Axhe'),
(854, 1, NULL, 4300, 'Lantremange'),
(855, 1, NULL, 4300, 'Oleye'),
(856, 1, NULL, 4300, 'Waremme'),
(857, 1, NULL, 4317, 'Aineffe'),
(858, 1, NULL, 4317, 'Borlez'),
(859, 1, NULL, 4317, 'Celles'),
(860, 1, NULL, 4317, 'Faimes'),
(861, 1, NULL, 4317, 'Les Waleffes'),
(862, 1, NULL, 4317, 'Viemme'),
(863, 1, NULL, 4340, 'Awans'),
(864, 1, NULL, 4340, 'Fooz'),
(865, 1, NULL, 4340, 'Othée'),
(866, 1, NULL, 4340, 'Villers-L\'Eveque'),
(867, 1, NULL, 4342, 'Hognoul'),
(868, 1, NULL, 4347, 'Fexhe-Le-Haut-Clocher'),
(869, 1, NULL, 4347, 'Freloux'),
(870, 1, NULL, 4347, 'Noville'),
(871, 1, NULL, 4347, 'Roloux'),
(872, 1, NULL, 4347, 'Voroux-Goreux'),
(873, 1, NULL, 4350, 'Lamine'),
(874, 1, NULL, 4350, 'Momalle'),
(875, 1, NULL, 4350, 'Pousset'),
(876, 1, NULL, 4350, 'Remicourt'),
(877, 1, NULL, 4351, 'Hodeige'),
(878, 1, NULL, 4357, 'Donceel'),
(879, 1, NULL, 4357, 'Haneffe'),
(880, 1, NULL, 4357, 'Jeneffe'),
(881, 1, NULL, 4357, 'Limont'),
(882, 1, NULL, 4360, 'Bergilers'),
(883, 1, NULL, 4360, 'Grandville'),
(884, 1, NULL, 4360, 'Lens-Sur-Geer'),
(885, 1, NULL, 4360, 'Oreye'),
(886, 1, NULL, 4360, 'Otrange'),
(887, 1, NULL, 4367, 'Crisnée'),
(888, 1, NULL, 4367, 'Fize-Le-Marsal'),
(889, 1, NULL, 4367, 'Kemexhe'),
(890, 1, NULL, 4367, 'Odeur'),
(891, 1, NULL, 4367, 'Thys'),
(892, 1, NULL, 4400, 'Awirs'),
(893, 1, NULL, 4400, 'Chokier'),
(894, 1, NULL, 4400, 'Flémalle-Grande'),
(895, 1, NULL, 4400, 'Flémalle-Haute'),
(896, 1, NULL, 4400, 'Gleixhe'),
(897, 1, NULL, 4400, 'Ivoz-Ramet'),
(898, 1, NULL, 4400, 'Mons-Lez-Licge'),
(899, 1, NULL, 4420, 'Montegnée'),
(900, 1, NULL, 4420, 'Saint-Nicolas'),
(901, 1, NULL, 4420, 'Tilleur'),
(902, 1, NULL, 4430, 'Ans'),
(903, 1, NULL, 4431, 'Loncin'),
(904, 1, NULL, 4432, 'Alleur'),
(905, 1, NULL, 4432, 'Xhendremael'),
(906, 1, NULL, 4450, 'Juprelle'),
(907, 1, NULL, 4450, 'Lantin'),
(908, 1, NULL, 4450, 'Slins'),
(909, 1, NULL, 4451, 'Voroux-Lez-Liers'),
(910, 1, NULL, 4452, 'Paifve'),
(911, 1, NULL, 4452, 'Wihogne'),
(912, 1, NULL, 4453, 'Villers-Saint-Siméon'),
(913, 1, NULL, 4458, 'Fexhe-Slins'),
(914, 1, NULL, 4460, 'Bierset'),
(915, 1, NULL, 4460, 'Grâce-Berleur'),
(916, 1, NULL, 4460, 'Grâce-Hollogne'),
(917, 1, NULL, 4460, 'Hollogne-Aux-Pierres'),
(918, 1, NULL, 4460, 'Horion-Hozémont'),
(919, 1, NULL, 4460, 'Velroux'),
(920, 1, NULL, 4470, 'Saint-Georges-Sur-Meuse'),
(921, 1, NULL, 4480, 'Clermont-Sous-Huy'),
(922, 1, NULL, 4480, 'Ehein'),
(923, 1, NULL, 4480, 'Engis'),
(924, 1, NULL, 4480, 'Hermalle-Sous-Huy'),
(925, 1, NULL, 4500, 'Ben-Ahin'),
(926, 1, NULL, 4500, 'Huy'),
(927, 1, NULL, 4500, 'Tihange'),
(928, 1, NULL, 4520, 'Antheit'),
(929, 1, NULL, 4520, 'Bas-Oha'),
(930, 1, NULL, 4520, 'Huccorgne'),
(931, 1, NULL, 4520, 'Moha'),
(932, 1, NULL, 4520, 'Vinalmont'),
(933, 1, NULL, 4520, 'Wanze'),
(934, 1, NULL, 4530, 'Fize-Fontaine'),
(935, 1, NULL, 4530, 'Vaux-Et-Borset'),
(936, 1, NULL, 4530, 'Vieux-Waleffe'),
(937, 1, NULL, 4530, 'Villers-Le-Bouillet'),
(938, 1, NULL, 4530, 'Warnant-Dreye'),
(939, 1, NULL, 4537, 'Bodegnée'),
(940, 1, NULL, 4537, 'Chapon-Seraing'),
(941, 1, NULL, 4537, 'Seraing-Le-Château'),
(942, 1, NULL, 4537, 'Verlaine'),
(943, 1, NULL, 4540, 'Amay'),
(944, 1, NULL, 4540, 'Ampsin'),
(945, 1, NULL, 4540, 'Flône'),
(946, 1, NULL, 4540, 'Jehay'),
(947, 1, NULL, 4540, 'Ombret'),
(948, 1, NULL, 4550, 'Nandrin'),
(949, 1, NULL, 4550, 'Saint-Séverin'),
(950, 1, NULL, 4550, 'Villers-Le-Temple'),
(951, 1, NULL, 4550, 'Yernée-Fraineux'),
(952, 1, NULL, 4557, 'Abée'),
(953, 1, NULL, 4557, 'Fraiture'),
(954, 1, NULL, 4557, 'Ramelot'),
(955, 1, NULL, 4557, 'Seny'),
(956, 1, NULL, 4557, 'Soheit-Tinlot'),
(957, 1, NULL, 4557, 'Tinlot'),
(958, 1, NULL, 4560, 'Bois-Et-Borsu'),
(959, 1, NULL, 4560, 'Clavier'),
(960, 1, NULL, 4560, 'Les Avins'),
(961, 1, NULL, 4560, 'Ocquier'),
(962, 1, NULL, 4560, 'Pailhe'),
(963, 1, NULL, 4560, 'Terwagne'),
(964, 1, NULL, 4570, 'Marchin'),
(965, 1, NULL, 4570, 'Vyle-Et-Tharoul'),
(966, 1, NULL, 4577, 'Modave'),
(967, 1, NULL, 4577, 'Outrelouxhe'),
(968, 1, NULL, 4577, 'Strée-Lez-Huy'),
(969, 1, NULL, 4577, 'Vierset-Barse'),
(970, 1, NULL, 4590, 'Ellemelle'),
(971, 1, NULL, 4590, 'Ouffet'),
(972, 1, NULL, 4590, 'Warzée'),
(973, 1, NULL, 4600, 'Lanaye'),
(974, 1, NULL, 4600, 'Lixhe'),
(975, 1, NULL, 4600, 'Richelle'),
(976, 1, NULL, 4600, 'Visé'),
(977, 1, NULL, 4601, 'Argenteau'),
(978, 1, NULL, 4602, 'Cheratte'),
(979, 1, NULL, 4606, 'Saint-André'),
(980, 1, NULL, 4607, 'Berneau'),
(981, 1, NULL, 4607, 'Bombaye'),
(982, 1, NULL, 4607, 'Dalhem'),
(983, 1, NULL, 4607, 'Feneur'),
(984, 1, NULL, 4607, 'Mortroux'),
(985, 1, NULL, 4608, 'Neufchâteau'),
(986, 1, NULL, 4608, 'Warsage'),
(987, 1, NULL, 4610, 'Bellaire'),
(988, 1, NULL, 4610, 'Beyne-Heusay'),
(989, 1, NULL, 4610, 'Queue-Du-Bois'),
(990, 1, NULL, 4620, 'Fléron'),
(991, 1, NULL, 4621, 'Retinne'),
(992, 1, NULL, 4623, 'Magnée'),
(993, 1, NULL, 4624, 'Romsée'),
(994, 1, NULL, 4630, 'Ayeneux'),
(995, 1, NULL, 4630, 'Micheroux'),
(996, 1, NULL, 4630, 'Soumagne'),
(997, 1, NULL, 4630, 'Tignée'),
(998, 1, NULL, 4631, 'Evegnée'),
(999, 1, NULL, 4632, 'Cérexhe-Heuseux'),
(1000, 1, NULL, 4633, 'Melen'),
(1001, 1, NULL, 4650, 'Chaineux'),
(1002, 1, NULL, 4650, 'Grand-Rechain'),
(1003, 1, NULL, 4650, 'Herve'),
(1004, 1, NULL, 4650, 'Julémont'),
(1005, 1, NULL, 4651, 'Battice'),
(1006, 1, NULL, 4652, 'Xhendelesse'),
(1007, 1, NULL, 4653, 'Bolland'),
(1008, 1, NULL, 4654, 'Charneux'),
(1009, 1, NULL, 4670, 'Blégny'),
(1010, 1, NULL, 4670, 'Mortier'),
(1011, 1, NULL, 4670, 'Trembleur'),
(1012, 1, NULL, 4671, 'Barchon'),
(1013, 1, NULL, 4671, 'Housse'),
(1014, 1, NULL, 4671, 'Saive'),
(1015, 1, NULL, 4672, 'Saint-Remy'),
(1016, 1, NULL, 4680, 'Hermée'),
(1017, 1, NULL, 4680, 'Oupeye'),
(1018, 1, NULL, 4681, 'Hermalle-Sous-Argenteau'),
(1019, 1, NULL, 4682, 'Heure-Le-Romain'),
(1020, 1, NULL, 4682, 'Houtain-Saint-Siméon'),
(1021, 1, NULL, 4683, 'Vivegnis'),
(1022, 1, NULL, 4684, 'Haccourt'),
(1023, 1, NULL, 4690, 'Bassenge'),
(1024, 1, NULL, 4690, 'Boirs'),
(1025, 1, NULL, 4690, 'Eben-Emael'),
(1026, 1, NULL, 4690, 'Glons'),
(1027, 1, NULL, 4690, 'Roclenge-Sur-Geer'),
(1028, 1, NULL, 4690, 'Wonck'),
(1029, 1, NULL, 4700, 'Eupen'),
(1030, 1, NULL, 4701, 'Kettenis'),
(1031, 1, NULL, 4710, 'Lontzen'),
(1032, 1, NULL, 4711, 'Walhorn'),
(1033, 1, NULL, 4720, 'La Calamine'),
(1034, 1, NULL, 4721, 'Neu-Moresnet'),
(1035, 1, NULL, 4728, 'Hergenrath'),
(1036, 1, NULL, 4730, 'Hauset'),
(1037, 1, NULL, 4730, 'Raeren'),
(1038, 1, NULL, 4731, 'Eynatten'),
(1039, 1, NULL, 4750, 'Butgenbach'),
(1040, 1, NULL, 4750, 'Elsenborn'),
(1041, 1, NULL, 4760, 'Bullange'),
(1042, 1, NULL, 4760, 'Manderfeld'),
(1043, 1, NULL, 4761, 'Rocherath'),
(1044, 1, NULL, 4770, 'Amblcve'),
(1045, 1, NULL, 4770, 'Meyerode'),
(1046, 1, NULL, 4771, 'Heppenbach'),
(1047, 1, NULL, 4780, 'Recht'),
(1048, 1, NULL, 4780, 'Saint-Vith'),
(1049, 1, NULL, 4782, 'Schoenberg'),
(1050, 1, NULL, 4783, 'Lommersweiler'),
(1051, 1, NULL, 4784, 'Crombach'),
(1052, 1, NULL, 4790, 'Reuland'),
(1053, 1, NULL, 4791, 'Thommen'),
(1054, 1, NULL, 4800, 'Ensival'),
(1055, 1, NULL, 4800, 'Lambermont'),
(1056, 1, NULL, 4800, 'Petit-Rechain'),
(1057, 1, NULL, 4800, 'Polleur'),
(1058, 1, NULL, 4800, 'Verviers'),
(1059, 1, NULL, 4801, 'Stembert'),
(1060, 1, NULL, 4802, 'Heusy'),
(1061, 1, NULL, 4820, 'Dison'),
(1062, 1, NULL, 4821, 'Andrimont'),
(1063, 1, NULL, 4830, 'Limbourg'),
(1064, 1, NULL, 4831, 'Bilstain'),
(1065, 1, NULL, 4834, 'Goé'),
(1066, 1, NULL, 4837, 'Baelen'),
(1067, 1, NULL, 4837, 'Membach'),
(1068, 1, NULL, 4840, 'Welkenraedt'),
(1069, 1, NULL, 4841, 'Henri-Chapelle'),
(1070, 1, NULL, 4845, 'Jalhay'),
(1071, 1, NULL, 4845, 'Sart-Lez-Spa'),
(1072, 1, NULL, 4850, 'Montzen'),
(1073, 1, NULL, 4850, 'Moresnet'),
(1074, 1, NULL, 4851, 'Gemmenich'),
(1075, 1, NULL, 4851, 'Sippenaeken'),
(1076, 1, NULL, 4852, 'Hombourg'),
(1077, 1, NULL, 4860, 'Cornesse'),
(1078, 1, NULL, 4860, 'Pepinster'),
(1079, 1, NULL, 4860, 'Wegnez'),
(1080, 1, NULL, 4861, 'Soiron'),
(1081, 1, NULL, 4870, 'Foret'),
(1082, 1, NULL, 4870, 'Fraipont'),
(1083, 1, NULL, 4870, 'Nessonvaux'),
(1084, 1, NULL, 4877, 'Olne'),
(1085, 1, NULL, 4880, 'Aubel'),
(1086, 1, NULL, 4890, 'Clermont'),
(1087, 1, NULL, 4890, 'Thimister'),
(1088, 1, NULL, 4900, 'Spa'),
(1089, 1, NULL, 4910, 'La Reid'),
(1090, 1, NULL, 4910, 'Polleur'),
(1091, 1, NULL, 4910, 'Theux'),
(1092, 1, NULL, 4920, 'Aywaille'),
(1093, 1, NULL, 4920, 'Ernonheid'),
(1094, 1, NULL, 4920, 'Harzé'),
(1095, 1, NULL, 4920, 'Louveigné'),
(1096, 1, NULL, 4920, 'Sougné-Remouchamps'),
(1097, 1, NULL, 4950, 'Faymonville'),
(1098, 1, NULL, 4950, 'Robertville'),
(1099, 1, NULL, 4950, 'Sourbrodt'),
(1100, 1, NULL, 4950, 'Waimes'),
(1101, 1, NULL, 4960, 'Bellevaux-Ligneuville'),
(1102, 1, NULL, 4960, 'Bevercé'),
(1103, 1, NULL, 4960, 'Malmedy'),
(1104, 1, NULL, 4970, 'Francorchamps'),
(1105, 1, NULL, 4970, 'Stavelot'),
(1106, 1, NULL, 4980, 'Fosse'),
(1107, 1, NULL, 4980, 'Trois-Ponts'),
(1108, 1, NULL, 4980, 'Wanne'),
(1109, 1, NULL, 4983, 'Basse-Bodeux'),
(1110, 1, NULL, 4987, 'Chevron'),
(1111, 1, NULL, 4987, 'La Gleize'),
(1112, 1, NULL, 4987, 'Lorcé'),
(1113, 1, NULL, 4987, 'Rahier'),
(1114, 1, NULL, 4987, 'Stoumont'),
(1115, 1, NULL, 4990, 'Arbrefontaine'),
(1116, 1, NULL, 4990, 'Bra'),
(1117, 1, NULL, 4990, 'Lierneux'),
(1118, 1, NULL, 5000, 'Beez'),
(1119, 1, NULL, 5000, 'Namur'),
(1120, 1, NULL, 5001, 'Belgrade'),
(1121, 1, NULL, 5002, 'Saint-Servais'),
(1122, 1, NULL, 5003, 'Saint-Marc'),
(1123, 1, NULL, 5004, 'Bouge'),
(1124, 1, NULL, 5010, 'SA SudPresse'),
(1125, 1, NULL, 5012, 'Parlement Wallon'),
(1126, 1, NULL, 5020, 'Champion'),
(1127, 1, NULL, 5020, 'Daussoulx'),
(1128, 1, NULL, 5020, 'Flawinne'),
(1129, 1, NULL, 5020, 'Malonne'),
(1130, 1, NULL, 5020, 'Suarlée'),
(1131, 1, NULL, 5020, 'Temploux'),
(1132, 1, NULL, 5020, 'Vedrin'),
(1133, 1, NULL, 5021, 'Boninne'),
(1134, 1, NULL, 5022, 'Cognelée'),
(1135, 1, NULL, 5024, 'Gelbressée'),
(1136, 1, NULL, 5024, 'Marche-Les-Dames'),
(1137, 1, NULL, 5030, 'Beuzet'),
(1138, 1, NULL, 5030, 'Ernage'),
(1139, 1, NULL, 5030, 'Gembloux'),
(1140, 1, NULL, 5030, 'Grand-Manil'),
(1141, 1, NULL, 5030, 'Lonzée'),
(1142, 1, NULL, 5030, 'Sauvenicre'),
(1143, 1, NULL, 5031, 'Grand-Leez'),
(1144, 1, NULL, 5032, 'Bossicre'),
(1145, 1, NULL, 5032, 'Bothey'),
(1146, 1, NULL, 5032, 'Corroy-Le-Château'),
(1147, 1, NULL, 5032, 'Isnes'),
(1148, 1, NULL, 5032, 'Mazy'),
(1149, 1, NULL, 5060, 'Arsimont'),
(1150, 1, NULL, 5060, 'Auvelais'),
(1151, 1, NULL, 5060, 'Falisolle'),
(1152, 1, NULL, 5060, 'Keumiée'),
(1153, 1, NULL, 5060, 'Moignelée'),
(1154, 1, NULL, 5060, 'Tamines'),
(1155, 1, NULL, 5060, 'Velaine-Sur-Sambre'),
(1156, 1, NULL, 5070, 'Aisemont'),
(1157, 1, NULL, 5070, 'Fosses-La-Ville'),
(1158, 1, NULL, 5070, 'Le Roux'),
(1159, 1, NULL, 5070, 'Sart-Eustache'),
(1160, 1, NULL, 5070, 'Sart-Saint-Laurent'),
(1161, 1, NULL, 5070, 'Vitrival'),
(1162, 1, NULL, 5080, 'Emines'),
(1163, 1, NULL, 5080, 'Rhisnes'),
(1164, 1, NULL, 5080, 'Villers-Lez-Heest'),
(1165, 1, NULL, 5080, 'Warisoulx'),
(1166, 1, NULL, 5081, 'Bovesse'),
(1167, 1, NULL, 5081, 'Meux'),
(1168, 1, NULL, 5081, 'Saint-Denis-Bovesse'),
(1169, 1, NULL, 5100, 'Dave'),
(1170, 1, NULL, 5100, 'Jambes'),
(1171, 1, NULL, 5100, 'Naninne'),
(1172, 1, NULL, 5100, 'Wépion'),
(1173, 1, NULL, 5100, 'Wierde'),
(1174, 1, NULL, 5101, 'Erpent'),
(1175, 1, NULL, 5101, 'Lives-Sur-Meuse'),
(1176, 1, NULL, 5101, 'Loyers'),
(1177, 1, NULL, 5140, 'Boignée'),
(1178, 1, NULL, 5140, 'Ligny'),
(1179, 1, NULL, 5140, 'Sombreffe'),
(1180, 1, NULL, 5140, 'Tongrinne'),
(1181, 1, NULL, 5150, 'Floreffe'),
(1182, 1, NULL, 5150, 'Floriffoux'),
(1183, 1, NULL, 5150, 'Franicre'),
(1184, 1, NULL, 5150, 'Soye'),
(1185, 1, NULL, 5170, 'Arbre'),
(1186, 1, NULL, 5170, 'Bois-De-Villers'),
(1187, 1, NULL, 5170, 'Lesve'),
(1188, 1, NULL, 5170, 'Lustin'),
(1189, 1, NULL, 5170, 'Profondeville'),
(1190, 1, NULL, 5170, 'Rivicre'),
(1191, 1, NULL, 5190, 'Balâtre'),
(1192, 1, NULL, 5190, 'Ham-Sur-Sambre'),
(1193, 1, NULL, 5190, 'Jemeppe-Sur-Sambre'),
(1194, 1, NULL, 5190, 'Mornimont'),
(1195, 1, NULL, 5190, 'Moustier-Sur-Sambre'),
(1196, 1, NULL, 5190, 'Onoz'),
(1197, 1, NULL, 5190, 'Saint-Martin'),
(1198, 1, NULL, 5190, 'Spy'),
(1199, 1, NULL, 5300, 'Andenne'),
(1200, 1, NULL, 5300, 'Bonneville'),
(1201, 1, NULL, 5300, 'Coutisse'),
(1202, 1, NULL, 5300, 'Landenne'),
(1203, 1, NULL, 5300, 'Maizeret'),
(1204, 1, NULL, 5300, 'Nameche'),
(1205, 1, NULL, 5300, 'Sclayn'),
(1206, 1, NULL, 5300, 'Seilles'),
(1207, 1, NULL, 5300, 'Thon'),
(1208, 1, NULL, 5300, 'Vezin'),
(1209, 1, NULL, 5310, 'Aische-En-Refail'),
(1210, 1, NULL, 5310, 'Bolinne'),
(1211, 1, NULL, 5310, 'Boneffe'),
(1212, 1, NULL, 5310, 'Branchon'),
(1213, 1, NULL, 5310, 'Dhuy'),
(1214, 1, NULL, 5310, 'Eghezée'),
(1215, 1, NULL, 5310, 'Hanret'),
(1216, 1, NULL, 5310, 'Leuze'),
(1217, 1, NULL, 5310, 'Liernu'),
(1218, 1, NULL, 5310, 'Longchamps'),
(1219, 1, NULL, 5310, 'Mehaigne'),
(1220, 1, NULL, 5310, 'Noville-Sur-Mehaigne'),
(1221, 1, NULL, 5310, 'Saint-Germain'),
(1222, 1, NULL, 5310, 'Taviers'),
(1223, 1, NULL, 5310, 'Upigny'),
(1224, 1, NULL, 5310, 'Waret-La-Chaussée'),
(1225, 1, NULL, 5330, 'Assesse'),
(1226, 1, NULL, 5330, 'Maillen'),
(1227, 1, NULL, 5330, 'Sart-Bernard'),
(1228, 1, NULL, 5332, 'Crupet'),
(1229, 1, NULL, 5333, 'Sorinne-La-Longue'),
(1230, 1, NULL, 5334, 'Florée'),
(1231, 1, NULL, 5336, 'Courricre'),
(1232, 1, NULL, 5340, 'Faulx-Les-Tombes'),
(1233, 1, NULL, 5340, 'Gesves'),
(1234, 1, NULL, 5340, 'Haltinne'),
(1235, 1, NULL, 5340, 'Mozet'),
(1236, 1, NULL, 5340, 'Sorée'),
(1237, 1, NULL, 5350, 'Evelette'),
(1238, 1, NULL, 5350, 'Ohey'),
(1239, 1, NULL, 5351, 'Haillot'),
(1240, 1, NULL, 5352, 'Perwez-Haillot'),
(1241, 1, NULL, 5353, 'Goesnes'),
(1242, 1, NULL, 5354, 'Jallet'),
(1243, 1, NULL, 5360, 'Hamois'),
(1244, 1, NULL, 5360, 'Natoye'),
(1245, 1, NULL, 5361, 'Mohiville'),
(1246, 1, NULL, 5361, 'Scy'),
(1247, 1, NULL, 5362, 'Achet'),
(1248, 1, NULL, 5363, 'Emptinne'),
(1249, 1, NULL, 5364, 'Schaltin'),
(1250, 1, NULL, 5370, 'Barvaux-Condroz'),
(1251, 1, NULL, 5370, 'Flostoy'),
(1252, 1, NULL, 5370, 'Havelange'),
(1253, 1, NULL, 5370, 'Jeneffe'),
(1254, 1, NULL, 5370, 'Porcheresse'),
(1255, 1, NULL, 5370, 'Verlée'),
(1256, 1, NULL, 5372, 'Méan'),
(1257, 1, NULL, 5374, 'Maffe'),
(1258, 1, NULL, 5376, 'Miécret'),
(1259, 1, NULL, 5377, 'Baillonville'),
(1260, 1, NULL, 5377, 'Bonsin'),
(1261, 1, NULL, 5377, 'Heure'),
(1262, 1, NULL, 5377, 'Hogne'),
(1263, 1, NULL, 5377, 'Nettinne'),
(1264, 1, NULL, 5377, 'Noiseux'),
(1265, 1, NULL, 5377, 'Sinsin'),
(1266, 1, NULL, 5377, 'Somme-Leuze'),
(1267, 1, NULL, 5377, 'Waillet'),
(1268, 1, NULL, 5380, 'Bierwart'),
(1269, 1, NULL, 5380, 'Cortil-Wodon'),
(1270, 1, NULL, 5380, 'Forville'),
(1271, 1, NULL, 5380, 'Franc-Waret'),
(1272, 1, NULL, 5380, 'Hemptinne'),
(1273, 1, NULL, 5380, 'Hingeon'),
(1274, 1, NULL, 5380, 'Marchovelette'),
(1275, 1, NULL, 5380, 'Noville-Les-Bois'),
(1276, 1, NULL, 5380, 'Pontillas'),
(1277, 1, NULL, 5380, 'Tillier'),
(1278, 1, NULL, 5500, 'Anseremme'),
(1279, 1, NULL, 5500, 'Bouvignes-Sur-Meuse'),
(1280, 1, NULL, 5500, 'Dinant'),
(1281, 1, NULL, 5500, 'Dréhance'),
(1282, 1, NULL, 5500, 'Falmagne'),
(1283, 1, NULL, 5500, 'Falmignoul'),
(1284, 1, NULL, 5500, 'Furfooz'),
(1285, 1, NULL, 5501, 'Lisogne'),
(1286, 1, NULL, 5502, 'Thynes'),
(1287, 1, NULL, 5503, 'Sorinnes'),
(1288, 1, NULL, 5504, 'Foy-Notre-Dame'),
(1289, 1, NULL, 5520, 'Anthée'),
(1290, 1, NULL, 5520, 'Onhaye'),
(1291, 1, NULL, 5521, 'Serville'),
(1292, 1, NULL, 5522, 'Falaën'),
(1293, 1, NULL, 5523, 'Sommicre'),
(1294, 1, NULL, 5523, 'Weillen'),
(1295, 1, NULL, 5524, 'Gérin'),
(1296, 1, NULL, 5530, 'Dorinne'),
(1297, 1, NULL, 5530, 'Durnal'),
(1298, 1, NULL, 5530, 'Evrehailles'),
(1299, 1, NULL, 5530, 'Godinne'),
(1300, 1, NULL, 5530, 'Houx'),
(1301, 1, NULL, 5530, 'Mont'),
(1302, 1, NULL, 5530, 'Purnode'),
(1303, 1, NULL, 5530, 'Spontin'),
(1304, 1, NULL, 5530, 'Yvoir'),
(1305, 1, NULL, 5537, 'Anhée'),
(1306, 1, NULL, 5537, 'Annevoie-Rouillon'),
(1307, 1, NULL, 5537, 'Bioul'),
(1308, 1, NULL, 5537, 'Denée'),
(1309, 1, NULL, 5537, 'Haut-Le-Wastia'),
(1310, 1, NULL, 5537, 'Sosoye'),
(1311, 1, NULL, 5537, 'Warnant'),
(1312, 1, NULL, 5540, 'Hasticre-Lavaux'),
(1313, 1, NULL, 5540, 'Hermeton-Sur-Meuse'),
(1314, 1, NULL, 5540, 'Waulsort'),
(1315, 1, NULL, 5541, 'Hasticre-Par-Delr'),
(1316, 1, NULL, 5542, 'Blaimont'),
(1317, 1, NULL, 5543, 'Heer'),
(1318, 1, NULL, 5544, 'Agimont'),
(1319, 1, NULL, 5550, 'Alle'),
(1320, 1, NULL, 5550, 'Bagimont'),
(1321, 1, NULL, 5550, 'Bohan'),
(1322, 1, NULL, 5550, 'Chairicre'),
(1323, 1, NULL, 5550, 'Laforet'),
(1324, 1, NULL, 5550, 'Membre'),
(1325, 1, NULL, 5550, 'Mouzaive'),
(1326, 1, NULL, 5550, 'Nafraiture'),
(1327, 1, NULL, 5550, 'Orchimont'),
(1328, 1, NULL, 5550, 'Pussemange'),
(1329, 1, NULL, 5550, 'Sugny'),
(1330, 1, NULL, 5550, 'Vresse-Sur-Semois'),
(1331, 1, NULL, 5555, 'Baillamont'),
(1332, 1, NULL, 5555, 'Bellefontaine'),
(1333, 1, NULL, 5555, 'Bicvre'),
(1334, 1, NULL, 5555, 'Cornimont'),
(1335, 1, NULL, 5555, 'Graide'),
(1336, 1, NULL, 5555, 'Gros-Fays'),
(1337, 1, NULL, 5555, 'Monceau-En-Ardenne'),
(1338, 1, NULL, 5555, 'Naomé'),
(1339, 1, NULL, 5555, 'Oizy'),
(1340, 1, NULL, 5555, 'Petit-Fays'),
(1341, 1, NULL, 5560, 'Ciergnon'),
(1342, 1, NULL, 5560, 'Finnevaux'),
(1343, 1, NULL, 5560, 'Houyet'),
(1344, 1, NULL, 5560, 'Hulsonniaux'),
(1345, 1, NULL, 5560, 'Mesnil-Eglise'),
(1346, 1, NULL, 5560, 'Mesnil-Saint-Blaise'),
(1347, 1, NULL, 5561, 'Celles'),
(1348, 1, NULL, 5562, 'Custinne'),
(1349, 1, NULL, 5563, 'Hour'),
(1350, 1, NULL, 5564, 'Wanlin'),
(1351, 1, NULL, 5570, 'Baronville'),
(1352, 1, NULL, 5570, 'Beauraing'),
(1353, 1, NULL, 5570, 'Dion'),
(1354, 1, NULL, 5570, 'Felenne'),
(1355, 1, NULL, 5570, 'Feschaux'),
(1356, 1, NULL, 5570, 'Honnay'),
(1357, 1, NULL, 5570, 'Javingue'),
(1358, 1, NULL, 5570, 'Voneche'),
(1359, 1, NULL, 5570, 'Wancennes'),
(1360, 1, NULL, 5570, 'Winenne'),
(1361, 1, NULL, 5571, 'Wiesme'),
(1362, 1, NULL, 5572, 'Focant'),
(1363, 1, NULL, 5573, 'Martouzin-Neuville'),
(1364, 1, NULL, 5574, 'Pondrôme'),
(1365, 1, NULL, 5575, 'Bourseigne-Neuve'),
(1366, 1, NULL, 5575, 'Bourseigne-Vieille'),
(1367, 1, NULL, 5575, 'Gedinne'),
(1368, 1, NULL, 5575, 'Houdremont'),
(1369, 1, NULL, 5575, 'Louette-Saint-Denis'),
(1370, 1, NULL, 5575, 'Louette-Saint-Pierre'),
(1371, 1, NULL, 5575, 'Malvoisin'),
(1372, 1, NULL, 5575, 'Patignies'),
(1373, 1, NULL, 5575, 'Rienne'),
(1374, 1, NULL, 5575, 'Sart-Custinne'),
(1375, 1, NULL, 5575, 'Vencimont'),
(1376, 1, NULL, 5575, 'Willerzie'),
(1377, 1, NULL, 5576, 'Froidfontaine'),
(1378, 1, NULL, 5580, 'Ave-Et-Auffe'),
(1379, 1, NULL, 5580, 'Buissonville'),
(1380, 1, NULL, 5580, 'Eprave'),
(1381, 1, NULL, 5580, 'Han-Sur-Lesse'),
(1382, 1, NULL, 5580, 'Jemelle'),
(1383, 1, NULL, 5580, 'Lavaux-Sainte-Anne'),
(1384, 1, NULL, 5580, 'Lessive'),
(1385, 1, NULL, 5580, 'Mont-Gauthier'),
(1386, 1, NULL, 5580, 'Rochefort'),
(1387, 1, NULL, 5580, 'Villers-Sur-Lesse'),
(1388, 1, NULL, 5580, 'Wavreille'),
(1389, 1, NULL, 5589, 'Jemelle'),
(1390, 1, NULL, 5590, 'Achene'),
(1391, 1, NULL, 5590, 'Braibant'),
(1392, 1, NULL, 5590, 'Chevetogne'),
(1393, 1, NULL, 5590, 'Ciney'),
(1394, 1, NULL, 5590, 'Conneux'),
(1395, 1, NULL, 5590, 'Haversin'),
(1396, 1, NULL, 5590, 'Leignon'),
(1397, 1, NULL, 5590, 'Pessoux'),
(1398, 1, NULL, 5590, 'Serinchamps'),
(1399, 1, NULL, 5590, 'Sovet'),
(1400, 1, NULL, 5600, 'Fagnolle'),
(1401, 1, NULL, 5600, 'Franchimont'),
(1402, 1, NULL, 5600, 'Jamagne'),
(1403, 1, NULL, 5600, 'Jamiolle'),
(1404, 1, NULL, 5600, 'Merlemont'),
(1405, 1, NULL, 5600, 'Neuville'),
(1406, 1, NULL, 5600, 'Omezée'),
(1407, 1, NULL, 5600, 'Philippeville'),
(1408, 1, NULL, 5600, 'Roly'),
(1409, 1, NULL, 5600, 'Romedenne'),
(1410, 1, NULL, 5600, 'Samart'),
(1411, 1, NULL, 5600, 'Sart-En-Fagne'),
(1412, 1, NULL, 5600, 'Sautour'),
(1413, 1, NULL, 5600, 'Surice'),
(1414, 1, NULL, 5600, 'Villers-En-Fagne'),
(1415, 1, NULL, 5600, 'Villers-Le-Gambon'),
(1416, 1, NULL, 5600, 'Vodecée'),
(1417, 1, NULL, 5620, 'Corenne'),
(1418, 1, NULL, 5620, 'Flavion'),
(1419, 1, NULL, 5620, 'Florennes'),
(1420, 1, NULL, 5620, 'Hemptinne-Lez-Florennes'),
(1421, 1, NULL, 5620, 'Morville'),
(1422, 1, NULL, 5620, 'Rosée'),
(1423, 1, NULL, 5620, 'Saint-Aubin'),
(1424, 1, NULL, 5621, 'Hanzinelle'),
(1425, 1, NULL, 5621, 'Hanzinne'),
(1426, 1, NULL, 5621, 'Morialmé'),
(1427, 1, NULL, 5621, 'Thy-Le-Baudouin'),
(1428, 1, NULL, 5630, 'Cerfontaine'),
(1429, 1, NULL, 5630, 'Daussois'),
(1430, 1, NULL, 5630, 'Senzeilles'),
(1431, 1, NULL, 5630, 'Silenrieux'),
(1432, 1, NULL, 5630, 'Soumoy'),
(1433, 1, NULL, 5630, 'Villers-Deux-Eglises'),
(1434, 1, NULL, 5640, 'Biesme'),
(1435, 1, NULL, 5640, 'Biesmerée'),
(1436, 1, NULL, 5640, 'Graux'),
(1437, 1, NULL, 5640, 'Mettet'),
(1438, 1, NULL, 5640, 'Oret'),
(1439, 1, NULL, 5640, 'Saint-Gérard'),
(1440, 1, NULL, 5641, 'Furnaux'),
(1441, 1, NULL, 5644, 'Ermeton-Sur-Biert'),
(1442, 1, NULL, 5646, 'Stave'),
(1443, 1, NULL, 5650, 'Castillon'),
(1444, 1, NULL, 5650, 'Chastrcs'),
(1445, 1, NULL, 5650, 'Clermont'),
(1446, 1, NULL, 5650, 'Fontenelle'),
(1447, 1, NULL, 5650, 'Fraire'),
(1448, 1, NULL, 5650, 'Pry'),
(1449, 1, NULL, 5650, 'Vogenée'),
(1450, 1, NULL, 5650, 'Walcourt'),
(1451, 1, NULL, 5650, 'Yves-Gomezée'),
(1452, 1, NULL, 5651, 'Berzée'),
(1453, 1, NULL, 5651, 'Gourdinne'),
(1454, 1, NULL, 5651, 'Laneffe'),
(1455, 1, NULL, 5651, 'Rognée'),
(1456, 1, NULL, 5651, 'Somzée'),
(1457, 1, NULL, 5651, 'Tarcienne'),
(1458, 1, NULL, 5651, 'Thy-Le-Château'),
(1459, 1, NULL, 5660, 'Aublain'),
(1460, 1, NULL, 5660, 'Boussu-En-Fagne'),
(1461, 1, NULL, 5660, 'Bruly'),
(1462, 1, NULL, 5660, 'Bruly-De-Pesche'),
(1463, 1, NULL, 5660, 'Couvin'),
(1464, 1, NULL, 5660, 'Cul-Des-Sarts'),
(1465, 1, NULL, 5660, 'Dailly'),
(1466, 1, NULL, 5660, 'Frasnes'),
(1467, 1, NULL, 5660, 'Gonrieux'),
(1468, 1, NULL, 5660, 'Mariembourg'),
(1469, 1, NULL, 5660, 'Pesche'),
(1470, 1, NULL, 5660, 'Pétigny'),
(1471, 1, NULL, 5660, 'Petite-Chapelle'),
(1472, 1, NULL, 5660, 'Presgaux'),
(1473, 1, NULL, 5670, 'Dourbes'),
(1474, 1, NULL, 5670, 'Le Mesnil'),
(1475, 1, NULL, 5670, 'Mazée'),
(1476, 1, NULL, 5670, 'Nismes'),
(1477, 1, NULL, 5670, 'Oignies-En-Thiérache'),
(1478, 1, NULL, 5670, 'Olloy-Sur-Viroin'),
(1479, 1, NULL, 5670, 'Treignes'),
(1480, 1, NULL, 5670, 'Vierves-Sur-Viroin'),
(1481, 1, NULL, 5680, 'Doische'),
(1482, 1, NULL, 5680, 'Gimnée'),
(1483, 1, NULL, 5680, 'Gochenée'),
(1484, 1, NULL, 5680, 'Matagne-La-Grande'),
(1485, 1, NULL, 5680, 'Matagne-La-Petite'),
(1486, 1, NULL, 5680, 'Niverlée'),
(1487, 1, NULL, 5680, 'Romerée'),
(1488, 1, NULL, 5680, 'Soulme'),
(1489, 1, NULL, 5680, 'Vaucelles'),
(1490, 1, NULL, 5680, 'Vodelée'),
(1491, 1, NULL, 6000, 'Charleroi'),
(1492, 1, NULL, 6001, 'Marcinelle'),
(1493, 1, NULL, 6010, 'Couillet'),
(1494, 1, NULL, 6020, 'Dampremy'),
(1495, 1, NULL, 6030, 'Goutroux'),
(1496, 1, NULL, 6030, 'Marchienne-Au-Pont'),
(1497, 1, NULL, 6031, 'Monceau-Sur-Sambre'),
(1498, 1, NULL, 6032, 'Mont-Sur-Marchienne'),
(1499, 1, NULL, 6040, 'Jumet');
INSERT INTO `cities` (`ID`, `ID_Countries`, `Region`, `Postal_Code`, `Label`) VALUES
(1500, 1, NULL, 6041, 'Gosselies'),
(1501, 1, NULL, 6042, 'Lodelinsart'),
(1502, 1, NULL, 6043, 'Ransart'),
(1503, 1, NULL, 6044, 'Roux'),
(1504, 1, NULL, 6060, 'Gilly'),
(1505, 1, NULL, 6061, 'Montignies-Sur-Sambre'),
(1506, 1, NULL, 6075, 'CSM Charleroi X'),
(1507, 1, NULL, 6099, 'Charleroi X'),
(1508, 1, NULL, 6110, 'Montigny-Le-Tilleul'),
(1509, 1, NULL, 6111, 'Landelies'),
(1510, 1, NULL, 6120, 'Cour-Sur-Heure'),
(1511, 1, NULL, 6120, 'Ham-Sur-Heure'),
(1512, 1, NULL, 6120, 'Jamioulx'),
(1513, 1, NULL, 6120, 'Marbaix'),
(1514, 1, NULL, 6120, 'Nalinnes'),
(1515, 1, NULL, 6140, 'Fontaine-L\'Eveque'),
(1516, 1, NULL, 6141, 'Forchies-La-Marche'),
(1517, 1, NULL, 6142, 'Leernes'),
(1518, 1, NULL, 6150, 'Anderlues'),
(1519, 1, NULL, 6180, 'Courcelles'),
(1520, 1, NULL, 6181, 'Gouy-Lez-Piéton'),
(1521, 1, NULL, 6182, 'Souvret'),
(1522, 1, NULL, 6183, 'Trazegnies'),
(1523, 1, NULL, 6200, 'Bouffioulx'),
(1524, 1, NULL, 6200, 'Châtelet'),
(1525, 1, NULL, 1000, 'Bruxelles'),
(1526, 1, NULL, 6210, 'Frasnes-Lez-Gosselies'),
(1527, 1, NULL, 6210, 'Rcves'),
(1528, 1, NULL, 6210, 'Villers-Perwin'),
(1529, 1, NULL, 6210, 'Wayaux'),
(1530, 1, NULL, 6211, 'Mellet'),
(1531, 1, NULL, 6220, 'Fleurus'),
(1532, 1, NULL, 6220, 'Heppignies'),
(1533, 1, NULL, 6220, 'Lambusart'),
(1534, 1, NULL, 6220, 'Wangenies'),
(1535, 1, NULL, 6221, 'Saint-Amand'),
(1536, 1, NULL, 6222, 'Brye'),
(1537, 1, NULL, 6223, 'Wagnelée'),
(1538, 1, NULL, 6224, 'Wanfercée-Baulet'),
(1539, 1, NULL, 6230, 'Buzet'),
(1540, 1, NULL, 6230, 'Obaix'),
(1541, 1, NULL, 6230, 'Pont-à-Celles'),
(1542, 1, NULL, 6230, 'Thiméon'),
(1543, 1, NULL, 6230, 'Viesville'),
(1544, 1, NULL, 6238, 'Liberchies'),
(1545, 1, NULL, 6238, 'Luttre'),
(1546, 1, NULL, 6240, 'Farciennes'),
(1547, 1, NULL, 6240, 'Pironchamps'),
(1548, 1, NULL, 6250, 'Aiseau'),
(1549, 1, NULL, 6250, 'Pont-De-Loup'),
(1550, 1, NULL, 6250, 'Presles'),
(1551, 1, NULL, 6250, 'Roselies'),
(1552, 1, NULL, 6280, 'Acoz'),
(1553, 1, NULL, 6280, 'Gerpinnes'),
(1554, 1, NULL, 6280, 'Gougnies'),
(1555, 1, NULL, 6280, 'Joncret'),
(1556, 1, NULL, 6280, 'Loverval'),
(1557, 1, NULL, 6280, 'Villers-Poterie'),
(1558, 1, NULL, 6440, 'Boussu-Lez-Walcourt'),
(1559, 1, NULL, 6440, 'Fourbechies'),
(1560, 1, NULL, 6440, 'Froidchapelle'),
(1561, 1, NULL, 6440, 'Vergnies'),
(1562, 1, NULL, 6441, 'Erpion'),
(1563, 1, NULL, 6460, 'Bailicvre'),
(1564, 1, NULL, 6460, 'Chimay'),
(1565, 1, NULL, 6460, 'Robechies'),
(1566, 1, NULL, 6460, 'Saint-Remy'),
(1567, 1, NULL, 6460, 'Salles'),
(1568, 1, NULL, 6460, 'Villers-La-Tour'),
(1569, 1, NULL, 6461, 'Virelles'),
(1570, 1, NULL, 6462, 'Vaulx-Lez-Chimay'),
(1571, 1, NULL, 6463, 'Lompret'),
(1572, 1, NULL, 6464, 'Baileux'),
(1573, 1, NULL, 6464, 'Bourlers'),
(1574, 1, NULL, 6464, 'Forges'),
(1575, 1, NULL, 6464, 'L\'Escaillcre'),
(1576, 1, NULL, 6464, 'Riczes'),
(1577, 1, NULL, 6470, 'Grandrieu'),
(1578, 1, NULL, 6470, 'Montbliart'),
(1579, 1, NULL, 6470, 'Rance'),
(1580, 1, NULL, 6470, 'Sautin'),
(1581, 1, NULL, 6470, 'Sivry'),
(1582, 1, NULL, 6500, 'Barbençon'),
(1583, 1, NULL, 6500, 'Beaumont'),
(1584, 1, NULL, 6500, 'Leugnies'),
(1585, 1, NULL, 6500, 'Leval-Chaudeville'),
(1586, 1, NULL, 6500, 'Renlies'),
(1587, 1, NULL, 6500, 'Solre-Saint-Géry'),
(1588, 1, NULL, 6500, 'Thirimont'),
(1589, 1, NULL, 6511, 'Strée'),
(1590, 1, NULL, 6530, 'Leers-Et-Fosteau'),
(1591, 1, NULL, 6530, 'Thuin'),
(1592, 1, NULL, 6531, 'Biesme-Sous-Thuin'),
(1593, 1, NULL, 6532, 'Ragnies'),
(1594, 1, NULL, 6533, 'Biercée'),
(1595, 1, NULL, 6534, 'Gozée'),
(1596, 1, NULL, 6536, 'Donstiennes'),
(1597, 1, NULL, 6536, 'Thuillies'),
(1598, 1, NULL, 6540, 'Lobbes'),
(1599, 1, NULL, 6540, 'Mont-Sainte-Genevicve'),
(1600, 1, NULL, 6542, 'Sars-La-Buissicre'),
(1601, 1, NULL, 6543, 'Bienne-Lez-Happart'),
(1602, 1, NULL, 6560, 'Bersillies-L\'Abbaye'),
(1603, 1, NULL, 6560, 'Erquelinnes'),
(1604, 1, NULL, 6560, 'Grand-Reng'),
(1605, 1, NULL, 6560, 'Hantes-Wihéries'),
(1606, 1, NULL, 6560, 'Montignies-Saint-Christophe'),
(1607, 1, NULL, 6560, 'Solre-Sur-Sambre'),
(1608, 1, NULL, 6567, 'Fontaine-Valmont'),
(1609, 1, NULL, 6567, 'Labuissicre'),
(1610, 1, NULL, 6567, 'Merbes-Le-Château'),
(1611, 1, NULL, 6567, 'Merbes-Sainte-Marie'),
(1612, 1, NULL, 6590, 'Momignies'),
(1613, 1, NULL, 6591, 'Macon'),
(1614, 1, NULL, 6592, 'Monceau-Imbrechies'),
(1615, 1, NULL, 6593, 'Macquenoise'),
(1616, 1, NULL, 6594, 'Beauwelz'),
(1617, 1, NULL, 6596, 'Forge-Philippe'),
(1618, 1, NULL, 6596, 'Seloignes'),
(1619, 1, NULL, 6600, 'Bastogne'),
(1620, 1, NULL, 6600, 'Longvilly'),
(1621, 1, NULL, 6600, 'Noville'),
(1622, 1, NULL, 6600, 'Villers-La-Bonne-Eau'),
(1623, 1, NULL, 6600, 'Wardin'),
(1624, 1, NULL, 6630, 'Martelange'),
(1625, 1, NULL, 6637, 'Fauvillers'),
(1626, 1, NULL, 6637, 'Hollange'),
(1627, 1, NULL, 6637, 'Tintange'),
(1628, 1, NULL, 6640, 'Hompré'),
(1629, 1, NULL, 6640, 'Morhet'),
(1630, 1, NULL, 6640, 'Nives'),
(1631, 1, NULL, 6640, 'Sibret'),
(1632, 1, NULL, 6640, 'Vaux-Lez-Rosicres'),
(1633, 1, NULL, 6640, 'Vaux-Sur-Sure'),
(1634, 1, NULL, 6642, 'Juseret'),
(1635, 1, NULL, 6660, 'Houffalize'),
(1636, 1, NULL, 6660, 'Nadrin'),
(1637, 1, NULL, 6661, 'Mont'),
(1638, 1, NULL, 6661, 'Tailles'),
(1639, 1, NULL, 6662, 'Tavigny'),
(1640, 1, NULL, 6663, 'Mabompré'),
(1641, 1, NULL, 6666, 'Wibrin'),
(1642, 1, NULL, 6670, 'Gouvy'),
(1643, 1, NULL, 6670, 'Limerlé'),
(1644, 1, NULL, 6671, 'Bovigny'),
(1645, 1, NULL, 6672, 'Beho'),
(1646, 1, NULL, 6673, 'Cherain'),
(1647, 1, NULL, 6674, 'Montleban'),
(1648, 1, NULL, 6680, 'Amberloup'),
(1649, 1, NULL, 6680, 'Tillet'),
(1650, 1, NULL, 6681, 'Lavacherie'),
(1651, 1, NULL, 6686, 'Flamierge'),
(1652, 1, NULL, 6687, 'Bertogne'),
(1653, 1, NULL, 6688, 'Longchamps'),
(1654, 1, NULL, 6690, 'Bihain'),
(1655, 1, NULL, 6690, 'Vielsalm'),
(1656, 1, NULL, 6692, 'Petit-Thier'),
(1657, 1, NULL, 6698, 'Grand-Halleux'),
(1658, 1, NULL, 6700, 'Arlon'),
(1659, 1, NULL, 6700, 'Bonnert'),
(1660, 1, NULL, 6700, 'Heinsch'),
(1661, 1, NULL, 6700, 'Toernich'),
(1662, 1, NULL, 6704, 'Guirsch'),
(1663, 1, NULL, 6706, 'Autelbas'),
(1664, 1, NULL, 6717, 'Attert'),
(1665, 1, NULL, 6717, 'Nobressart'),
(1666, 1, NULL, 6717, 'Nothomb'),
(1667, 1, NULL, 6717, 'Thiaumont'),
(1668, 1, NULL, 6717, 'Tontelange'),
(1669, 1, NULL, 6720, 'Habay-La-Neuve'),
(1670, 1, NULL, 6720, 'Hachy'),
(1671, 1, NULL, 6721, 'Anlier'),
(1672, 1, NULL, 6723, 'Habay-La-Vieille'),
(1673, 1, NULL, 6724, 'Houdemont'),
(1674, 1, NULL, 6724, 'Rulles'),
(1675, 1, NULL, 6730, 'Bellefontaine'),
(1676, 1, NULL, 6730, 'Rossignol'),
(1677, 1, NULL, 6730, 'Saint-Vincent'),
(1678, 1, NULL, 6730, 'Tintigny'),
(1679, 1, NULL, 6740, 'Etalle'),
(1680, 1, NULL, 6740, 'Sainte-Marie-Sur-Semois'),
(1681, 1, NULL, 6740, 'Villers-Sur-Semois'),
(1682, 1, NULL, 6741, 'Vance'),
(1683, 1, NULL, 6742, 'Chantemelle'),
(1684, 1, NULL, 6743, 'Buzenol'),
(1685, 1, NULL, 6747, 'Châtillon'),
(1686, 1, NULL, 6747, 'Meix-Le-Tige'),
(1687, 1, NULL, 6747, 'Saint-Léger'),
(1688, 1, NULL, 6750, 'Musson'),
(1689, 1, NULL, 6750, 'Mussy-La-Ville'),
(1690, 1, NULL, 6750, 'Signeulx'),
(1691, 1, NULL, 6760, 'Bleid');

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

CREATE TABLE `contracts` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Orders` int(10) UNSIGNED NOT NULL,
  `ID_Cars` int(10) UNSIGNED NOT NULL,
  `ID_Contract_Type` int(10) UNSIGNED NOT NULL,
  `Date_Start` datetime NOT NULL,
  `Date_End` datetime DEFAULT NULL,
  `Car_Price` double UNSIGNED NOT NULL,
  `Final_Price` double UNSIGNED NOT NULL,
  `Choice_end_Leasing` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contracts`
--

INSERT INTO `contracts` (`ID`, `ID_Orders`, `ID_Cars`, `ID_Contract_Type`, `Date_Start`, `Date_End`, `Car_Price`, `Final_Price`, `Choice_end_Leasing`) VALUES
(5, 59, 12, 2, '2021-03-09 09:33:38', '2022-02-09 09:34:42', 30000, 30550, 1),
(6, 60, 25, 1, '2021-03-12 16:15:38', '2021-03-12 16:15:38', 2500, 2500, 0),
(12, 62, 60, 1, '2021-03-21 16:23:35', '2021-03-21 16:29:45', 1500, 1500, 0),
(14, 63, 63, 1, '2021-03-24 15:09:06', '2026-03-24 15:10:04', 450, 450, 0),
(15, 63, 53, 2, '2021-03-24 15:09:06', '2021-03-25 15:10:04', 70000, 76000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contract_insurances`
--

CREATE TABLE `contract_insurances` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Contract` int(10) UNSIGNED NOT NULL,
  `ID_Insurance` int(10) UNSIGNED NOT NULL,
  `Insurance_Price` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contract_insurances`
--

INSERT INTO `contract_insurances` (`ID`, `ID_Contract`, `ID_Insurance`, `Insurance_Price`) VALUES
(3, 5, 1, 50),
(4, 15, 3, 100);

-- --------------------------------------------------------

--
-- Structure de la table `contract_types`
--

CREATE TABLE `contract_types` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contract_types`
--

INSERT INTO `contract_types` (`ID`, `Label`) VALUES
(2, 'Leasing'),
(1, 'Sale');

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`ID`, `Label`) VALUES
(1, 'Belgique');

-- --------------------------------------------------------

--
-- Structure de la table `insurances`
--

CREATE TABLE `insurances` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL,
  `Description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Price` double UNSIGNED NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `insurances`
--

INSERT INTO `insurances` (`ID`, `Label`, `Description`, `Price`, `IsActive`) VALUES
(1, 'Assurance responsabilité civile auto (RC)', 'L\'assurance responsabilité civile auto (RC) couvre tous les dommages corporels et matériels que vous pourriez causer à un tiers en cas d\'accident où vous êtes en tort.', 50, 1),
(2, 'Mini-omnium', 'Une mini-omnium est une assurance supplémentaire en plus de votre assurance RC auto obligatoire. Elle couvre les dégâts à votre voiture suite à l’incendie, au vol, aux bris de vitres, aux forces de la nature et au choc avec un animal.  ', 70, 1),
(3, 'Full omnium', 'L\'assurance full omnium complémentaire offre la protection la plus étendue pour les dégâts. Vous êtes couvert en cas de dégâts suite à l’incendie, au vol, aux bris de vitres, aux forces de la nature, et en cas d\'accident dont vous êtes responsable.', 100, 1),
(4, 'Assurance Kilométrage', 'Maximum 10.000 Km', 50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `models`
--

CREATE TABLE `models` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Brands` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `models`
--

INSERT INTO `models` (`ID`, `ID_Brands`, `Label`) VALUES
(1, 2, 'Touran'),
(2, 1, 'Astra'),
(3, 1, 'Corsa'),
(4, 2, 'Jetta'),
(5, 2, 'Passat'),
(6, 1, 'Moka'),
(7, 3, 'M3'),
(8, 7, 'Espace'),
(9, 5, 'Classe A'),
(10, 5, 'Classe C'),
(11, 6, '206'),
(12, 4, 'A3'),
(13, 4, 'A1'),
(14, 7, 'Clio'),
(15, 7, 'Megan'),
(16, 3, 'Série 1'),
(17, 7, 'Laguna'),
(18, 3, 'i8');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`ID`, `Label`) VALUES
(39, '4X4'),
(6, 'ABS'),
(13, 'Airbag passager'),
(4, 'Alarme'),
(33, 'Android auto'),
(5, 'Anti-patinage'),
(14, 'Bluetooth'),
(38, 'Caméra de recul'),
(1, 'Climatisation manuelle'),
(37, 'Commande vocale'),
(15, 'Détecteur de pluie'),
(35, 'ESP'),
(36, 'Fonction TV'),
(8, 'GPS'),
(32, 'Isofix'),
(3, 'MP3'),
(17, 'Ordinateur de bord'),
(16, 'Pack sport'),
(31, 'Phare de jour'),
(7, 'Phares LED'),
(9, 'Phares Xénon'),
(30, 'Porte coulissante'),
(25, 'Porte-bagages'),
(2, 'Radio'),
(10, 'Régulateur de vitesse'),
(26, 'Rétroviseurs électriques'),
(12, 'Siège chauffant'),
(22, 'Siège massant'),
(23, 'Siège sport'),
(24, 'Siège électrique'),
(18, 'Sièges sport'),
(19, 'Start/stop'),
(21, 'Suspension sport'),
(34, 'Toit ouvrant'),
(27, 'USB'),
(28, 'Verrouillage centralisé'),
(29, 'Verrouillage centralisé sans clé'),
(11, 'Vitres électrique'),
(20, 'Volant chauffant');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Users` int(10) UNSIGNED NOT NULL,
  `Order_Date` datetime NOT NULL,
  `Order_Statut` enum('Validate','Canceled','Pending') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ID`, `ID_Users`, `Order_Date`, `Order_Statut`) VALUES
(59, 6, '2021-03-09 09:33:29', 'Canceled'),
(60, 7, '2021-03-12 16:15:26', 'Validate'),
(61, 7, '2021-03-13 16:54:34', 'Pending'),
(62, 8, '2021-03-21 16:23:35', 'Validate'),
(63, 12, '2021-03-24 15:09:06', 'Validate');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`ID`, `Label`) VALUES
(25, 'create_ads'),
(13, 'create_colors'),
(17, 'create_insurances'),
(33, 'create_models'),
(29, 'create_options'),
(21, 'create_orders'),
(9, 'create_roles'),
(3, 'create_users'),
(27, 'delete_ads'),
(16, 'delete_colors'),
(20, 'delete_insurances'),
(35, 'delete_models'),
(31, 'delete_options'),
(23, 'delete_orders'),
(10, 'delete_roles'),
(4, 'delete_users'),
(28, 'read_ads'),
(15, 'read_colors'),
(19, 'read_insurances'),
(36, 'read_models'),
(32, 'read_options'),
(24, 'read_orders'),
(12, 'read_roles'),
(8, 'read_users'),
(26, 'update_ads'),
(14, 'update_colors'),
(18, 'update_insurances'),
(34, 'update_models'),
(30, 'update_options'),
(22, 'update_orders'),
(11, 'update_roles'),
(7, 'update_users');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Label` varchar(255) COLLATE utf8_bin NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`ID`, `Label`, `IsActive`) VALUES
(1, 'Admin', 1),
(2, 'User', 1),
(3, 'Modérateur', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Roles` int(10) UNSIGNED NOT NULL,
  `ID_Permissions` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`ID`, `ID_Roles`, `ID_Permissions`) VALUES
(1, 1, 17),
(2, 1, 18),
(3, 1, 20),
(4, 1, 19),
(5, 1, 29),
(6, 1, 32),
(7, 1, 30),
(8, 1, 36),
(9, 1, 15),
(10, 1, 25),
(11, 1, 26),
(12, 1, 28),
(15, 1, 12),
(16, 1, 13),
(17, 1, 33),
(18, 1, 21),
(19, 1, 9),
(20, 1, 3),
(21, 1, 27),
(22, 1, 7),
(23, 1, 11),
(24, 1, 22),
(25, 1, 14),
(26, 1, 8),
(27, 1, 24),
(28, 1, 16),
(29, 1, 35),
(30, 1, 31),
(31, 1, 23),
(32, 1, 4),
(33, 1, 10),
(34, 1, 34),
(35, 3, 28),
(36, 3, 15),
(37, 3, 19),
(38, 3, 36),
(39, 3, 32),
(40, 3, 24),
(41, 3, 12),
(42, 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_Roles` int(10) UNSIGNED NOT NULL,
  `Firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `Lastname` varchar(255) COLLATE utf8_bin NOT NULL,
  `Username` varchar(255) COLLATE utf8_bin NOT NULL,
  `Password` varchar(255) COLLATE utf8_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8_bin NOT NULL,
  `Register_Date` datetime NOT NULL,
  `Birthdate` datetime NOT NULL,
  `VATNumber` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `ID_Roles`, `Firstname`, `Lastname`, `Username`, `Password`, `Email`, `Register_Date`, `Birthdate`, `VATNumber`, `IsActive`) VALUES
(6, 2, 'User1', 'User1', 'User1', 'User1', 'max2759@gmail.com', '2021-02-11 10:36:08', '2000-02-17 10:36:08', NULL, 1),
(7, 2, 'User2', 'User2', 'User2', 'User2', 'max2759@gmail.com', '2021-02-07 10:36:08', '2001-02-11 10:36:08', NULL, 1),
(8, 1, 'Zabbara', 'Maximilien', 'max', '07480fb9e85b9396af06f006cf1c95024af2531c65fb505cfbd0add1e2f31573', 'max2759@gmail.com', '2021-03-16 15:41:32', '1999-10-05 10:00:00', '', 1),
(9, 2, 'test', 'test', 'test', '07480fb9e85b9396af06f006cf1c95024af2531c65fb505cfbd0add1e2f31573', 'test@gmail.com', '2021-03-16 18:55:15', '1999-10-10 10:00:00', '', 1),
(10, 1, 'Admin', 'Admin', 'Admin', '07480fb9e85b9396af06f006cf1c95024af2531c65fb505cfbd0add1e2f31573', 'admin@gmail.com', '2021-03-17 09:43:36', '1999-10-01 10:00:00', '', 1),
(11, 3, 'Wolf', 'Toto', 'tw', '106ac304ae39bc4029db0faf0d1734bd5a1dc2474331e8e17039365847536d73', 'max2759@gmail.com', '2021-03-23 08:50:06', '1972-01-12 11:00:00', '', 1),
(12, 3, 'John', 'Wicky', 'Modo', '07480fb9e85b9396af06f006cf1c95024af2531c65fb505cfbd0add1e2f31573', 'max2759@gmail.com', '2021-03-24 14:56:22', '1995-12-02 11:00:00', '', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cities` (`ID_Cities`),
  ADD KEY `ID_Users` (`ID_Users`);

--
-- Index pour la table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cars` (`ID_Cars`),
  ADD KEY `ID_Users` (`ID_Users`);

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cars_Colors` (`ID_Cars_Colors`),
  ADD KEY `ID_Cars_Fuels` (`ID_Cars_Fuels`),
  ADD KEY `ID_Cars_GearBox` (`ID_Cars_GearBox`),
  ADD KEY `ID_Cars_Types` (`ID_Cars_Types`),
  ADD KEY `ID_Models` (`ID_Models`);

--
-- Index pour la table `cars_colors`
--
ALTER TABLE `cars_colors`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `cars_fuels`
--
ALTER TABLE `cars_fuels`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `cars_gearbox`
--
ALTER TABLE `cars_gearbox`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `cars_options`
--
ALTER TABLE `cars_options`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cars` (`ID_Cars`),
  ADD KEY `ID_Options` (`ID_Options`);

--
-- Index pour la table `cars_pictures`
--
ALTER TABLE `cars_pictures`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cars` (`ID_Cars`);

--
-- Index pour la table `cars_types`
--
ALTER TABLE `cars_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Countries` (`ID_Countries`);

--
-- Index pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Cars` (`ID_Cars`),
  ADD KEY `ID_Contract_Type` (`ID_Contract_Type`),
  ADD KEY `ID_Orders` (`ID_Orders`);

--
-- Index pour la table `contract_insurances`
--
ALTER TABLE `contract_insurances`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Contract` (`ID_Contract`),
  ADD KEY `ID_Insurance` (`ID_Insurance`);

--
-- Index pour la table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`),
  ADD KEY `ID_Brands` (`ID_Brands`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Users` (`ID_Users`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Label` (`Label`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Permissions` (`ID_Permissions`),
  ADD KEY `ID_Roles` (`ID_Roles`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `RolesID` (`ID_Roles`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ads`
--
ALTER TABLE `ads`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `cars_colors`
--
ALTER TABLE `cars_colors`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `cars_fuels`
--
ALTER TABLE `cars_fuels`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cars_gearbox`
--
ALTER TABLE `cars_gearbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cars_options`
--
ALTER TABLE `cars_options`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT pour la table `cars_pictures`
--
ALTER TABLE `cars_pictures`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `cars_types`
--
ALTER TABLE `cars_types`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1692;

--
-- AUTO_INCREMENT pour la table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `contract_insurances`
--
ALTER TABLE `contract_insurances`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `models`
--
ALTER TABLE `models`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `FK_addresses_ID_Cities` FOREIGN KEY (`ID_Cities`) REFERENCES `cities` (`ID`),
  ADD CONSTRAINT `FK_addresses_ID_Users` FOREIGN KEY (`ID_Users`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`ID_Cities`) REFERENCES `cities` (`ID`),
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`ID_Users`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `FK_ads_ID_Cars` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `ads_ibfk_2` FOREIGN KEY (`ID_Users`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_cars_ID_Cars_Colors` FOREIGN KEY (`ID_Cars_Colors`) REFERENCES `cars_colors` (`ID`),
  ADD CONSTRAINT `FK_cars_ID_Cars_Fuels` FOREIGN KEY (`ID_Cars_Fuels`) REFERENCES `cars_fuels` (`ID`),
  ADD CONSTRAINT `FK_cars_ID_Cars_GearBox` FOREIGN KEY (`ID_Cars_GearBox`) REFERENCES `cars_gearbox` (`ID`),
  ADD CONSTRAINT `FK_cars_ID_Cars_Types` FOREIGN KEY (`ID_Cars_Types`) REFERENCES `cars_types` (`ID`),
  ADD CONSTRAINT `FK_cars_ID_Models` FOREIGN KEY (`ID_Models`) REFERENCES `models` (`ID`),
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`ID_Cars_Colors`) REFERENCES `cars_colors` (`ID`),
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`ID_Cars_Fuels`) REFERENCES `cars_fuels` (`ID`),
  ADD CONSTRAINT `cars_ibfk_3` FOREIGN KEY (`ID_Cars_GearBox`) REFERENCES `cars_gearbox` (`ID`),
  ADD CONSTRAINT `cars_ibfk_5` FOREIGN KEY (`ID_Cars_Types`) REFERENCES `cars_types` (`ID`),
  ADD CONSTRAINT `cars_ibfk_6` FOREIGN KEY (`ID_Models`) REFERENCES `models` (`ID`);

--
-- Contraintes pour la table `cars_options`
--
ALTER TABLE `cars_options`
  ADD CONSTRAINT `FK_cars_options_ID_Cars` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `FK_cars_options_ID_Options` FOREIGN KEY (`ID_Options`) REFERENCES `options` (`ID`),
  ADD CONSTRAINT `cars_options_ibfk_1` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `cars_options_ibfk_2` FOREIGN KEY (`ID_Options`) REFERENCES `options` (`ID`);

--
-- Contraintes pour la table `cars_pictures`
--
ALTER TABLE `cars_pictures`
  ADD CONSTRAINT `cars_pictures_ibfk_1` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`);

--
-- Contraintes pour la table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_cities_ID_Countries` FOREIGN KEY (`ID_Countries`) REFERENCES `countries` (`ID`),
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`ID_Countries`) REFERENCES `countries` (`ID`);

--
-- Contraintes pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `FK_contracts_ID_Cars` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `FK_contracts_ID_Contract_Type` FOREIGN KEY (`ID_Contract_Type`) REFERENCES `contract_types` (`ID`),
  ADD CONSTRAINT `FK_contracts_ID_Orders` FOREIGN KEY (`ID_Orders`) REFERENCES `orders` (`ID`),
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`ID_Cars`) REFERENCES `cars` (`ID`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`ID_Contract_Type`) REFERENCES `contract_types` (`ID`),
  ADD CONSTRAINT `contracts_ibfk_3` FOREIGN KEY (`ID_Orders`) REFERENCES `orders` (`ID`);

--
-- Contraintes pour la table `contract_insurances`
--
ALTER TABLE `contract_insurances`
  ADD CONSTRAINT `FK_contract_insurances_ID_Contract` FOREIGN KEY (`ID_Contract`) REFERENCES `contracts` (`ID`),
  ADD CONSTRAINT `FK_contract_insurances_ID_Insurance` FOREIGN KEY (`ID_Insurance`) REFERENCES `insurances` (`ID`),
  ADD CONSTRAINT `contract_insurances_ibfk_1` FOREIGN KEY (`ID_Contract`) REFERENCES `contracts` (`ID`),
  ADD CONSTRAINT `contract_insurances_ibfk_2` FOREIGN KEY (`ID_Insurance`) REFERENCES `insurances` (`ID`);

--
-- Contraintes pour la table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `FK_models_ID_Brands` FOREIGN KEY (`ID_Brands`) REFERENCES `brands` (`ID`),
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`ID_Brands`) REFERENCES `brands` (`ID`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_ID_Users` FOREIGN KEY (`ID_Users`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ID_Users`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FK_roles_permissions_ID_Permissions` FOREIGN KEY (`ID_Permissions`) REFERENCES `permissions` (`ID`),
  ADD CONSTRAINT `FK_roles_permissions_ID_Roles` FOREIGN KEY (`ID_Roles`) REFERENCES `roles` (`ID`),
  ADD CONSTRAINT `ID_Permissions` FOREIGN KEY (`ID_Permissions`) REFERENCES `permissions` (`ID`),
  ADD CONSTRAINT `ID_Roles` FOREIGN KEY (`ID_Roles`) REFERENCES `roles` (`ID`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_ID_Roles` FOREIGN KEY (`ID_Roles`) REFERENCES `roles` (`ID`),
  ADD CONSTRAINT `RolesID` FOREIGN KEY (`ID_Roles`) REFERENCES `roles` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
