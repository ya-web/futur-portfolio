-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Client :  allwisefmtinso.mysql.db
-- Généré le :  Lun 26 Juin 2017 à 11:34
-- Version du serveur :  5.5.55-0+deb7u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `allwisefmtinso`
--

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhotoId` int(11) NOT NULL,
  `Section` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cathegory` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Subtitle` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NbPersMax` tinyint(2) NOT NULL,
  `Length` float(4,2) NOT NULL,
  `Width` float(4,2) NOT NULL,
  `Height` float(4,2) NOT NULL,
  `Weight` int(3) NOT NULL,
  `Price1D` int(3) NOT NULL,
  `Price2D` int(3) NOT NULL,
  `NbPersInst` tinyint(2) NOT NULL,
  `Nbdisp` tinyint(4) NOT NULL,
  `Special` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`Id`, `Name`, `PhotoId`, `Section`, `Cathegory`, `Subtitle`, `NbPersMax`, `Length`, `Width`, `Height`, `Weight`, `Price1D`, `Price2D`, `NbPersInst`, `Nbdisp`, `Special`) VALUES
(1, 'Carotte', 1, 'Les Gonflables', 'chateaux', 'Les Châteaux', 12, 4.50, 4.00, 4.00, 100, 160, 200, 2, 1, ''),
(2, 'Circuit', 5, 'Les Gonflables', 'parcours', 'Les Parcours', 14, 7.00, 4.00, 3.00, 130, 200, 240, 3, 1, ''),
(3, 'Obstacles', 10, 'Les Gonflables', 'parcours', 'Les Parcours', 16, 8.00, 4.00, 2.50, 160, 210, 260, 3, 1, ''),
(4, 'Croco', 15, 'Les Gonflables', 'chateaux', 'Les Châteaux', 12, 5.00, 5.00, 4.00, 120, 220, 270, 3, 1, ''),
(5, 'Safari', 24, 'Les Gonflables', 'chateaux', 'Les Châteaux', 15, 5.00, 5.00, 4.50, 120, 240, 280, 5, 1, ''),
(36, 'Bâteau', 121, 'Les Gonflables', 'chateaux', 'Les Châteaux', 30, 10.00, 5.00, 4.50, 320, 380, 440, 5, 1, ''),
(7, 'Chevalier', 35, 'Les Gonflables', 'chateaux', 'Les Châteaux', 17, 5.00, 5.00, 5.00, 180, 280, 340, 4, 1, ''),
(8, 'Course Auto', 40, 'Les Gonflables', 'parcours', 'Les Parcours', 30, 15.00, 4.00, 5.00, 350, 400, 480, 5, 1, ''),
(9, 'Cactus', 49, 'Les Gonflables', 'toboggans', 'Les Toboggans', 24, 8.00, 4.00, 6.00, 290, 310, 390, 5, 1, '2 pistes.'),
(10, 'Arc-en-ciel', 54, 'Les Gonflables', 'toboggans', 'Les Toboggans', 26, 8.00, 5.00, 6.00, 320, 320, 400, 5, 1, '2 pistes.'),
(11, 'Gladiateurs', 63, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 4, 7.00, 6.00, 3.00, 280, 290, 350, 3, 1, '2 ou 4 joueurs.'),
(12, 'Bubble-foot', 67, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 16, 0.00, 1.50, 1.30, 14, 40, 55, 1, 16, 'Location par multiple de 4 boules uniquement. Gonfleur à disposition. Utilisation uniquement sur : Pelouses, parquets, moquettes ou revêtements synthétiques non-abrasifs.'),
(13, 'Babyfoot-Humain', 69, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 12, 10.50, 7.00, 2.50, 300, 330, 400, 2, 1, '4 barres.'),
(14, 'Sumos', 73, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 2, 4.00, 4.00, 0.00, 80, 100, 130, 1, 3, '2 joueurs à la fois sur une piste. 1 pistes et 2 costumes adultes (80 kg). 2 piste et 4 costumes enfants (90 kg pour chaque exemplaire).'),
(15, 'Minions', 78, 'Mais Aussi', 'costumes', 'Les Mascottes', 0, 0.00, 0.00, 0.00, 0, 50, 60, 0, 2, '1 costume Minion 1 oeil et 1 Minion 2 yeux.'),
(16, 'Panthère-rose', 79, 'Mais Aussi', 'costumes', 'Les Mascottes', 0, 0.00, 0.00, 0.00, 0, 50, 60, 0, 1, ''),
(17, 'Bob l''éponge', 80, 'Mais Aussi', 'costumes', 'Les Mascottes', 0, 0.00, 0.00, 0.00, 0, 50, 60, 0, 1, ''),
(18, 'Lapin', 81, 'Mais Aussi', 'costumes', 'Les Mascottes', 0, 0.00, 0.00, 0.00, 0, 50, 60, 0, 1, ''),
(19, 'Rodeo', 82, 'Les Jeux', 'mecaniques', 'Jeux Mécaniques', 1, 0.00, 4.50, 0.00, 0, 500, 680, 5, 1, 'Pour adultes et enfants. Pour le Rodéo mécanique, la livraison et l''installation sont faites obligatoirement par nos soins (pas d''enlèvement en entrepôt). '),
(20, 'Surf', 91, 'Les Jeux', 'mecaniques', 'Jeux Mécaniques', 1, 0.00, 4.50, 0.00, 0, 500, 680, 5, 1, 'Pour adultes et enfants. Pour le Surf mécanique, la livraison et l''installation sont faites obligatoirement par nos soins (pas d''enlèvement en entrepôt). '),
(54, 'Circuit + 4 karts à pédales adultes', 163, 'Les Jeux', 'karts', 'Les Karts', 4, 20.00, 10.00, 3.00, 80, 440, 560, 1, 4, 'Location de 4 karts à pédales adulte + circuit gonflable'),
(58, 'mikado', 173, 'Les Jeux', 'bois', 'Jeux en Bois', 2, 0.00, 0.00, 0.00, 0, 15, 25, 1, 1, ''),
(59, 'tir-poule', 174, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 0.00, 0.00, 0.00, 0, 30, 45, 1, 1, ''),
(55, 'Kart', 166, 'Les Jeux', 'karts', 'Les Karts', 1, 0.00, 0.00, 0.00, 0, 40, 60, 1, 4, ' '),
(56, 'Circuit voiture retro enfant', 168, 'Les Jeux', 'karts', 'Les Karts', 4, 20.00, 10.00, 3.00, 120, 300, 420, 3, 4, 'Location de 4 voiturettes à pédales enfant + circuit gonflable'),
(23, 'Barbe à Papa', 100, 'Mais Aussi', 'gourmandises', 'Les Gourmandises', 0, 0.00, 0.00, 0.00, 0, 45, 60, 1, 2, '+ 10 € (ttc) par kit de bâtonnets et consommables pour 50 barbes. '),
(24, 'Crêpière', 103, 'Mais Aussi', 'gourmandises', 'Les Gourmandises', 0, 0.00, 0.00, 0.00, 0, 35, 50, 1, 2, 'Ø 40 cm 23 Kg 3600 W 220V /16A. '),
(25, 'Gaufres sucettes', 105, 'Mais Aussi', 'gourmandises', 'Les Gourmandises', 0, 0.00, 0.00, 0.00, 0, 45, 65, 1, 1, '+ 5 € (ttc) par kit de bâtonnets pour 50 gaufres. Fabrication de 80 gaufres par heure. '),
(26, 'Churros', 107, 'Mais Aussi', 'gourmandises', 'Les Gourmandises', 0, 0.00, 0.00, 0.00, 0, 45, 65, 1, 1, 'Sans huile !!! Fabrication 120 churros par heure.'),
(27, 'Frites', 109, 'Mais Aussi', 'gourmandises', 'Les Gourmandises', 0, 0.00, 0.00, 0.00, 0, 110, 135, 1, 1, 'Friteuse double paniers, gaz Propane, huile et bouteille de gaz non fournies.  OPTIONS : Gaz propane : 25 € ttc - Bidon 25 litres d''huile spéciale friture : 50 € ttc. '),
(28, 'Palets', 111, 'Les Jeux', 'bois', 'Jeux en Bois', 2, 1.29, 0.68, 0.05, 0, 30, 45, 0, 1, ' '),
(29, 'Bowling', 112, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 2.00, 0.40, 0.00, 0, 30, 45, 0, 1, ''),
(30, 'Cible', 113, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 1.52, 0.39, 0.00, 0, 30, 45, 0, 1, ''),
(31, 'Quillettes', 114, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 1.52, 0.68, 0.09, 0, 30, 45, 0, 1, ' '),
(32, 'Sono', 115, 'Mais Aussi', 'evenementiel', 'Vos Évènements', 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, ''),
(33, 'Lumière', 117, 'Mais Aussi', 'evenementiel', 'Vos Évènements', 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, ''),
(34, 'Organiser', 118, 'Mais Aussi', 'evenementiel', 'Vos Évènements', 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, ''),
(35, 'Tire-Élastique', 120, 'Les jeux', 'groupes', 'Jeux à Plusieurs', 2, 10.00, 4.00, 3.00, 140, 280, 340, 2, 1, 'Une prise 220V - 16A'),
(37, 'Holaf', 125, 'Mais aussi', 'costumes', 'Les Mascottes', 0, 0.00, 0.00, 0.00, 0, 50, 60, 0, 1, 'Une caution de 200€ (chèque) vous sera demandé à la location.'),
(38, 'Requin', 126, 'Les Gonflables', 'chateaux', 'Les Châteaux', 15, 5.20, 5.00, 3.20, 120, 220, 270, 2, 1, ''),
(39, 'Château-fort', 130, 'Les Gonflables', 'toboggans', 'Les Toboggans', 16, 11.00, 5.00, 4.50, 200, 280, 320, 5, 1, ''),
(40, 'Pompiers', 133, 'Les Gonflables', 'toboggans', 'Les Toboggans', 16, 5.60, 5.00, 3.20, 180, 230, 280, 4, 1, ''),
(41, 'Basket shoot', 136, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 3, 3.60, 3.00, 5.60, 75, 200, 250, 3, 1, ''),
(42, 'Âne qui rit', 140, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 5, 4.50, 1.20, 1.30, 120, 80, 100, 3, 1, ''),
(43, 'Kermesse marin', 143, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 4, 2.50, 1.30, 2.70, 150, 220, 270, 3, 4, ''),
(44, 'Lancer couteaux', 146, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 4, 2.40, 2.80, 3.50, 120, 120, 170, 4, 1, ''),
(45, 'Bateau Pirate Shooter', 148, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 15, 10.10, 4.20, 6.70, 230, 380, 430, 4, 1, 'Avec canons à balles intégrés.'),
(46, 'Anneau cactus', 154, 'Les Jeux', 'groupes', 'Jeux à Plusieurs', 12, 2.00, 1.00, 0.00, 120, 80, 120, 3, 1, ''),
(47, 'Grenouille', 156, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 0.00, 0.00, 0.00, 0, 30, 45, 0, 1, ''),
(48, 'Lanceur de tac', 157, 'Les Jeux', 'bois', 'Jeux en Bois', 2, 0.00, 0.00, 0.00, 0, 15, 25, 0, 1, 'Retour avec cordellette qui s’accroche.'),
(49, 'Tir au canard', 158, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 0.00, 0.00, 0.00, 0, 30, 45, 0, 1, ' + 6 cartouches.'),
(50, 'Mini golf', 159, 'Les Jeux', 'bois', 'Jeux en Bois', 2, 0.00, 0.00, 0.00, 0, 15, 25, 0, 1, ''),
(51, 'Marche en équipes', 160, 'Les Jeux', 'bois', 'Jeux en Bois', 6, 0.00, 0.00, 0.00, 0, 20, 30, 0, 1, ''),
(52, 'Mur gruyère', 161, 'Les Jeux', 'bois', 'Jeux en Bois', 1, 0.00, 0.00, 0.00, 0, 30, 45, 0, 1, ''),
(53, 'Puissance 4 géant', 162, 'Les Jeux', 'bois', 'Jeux en Bois', 2, 0.00, 0.00, 0.00, 0, 30, 45, 0, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `Id` int(11) NOT NULL,
  `Vignette1` tinyint(1) NOT NULL,
  `ItemId` int(11) NOT NULL,
  `Title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `photos`
--

INSERT INTO `photos` (`Id`, `Vignette1`, `ItemId`, `Title`) VALUES
(1, 1, 1, 'carotte'),
(2, 0, 1, 'carotte1'),
(3, 0, 1, 'carotte2'),
(4, 0, 1, 'carotte3'),
(5, 1, 2, 'circuit'),
(6, 0, 2, 'circuit1'),
(7, 0, 2, 'circuit2'),
(8, 0, 2, 'circuit3'),
(9, 0, 2, 'circuit4'),
(10, 1, 3, 'obstacles'),
(11, 0, 3, 'obstacles1'),
(12, 0, 3, 'obstacles2'),
(13, 0, 3, 'obstacles3'),
(14, 0, 3, 'obstacles4'),
(15, 1, 4, 'croco'),
(16, 0, 4, 'croco1'),
(17, 0, 4, 'croco2'),
(18, 0, 4, 'croco3'),
(19, 0, 4, 'croco4'),
(20, 0, 4, 'croco5'),
(21, 0, 4, 'croco6'),
(22, 0, 4, 'croco7'),
(23, 0, 4, 'croco8'),
(24, 1, 5, 'safari'),
(25, 0, 5, 'safari1'),
(26, 0, 5, 'safari2'),
(27, 0, 5, 'safari3'),
(28, 0, 5, 'safari4'),
(126, 1, 38, 'requin'),
(125, 1, 37, 'holaf'),
(124, 0, 36, 'bateau3'),
(123, 0, 36, 'bateau2'),
(122, 0, 36, 'bateau1'),
(121, 1, 36, 'bateau'),
(35, 1, 7, 'chevalier'),
(36, 0, 7, 'chevalier1'),
(37, 0, 7, 'chevalier2'),
(38, 0, 7, 'chevalier3'),
(39, 0, 7, 'chevalier4'),
(40, 1, 8, 'racing'),
(41, 0, 8, 'racing1'),
(42, 0, 8, 'racing2'),
(43, 0, 8, 'racing3'),
(44, 0, 8, 'racing4'),
(45, 0, 8, 'racing5'),
(46, 0, 8, 'racing6'),
(47, 0, 8, 'racing7'),
(48, 0, 8, 'racing8'),
(49, 1, 9, 'cactus'),
(50, 0, 9, 'cactus1'),
(51, 0, 9, 'cactus2'),
(52, 0, 9, 'cactus3'),
(53, 0, 9, 'cactus4'),
(54, 1, 10, 'arc-en-ciel'),
(55, 0, 10, 'arc-en-ciel1'),
(56, 0, 10, 'arc-en-ciel2'),
(57, 0, 10, 'arc-en-ciel3'),
(58, 0, 10, 'arc-en-ciel4'),
(59, 0, 10, 'arc-en-ciel5'),
(60, 0, 10, 'arc-en-ciel6'),
(61, 0, 10, 'arc-en-ciel7'),
(62, 0, 10, 'arc-en-ciel8'),
(63, 1, 11, 'gladiateurs'),
(64, 0, 11, 'gladiateurs1'),
(65, 0, 11, 'gladiateurs2'),
(66, 0, 11, 'gladiateurs3'),
(67, 1, 12, 'bubble-foot'),
(68, 0, 12, 'bubble-foot1'),
(69, 1, 13, 'babyfoot'),
(70, 0, 13, 'babyfoot1'),
(71, 0, 13, 'babyfoot2'),
(72, 0, 13, 'babyfoot3'),
(73, 1, 14, 'sumo'),
(74, 0, 14, 'sumo1'),
(75, 0, 14, 'sumo2'),
(76, 0, 14, 'sumo3'),
(77, 0, 14, 'sumo4'),
(78, 1, 15, 'minions'),
(79, 1, 16, 'pantere-rose'),
(80, 1, 17, 'bob'),
(81, 1, 18, 'lapin'),
(82, 1, 19, 'rodeo'),
(83, 0, 19, 'rodeo1'),
(84, 0, 19, 'rodeo2'),
(85, 0, 19, 'rodeo3'),
(86, 0, 19, 'rodeo4'),
(87, 0, 19, 'rodeo5'),
(88, 0, 19, 'rodeo6'),
(89, 0, 19, 'rodeo7'),
(90, 0, 19, 'rodeo8'),
(91, 1, 20, 'surf'),
(92, 0, 20, 'surf1'),
(93, 0, 20, 'surf2'),
(94, 1, 21, 'circuit-quads'),
(95, 0, 21, 'circuit-quads1'),
(96, 0, 21, 'circuit-quads2'),
(97, 1, 22, 'quads'),
(98, 0, 22, 'quads1'),
(99, 0, 22, 'quads2'),
(100, 1, 23, 'barbapapa'),
(101, 0, 23, 'barbapapa1'),
(102, 0, 23, 'barbapapa2'),
(103, 1, 24, 'crepe'),
(104, 0, 24, 'crepe1'),
(105, 1, 25, 'gaufres'),
(106, 0, 25, 'gaufres1'),
(107, 1, 26, 'churros'),
(108, 0, 26, 'churros1'),
(109, 1, 27, 'frites'),
(110, 0, 27, 'frites1'),
(111, 1, 28, 'palets'),
(112, 1, 29, 'bowling'),
(113, 1, 30, 'cible'),
(114, 1, 31, 'quillettes'),
(115, 1, 32, 'sono'),
(116, 0, 32, 'sono1'),
(117, 1, 33, 'lumieres'),
(118, 1, 34, 'mariage'),
(119, 0, 34, 'mariage1'),
(120, 1, 35, 'elastique'),
(127, 0, 38, 'requin1'),
(128, 0, 38, 'requin2'),
(129, 0, 38, 'requin3'),
(130, 1, 39, 'chateau-fort'),
(131, 0, 39, 'chateau-fort1'),
(132, 0, 39, 'chateau-fort2'),
(133, 1, 40, 'pompiers'),
(134, 0, 40, 'pompiers1'),
(135, 0, 40, 'pompiers2'),
(136, 1, 41, 'basket'),
(137, 0, 41, 'basket1'),
(138, 0, 41, 'basket2'),
(139, 0, 41, 'basket3'),
(140, 1, 42, 'ane'),
(141, 0, 42, 'ane1'),
(142, 0, 42, 'ane2'),
(143, 1, 43, 'kermesse-marin'),
(144, 0, 43, 'kermesse-marin1'),
(145, 0, 43, 'kermesse-marin2'),
(146, 1, 44, 'lancer-couteaux'),
(147, 0, 44, 'lancer-couteaux1'),
(148, 1, 45, 'bateau-pirate-shooter'),
(149, 0, 45, 'bateau-pirate-shooter1'),
(150, 0, 45, 'bateau-pirate-shooter2'),
(151, 0, 45, 'bateau-pirate-shooter3'),
(152, 0, 45, 'bateau-pirate-shooter4'),
(154, 1, 46, 'anneau-cactus'),
(155, 0, 46, 'anneau-cactus1'),
(156, 1, 47, 'grenouille'),
(157, 1, 48, 'lancer-boules'),
(158, 1, 49, 'Tir-aux-canards'),
(159, 1, 50, 'mini-golf'),
(160, 1, 51, 'marche-equipes'),
(161, 1, 52, 'mur-gruyere'),
(162, 1, 53, 'puissance-4-big'),
(163, 1, 54, 'circuit-kart'),
(164, 0, 54, 'circuit-kart1'),
(165, 0, 54, 'circuit-kart2'),
(166, 1, 55, 'kart'),
(167, 0, 55, 'kart1'),
(168, 1, 56, 'circuit-kart-enfant'),
(169, 0, 56, 'circuit-kart-enfant1'),
(170, 0, 56, 'circuit-kart-enfant2'),
(171, 1, 57, 'kart-enfant'),
(172, 0, 57, 'kart-enfant1'),
(173, 1, 58, 'mikado'),
(174, 1, 59, 'tir-poule');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=175;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
