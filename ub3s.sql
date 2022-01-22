-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 13:13
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ub3s`
--

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE `account` (
  `id` bigint(20) NOT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `account`
--

INSERT INTO `account` (`id`, `create_date_time`, `enabled`, `password`, `photo`, `update_date_time`, `username`) VALUES
(1, '2021-11-27 17:38:17', b'1', '$2a$10$Z2RJfFawy8HFYjAc2V1ho.74nbyc1rvAPRqq46p06aTGHaHl5rHw.', NULL, '2021-11-27 17:38:17', 'ngorfaye'),
(7, '2022-01-07 11:19:00', b'1', '$2a$10$7Ya3hx79ryMLr/XnEhkJze.C5eKikW3tN28aBsmz8bJ3QPyzLKsq.', NULL, '2022-01-07 11:19:00', '764280173'),
(6, '2021-12-25 14:38:39', b'1', '$2a$10$BwqSaDe24PougauMviG1y.yDzA0MWCmoaCpxLC9ef.gzqjmCzKLmW', NULL, '2021-12-25 14:38:39', '778504412');

-- --------------------------------------------------------

--
-- Structure de la table `account_roles`
--

CREATE TABLE `account_roles` (
  `account_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

CREATE TABLE `arrondissement` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `departement_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arrondissement`
--

INSERT INTO `arrondissement` (`id`, `libelle`, `departement_id`) VALUES
(1, 'Almadies', 1),
(2, 'Dakar Plateau', 1),
(3, 'Grand Dakar', 1),
(4, 'Parcelles Assainies', 1),
(5, 'Guédiawaye', 2),
(6, 'Dagoudane', 3),
(7, 'Niayes', 3),
(8, 'Thiaroye', 3),
(9, 'Rufisque-Est', 4),
(10, 'Bambylor', 4),
(11, 'Baba Garage', 5),
(12, 'Lambaye', 5),
(13, 'Ngoye', 5),
(14, 'Ndindy', 6),
(15, 'Ndoulo', 6),
(16, 'Kael', 7),
(17, 'Ndame', 7),
(18, 'Taïf', 7),
(19, 'Ndiop', 8),
(20, 'Fimela', 8),
(21, 'Niakhar', 8),
(22, 'Tattaguine', 8),
(23, 'Djilor', 9),
(24, 'Niodior', 9),
(25, 'Toubacouta', 9),
(26, 'Colobane', 10),
(27, 'Ouadiour', 10),
(28, 'Bandafassi', 11),
(29, 'Fongolembi', 11),
(30, 'Dakateli', 12),
(31, 'Dar Salam', 12),
(32, 'Bembou', 13),
(33, 'Sabodala', 13),
(34, 'Keur Mboucki', 14),
(35, 'Mabo', 14),
(36, 'Gniby', 15),
(37, 'Katakel', 15),
(38, 'Ida Mouride', 16),
(39, 'Lour Escale', 16),
(40, 'Missirah Wadene', 16),
(41, 'Darou Minam 2', 17),
(42, 'Sagna', 17),
(43, 'Mbadakhoune', 18),
(44, 'Nguélou', 18),
(45, 'Koumbal', 19),
(46, 'Ndiédieng', 19),
(47, 'Sibassor', 19),
(48, 'Médina Sabakh', 20),
(49, 'Paoskoto', 20),
(50, 'Wack Ngouna', 20),
(51, 'Djoulacolon', 21),
(52, 'Mampatim', 21),
(53, 'Saré Bidji', 21),
(54, 'Fafacourou', 22),
(55, 'Ndorna', 22),
(56, 'Niaming', 22),
(57, 'Bonkonto', 23),
(58, 'Pakour', 23),
(59, 'Saré Coly Sallé', 23),
(60, 'Ndande', 24),
(61, 'Darou Mousty', 24),
(62, 'Sagatta', 24),
(63, 'Barkédji', 25),
(64, 'Dodji', 25),
(65, 'Sagatta Dioloff', 25),
(66, 'Yang Yang', 25),
(67, 'Coki', 26),
(68, 'Keur Momar Sarr', 26),
(69, 'Mbédiène', 26),
(70, 'Sakal', 26),
(71, 'Orkadiere', 27),
(72, 'Wouro Sidy', 27),
(73, 'Agnam Civol', 28),
(74, 'Ogo', 28),
(75, 'Vélingara', 29),
(76, 'Boghal', 30),
(77, 'Bona', 30),
(78, 'Diaroumé', 30),
(79, 'Djibanar', 31),
(80, 'Simbandi Brassou', 31),
(81, 'Karantaba', 31),
(82, 'Diendé', 32),
(83, 'Djibabouya', 32),
(84, 'Djiredji', 32),
(85, 'Ndiaye', 33),
(86, 'Mbane', 33),
(87, 'Cas-Cas', 34),
(88, 'Gamadji Saré', 34),
(89, 'Saldé', 34),
(90, 'Thillé Boubacar', 34),
(91, 'Rao', 35),
(92, 'Bélé', 36),
(93, 'Kéniaba', 36),
(94, 'Moudéry', 36),
(95, 'Bala', 37),
(96, 'Boynguel Bamba', 37),
(97, 'Dianké Makha', 37),
(98, 'Koulor', 37),
(99, 'Bamba Thialène', 38),
(100, 'Kouthiaba Wolof', 38),
(101, 'Koussanar', 39),
(102, 'Makacolibantang', 39),
(103, 'Missirah', 39),
(104, 'Fissel', 40),
(105, 'Séssène', 40),
(106, 'Sindia', 40),
(107, 'Keur Moussa', 41),
(108, 'Notto', 41),
(109, 'Thiénaba', 41),
(110, 'Thiès Nord', 41),
(111, 'Thiès Sud', 41),
(112, 'Mérina Dakhar', 42),
(113, 'Méouane', 42),
(114, 'Niakhène', 42),
(115, 'Pambal', 42),
(116, 'Kataba 1', 43),
(117, 'Sindian', 43),
(118, 'Tendouck', 43),
(119, 'Tenghory', 43),
(120, 'Kabrousse', 44),
(121, 'Loudia Ouoloff', 44),
(122, 'Niaguis', 45),
(123, 'Nyassia', 45);

-- --------------------------------------------------------

--
-- Structure de la table `bureau_de_vote`
--

CREATE TABLE `bureau_de_vote` (
  `IDBUREAUDEVOTE` int(10) NOT NULL,
  `NOMBUREAUDEVOTE` varchar(40) DEFAULT NULL,
  `IDLIEUDEVOTE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `citoyen`
--

CREATE TABLE `citoyen` (
  `IDCITOYEN` int(10) NOT NULL,
  `NOM` varchar(40) DEFAULT NULL,
  `PRENOM` varchar(40) DEFAULT NULL,
  `SEXE` varchar(40) DEFAULT NULL,
  `AGE` varchar(40) DEFAULT NULL,
  `DATENAISS` varchar(40) DEFAULT NULL,
  `LIEUNAISS` varchar(40) DEFAULT NULL,
  `NOMPERE` varchar(40) DEFAULT NULL,
  `NOMMERE` varchar(40) DEFAULT NULL,
  `PROFESSION` varchar(40) DEFAULT NULL,
  `RELIGION` varchar(40) DEFAULT NULL,
  `ETHNIE` varchar(40) DEFAULT NULL,
  `TELEPHONE` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `ADRESSE` varchar(40) DEFAULT NULL,
  `NOMPARTIEPOLITIQUE` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `collectivite`
--

CREATE TABLE `collectivite` (
  `IDCOLLECTIVITE` int(10) NOT NULL,
  `NOMCOLLECTIVITE` varchar(40) DEFAULT NULL,
  `IDCONTINENT` int(10) DEFAULT NULL,
  `IDSOUSREGION` int(10) DEFAULT NULL,
  `IDPAYS` int(10) DEFAULT NULL,
  `IDREGION` int(10) DEFAULT NULL,
  `IDDEPARTEMENT` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE `commune` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `arrondissement_id` bigint(20) DEFAULT NULL,
  `departement_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`id`, `libelle`, `arrondissement_id`, `departement_id`, `district_id`) VALUES
(1, 'Dakar', NULL, 1, 3),
(2, 'Gorée', NULL, 1, 2),
(3, 'Dakar Plateau', 2, 1, 2),
(4, 'Gueule Tapée-Fass-Colobane', 2, 1, 2),
(5, 'Fann-Point E- Amitié', 2, 1, 2),
(6, 'Médina', 2, 1, 2),
(7, 'Grand-Dakar', 3, 1, 3),
(8, 'Biscuiterie', 3, 1, 3),
(9, 'Dieuppeul-Derklé', 3, 1, 3),
(10, 'Hann-Bel-Air', 3, 1, 3),
(11, 'Sicap-Liberté', 3, 1, 3),
(12, 'HLM', 3, 1, 3),
(13, 'Mermoz-Sacré Coeur', 1, 1, 4),
(14, 'Ouakam', 1, 1, 4),
(15, 'Ngor', 1, 1, 4),
(16, 'Yoff', 1, 1, 4),
(17, 'Grand-Yoff', 4, 1, 1),
(18, 'Patte d’oie', 4, 1, 1),
(19, 'Parcelles Assainies', 4, 1, 1),
(20, 'Cambérène', 4, 1, 1),
(21, 'Guédiawaye', NULL, 2, 5),
(22, 'Golf-Sud', 5, 2, 5),
(23, 'Sam-Notaire', 5, 2, 5),
(24, 'Ndiarème- Limamoulaye', 5, 2, 5),
(25, 'Wakhinane', 5, 2, 5),
(26, 'Médina Gounass', 5, 2, 5),
(27, 'Pikine', NULL, 3, 6),
(28, 'Pikine- Est', 6, 3, 6),
(29, 'Pikine-Nord', 6, 3, 6),
(30, 'Pikine-Ouest', 6, 3, 6),
(31, 'Dalifort-Foirail', 6, 3, 6),
(32, 'Djeddha Thiaroye Kao', 6, 3, 6),
(33, 'Guinaw Rail- Nord', 6, 3, 6),
(34, 'Guinaw Rail-Sud', 6, 3, 6),
(35, 'Thiaroye Gare', 8, 3, 6),
(36, 'Thiaroye sur Mer', 8, 3, 6),
(37, 'Tivaoune- Diacksao', 8, 3, 6),
(38, 'Diamagueune- Sicap Mbao', 8, 3, 6),
(39, 'Mbao', 8, 3, 6),
(40, 'Keur Massar', 7, 3, 6),
(41, 'Malika', 7, 3, 6),
(42, 'Yeumbeul-Sud', 7, 3, 6),
(43, 'Yeumbeul-Nord', 7, 3, 6),
(44, 'Rufisque', NULL, 4, 7),
(45, 'Bargny', NULL, 4, 7),
(46, 'Sébikotane', NULL, 4, 7),
(47, 'Sendou', NULL, 4, 7),
(48, 'Rufisque-Est', 9, 4, 7),
(49, 'Rufisque-Nord', 9, 4, 7),
(50, 'Rufisque-Ouest', 9, 4, 7),
(51, 'Bambylor', 10, 4, 7),
(52, 'Yène', 10, 4, 7),
(53, 'Tivaouane Peulh- Niaga', 10, 4, 7),
(54, 'Diamniadio', 10, 4, 7),
(55, 'Sangalkam', 10, 4, 7),
(56, 'Jaxaay-Parcelles- Niakoul Rap', 10, 4, 7),
(57, 'Diourbel', NULL, 6, 8),
(58, 'Ndoulo', 15, 6, 8),
(59, 'Ngohe', 15, 6, 8),
(60, 'Pattar', 15, 6, 8),
(61, 'Tocky Gare', 15, 6, 8),
(62, 'Touré Mbondé', 15, 6, 8),
(63, 'Ndankh Séne', 14, 6, 8),
(64, 'Gade Escale', 14, 6, 8),
(65, 'Touba Lappé', 14, 6, 8),
(66, 'Keur Ngalgou', 14, 6, 8),
(67, 'Ndindy', 14, 6, 8),
(68, 'Taïba Moutoupha', 14, 6, 8),
(69, 'Bambey', NULL, 5, 11),
(70, 'Dinguiraye', 11, 5, 11),
(71, 'Baba Garage', 11, 5, 11),
(72, 'Keur Samba Kane', 11, 5, 11),
(73, 'Ngoye', 13, 5, 11),
(74, 'Thiakhar', 13, 5, 11),
(75, 'Ndondol', 13, 5, 11),
(76, 'Ndangalma', 13, 5, 11),
(77, 'Lambaye', 12, 5, 11),
(78, 'Réfane', 12, 5, 11),
(79, 'Gawane', 12, 5, 11),
(80, 'Ngogom', 12, 5, 11),
(81, 'Mbacké', NULL, 7, 9),
(82, 'Touba Mosquée', 17, 7, 10),
(83, 'Dalla Ngabou', 17, 7, 9),
(84, 'Missirah', 17, 7, 9),
(85, 'Nghaye', 17, 7, 9),
(86, 'Touba Fall', 17, 7, 9),
(87, 'Darou Salam Typ', 16, 7, 9),
(88, 'Darou Nahim', 16, 7, 9),
(89, 'Kael', 16, 7, 9),
(90, 'Madina', 16, 7, 9),
(91, 'Touba Mboul', 16, 7, 9),
(92, 'Taïba Thièkène', 16, 7, 9),
(93, 'Dendèye Gouy Gui', 16, 7, 9),
(94, 'Ndioumane', 16, 7, 9),
(95, 'Taïf', 18, 7, 9),
(96, 'Sadio', 18, 7, 9),
(97, 'Fatick', NULL, 8, 12),
(98, 'Dioffior', NULL, 8, 13),
(99, 'Thiaré Ndialgui', 19, 8, 12),
(100, 'Diaoulé', 19, 8, 12),
(101, 'Mbéllacadiao', 19, 8, 12),
(102, 'Ndiop', 19, 8, 12),
(103, 'Diakhao', 19, 8, 12),
(104, 'Djilasse', 20, 8, 13),
(105, 'Fimela', 20, 8, 13),
(106, 'Loul Sessène', 20, 8, 13),
(107, 'Palmarin Facao', 20, 8, 13),
(108, 'Niakhar', 21, 8, 14),
(109, 'Ngayokhème', 21, 8, 14),
(110, 'Patar', 21, 8, 14),
(111, 'Diarrère', 22, 8, 12),
(112, 'Diouroup', 22, 8, 12),
(113, 'Tattaguine', 22, 8, 12),
(114, 'Foundiougne', NULL, 9, 15),
(115, 'Sokone', NULL, 9, 16),
(116, 'Keur Saloum Diané', 25, 9, 16),
(117, 'Keur Samba Gueye', 25, 9, 16),
(118, 'Toubacouta', 25, 9, 16),
(119, 'Nioro Alassane Tall', 25, 9, 16),
(120, 'Karang Poste', 25, 9, 16),
(121, 'Passy', 23, 9, 17),
(122, 'Soum', 23, 9, 15),
(123, 'Diossong', 23, 9, 17),
(124, 'Djilor', 23, 9, 17),
(125, 'Niassène', 23, 9, 17),
(126, 'Diagane Barka', 23, 9, 17),
(127, 'Mbam', 23, 9, 17),
(128, 'Bassoul', 24, 9, 15),
(129, 'Dionewar', 24, 9, 15),
(130, 'Djirnda', 24, 9, 15),
(131, 'Gossas', NULL, 10, 18),
(132, 'Colobane', 26, 10, 18),
(133, 'Mbar', 26, 10, 18),
(134, 'Ndiene Lagane', 27, 10, 18),
(135, 'Ouadiour', 27, 10, 18),
(136, 'Patar Lia', 27, 10, 18),
(137, 'Kaffrine', NULL, 15, 19),
(138, 'Nganda', 37, 15, 19),
(139, 'Diamagadio', 37, 15, 19),
(140, 'Diokoul Belbouck', 37, 15, 19),
(141, 'Kathiotte', 37, 15, 19),
(142, 'Médinatoul Salam 2', 37, 15, 19),
(143, 'Gniby', 36, 15, 19),
(144, 'Boulel', 36, 15, 19),
(145, 'Kahi', 36, 15, 19),
(146, 'Birkelane', NULL, 14, 20),
(147, 'Keur Mboucki', 34, 14, 20),
(148, 'Touba Mbella', 34, 14, 20),
(149, 'Diamal', 34, 14, 20),
(150, 'Mabo', 35, 14, 20),
(151, 'Ndiognick', 35, 14, 20),
(152, 'Ségré-gatta', 35, 14, 20),
(153, 'Mbeuleup', 35, 14, 20),
(154, 'Malème-Hodar', NULL, 17, 21),
(155, 'Darou Miname 2', 41, 17, 21),
(156, 'Khelcom', 41, 17, 21),
(157, 'Ndioum Ngainth', 41, 17, 21),
(158, 'Ndiobène Samba Lamo', 41, 17, 21),
(159, 'Sagna', 42, 17, 21),
(160, 'Dianké Souf', 42, 17, 21),
(161, 'Koungheul', NULL, 16, 22),
(162, 'Missirah Wadène', 40, 16, 22),
(163, 'Maka Yop', 40, 16, 22),
(164, 'Ngainthe Pathé', 40, 16, 22),
(165, 'Fass Thièkène', 38, 16, 22),
(166, 'Saly Escale', 38, 16, 22),
(167, 'Ida Mouride', 38, 16, 22),
(168, 'Ribot Escale', 39, 16, 22),
(169, 'Lour Escale', 39, 16, 22),
(170, 'Kaolack', NULL, 19, 23),
(171, 'Kahone', NULL, 19, 23),
(172, 'Keur Baka', 45, 19, 23),
(173, 'Latmingué', 45, 19, 23),
(174, 'Thiaré', 45, 19, 23),
(175, 'Ndoffane', 45, 19, 23),
(176, 'Keur Socé', 46, 19, 23),
(177, 'Ndiaffate', 46, 19, 23),
(178, 'Ndiedieng', 46, 19, 23),
(179, 'Dya', 47, 19, 23),
(180, 'Ndiébel', 47, 19, 23),
(181, 'Thiomby', 47, 19, 23),
(182, 'Gandiaye', 47, 19, 23),
(183, 'Sibassor', 47, 19, 23),
(184, 'Guinguinéo', NULL, 18, 24),
(185, 'Khelcom – Birane', 43, 18, 24),
(186, 'Mbadakhoune', 43, 18, 24),
(187, 'Ndiago', 43, 18, 24),
(188, 'Ngathie Naoudé', 43, 18, 24),
(189, 'Fass', 43, 18, 24),
(190, 'Gagnick', 44, 18, 24),
(191, 'Dara Mboss', 44, 18, 24),
(192, 'Nguélou', 44, 18, 24),
(193, 'Ourour', 44, 18, 24),
(194, 'Panal Ouolof', 44, 18, 24),
(195, 'Mboss', 44, 18, 24),
(196, 'Nioro du Rip', NULL, 20, 25),
(197, 'Kayemor', 48, 20, 25),
(198, 'Médina Sabakh', 48, 20, 25),
(199, 'Ngayene', 48, 20, 25),
(200, 'Gainthe Kaye', 49, 20, 25),
(201, 'Dabaly', 49, 20, 25),
(202, 'Darou Salam', 49, 20, 25),
(203, 'Paos Koto', 49, 20, 25),
(204, 'Porokhane', 49, 20, 25),
(205, 'Taïba Niassène', 49, 20, 25),
(206, 'Keur Maba Diakhou', 50, 20, 25),
(207, 'Keur Madongo', 50, 20, 25),
(208, 'Ndramé Escale', 50, 20, 25),
(209, 'Wack Ngouna', 50, 20, 25),
(210, 'Keur Madiabel', 50, 20, 25),
(211, 'Kédougou', NULL, 11, 26),
(212, 'Ninéfécha', 28, 11, 26),
(213, 'Bandafassi', 28, 11, 26),
(214, 'Tomboroncoto', 28, 11, 26),
(215, 'Dindefelo', 28, 11, 26),
(216, 'Fongolimbi', 29, 11, 26),
(217, 'Dimboli', 29, 11, 26),
(218, 'Salémata', NULL, 12, 27),
(219, 'Kévoye', 30, 12, 27),
(220, 'Dakatéli', 30, 12, 27),
(221, 'Ethiolo', 31, 12, 27),
(222, 'Oubadji', 31, 12, 27),
(223, 'Dar salam', 31, 12, 27),
(224, 'Saraya', NULL, 13, 28),
(225, 'Bembou', 32, 13, 28),
(226, 'Médina Baffé', 32, 13, 28),
(227, 'Sabodala', 33, 13, 28),
(228, 'Khossanto', 33, 13, 28),
(229, 'Missirah Sirimana', 33, 13, 28),
(230, 'Kolda', NULL, 21, 29),
(231, 'Dialambéré', 52, 21, 29),
(232, 'Médina Chérif', 52, 21, 29),
(233, 'Mampatim', 52, 21, 29),
(234, 'Coumbacara', 52, 21, 29),
(235, 'Bagadadji', 52, 21, 29),
(236, 'Dabo', 52, 21, 29),
(237, 'Thiétty', 53, 21, 29),
(238, 'Saré Bidji', 53, 21, 29),
(239, 'Guiro Yéro Bocar', 51, 21, 29),
(240, 'Dioulacolon', 51, 21, 29),
(241, 'Tankanto Escale', 51, 21, 29),
(242, 'Médina El hadj', 51, 21, 29),
(243, 'Salykégné', 51, 21, 29),
(244, 'Saré Yoba Diéga', 51, 21, 29),
(245, 'Médina Yoro Foulah', NULL, 22, 31),
(246, 'Badion', 54, 22, 31),
(247, 'Fafacourou', 54, 22, 31),
(248, 'Bourouco', 55, 22, 31),
(249, 'Bignarabé', 55, 22, 31),
(250, 'Ndorna', 55, 22, 31),
(251, 'Koulinto', 55, 22, 31),
(252, 'Niaming', 56, 22, 31),
(253, 'Dinguiraye', 56, 22, 31),
(254, 'Pata', 56, 22, 31),
(255, 'Kéréwane', 56, 22, 31),
(256, 'Vélingara', NULL, 23, 30),
(257, 'Diaobé-Kabendou', 59, 23, 30),
(258, 'Kounkané', 59, 23, 30),
(259, 'Kandia', 59, 23, 30),
(260, 'Saré Coly Sallé', 59, 23, 30),
(261, 'Kandiaye', 59, 23, 30),
(262, 'Némataba', 59, 23, 30),
(263, 'Pakour', 58, 23, 30),
(264, 'Paroumba', 58, 23, 30),
(265, 'Ouassadou', 58, 23, 30),
(266, 'Bonconto', 57, 23, 30),
(267, 'Linkering', 57, 23, 30),
(268, 'Médina Gounass', 57, 23, 30),
(269, 'Sinthiang Koundara', 57, 23, 30),
(270, 'Louga', NULL, 26, 32),
(271, 'Coki', 67, 26, 33),
(272, 'Ndiagne', 67, 26, 33),
(273, 'Guet Ardo', 67, 26, 33),
(274, 'Thiamène Cayor', 67, 26, 33),
(275, 'Pété Ouarack', 67, 26, 33),
(276, 'Keur Momar Sarr', 68, 26, 34),
(277, 'Nguer Malal', 68, 26, 34),
(278, 'Syer', 68, 26, 34),
(279, 'Gande', 68, 26, 34),
(280, 'Mbédiene', 69, 26, 32),
(281, 'Niomré', 69, 26, 32),
(282, 'Nguidilé', 69, 26, 32),
(283, 'Kéle Gueye', 69, 26, 32),
(284, 'Léona', 70, 26, 35),
(285, 'Sakal', 70, 26, 35),
(286, 'Ngueune Sarr', 70, 26, 35),
(287, 'Kébémer', NULL, 24, 36),
(288, 'Bandegne Ouolof', 60, 24, 36),
(289, 'Diokoul Diawrigne', 60, 24, 36),
(290, 'Kab Gaye', 60, 24, 36),
(291, 'Ndande', 60, 24, 36),
(292, 'Thieppe', 60, 24, 36),
(293, 'Guéoul', 60, 24, 36),
(294, 'Mbacké Cajor', 61, 24, 37),
(295, 'Darou Marnane', 61, 24, 37),
(296, 'Darou Mousty', 61, 24, 37),
(297, 'Mbadiane', 61, 24, 37),
(298, 'Ndoyene', 61, 24, 37),
(299, 'Sam Yabal', 61, 24, 37),
(300, 'Touba Mérina', 61, 24, 37),
(301, 'Ngourane Ouolof', 62, 24, 36),
(302, 'Thiolom Fall', 62, 24, 36),
(303, 'Sagatta Gueth', 62, 24, 36),
(304, 'Kanène Ndiob', 62, 24, 36),
(305, 'Loro', 62, 24, 36),
(306, 'Linguére', NULL, 25, 38),
(307, 'Dahra', NULL, 25, 39),
(308, 'Barkédji', 63, 25, 38),
(309, 'Gassane', 63, 25, 38),
(310, 'Thiargny', 63, 25, 38),
(311, 'Thiel', 63, 25, 38),
(312, 'Boulal', 65, 23, 39),
(313, 'Dealy', 65, 23, 39),
(314, 'Thiamène Pass', 65, 23, 39),
(315, 'Sagatta Djolof', 65, 23, 39),
(316, 'Affé Djiolof', 65, 23, 39),
(317, 'Dodji', 64, 23, 38),
(318, 'Labgar', 64, 23, 38),
(319, 'Ouarkhokh', 64, 23, 38),
(320, 'Kamb', 66, 23, 39),
(321, 'Mboula', 66, 23, 39),
(322, 'Téssékéré Forage', 66, 23, 39),
(323, 'Yang-Yang', 66, 23, 39),
(324, 'Mbeuleukhé', 66, 23, 39),
(325, 'Matam', NULL, 28, 40),
(326, 'Ourossogui', NULL, 28, 40),
(327, 'Thilogne', 73, 28, 40),
(328, 'Nguidjilone', 73, 28, 40),
(329, 'Dabia', 73, 28, 40),
(330, 'Des Agnam', 73, 28, 40),
(331, 'Oréfondé', 73, 28, 40),
(332, 'Bokidiawé', 74, 28, 40),
(333, 'Nabadji Civol', 74, 28, 40),
(334, 'Ogo', 74, 28, 40),
(335, 'Kanel', NULL, 27, 41),
(336, 'Odobéré', 72, 27, 41),
(337, 'Wouro Sidy', 72, 27, 41),
(338, 'Ndendory', 72, 27, 41),
(339, 'Sinthiou Bamambé', 72, 27, 41),
(340, 'Hamady Hounaré', 72, 27, 41),
(341, 'Aouré', 71, 27, 41),
(342, 'Bokiladji', 71, 27, 41),
(343, 'Orkadiéré', 71, 27, 41),
(344, 'Ouaoundé', 71, 27, 41),
(345, 'Semmé', 71, 27, 41),
(346, 'Dembancané', 71, 27, 41),
(347, 'Ranérou', NULL, 29, 42),
(348, 'Lougré Thioly', 75, 29, 42),
(349, 'Oudalaye', 75, 29, 42),
(350, 'Vélingara', 75, 29, 42),
(351, 'Saint Louis', NULL, 35, 43),
(352, 'Mpal', 91, 35, 43),
(353, 'Fass Ngom', 91, 35, 43),
(354, 'Ndiébène Gandiol', 91, 35, 43),
(355, 'Gandon', 91, 35, 43),
(356, 'Dagana', NULL, 33, 44),
(357, 'Richard Toll', NULL, 33, 45),
(358, 'Ross-Béthio', 85, 33, 45),
(359, 'Rosso-Sénégal', 85, 33, 45),
(360, 'Ngnith', 85, 33, 45),
(361, 'Diama', 85, 33, 45),
(362, 'Ronkh', 85, 33, 45),
(363, 'Ndombo Sandjiry', 86, 33, 44),
(364, 'Gae', 86, 33, 44),
(365, 'Bokhol', 86, 33, 44),
(366, 'Mbane', 86, 33, 44),
(367, 'Ndioum', NULL, 34, 44),
(368, 'Podor', NULL, 34, 46),
(369, 'Méry', 87, 34, 46),
(370, 'Doumga Lao', 87, 34, 46),
(371, 'Madina Diathbé', 87, 34, 46),
(372, 'Golléré', 87, 34, 46),
(373, 'Mboumba', 87, 34, 46),
(374, 'Walaldé', 87, 34, 46),
(375, 'Aéré Lao', 87, 34, 46),
(376, 'Gamadji Saré', 88, 34, 46),
(377, 'Dodel', 88, 34, 46),
(378, 'Guedé Village', 88, 34, 46),
(379, 'Guédé Chantier', 88, 34, 46),
(380, 'Démette', 88, 34, 46),
(381, 'Bodé Lao', 88, 34, 46),
(382, 'Fanaye', 90, 34, 46),
(383, 'Ndiayene Peindao', 90, 34, 46),
(384, 'Ndiandane', 90, 34, 46),
(385, 'Mbolo Birane', 89, 34, 47),
(386, 'Boké Dialloubé', 89, 34, 47),
(387, 'Galoya Toucouleur', 89, 34, 47),
(388, 'Pété', 89, 34, 47),
(389, 'Sédhiou', NULL, 32, 48),
(390, 'Marssassoum', NULL, 32, 48),
(391, 'Djiredji', 84, 32, 48),
(392, 'Bambaly', 84, 32, 48),
(393, 'Oudoucar', 82, 32, 48),
(394, 'Sama Kanta Peulh', 82, 32, 48),
(395, 'Diannah Ba', 82, 32, 48),
(396, 'Koussy', 82, 32, 48),
(397, 'Sakar', 82, 32, 48),
(398, 'Diendé', 82, 32, 48),
(399, 'Diannah Malary', 82, 32, 48),
(400, 'San Samba', 83, 32, 48),
(401, 'Bémet Bidjini', 83, 32, 48),
(402, 'Djibabouya', 83, 32, 48),
(403, 'Bounkiling', NULL, 30, 49),
(404, 'Ndiamacouta', 76, 30, 49),
(405, 'Boghal', 76, 30, 49),
(406, 'Tankon', 76, 30, 49),
(407, 'Ndiamalathiel', 76, 30, 49),
(408, 'Djinany', 76, 30, 49),
(409, 'Diacounda', 77, 30, 49),
(410, 'Inor', 77, 30, 49),
(411, 'Kandion Mangana', 77, 30, 49),
(412, 'Bona', 77, 30, 49),
(413, 'Diambati', 78, 30, 49),
(414, 'Faoune', 78, 30, 49),
(415, 'Diaroumé', 78, 30, 49),
(416, 'Madina Wandifa', 78, 30, 49),
(417, 'Goudomp', NULL, 31, 50),
(418, 'Diattacounda', 79, 31, 50),
(419, 'Samine', 79, 31, 50),
(420, 'Yarang Balante', 79, 31, 50),
(421, 'Mangaroungou Santo', 79, 31, 50),
(422, 'Simbandi Balante', 79, 31, 50),
(423, 'Djibanar', 79, 31, 50),
(424, 'Kaour', 79, 31, 50),
(425, 'Diouboudou', 80, 31, 50),
(426, 'Simbandi Brassou', 80, 31, 50),
(427, 'Baghère', 80, 31, 50),
(428, 'Niagha', 80, 31, 50),
(429, 'Tanaff', 80, 31, 50),
(430, 'Karantaba', 81, 31, 50),
(431, 'Kolibantang', 81, 31, 50),
(432, 'Tambacounda', NULL, 39, 51),
(433, 'Niani Toucouleur', 102, 39, 52),
(434, 'Makacolibantang', 102, 39, 52),
(435, 'Ndoga Babacar', 102, 39, 52),
(436, 'Missirah', 103, 39, 51),
(437, 'Néttéboulou', 103, 39, 51),
(438, 'Dialacoto', 103, 39, 51),
(439, 'Sinthiou Malème', 101, 39, 51),
(440, 'Koussanar', 101, 39, 51),
(441, 'Kothiary', NULL, 37, 53),
(442, 'Goudiry', NULL, 37, 53),
(443, 'Boynguel Bamba', 96, 37, 53),
(444, 'Sinthiou Mamadou', 96, 37, 53),
(445, 'Koussan', 96, 37, 54),
(446, 'Dougué', 96, 37, 54),
(447, 'Dianké Makha', 97, 37, 54),
(448, 'Boutoucoufara', 97, 37, 54),
(449, 'Bani Israel', 97, 37, 54),
(450, 'Sinthiou Bocar Aly', 98, 37, 53),
(451, 'Koulor', 98, 37, 53),
(452, 'Komoti', 98, 37, 54),
(453, 'Bala', 95, 37, 53),
(454, 'Koar', 95, 37, 53),
(455, 'Goumbayel', 95, 37, 53),
(456, 'Bakel', NULL, 36, 55),
(457, 'Bélé', 92, 36, 55),
(458, 'Sinthiou Fissa', 92, 36, 55),
(459, 'Kidira', 92, 36, 56),
(460, 'Toumboura', 93, 36, 56),
(461, 'Sadatou', 93, 36, 56),
(462, 'Madina Foulbé', 93, 36, 56),
(463, 'Gathiary', 93, 36, 56),
(464, 'Moudery', 94, 36, 55),
(465, 'Ballou', 94, 36, 55),
(466, 'Gabou', 94, 36, 55),
(467, 'Diawara', 94, 36, 55),
(468, 'Koumpentoum', NULL, 38, 57),
(469, 'Malem Niany', NULL, 38, 57),
(470, 'Ndame', 99, 38, 57),
(471, 'Méréto', 99, 38, 57),
(472, 'Kahène', 99, 38, 57),
(473, 'Bamba Thialène', 99, 38, 57),
(474, 'Payar', 100, 38, 57),
(475, 'Kouthiaba Wolof', 100, 38, 57),
(476, 'Kouthia Gaydi', 100, 38, 57),
(477, 'Pass Coto', 100, 38, 57),
(478, 'Malem Niany', 100, 38, 57),
(479, 'Thiès', NULL, 41, 58),
(480, 'Khombole', NULL, 41, 59),
(481, 'Pout', NULL, 41, 61),
(482, 'Thiès Ouest', 111, 41, 58),
(483, 'Thiès Est', 111, 41, 58),
(484, 'Thiès Nord', 110, 41, 58),
(485, 'Thiénaba', 109, 41, 59),
(486, 'Ngoudiane', 109, 41, 59),
(487, 'Ndiéyène Sirakh', 109, 41, 59),
(488, 'Touba Toul', 109, 41, 59),
(489, 'Keur Moussa', 107, 41, 58),
(490, 'Diender', 107, 41, 58),
(491, 'Fandène', 107, 41, 58),
(492, 'Kayar', 107, 41, 58),
(493, 'Notto', 108, 41, 58),
(494, 'Tassète', 108, 41, 58),
(495, 'Mbour', NULL, 40, 61),
(496, 'Joal Fadiouth', NULL, 40, 62),
(497, 'Fissel', 104, 40, 61),
(498, 'Ndiaganiao', 104, 40, 61),
(499, 'Sessene', 105, 40, 61),
(500, 'Sandiara', 105, 40, 61),
(501, 'Nguéniène', 105, 40, 62),
(502, 'Thiadiaye', 105, 40, 61),
(503, 'Sindia', 106, 40, 63),
(504, 'Malicounda', 106, 40, 61),
(505, 'Diass', 106, 40, 63),
(506, 'Nguékhokh', 106, 40, 61),
(507, 'Saly Portudal', 106, 40, 61),
(508, 'Ngaparou', 106, 40, 61),
(509, 'Somone', 106, 40, 61),
(510, 'Popenguine - Ndayane', 106, 40, 63),
(511, 'Tivaouane', NULL, 42, 64),
(512, 'Mékhé', NULL, 42, 65),
(513, 'Mboro', 113, 42, 64),
(514, 'Méouane', 113, 42, 64),
(515, 'Darou Khoudoss', 113, 42, 64),
(516, 'Taïba Ndiaye', 113, 42, 64),
(517, 'Mérina Dakhar', 112, 42, 65),
(518, 'Koul', 112, 42, 65),
(519, 'Pékèsse', 112, 42, 65),
(520, 'Niakhène', 114, 42, 65),
(521, 'Mbayène', 114, 42, 65),
(522, 'Thilmakha', 114, 42, 65),
(523, 'Ngandiouf', 114, 42, 65),
(524, 'Notto Gouye Diama', 115, 42, 64),
(525, 'Mont Rolland', 115, 42, 64),
(526, 'Pire Goureye', 115, 42, 64),
(527, 'Chérif Lo', 115, 42, 64),
(528, 'Pambal', 115, 42, 64),
(529, 'Ziguinchor', NULL, 45, 66),
(530, 'Niaguis', 122, 45, 66),
(531, 'Adéane', 122, 45, 66),
(532, 'Boutoupa Camaracounda', 122, 45, 66),
(533, 'Nyassia', 123, 45, 66),
(534, 'Enampore', 123, 45, 66),
(535, 'Bignona', NULL, 43, 67),
(536, 'Thionck Essyl', NULL, 43, 68),
(537, 'Kataba 1', 116, 43, 69),
(538, 'Djinaky', 116, 43, 69),
(539, 'Kafountine', 116, 43, 69),
(540, 'Diouloulou', 116, 43, 69),
(541, 'Tenghori', 119, 43, 67),
(542, 'Niamone', 119, 43, 67),
(543, 'Ouonck', 119, 43, 67),
(544, 'Coubalan', 119, 43, 67),
(545, 'Balinghore', 118, 43, 68),
(546, 'Diégoune', 118, 43, 68),
(547, 'Kartiack', 118, 43, 68),
(548, 'Mangagoulack', 118, 43, 68),
(549, 'Mlomp', 118, 43, 68),
(550, 'Djibidione', 117, 43, 67),
(551, 'Oulampane', 117, 43, 67),
(552, 'Sindian', 117, 43, 67),
(553, 'Suelle', 117, 43, 67),
(554, 'Oussouye', NULL, 44, 70),
(555, 'Diembéring', 120, 44, 70),
(556, 'Santhiaba Manjack', 120, 44, 70),
(557, 'Oukout', 121, 44, 70),
(558, 'Mlomp', 121, 44, 70);

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE `continent` (
  `IDCONTINENT` int(10) NOT NULL,
  `NOMCONTINENT` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', '2021-07-13 15:02:03', 1, 'EXECUTED', '8:c5bfc567913b118109a43e981cd02883', 'createTable tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableName=jhi_user_authority; addForeignKeyConstraint baseTableName=jhi_user_authority, constraintName=fk_authority_name, ...', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112001-1', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 2, 'EXECUTED', '8:fa5e1e28e19c882e86233e2296d3f45b', 'createTable tableName=arrondissement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112002-2', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 3, 'EXECUTED', '8:c22e857829997f9749cfd3fe09cf7350', 'createTable tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112003-3', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 4, 'EXECUTED', '8:9413b9acf40244037d162ef42104dfc5', 'createTable tableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112004-4', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 5, 'EXECUTED', '8:f5f3562fd51fed8adfac62a84a69a56e', 'createTable tableName=region', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112005-5', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 6, 'EXECUTED', '8:2a00c0de0f1ca9908d273a4f9cb089f4', 'createIndex indexName=FK4uxgeijqolxlfvxd1xrwmc3lc, tableName=arrondissement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112006-6', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 7, 'EXECUTED', '8:73f9315fe464e0aabdd8010498d75bec', 'createIndex indexName=FKgtllrsicp104h5w7yexfuj90m, tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112007-7', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 8, 'EXECUTED', '8:c82cae0bb55504748b523ce6eb742b39', 'createIndex indexName=FKh8gowqmuphi5bw438h1ikoal8, tableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112008-8', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 9, 'EXECUTED', '8:130e4efd8be7fcbdba28c637373b31df', 'createIndex indexName=FKnpb4g8pcu98cr0xm6xlrsnyqs, tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112009-9', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 10, 'EXECUTED', '8:a717f9abcad256bf7ad8aa4c55bda960', 'addForeignKeyConstraint baseTableName=arrondissement, constraintName=FK4uxgeijqolxlfvxd1xrwmc3lc, referencedTableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('00000000000010-10', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 11, 'EXECUTED', '8:7a2062033050c2f19e4498f3bf96a0ae', 'addForeignKeyConstraint baseTableName=commune, constraintName=FKgtllrsicp104h5w7yexfuj90m, referencedTableName=arrondissement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('00000000000011-11', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 12, 'EXECUTED', '8:0c5fba2d549e9f4017d923a0e66ba7dc', 'addForeignKeyConstraint baseTableName=departement, constraintName=FKh8gowqmuphi5bw438h1ikoal8, referencedTableName=region', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('00000000000012-12', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200427112000_add_entities.xml', '2021-07-13 15:02:03', 13, 'EXECUTED', '8:15e14eb1159972fdefc7dce4315b048c', 'addForeignKeyConstraint baseTableName=commune, constraintName=FKnpb4g8pcu98cr0xm6xlrsnyqs, referencedTableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112400', 'ctsall', 'config/liquibase/changelog/20200427112400_added_region.xml', '2021-07-13 15:02:03', 14, 'EXECUTED', '8:5b6c852647f21b81a12b18a65f74cd68', 'loadData tableName=region', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112500', 'ctsall', 'config/liquibase/changelog/20200427112500_added_departement.xml', '2021-07-13 15:02:04', 15, 'EXECUTED', '8:f1bede206dd50c9a5eabf51526d2de00', 'loadData tableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112600', 'ctsall', 'config/liquibase/changelog/20200427112600_added_arrondissement.xml', '2021-07-13 15:02:04', 16, 'EXECUTED', '8:c3f84bf46c6a351d484afdfc60b8728b', 'loadData tableName=arrondissement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200427112700', 'ctsall', 'config/liquibase/changelog/20200427112700_added_commune.xml', '2021-07-13 15:02:04', 17, 'EXECUTED', '8:8a78e197ab5332bad407aa5f5bb956e0', 'loadData tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013400', 'Babsby', 'config/liquibase/changelog/20200520013400_added_entity_District.xml', '2021-07-13 15:02:04', 18, 'EXECUTED', '8:146df798ef92e924947191bedc4ba3ce', 'createTable tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013400-1', 'Babsby', 'config/liquibase/changelog/20200520013400_added_entity_District.xml', '2021-07-13 15:02:04', 19, 'EXECUTED', '8:8ad69eb8d2c377fd2aa2b065f4e9f8d9', 'createIndex indexName=fk_district_arrondissement_id, tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013400-2', 'banorazigmail.com (generated)', 'config/liquibase/changelog/20200520013400_added_entity_District.xml', '2021-07-13 15:02:04', 20, 'EXECUTED', '8:3247a6c30ae492100e77b1a0d8ffc73c', 'createIndex indexName=fk_district_departement_id, tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013400-3', 'Babsby', 'config/liquibase/changelog/20200520013400_added_entity_District.xml', '2021-07-13 15:02:04', 21, 'EXECUTED', '8:0e134203bc8b022c80879438a1d81c86', 'addForeignKeyConstraint baseTableName=district, constraintName=fk_district_arrondissement_id, referencedTableName=arrondissement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013400-4', 'Babsby', 'config/liquibase/changelog/20200520013400_added_entity_District.xml', '2021-07-13 15:02:04', 22, 'EXECUTED', '8:f94a21e9608cd12c0cb4d42677a9a6b1', 'addForeignKeyConstraint baseTableName=district, constraintName=fk_district_departement_id, referencedTableName=departement', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520013500', 'Babsby', 'config/liquibase/changelog/20200520013500_added_District.xml', '2021-07-13 15:02:04', 23, 'EXECUTED', '8:cea9714bd5e086a196edc145724ebc15', 'loadData tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520212900', 'Babsby', 'config/liquibase/changelog/20200520212900_added_colums_to_commune.xml', '2021-07-13 15:02:04', 24, 'EXECUTED', '8:c13af95ab377ef172ab78118b019c886', 'sql; addColumn tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520212900-1', 'Babsby', 'config/liquibase/changelog/20200520212900_added_colums_to_commune.xml', '2021-07-13 15:02:04', 25, 'EXECUTED', '8:5698ead0f246c495d1d4270ecd38cdef', 'createIndex indexName=fk_commune_district_id, tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520212900-2', 'Babsby', 'config/liquibase/changelog/20200520212900_added_colums_to_commune.xml', '2021-07-13 15:02:04', 26, 'EXECUTED', '8:df745a5a0969bedb40922bb77acf3772', 'addForeignKeyConstraint baseTableName=commune, constraintName=fk_commune_district_id, referencedTableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20200520212900-3', 'Babsby', 'config/liquibase/changelog/20200520212900_added_colums_to_commune.xml', '2021-07-13 15:02:04', 27, 'EXECUTED', '8:08004ea00872af552c901ea8ddd8c558', 'loadData tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20210519120900-0', 'Babsby', 'config/liquibase/changelog/20210519120900_added_columns_to_district.xml', '2021-07-13 15:02:04', 28, 'EXECUTED', '8:de47f3cdbc38bd8bf3d60555f3bcf0b0', 'sql', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20210519120900', 'Babsby', 'config/liquibase/changelog/20210519120900_added_columns_to_district.xml', '2021-07-13 15:02:04', 29, 'EXECUTED', '8:f3a1b95122afb2e29bf57bb4fa3ba562', 'sql; addColumn tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20210519120900-1', 'Babsby', 'config/liquibase/changelog/20210519120900_added_columns_to_district.xml', '2021-07-13 15:02:05', 30, 'EXECUTED', '8:b397963436939f0eebc2af5444b9fec8', 'loadData tableName=district', '', NULL, '3.6.3', NULL, NULL, '6188522927'),
('20210519120900-2', 'Babsby', 'config/liquibase/changelog/20210519120900_added_columns_to_district.xml', '2021-07-13 15:02:05', 31, 'EXECUTED', '8:08004ea00872af552c901ea8ddd8c558', 'loadData tableName=commune', '', NULL, '3.6.3', NULL, NULL, '6188522927');

-- --------------------------------------------------------

--
-- Structure de la table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `libelle`, `region_id`) VALUES
(1, 'Dakar', 1),
(2, 'Guédiawaye', 1),
(3, 'Pikine', 1),
(4, 'Rufisque', 1),
(5, 'Bambey', 2),
(6, 'Diourbel', 2),
(7, 'Mbacké', 2),
(8, 'Fatick', 3),
(9, 'Foundiougne', 3),
(10, 'Gossas', 3),
(11, 'Kédougou', 4),
(12, 'Salémata', 4),
(13, 'Saraya', 4),
(14, 'Birkilane', 5),
(15, 'Kaffrine', 5),
(16, 'Koungheul', 5),
(17, 'Malème Hodar', 5),
(18, 'Guinguinéo', 6),
(19, 'Kaolack', 6),
(20, 'Nioro du Rip', 6),
(21, 'Kolda', 7),
(22, 'Médina Yoro Foula', 7),
(23, 'Vélingara', 7),
(24, 'Kébémer', 8),
(25, 'Linguère', 8),
(26, 'Louga', 8),
(27, 'Kanel', 9),
(28, 'Matam', 9),
(29, 'Ranérou Ferlo', 9),
(30, 'Bounkiling', 10),
(31, 'Goudomp', 10),
(32, 'Sédhiou', 10),
(33, 'Dagana', 11),
(34, 'Podor', 11),
(35, 'Saint-Louis', 11),
(36, 'Bakel', 12),
(37, 'Goudiry', 12),
(38, 'Koupentoum', 12),
(39, 'Tambacounda', 12),
(40, 'Mbour', 13),
(41, 'Thiès', 13),
(42, 'Tivaouane', 13),
(43, 'Bignona', 14),
(44, 'Oussouye', 14),
(45, 'Ziguinchor', 14);

-- --------------------------------------------------------

--
-- Structure de la table `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement_id` bigint(20) DEFAULT NULL,
  `departement_id` bigint(20) DEFAULT NULL,
  `frais_livraison` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `district`
--

INSERT INTO `district` (`id`, `libelle`, `arrondissement_id`, `departement_id`, `frais_livraison`) VALUES
(1, 'Dakar Nord', NULL, 1, 2000),
(2, 'Dakar Sud', NULL, 1, 1500),
(3, 'Dakar', 2, 1, 1500),
(4, 'Dakar Ouest', 2, 1, 1500),
(5, 'Guédiawaye', NULL, 2, 2500),
(6, 'Pikine', NULL, 3, 2500),
(7, 'Rufisque', NULL, 4, 3000),
(8, 'Diourbel', NULL, 6, 7000),
(9, 'Mbacké', NULL, 7, 7000),
(10, 'Touba', 17, 7, 7000),
(11, 'Bambey', NULL, 5, 7000),
(12, 'Fatick', NULL, 8, 5000),
(13, 'Dioffior', NULL, 8, 5000),
(14, 'Niakhar', 21, 8, 5000),
(15, 'Foundiougne', NULL, 9, 5000),
(16, 'Sokone', NULL, 9, 5000),
(17, 'Passy', 23, 9, 6000),
(18, 'Gossas', NULL, 10, 6000),
(19, 'Kaffrine', NULL, 15, 6500),
(20, 'Mbirkilane', NULL, 14, 8000),
(21, 'Malème-Hodar', NULL, 17, 8000),
(22, 'Koungheul', NULL, 16, 8000),
(23, 'Kaolack', NULL, 19, 5000),
(24, 'Guinguinéo', NULL, 18, 6000),
(25, 'Nioro du Rip', NULL, 20, 6000),
(26, 'Kédougou', NULL, 11, 10000),
(27, 'Salémata', NULL, 12, 10000),
(28, 'Saraya', NULL, 13, 10000),
(29, 'Kolda', NULL, 21, 10000),
(30, 'Vélingara', NULL, 23, 10000),
(31, 'Médina Yoro Foula', NULL, 22, 10000),
(32, 'Louga', NULL, 26, 5000),
(33, 'koky', 67, 26, 5000),
(34, 'Keur Momar Sarr', 68, 26, 5000),
(35, 'Sakal', 70, 26, 5000),
(36, 'Kébémer', NULL, 24, 5500),
(37, 'Darou Mousty', 61, 24, 5500),
(38, 'Linguére', NULL, 25, 6000),
(39, 'Dahra', NULL, 25, 6000),
(40, 'Matam', NULL, 28, 6000),
(41, 'Kanel', NULL, 27, 6000),
(42, 'Ranérou', NULL, 29, 7000),
(43, 'Saint Louis', NULL, 35, 6000),
(44, 'Dagana', NULL, 33, 7000),
(45, 'Richard Toll', NULL, 33, 6500),
(46, 'Podor', NULL, 34, 7000),
(47, 'Pété', 89, 34, 7000),
(48, 'Sédhiou', NULL, 32, 10000),
(49, 'Bounkiling', NULL, 30, 10000),
(50, 'Goudomp', NULL, 31, 10000),
(51, 'Tambacounda', NULL, 39, 12000),
(52, 'Makacolibantang', 102, 39, 12000),
(53, 'Goudiry', NULL, 37, 12000),
(54, 'Dianké Makha', 97, 37, 11000),
(55, 'Bakel', NULL, 36, 10000),
(56, 'Kidira', 92, 36, 10000),
(57, 'Koumpentoum', NULL, 38, 10000),
(58, 'Thiès', NULL, 41, 4000),
(59, 'Khombole', NULL, 41, 4000),
(60, 'Pout', NULL, 41, 4000),
(61, 'Mbour', NULL, 40, 4000),
(62, 'Joal Fadiouth', NULL, 40, 5000),
(63, 'Popenguine - Ndayane', 106, 40, 4000),
(64, 'Tivaouane', NULL, 42, 4500),
(65, 'Mékhé', NULL, 42, 6000),
(66, 'Ziguinchor', NULL, 45, 12000),
(67, 'Bignona', NULL, 43, 12000),
(68, 'Thionck Essyl', NULL, 43, 12000),
(69, 'Diouloulou', 116, 43, 12000),
(70, 'Oussouye', NULL, 44, 12000);

-- --------------------------------------------------------

--
-- Structure de la table `district_old`
--

CREATE TABLE `district_old` (
  `id` bigint(20) NOT NULL,
  `frais_livraison` double DEFAULT NULL,
  `libelle` varchar(255) NOT NULL,
  `arrondissement_id` bigint(20) DEFAULT NULL,
  `departement_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `district_old`
--

INSERT INTO `district_old` (`id`, `frais_livraison`, `libelle`, `arrondissement_id`, `departement_id`) VALUES
(1, 0, '', 1, 2000),
(2, 0, '', 1, 1500),
(3, 0, '2', 1, 1500),
(4, 0, '2', 1, 1500),
(5, 0, '', 2, 2500),
(6, 0, '', 3, 2500),
(7, 0, '', 4, 3000),
(8, 0, '', 6, 7000),
(9, 0, '', 7, 7000),
(10, 0, '17', 7, 7000),
(11, 0, '', 5, 7000),
(12, 0, '', 8, 5000),
(13, 0, '', 8, 5000),
(14, 0, '21', 8, 5000),
(15, 0, '', 9, 5000),
(16, 0, '', 9, 5000),
(17, 0, '23', 9, 6000),
(18, 0, '', 10, 6000),
(19, 0, '', 15, 6500),
(20, 0, '', 14, 8000),
(21, 0, '', 17, 8000),
(22, 0, '', 16, 8000),
(23, 0, '', 19, 5000),
(24, 0, '', 18, 6000),
(25, 0, '', 20, 6000),
(26, 0, '', 11, 10000),
(27, 0, '', 12, 10000),
(28, 0, '', 13, 10000),
(29, 0, '', 21, 10000),
(30, 0, '', 23, 10000),
(31, 0, '', 22, 10000),
(32, 0, '', 26, 5000),
(33, 0, '67', 26, 5000),
(34, 0, '68', 26, 5000),
(35, 0, '70', 26, 5000),
(36, 0, '', 24, 5500),
(37, 0, '61', 24, 5500),
(38, 0, '', 25, 6000),
(39, 0, '', 25, 6000),
(40, 0, '', 28, 6000),
(41, 0, '', 27, 6000),
(42, 0, '', 29, 7000),
(43, 0, '', 35, 6000),
(44, 0, '', 33, 7000),
(45, 0, '', 33, 6500),
(46, 0, '', 34, 7000),
(47, 0, '89', 34, 7000),
(48, 0, '', 32, 10000),
(49, 0, '', 30, 10000),
(50, 0, '', 31, 10000),
(51, 0, '', 39, 12000),
(52, 0, '102', 39, 12000),
(53, 0, '', 37, 12000),
(54, 0, '97', 37, 11000),
(55, 0, '', 36, 10000),
(56, 0, '92', 36, 10000),
(57, 0, '', 38, 10000),
(58, 0, '', 41, 4000),
(59, 0, '', 41, 4000),
(60, 0, '', 41, 4000),
(61, 0, '', 40, 4000),
(62, 0, '', 40, 5000),
(63, 0, '106', 40, 4000),
(64, 0, '', 42, 4500),
(65, 0, '', 42, 6000),
(66, 0, '', 45, 12000),
(67, 0, '', 43, 12000),
(68, 0, '', 43, 12000),
(69, 0, '116', 43, 12000),
(70, 0, '', 44, 12000);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE `equipement` (
  `IDEQUIPEMENT` int(10) NOT NULL,
  `TYPEEQUIPEMENT` varchar(40) DEFAULT NULL,
  `ADRESSEQUIPEMENT` varchar(40) DEFAULT NULL,
  `LOCALISATIONEQUIPEMENT` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(9),
(9),
(9),
(9),
(9);

-- --------------------------------------------------------

--
-- Structure de la table `impot`
--

CREATE TABLE `impot` (
  `IDIMPOT` int(10) NOT NULL,
  `NOMIMPOT` varchar(40) DEFAULT NULL,
  `TYPEIMPOT` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `infrastructure`
--

CREATE TABLE `infrastructure` (
  `IDINFRASTRUCTURE` int(10) NOT NULL,
  `TYPEINFRASTRUCTURE` varchar(40) DEFAULT NULL,
  `ADRESSINFRASTRUCTURE` varchar(40) DEFAULT NULL,
  `LOCALISATION` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lieu_de_vote`
--

CREATE TABLE `lieu_de_vote` (
  `IDLIEUDEVOTE` int(10) NOT NULL,
  `NOMLIEUDEVOTE` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `num_carte_electeur` varchar(255) NOT NULL,
  `num_carte_identite` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `quartier_id` bigint(20) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `telephone_referant` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id`, `email`, `nom`, `num_carte_electeur`, `num_carte_identite`, `password`, `prenom`, `telephone`, `quartier_id`, `genre`, `telephone_referant`) VALUES
(7, NULL, 'Diop', '7412587412', '9966668887774441', '123456', 'Samba', '778504412', 1, 'Homme', '769854132'),
(8, NULL, 'Diop', '7412587455', '9966668887774422', '123456789', 'Moustapha', '764280173', 3, '', '769854132');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `IDPAYS` int(10) NOT NULL,
  `NOMPAYS` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `libelle`) VALUES
(1, 'Dakar'),
(2, 'Diourbel'),
(3, 'Fatick'),
(5, 'Kaffrine'),
(6, 'Kaolack'),
(4, 'Kédougou'),
(7, 'Kolda'),
(8, 'Louga'),
(9, 'Matam'),
(11, 'Saint-Louis'),
(10, 'Sédhiou'),
(12, 'Tambacounda'),
(13, 'Thiès'),
(14, 'Ziguinchor');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `create_date_time`, `nom`, `update_date_time`) VALUES
(1, '2021-11-27 17:38:17', 'ROLE_USER', '2021-11-27 17:38:17'),
(2, '2021-11-27 17:38:17', 'ROLE_ADMIN', '2021-11-27 17:38:17');

-- --------------------------------------------------------

--
-- Structure de la table `sous_region`
--

CREATE TABLE `sous_region` (
  `IDSOUSREGION` int(10) NOT NULL,
  `NOMSOUSREGION` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `taxe`
--

CREATE TABLE `taxe` (
  `IDTAXE` int(10) NOT NULL,
  `NOMTAXE` varchar(40) DEFAULT NULL,
  `TYPETAXE` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `num_cart_cedeao` bigint(20) NOT NULL,
  `num_cart_elec` bigint(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `telephone` varchar(9) NOT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `zone_activitee`
--

CREATE TABLE `zone_activitee` (
  `IDZONEACTIVITEE` int(10) NOT NULL,
  `NOMZONEACTIVITEE` varchar(40) DEFAULT NULL,
  `TYPEZONEACTIVITEE` varchar(40) DEFAULT NULL,
  `ADRESSEZONEACTIVITEE` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `zone_residence`
--

CREATE TABLE `zone_residence` (
  `IDZONERESIDENCE` int(10) NOT NULL,
  `NOMZONERESIDENCE` varchar(40) DEFAULT NULL,
  `TYPEZONERESIDENCE` varchar(40) DEFAULT NULL,
  `ADRESSZONERESIDENCE` varchar(40) DEFAULT NULL,
  `IDCOLLECTIVITE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_gex1lmaqpg0ir5g1f5eftyaa1` (`username`);

--
-- Index pour la table `account_roles`
--
ALTER TABLE `account_roles`
  ADD KEY `FK70s9enq5d1oywl7v8vis5ke5w` (`roles_id`),
  ADD KEY `FKtp61eta5i06bug3w1qr6286uf` (`account_id`);

--
-- Index pour la table `arrondissement`
--
ALTER TABLE `arrondissement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6nh5juhknpbfck4qwib2r0kqv` (`libelle`),
  ADD KEY `FK4uxgeijqolxlfvxd1xrwmc3lc` (`departement_id`);

--
-- Index pour la table `bureau_de_vote`
--
ALTER TABLE `bureau_de_vote`
  ADD PRIMARY KEY (`IDBUREAUDEVOTE`),
  ADD KEY `FK_REFERENCE_14` (`IDLIEUDEVOTE`);

--
-- Index pour la table `citoyen`
--
ALTER TABLE `citoyen`
  ADD PRIMARY KEY (`IDCITOYEN`),
  ADD KEY `FK_REFERENCE_11` (`IDCOLLECTIVITE`);

--
-- Index pour la table `collectivite`
--
ALTER TABLE `collectivite`
  ADD PRIMARY KEY (`IDCOLLECTIVITE`),
  ADD KEY `FK_REFERENCE_1` (`IDCONTINENT`),
  ADD KEY `FK_REFERENCE_2` (`IDSOUSREGION`),
  ADD KEY `FK_REFERENCE_3` (`IDPAYS`),
  ADD KEY `FK_REFERENCE_4` (`IDREGION`),
  ADD KEY `FK_REFERENCE_5` (`IDDEPARTEMENT`);

--
-- Index pour la table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgtllrsicp104h5w7yexfuj90m` (`arrondissement_id`),
  ADD KEY `FKnpb4g8pcu98cr0xm6xlrsnyqs` (`departement_id`),
  ADD KEY `FKjhf1rxvyl4a736j0xjyuqywdr` (`district_id`);

--
-- Index pour la table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`IDCONTINENT`);

--
-- Index pour la table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_34tiw5qfepy07u2kf25g7yk75` (`libelle`),
  ADD KEY `FKh8gowqmuphi5bw438h1ikoal8` (`region_id`);

--
-- Index pour la table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_district_arrondissement_id` (`arrondissement_id`),
  ADD KEY `fk_district_departement_id` (`departement_id`);

--
-- Index pour la table `district_old`
--
ALTER TABLE `district_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmlgrgw78aval1h9oeamrbh8v` (`arrondissement_id`),
  ADD KEY `FKcajeko5k25f4l6f6b8b0diufb` (`departement_id`);

--
-- Index pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`IDEQUIPEMENT`),
  ADD KEY `FK_REFERENCE_10` (`IDCOLLECTIVITE`);

--
-- Index pour la table `impot`
--
ALTER TABLE `impot`
  ADD PRIMARY KEY (`IDIMPOT`),
  ADD KEY `FK_REFERENCE_7` (`IDCOLLECTIVITE`);

--
-- Index pour la table `infrastructure`
--
ALTER TABLE `infrastructure`
  ADD PRIMARY KEY (`IDINFRASTRUCTURE`),
  ADD KEY `FK_REFERENCE_8` (`IDCOLLECTIVITE`);

--
-- Index pour la table `lieu_de_vote`
--
ALTER TABLE `lieu_de_vote`
  ADD PRIMARY KEY (`IDLIEUDEVOTE`),
  ADD KEY `FK_REFERENCE_9` (`IDCOLLECTIVITE`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtcnjf67yvq2514h43lqscl4un` (`quartier_id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`IDPAYS`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_kobagjbk9974c5bxd9evsx7fa` (`libelle`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_region`
--
ALTER TABLE `sous_region`
  ADD PRIMARY KEY (`IDSOUSREGION`);

--
-- Index pour la table `taxe`
--
ALTER TABLE `taxe`
  ADD PRIMARY KEY (`IDTAXE`),
  ADD KEY `FK_REFERENCE_12` (`IDCOLLECTIVITE`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD UNIQUE KEY `UK_amwlmdeik2qdnksxgd566knop` (`roles_id`),
  ADD KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`);

--
-- Index pour la table `zone_activitee`
--
ALTER TABLE `zone_activitee`
  ADD PRIMARY KEY (`IDZONEACTIVITEE`),
  ADD KEY `FK_REFERENCE_13` (`IDCOLLECTIVITE`);

--
-- Index pour la table `zone_residence`
--
ALTER TABLE `zone_residence`
  ADD PRIMARY KEY (`IDZONERESIDENCE`),
  ADD KEY `FK_REFERENCE_6` (`IDCOLLECTIVITE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bureau_de_vote`
--
ALTER TABLE `bureau_de_vote`
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`IDLIEUDEVOTE`) REFERENCES `lieu_de_vote` (`IDLIEUDEVOTE`);

--
-- Contraintes pour la table `citoyen`
--
ALTER TABLE `citoyen`
  ADD CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `collectivite`
--
ALTER TABLE `collectivite`
  ADD CONSTRAINT `FK_REFERENCE_1` FOREIGN KEY (`IDCONTINENT`) REFERENCES `continent` (`IDCONTINENT`),
  ADD CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`IDSOUSREGION`) REFERENCES `sous_region` (`IDSOUSREGION`),
  ADD CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`IDPAYS`) REFERENCES `pays` (`IDPAYS`),
  ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`IDREGION`) REFERENCES `region` (`IDREGION`),
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`IDDEPARTEMENT`) REFERENCES `departement` (`IDDEPARTEMENT`);

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `impot`
--
ALTER TABLE `impot`
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `infrastructure`
--
ALTER TABLE `infrastructure`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `lieu_de_vote`
--
ALTER TABLE `lieu_de_vote`
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `taxe`
--
ALTER TABLE `taxe`
  ADD CONSTRAINT `FK_REFERENCE_12` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `zone_activitee`
--
ALTER TABLE `zone_activitee`
  ADD CONSTRAINT `FK_REFERENCE_13` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);

--
-- Contraintes pour la table `zone_residence`
--
ALTER TABLE `zone_residence`
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`IDCOLLECTIVITE`) REFERENCES `collectivite` (`IDCOLLECTIVITE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
