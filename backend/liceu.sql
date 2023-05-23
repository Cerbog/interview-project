-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 11:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liceu`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `catalog_clase`
-- (See below for the actual view)
--
CREATE TABLE `catalog_clase` (
`id` int(11)
,`nr_matricol` varchar(4)
,`nume` varchar(30)
,`prenume` varchar(30)
,`clasa` int(11)
,`an` varchar(3)
,`nume_clasa` varchar(1)
,`profil` enum('matematica-informatica','filologie','stiinte')
,`nume_diriginte` varchar(30)
,`prenume_diriginte` varchar(30)
,`materii` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `clase`
--

CREATE TABLE `clase` (
  `id` int(11) NOT NULL,
  `nume` varchar(1) NOT NULL,
  `an` varchar(3) NOT NULL,
  `diriginte` int(11) NOT NULL,
  `profil` enum('matematica-informatica','filologie','stiinte') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clase`
--

INSERT INTO `clase` (`id`, `nume`, `an`, `diriginte`, `profil`) VALUES
(1, 'A', 'IX', 1, 'matematica-informatica'),
(2, 'B', 'IX', 2, 'stiinte'),
(3, 'C', 'IX', 3, 'filologie'),
(4, 'A', 'X', 4, 'matematica-informatica'),
(5, 'B', 'X', 5, 'stiinte'),
(6, 'C', 'X', 6, 'filologie'),
(7, 'A', 'XI', 7, 'matematica-informatica'),
(8, 'B', 'XI', 8, 'stiinte'),
(9, 'A', 'XII', 43, 'matematica-informatica'),
(10, 'C', 'XII', 30, 'filologie');

-- --------------------------------------------------------

--
-- Table structure for table `clase_elevi`
--

CREATE TABLE `clase_elevi` (
  `id` int(11) NOT NULL,
  `clasa` int(11) NOT NULL,
  `elev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clase_elevi`
--

INSERT INTO `clase_elevi` (`id`, `clasa`, `elev`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 4, 25),
(26, 4, 26),
(27, 4, 27),
(28, 4, 28),
(29, 5, 29),
(30, 5, 30),
(31, 5, 31),
(32, 5, 32),
(33, 5, 33),
(34, 5, 34),
(35, 5, 35),
(36, 6, 36),
(37, 6, 37),
(38, 6, 38),
(39, 6, 39),
(40, 6, 40),
(41, 6, 41),
(42, 6, 42),
(43, 7, 43),
(44, 7, 44),
(45, 7, 45),
(46, 7, 46),
(47, 7, 47),
(48, 7, 48),
(49, 7, 49),
(50, 8, 50),
(51, 8, 51),
(52, 8, 52),
(53, 8, 53),
(54, 8, 54),
(55, 8, 55),
(56, 8, 56),
(57, 9, 57),
(58, 9, 58),
(59, 9, 59),
(60, 9, 60),
(61, 9, 61),
(62, 9, 62),
(63, 9, 63),
(64, 9, 64),
(65, 9, 65),
(66, 10, 66),
(67, 10, 67),
(68, 10, 68),
(69, 10, 69),
(70, 10, 70),
(71, 10, 71),
(72, 10, 72),
(73, 10, 73),
(74, 10, 74),
(75, 10, 75),
(76, 10, 76),
(77, 10, 77);

-- --------------------------------------------------------

--
-- Table structure for table `clase_materii`
--

CREATE TABLE `clase_materii` (
  `id` int(11) NOT NULL,
  `clasa` int(11) NOT NULL,
  `materia_profesorul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clase_materii`
--

INSERT INTO `clase_materii` (`id`, `clasa`, `materia_profesorul`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(10, 1, 12),
(11, 1, 13),
(13, 1, 15),
(14, 1, 16),
(15, 1, 17),
(16, 4, 1),
(17, 1, 11),
(18, 2, 18),
(19, 2, 26),
(20, 2, 19),
(21, 2, 5),
(22, 2, 20),
(23, 2, 32),
(24, 2, 10),
(25, 2, 21),
(26, 2, 22),
(27, 2, 23),
(28, 2, 15),
(29, 2, 16),
(30, 3, 28),
(31, 3, 2),
(32, 3, 5),
(33, 3, 33),
(34, 3, 8),
(35, 3, 34),
(36, 3, 11),
(37, 3, 12),
(38, 3, 27),
(39, 3, 15),
(40, 3, 16),
(41, 3, 17),
(42, 4, 2),
(43, 4, 5),
(44, 4, 7),
(45, 4, 8),
(46, 4, 9),
(47, 4, 11),
(48, 4, 12),
(49, 4, 29),
(50, 4, 14),
(51, 4, 16),
(52, 4, 17),
(53, 5, 5),
(54, 5, 20),
(55, 5, 32),
(56, 5, 10),
(57, 5, 21),
(58, 5, 22),
(59, 5, 13),
(60, 5, 18),
(61, 5, 19),
(62, 5, 14),
(63, 5, 16),
(64, 5, 17),
(65, 6, 28),
(66, 6, 5),
(67, 6, 33),
(68, 6, 32),
(69, 6, 34),
(70, 6, 21),
(71, 6, 22),
(72, 6, 23),
(73, 6, 19),
(74, 6, 14),
(75, 6, 16),
(76, 6, 17);

-- --------------------------------------------------------

--
-- Table structure for table `discippline`
--

CREATE TABLE `discippline` (
  `materia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discippline`
--

INSERT INTO `discippline` (`materia`) VALUES
('Biologie'),
('Chimie'),
('Desen'),
('Filosofie'),
('Fizica'),
('Geografie'),
('Informatica'),
('Istorie'),
('Limba engleza'),
('Limba romana'),
('Logica'),
('Matematica'),
('Psohologie'),
('Religie'),
('Sport');

-- --------------------------------------------------------

--
-- Table structure for table `elevi`
--

CREATE TABLE `elevi` (
  `id` int(11) NOT NULL,
  `nume` varchar(30) NOT NULL,
  `prenume` varchar(30) NOT NULL,
  `dn` date NOT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `tel_pr` varchar(15) DEFAULT NULL,
  `tatal` varchar(30) DEFAULT NULL,
  `mama` varchar(30) DEFAULT NULL,
  `nr_matricol` varchar(4) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gen` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elevi`
--

INSERT INTO `elevi` (`id`, `nume`, `prenume`, `dn`, `adresa`, `tel_pr`, `tatal`, `mama`, `nr_matricol`, `email`, `gen`) VALUES
(1, 'Ana', 'Popescu', '2007-06-29', 'Str. constitutiei, nr. 4, asasdf', '0724093674', 'Adrian', 'Alexandra', '1223', 'anapop@yahoo.com', 'F'),
(2, 'Negrila', 'Radu', '2004-01-30', 'pe altundeva', '0765423450', 'Gheorghe', 'Natalia', '0012', 'negrad@gmail.com', 'M'),
(3, 'Baytrop', 'Madeleine', '2004-06-06', '78303 Eliot Avenue', '1606051347', 'Bowie', 'Berty', '8961', NULL, 'F'),
(4, 'Healks', 'Benedicto', '2005-07-18', '4479 Colorado Trail', '3087157711', 'Maurie', 'Fernande', '1754', NULL, 'M'),
(5, 'Gould', 'Derrek', '2004-11-22', '98612 Warbler Crossing', '1384102794', 'Micky', 'Feliza', '7187', NULL, 'M'),
(6, 'Gillanders', 'Rakel', '2006-03-19', '1 Jay Drive', '2456964662', 'Godwin', 'Stella', '0859', NULL, 'F'),
(7, 'Tabbernor', 'Mario', '2004-04-15', '52533 Hayes Place', '4657144173', 'Reinhold', 'Xenia', '4494', NULL, 'M'),
(8, 'Pallaske', 'Angus', '2005-03-02', '65506 Stone Corner Trail', '9309448708', 'Brady', 'Korry', '8147', NULL, 'M'),
(9, 'Gahan', 'Rebeka', '2007-02-01', '909 Delaware Point', '4754268867', 'Hamid', 'Zilvia', '7815', NULL, 'F'),
(10, 'Lidgerton', 'Jehu', '2005-12-14', '06 Schiller Crossing', '6522490700', 'Hernando', 'Ricca', '6295', NULL, 'M'),
(11, 'Duggon', 'Shandie', '2004-12-28', '8 East Trail', '1201482306', 'Adolphus', 'Maude', '0095', NULL, 'F'),
(12, 'Middlemiss', 'Meyer', '2006-11-14', '29831 Sunnyside Junction', '7532341187', 'Flory', 'Charita', '0674', NULL, 'M'),
(13, 'Tink', 'Effie', '2005-03-22', '050 Rusk Drive', '8655492320', 'Hastie', 'Gabriella', '2811', NULL, 'F'),
(14, 'Feldklein', 'Kania', '2006-04-26', '5 Dennis Court', '3011275230', 'Wilmer', 'Rochette', '2529', NULL, 'F'),
(15, 'Laite', 'Collette', '2004-03-08', '8 Truax Hill', '1574192166', 'Stanislaus', 'Dynah', '9282', NULL, 'F'),
(16, 'Balsillie', 'Diarmid', '2004-06-07', '876 Elgar Junction', '9526339615', 'Derry', 'Raina', '2803', NULL, 'M'),
(17, 'McGeffen', 'Ingaberg', '2007-03-28', '562 Pleasure Parkway', '4547362783', 'Lamar', 'Teddy', '1568', NULL, 'F'),
(18, 'Meachem', 'Farlee', '2004-05-14', '0 Mosinee Terrace', '6709404949', 'Dennison', 'Ninetta', '2948', NULL, 'M'),
(19, 'Oldcote', 'Marlowe', '2004-03-03', '0733 Warner Trail', '7391894546', 'Vance', 'Beverly', '7631', NULL, 'M'),
(20, 'Hutable', 'Donall', '2004-10-13', '07097 Hollow Ridge Place', '1192001088', 'Uri', 'Val', '8253', NULL, 'M'),
(21, 'Houselee', 'Lanette', '2006-10-07', '9 Shasta Junction', '5592300959', 'Fons', 'Maridel', '5887', NULL, 'F'),
(22, 'Estrella', 'Oran', '2004-09-23', '2232 Knutson Drive', '8005900444', 'Ettore', 'May', '9421', NULL, 'M'),
(23, 'Dat', 'Angie', '2005-09-05', '2 Northwestern Point', '3573264409', 'Garik', 'Ermina', '6539', NULL, 'F'),
(24, 'Brunsen', 'Laughton', '2006-09-09', '513 Mcbride Park', '9816069058', 'Wyndham', 'Mead', '5770', NULL, 'M'),
(25, 'Crippill', 'Mel', '2005-02-09', '89543 Paget Pass', '1059704382', 'Alonzo', 'Sharyl', '9316', NULL, 'F'),
(26, 'Medeway', 'Herold', '2005-05-11', '46131 Warbler Street', '1828495608', 'Cletis', 'Emmaline', '4341', NULL, 'M'),
(27, 'Frotton', 'Leone', '2005-01-11', '584 Pine View Alley', '5768039552', 'Remington', 'Mariann', '0343', NULL, 'F'),
(28, 'Decaze', 'Allys', '2005-10-13', '6790 Gale Parkway', '8852150428', 'Burton', 'Blake', '4268', NULL, 'F'),
(29, 'Blance', 'Renard', '2005-10-01', '04 Arapahoe Junction', '1849889702', 'Martainn', 'Rosemary', '0032', NULL, 'M'),
(30, 'Duberry', 'Bryce', '2005-03-21', '30429 Dottie Court', '7391306908', 'Ruprecht', 'Henrieta', '7072', NULL, 'M'),
(31, 'McGinney', 'Lauren', '2007-02-26', '021 Pleasure Center', '4827137182', 'Frannie', 'Andree', '4371', NULL, 'F'),
(32, 'Beiderbeck', 'Annabela', '2006-07-15', '3616 Rockefeller Circle', '6709014380', 'Tracy', 'Flor', '0966', NULL, 'F'),
(33, 'Paddell', 'Cristen', '2005-05-07', '7 Daystar Circle', '8335378041', 'Dunstan', 'Ingeborg', '1068', NULL, 'F'),
(34, 'Ledwidge', 'Dre', '2006-11-16', '7989 Northland Pass', '8249605984', 'Luke', 'Krissy', '1978', NULL, 'F'),
(35, 'Moggan', 'Alexina', '2006-08-13', '81 Russell Trail', '9713250274', 'Fabiano', 'Consolata', '9248', NULL, 'F'),
(36, 'Frudd', 'Saidee', '2004-12-01', '28536 5th Avenue', '3912177108', 'Dicky', 'Afton', '6662', NULL, 'F'),
(37, 'Laurance', 'Hendrick', '2007-07-08', '26 Nevada Junction', '1467524581', 'Weber', 'Elvira', '9342', NULL, 'M'),
(38, 'Kneesha', 'Wileen', '2005-04-04', '99460 Little Fleur Road', '4677576244', 'Dickie', 'Carmencita', '0703', NULL, 'F'),
(39, 'Curry', 'Olenolin', '2005-06-29', '319 Kensington Circle', '7692934275', 'Jakie', 'Junina', '7880', NULL, 'M'),
(40, 'Cary', 'Demetris', '2007-07-06', '8126 Monica Way', '9436272115', 'Keen', 'Dolores', '9728', NULL, 'F'),
(41, 'Kildale', 'Rodolph', '2007-07-06', '95 Holy Cross Way', '9001893148', 'Whitman', 'Candide', '9720', NULL, 'M'),
(42, 'Clixby', 'Consuela', '2004-09-04', '22 Oriole Lane', '7035214245', 'Cyril', 'June', '0001', NULL, 'F'),
(43, 'Kleinhausen', 'Joellyn', '2006-09-30', '24 Boyd Trail', '9659674938', 'Marv', 'Carola', '5337', NULL, 'F'),
(44, 'Finnick', 'Pansie', '2007-01-17', '70 Victoria Street', '1484406289', 'Alexis', 'Sher', '4993', NULL, 'F'),
(45, 'Zumbusch', 'Filmer', '2006-02-26', '58143 Corscot Junction', '8093085341', 'Travus', 'Andriana', '8642', NULL, 'M'),
(46, 'Thatcher', 'Rhett', '2004-04-06', '3 Doe Crossing Circle', '3943101773', 'Parsifal', 'Corene', '9019', NULL, 'M'),
(47, 'MacGuigan', 'Bobby', '2006-07-09', '94 Briar Crest Avenue', '5063226200', 'Herrick', 'Kimmy', '3670', NULL, 'F'),
(48, 'Puttick', 'Maximo', '2004-04-05', '78 Badeau Avenue', '1874076824', 'Guillermo', 'Daffi', '0953', NULL, 'M'),
(49, 'Elner', 'Paola', '2007-02-20', '527 Starling Place', '5164371106', 'Tabb', 'Cathe', '6354', NULL, 'F'),
(50, 'Burstowe', 'Vladimir', '2007-04-22', '29 Chive Way', '8445697723', 'Kerry', 'Bethany', '8394', NULL, 'M'),
(51, 'Fidelus', 'Cris', '2007-09-19', '45341 International Trail', '6232786874', 'Ezechiel', 'Hollie', '8087', NULL, 'F'),
(52, 'Main', 'Damon', '2007-11-02', '57 Talmadge Hill', '2633143275', 'Matt', 'Willy', '6670', NULL, 'M'),
(53, 'Cutajar', 'Somerset', '2005-09-19', '35159 Larry Avenue', '7811878903', 'Odo', 'Ariel', '5055', NULL, 'M'),
(54, 'Breffit', 'Audry', '2006-02-23', '029 Garrison Trail', '4688565797', 'Homerus', 'Auguste', '2831', NULL, 'F'),
(55, 'Fernando', 'Xylia', '2006-10-08', '84 Hanover Way', '1301052635', 'Clywd', 'Melloney', '6138', NULL, 'F'),
(56, 'Zavittieri', 'Tristam', '2006-04-03', '21 Derek Road', '3259941611', 'Ferdy', 'Marget', '0550', NULL, 'M'),
(57, 'Toplis', 'Hastings', '2007-06-09', '07822 Oneill Court', '2947261858', 'Toddy', 'Jacquenette', '7951', NULL, 'M'),
(58, 'Huscroft', 'Duffy', '2005-05-27', '575 Pine View Road', '9088702647', 'Zackariah', 'Jolene', '1793', NULL, 'M'),
(59, 'Reavell', 'Adda', '2006-09-26', '5179 Dottie Place', '6513944037', 'Benedict', 'Edin', '7075', NULL, 'F'),
(60, 'Baudassi', 'Emmerich', '2006-10-09', '5883 Delaware Parkway', '2801825375', 'Francesco', 'Margalo', '0459', NULL, 'M'),
(61, 'Heikkinen', 'Orly', '2004-03-31', '0 Eastlawn Park', '1283036708', 'Eddie', 'Theo', '6497', NULL, 'F'),
(62, 'Dory', 'Derry', '2005-01-14', '61 Utah Street', '2642461725', 'Natale', 'Hildy', '7060', NULL, 'M'),
(63, 'Draye', 'Gabriele', '2007-04-08', '8867 1st Court', '4311866908', 'Rolph', 'Karoly', '6401', NULL, 'M'),
(64, 'Tough', 'Karlan', '2007-03-02', '912 Luster Plaza', '5228281823', 'Rollins', 'Cahra', '5245', NULL, 'M'),
(65, 'Villa', 'Janetta', '2005-09-06', '1880 Sherman Place', '1795566264', 'Osborn', 'Valerye', '9985', NULL, 'F'),
(66, 'Helsdon', 'Rochell', '2005-11-12', '4 Almo Drive', '5407893473', 'Dall', 'Evey', '2197', NULL, 'F'),
(67, 'Hiner', 'Enriqueta', '2005-04-09', '49 Mockingbird Hill', '2263734988', 'Cyril', 'Bonita', '9540', NULL, 'F'),
(68, 'MacLaig', 'Hanan', '2004-11-18', '04 John Wall Trail', '3752710360', 'Wallace', 'Harriet', '0807', NULL, 'M'),
(69, 'Gwyer', 'Gerrie', '2004-05-25', '4 Warrior Way', '4858823240', 'Ingram', 'Mufi', '0582', NULL, 'M'),
(70, 'Perrot', 'Nicko', '2007-12-23', '9 Carberry Park', '6244795286', 'Kincaid', 'Martynne', '4488', NULL, 'M'),
(71, 'Volant', 'Aldridge', '2007-09-28', '79555 Stuart Drive', '5359051046', 'Dar', 'Jeanna', '9299', NULL, 'M'),
(72, 'Hardingham', 'Buddie', '2004-09-04', '24 Nelson Way', '3829172769', 'Ferguson', 'Roseann', '0219', NULL, 'M'),
(73, 'Morrish', 'Kassandra', '2006-06-29', '0 Heffernan Crossing', '1999234142', 'Dante', 'Lou', '1522', NULL, 'F'),
(74, 'Mapam', 'Anatole', '2005-11-28', '70 American Lane', '7216598038', 'Titus', 'Kore', '3012', NULL, 'M'),
(75, 'Grimshaw', 'Brandon', '2005-07-12', '3 Dakota Crossing', '6954536886', 'Weylin', 'Dannye', '0896', NULL, 'M'),
(76, 'Lidyard', 'Lorelle', '2006-11-25', '0 Blackbird Point', '8143517298', 'Andras', 'Camilla', '8407', NULL, 'F'),
(77, 'Zorn', 'Maia', '2004-08-08', '26 Ridgeway Street', '8709075043', 'Russell', 'Linda', '9627', NULL, 'F');

-- --------------------------------------------------------

--
-- Stand-in structure for view `email_users`
-- (See below for the actual view)
--
CREATE TABLE `email_users` (
`nume` varchar(30)
,`prenume` varchar(30)
,`email` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `nivele`
--

CREATE TABLE `nivele` (
  `an` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nivele`
--

INSERT INTO `nivele` (`an`) VALUES
('IX'),
('X'),
('XI'),
('XII');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `elev` int(11) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `semestrul` enum('1','2') NOT NULL,
  `nota` int(2) NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `elev`, `materia`, `semestrul`, `nota`, `data`) VALUES
(1, 1, 'Biologie', '1', 7, '2023-05-10'),
(2, 1, 'Biologie', '1', 8, '2023-05-04'),
(3, 16, 'Chimie', '1', 8, '2023-05-02'),
(4, 11, 'Limba romana', '1', 8, '2023-05-02'),
(5, 16, 'Religie', '1', 8, '2023-05-02'),
(6, 3, 'Psohologie', '1', 8, '2023-05-02'),
(7, 12, 'Fizica', '1', 8, '2023-05-02'),
(8, 13, 'Limba engleza', '1', 8, '2023-05-02'),
(9, 71, 'Informatica', '1', 8, '2023-05-02'),
(10, 29, 'Istorie', '2', 8, '2023-05-02'),
(11, 23, 'Istorie', '2', 10, '2023-05-02'),
(12, 45, 'Biologie', '1', 3, '2023-05-02'),
(13, 23, 'Limba romana', '1', 2, '2023-05-02'),
(14, 15, 'Informatica', '2', 4, '2023-05-02'),
(15, 58, 'Biologie', '1', 10, '2023-05-02'),
(16, 66, 'Religie', '1', 2, '2023-05-02'),
(17, 30, 'Fizica', '2', 2, '2023-05-02'),
(18, 7, 'Biologie', '2', 9, '2023-05-02'),
(19, 6, 'Fizica', '1', 4, '2023-05-02'),
(20, 39, 'Sport', '2', 7, '2023-05-02'),
(21, 46, 'Matematica', '2', 9, '2023-05-02'),
(22, 8, 'Fizica', '1', 5, '2023-05-02'),
(23, 73, 'Istorie', '1', 10, '2023-05-02'),
(24, 47, 'Geografie', '2', 2, '2023-05-02'),
(25, 51, 'Religie', '1', 3, '2023-05-02'),
(26, 44, 'Limba engleza', '1', 7, '2023-05-02'),
(27, 40, 'Logica', '2', 1, '2023-05-02'),
(28, 69, 'Limba engleza', '1', 9, '2023-05-02'),
(29, 63, 'Matematica', '2', 8, '2023-05-02'),
(30, 27, 'Limba romana', '1', 10, '2023-05-02'),
(31, 60, 'Limba romana', '2', 3, '2023-05-02'),
(32, 53, 'Logica', '2', 8, '2023-05-02'),
(33, 46, 'Logica', '1', 7, '2023-05-02'),
(34, 5, 'Limba romana', '1', 6, '2023-05-02'),
(35, 14, 'Religie', '2', 6, '2023-05-02'),
(36, 2, 'Istorie', '2', 6, '2023-05-02'),
(37, 69, 'Limba engleza', '1', 6, '2023-05-02'),
(38, 60, 'Filosofie', '1', 10, '2023-05-02'),
(39, 21, 'Limba engleza', '1', 2, '2023-05-02'),
(40, 13, 'Psohologie', '1', 2, '2023-05-02'),
(41, 7, 'Desen', '2', 1, '2023-05-02'),
(42, 2, 'Religie', '2', 3, '2023-05-02'),
(43, 17, 'Psohologie', '2', 3, '2023-05-02'),
(44, 1, 'Biologie', '2', 2, '2023-05-02'),
(45, 8, 'Filosofie', '1', 8, '2023-05-02'),
(46, 62, 'Geografie', '2', 8, '2023-05-02'),
(47, 8, 'Desen', '1', 6, '2023-05-02'),
(48, 10, 'Limba engleza', '1', 10, '2023-05-02'),
(49, 73, 'Religie', '2', 5, '2023-05-02'),
(50, 50, 'Psohologie', '2', 2, '2023-05-02'),
(51, 56, 'Filosofie', '1', 9, '2023-05-02'),
(52, 64, 'Limba engleza', '1', 7, '2023-05-02'),
(53, 49, 'Logica', '1', 3, '2023-05-02'),
(54, 12, 'Psohologie', '1', 4, '2023-05-02'),
(55, 12, 'Psohologie', '2', 6, '2023-05-02'),
(56, 7, 'Sport', '2', 9, '2023-05-02'),
(57, 36, 'Geografie', '1', 9, '2023-05-02'),
(58, 62, 'Geografie', '1', 5, '2023-05-02'),
(59, 30, 'Fizica', '2', 8, '2023-05-02'),
(60, 37, 'Limba romana', '2', 7, '2023-05-02'),
(61, 71, 'Sport', '1', 7, '2023-05-02'),
(62, 76, 'Psohologie', '1', 9, '2023-05-02'),
(63, 61, 'Sport', '1', 4, '2023-05-02'),
(64, 2, 'Matematica', '1', 4, '2023-05-02'),
(65, 22, 'Matematica', '2', 9, '2023-05-02'),
(66, 66, 'Chimie', '2', 5, '2023-05-02'),
(67, 2, 'Biologie', '1', 8, '2023-05-02'),
(68, 11, 'Psohologie', '1', 9, '2023-05-02'),
(69, 75, 'Limba romana', '2', 6, '2023-05-02'),
(70, 58, 'Psohologie', '2', 7, '2023-05-02'),
(71, 24, 'Sport', '2', 4, '2023-05-02'),
(72, 5, 'Sport', '2', 10, '2023-05-02'),
(73, 74, 'Matematica', '2', 6, '2023-05-02'),
(74, 13, 'Filosofie', '1', 1, '2023-05-02'),
(75, 20, 'Chimie', '1', 4, '2023-05-02'),
(76, 8, 'Desen', '1', 3, '2023-05-02'),
(77, 20, 'Biologie', '1', 8, '2023-05-02'),
(78, 40, 'Biologie', '1', 9, '2023-05-02'),
(79, 26, 'Geografie', '2', 2, '2023-05-02'),
(80, 24, 'Filosofie', '1', 3, '2023-05-02'),
(81, 44, 'Desen', '2', 5, '2023-05-02'),
(82, 4, 'Informatica', '2', 6, '2023-05-02'),
(83, 26, 'Istorie', '2', 3, '2023-05-02'),
(84, 25, 'Limba romana', '1', 6, '2023-05-02'),
(85, 15, 'Fizica', '1', 9, '2023-05-02'),
(86, 30, 'Biologie', '2', 5, '2023-05-02'),
(87, 39, 'Limba romana', '1', 8, '2023-05-02'),
(88, 33, 'Limba engleza', '1', 7, '2023-05-02'),
(89, 36, 'Istorie', '1', 10, '2023-05-02'),
(90, 24, 'Biologie', '2', 5, '2023-05-02'),
(91, 27, 'Chimie', '1', 5, '2023-05-02'),
(92, 18, 'Desen', '2', 6, '2023-05-02'),
(93, 56, 'Desen', '2', 3, '2023-05-02'),
(94, 50, 'Chimie', '2', 9, '2023-05-02'),
(95, 64, 'Istorie', '2', 10, '2023-05-02'),
(96, 51, 'Desen', '2', 5, '2023-05-02'),
(97, 61, 'Biologie', '1', 7, '2023-05-02'),
(98, 40, 'Limba romana', '2', 8, '2023-05-02'),
(99, 18, 'Filosofie', '1', 7, '2023-05-02'),
(100, 14, 'Matematica', '1', 9, '2023-05-02'),
(101, 59, 'Limba engleza', '2', 8, '2023-05-02'),
(102, 21, 'Sport', '1', 6, '2023-05-02'),
(103, 6, 'Istorie', '2', 2, '2023-05-02'),
(104, 11, 'Matematica', '2', 10, '2023-05-02'),
(105, 13, 'Religie', '1', 6, '2023-05-02'),
(106, 32, 'Geografie', '1', 9, '2023-05-02'),
(107, 65, 'Istorie', '2', 4, '2023-05-02'),
(108, 35, 'Psohologie', '2', 5, '2023-05-02'),
(109, 27, 'Geografie', '1', 2, '2023-05-02'),
(110, 13, 'Istorie', '2', 8, '2023-05-02'),
(111, 6, 'Chimie', '1', 4, '2023-05-02'),
(112, 42, 'Limba engleza', '2', 3, '2023-05-02'),
(113, 61, 'Istorie', '1', 1, '2023-05-02'),
(114, 4, 'Religie', '2', 7, '2023-05-02'),
(115, 27, 'Psohologie', '1', 6, '2023-05-02'),
(116, 42, 'Limba romana', '2', 3, '2023-05-02'),
(117, 23, 'Desen', '1', 7, '2023-05-02'),
(118, 60, 'Geografie', '2', 6, '2023-05-02'),
(119, 69, 'Religie', '2', 2, '2023-05-02'),
(120, 4, 'Limba engleza', '1', 1, '2023-05-02'),
(121, 25, 'Limba engleza', '1', 4, '2023-05-02'),
(122, 57, 'Fizica', '2', 3, '2023-05-02'),
(123, 68, 'Chimie', '2', 2, '2023-05-02'),
(124, 16, 'Chimie', '1', 8, '2023-05-02'),
(126, 69, 'Logica', '2', 7, '2023-05-02'),
(127, 64, 'Sport', '1', 4, '2023-05-02'),
(128, 47, 'Religie', '2', 10, '2023-05-02'),
(129, 25, 'Limba engleza', '2', 7, '2023-05-02'),
(130, 11, 'Limba romana', '2', 8, '2023-05-02'),
(131, 43, 'Matematica', '1', 5, '2023-05-02'),
(132, 56, 'Informatica', '2', 10, '2023-05-02'),
(133, 63, 'Religie', '1', 1, '2023-05-02'),
(134, 72, 'Filosofie', '2', 2, '2023-05-02'),
(135, 2, 'Limba engleza', '1', 6, '2023-05-02'),
(136, 13, 'Limba romana', '1', 2, '2023-05-02'),
(137, 45, 'Istorie', '2', 10, '2023-05-02'),
(138, 76, 'Istorie', '2', 9, '2023-05-02'),
(139, 34, 'Fizica', '2', 9, '2023-05-02'),
(140, 53, 'Matematica', '2', 3, '2023-05-02'),
(141, 27, 'Desen', '2', 6, '2023-05-02'),
(142, 55, 'Limba romana', '1', 1, '2023-05-02'),
(143, 55, 'Geografie', '1', 2, '2023-05-02'),
(144, 72, 'Sport', '2', 8, '2023-05-02'),
(145, 23, 'Filosofie', '1', 9, '2023-05-02'),
(146, 2, 'Sport', '2', 2, '2023-05-02'),
(147, 15, 'Biologie', '2', 9, '2023-05-02'),
(148, 16, 'Religie', '2', 8, '2023-05-02'),
(149, 66, 'Desen', '2', 9, '2023-05-02'),
(150, 41, 'Informatica', '1', 3, '2023-05-02'),
(151, 39, 'Matematica', '1', 9, '2023-05-02'),
(152, 13, 'Biologie', '2', 9, '2023-05-02'),
(153, 66, 'Biologie', '1', 4, '2023-05-02'),
(154, 72, 'Limba romana', '2', 10, '2023-05-02'),
(155, 74, 'Fizica', '1', 4, '2023-05-02'),
(156, 75, 'Sport', '1', 4, '2023-05-02'),
(157, 44, 'Limba romana', '2', 4, '2023-05-02'),
(158, 38, 'Limba romana', '1', 6, '2023-05-02'),
(159, 20, 'Limba romana', '2', 7, '2023-05-02'),
(160, 47, 'Logica', '2', 4, '2023-05-02'),
(161, 23, 'Filosofie', '2', 9, '2023-05-02'),
(162, 74, 'Filosofie', '1', 9, '2023-05-02'),
(163, 59, 'Matematica', '2', 8, '2023-05-02'),
(165, 44, 'Biologie', '1', 6, '2023-05-02'),
(166, 50, 'Psohologie', '2', 2, '2023-05-02'),
(167, 47, 'Matematica', '1', 5, '2023-05-02'),
(168, 26, 'Desen', '2', 8, '2023-05-02'),
(169, 1, 'Biologie', '2', 7, '2023-05-02'),
(170, 33, 'Istorie', '1', 1, '2023-05-02'),
(171, 9, 'Limba engleza', '1', 10, '2023-05-02'),
(172, 26, 'Filosofie', '1', 4, '2023-05-02'),
(173, 74, 'Istorie', '1', 10, '2023-05-02'),
(174, 24, 'Filosofie', '1', 9, '2023-05-02'),
(175, 65, 'Chimie', '2', 10, '2023-05-02'),
(176, 10, 'Desen', '1', 3, '2023-05-02'),
(177, 69, 'Filosofie', '1', 6, '2023-05-02'),
(178, 62, 'Sport', '1', 7, '2023-05-02'),
(180, 23, 'Religie', '1', 2, '2023-05-02'),
(181, 30, 'Desen', '1', 3, '2023-05-02'),
(182, 69, 'Geografie', '1', 4, '2023-05-02'),
(183, 37, 'Desen', '1', 4, '2023-05-02'),
(184, 32, 'Fizica', '1', 8, '2023-05-02'),
(185, 23, 'Sport', '1', 5, '2023-05-02'),
(186, 54, 'Geografie', '2', 3, '2023-05-02'),
(187, 74, 'Psohologie', '2', 9, '2023-05-02'),
(188, 73, 'Desen', '1', 8, '2023-05-02'),
(189, 71, 'Limba romana', '1', 5, '2023-05-02'),
(190, 36, 'Limba engleza', '1', 5, '2023-05-02'),
(191, 17, 'Limba romana', '1', 1, '2023-05-02'),
(192, 34, 'Fizica', '2', 1, '2023-05-02'),
(193, 76, 'Filosofie', '1', 2, '2023-05-02'),
(194, 62, 'Limba romana', '1', 1, '2023-05-02'),
(195, 65, 'Religie', '2', 9, '2023-05-02'),
(196, 20, 'Filosofie', '1', 4, '2023-05-02'),
(197, 13, 'Limba romana', '2', 7, '2023-05-02'),
(198, 28, 'Logica', '1', 10, '2023-05-02'),
(199, 31, 'Sport', '1', 6, '2023-05-02'),
(200, 1, 'Limba engleza', '1', 8, '2023-05-02'),
(201, 18, 'Geografie', '1', 10, '2023-05-02'),
(202, 38, 'Limba engleza', '2', 3, '2023-05-02'),
(204, 12, 'Istorie', '2', 8, '2023-05-02'),
(205, 62, 'Desen', '1', 8, '2023-05-02'),
(206, 42, 'Psohologie', '1', 8, '2023-05-02'),
(207, 69, 'Psohologie', '1', 3, '2023-05-02'),
(208, 19, 'Geografie', '1', 5, '2023-05-02'),
(209, 50, 'Logica', '2', 6, '2023-05-02'),
(210, 48, 'Filosofie', '2', 6, '2023-04-22'),
(211, 38, 'Biologie', '1', 1, '2023-04-22'),
(212, 61, 'Fizica', '2', 4, '2023-04-22'),
(213, 39, 'Desen', '2', 1, '2023-04-22'),
(214, 74, 'Religie', '2', 4, '2023-04-22'),
(215, 23, 'Istorie', '2', 10, '2023-04-22'),
(216, 15, 'Fizica', '1', 8, '2023-04-22'),
(217, 24, 'Geografie', '1', 8, '2023-04-22'),
(218, 58, 'Istorie', '1', 2, '2023-04-22'),
(219, 70, 'Geografie', '2', 6, '2023-04-22'),
(220, 58, 'Filosofie', '1', 8, '2023-04-22'),
(221, 46, 'Fizica', '1', 5, '2023-04-22'),
(222, 33, 'Limba romana', '1', 6, '2023-04-22'),
(223, 76, 'Limba engleza', '2', 7, '2023-04-22'),
(224, 28, 'Biologie', '2', 2, '2023-04-22'),
(225, 15, 'Fizica', '2', 2, '2023-04-22'),
(226, 26, 'Fizica', '1', 7, '2023-04-22'),
(227, 46, 'Fizica', '2', 5, '2023-04-22'),
(228, 55, 'Matematica', '2', 5, '2023-04-22'),
(229, 41, 'Matematica', '2', 1, '2023-04-22'),
(230, 34, 'Informatica', '2', 10, '2023-04-22'),
(231, 60, 'Desen', '1', 8, '2023-04-22'),
(232, 17, 'Biologie', '2', 9, '2023-04-22'),
(233, 38, 'Sport', '2', 7, '2023-04-22'),
(234, 55, 'Psohologie', '2', 2, '2023-04-22'),
(235, 19, 'Filosofie', '1', 5, '2023-04-22'),
(236, 9, 'Biologie', '1', 8, '2023-04-22'),
(237, 73, 'Filosofie', '1', 6, '2023-04-22'),
(238, 1, 'Limba engleza', '1', 7, '2023-04-22'),
(239, 44, 'Istorie', '2', 4, '2023-04-22'),
(240, 14, 'Sport', '2', 3, '2023-04-22'),
(241, 51, 'Limba engleza', '2', 7, '2023-04-22'),
(242, 31, 'Geografie', '1', 3, '2023-04-22'),
(243, 64, 'Filosofie', '1', 10, '2023-04-22'),
(244, 62, 'Matematica', '1', 9, '2023-04-22'),
(245, 40, 'Psohologie', '2', 9, '2023-04-22'),
(246, 10, 'Matematica', '2', 1, '2023-04-22'),
(247, 58, 'Fizica', '1', 1, '2023-04-22'),
(248, 4, 'Limba romana', '2', 3, '2023-04-22'),
(249, 39, 'Religie', '1', 3, '2023-04-22'),
(250, 12, 'Fizica', '2', 8, '2023-04-22'),
(251, 22, 'Limba romana', '2', 2, '2023-04-22'),
(252, 55, 'Matematica', '2', 2, '2023-04-22'),
(253, 45, 'Informatica', '1', 4, '2023-04-22'),
(254, 72, 'Limba engleza', '2', 8, '2023-04-22'),
(255, 24, 'Sport', '2', 3, '2023-04-22'),
(256, 21, 'Fizica', '2', 8, '2023-04-22'),
(257, 63, 'Istorie', '1', 10, '2023-04-22'),
(258, 39, 'Logica', '1', 3, '2023-04-22'),
(259, 9, 'Biologie', '2', 10, '2023-04-22'),
(260, 38, 'Psohologie', '1', 2, '2023-04-22'),
(261, 51, 'Informatica', '1', 7, '2023-04-22'),
(262, 34, 'Filosofie', '2', 1, '2023-04-22'),
(263, 46, 'Sport', '2', 10, '2023-04-22'),
(264, 70, 'Psohologie', '2', 6, '2023-04-22'),
(266, 54, 'Fizica', '2', 5, '2023-04-22'),
(267, 66, 'Matematica', '1', 1, '2023-04-22'),
(268, 22, 'Filosofie', '1', 7, '2023-04-22'),
(269, 19, 'Limba romana', '2', 3, '2023-04-22'),
(270, 8, 'Chimie', '1', 6, '2023-04-22'),
(271, 31, 'Matematica', '2', 6, '2023-04-22'),
(272, 13, 'Sport', '2', 9, '2023-04-22'),
(273, 59, 'Logica', '2', 9, '2023-04-22'),
(274, 23, 'Geografie', '2', 9, '2023-04-22'),
(275, 45, 'Biologie', '1', 2, '2023-04-22'),
(276, 52, 'Informatica', '1', 5, '2023-04-22'),
(277, 27, 'Biologie', '1', 6, '2023-04-22'),
(278, 9, 'Geografie', '1', 9, '2023-04-22'),
(279, 39, 'Sport', '1', 2, '2023-04-22'),
(280, 20, 'Religie', '1', 6, '2023-04-22'),
(281, 74, 'Istorie', '1', 4, '2023-04-22'),
(282, 26, 'Filosofie', '1', 4, '2023-04-22'),
(283, 56, 'Biologie', '1', 5, '2023-04-22'),
(284, 13, 'Limba romana', '1', 10, '2023-04-22'),
(285, 36, 'Religie', '1', 9, '2023-04-22'),
(286, 61, 'Limba engleza', '2', 2, '2023-04-22'),
(287, 15, 'Informatica', '1', 7, '2023-04-22'),
(288, 32, 'Limba romana', '2', 6, '2023-04-22'),
(289, 66, 'Fizica', '1', 7, '2023-04-22'),
(290, 49, 'Informatica', '2', 7, '2023-04-22'),
(291, 16, 'Geografie', '1', 6, '2023-04-22'),
(292, 25, 'Limba engleza', '1', 6, '2023-04-22'),
(293, 8, 'Istorie', '2', 4, '2023-04-22'),
(294, 25, 'Sport', '1', 2, '2023-04-22'),
(295, 48, 'Logica', '2', 5, '2023-04-22'),
(296, 56, 'Informatica', '1', 4, '2023-04-22'),
(297, 9, 'Matematica', '1', 10, '2023-04-22'),
(298, 40, 'Istorie', '2', 7, '2023-04-22'),
(299, 21, 'Istorie', '2', 6, '2023-04-22'),
(300, 76, 'Logica', '1', 1, '2023-04-22'),
(301, 55, 'Informatica', '1', 1, '2023-04-22'),
(302, 73, 'Geografie', '1', 6, '2023-04-22'),
(303, 8, 'Matematica', '2', 7, '2023-04-22'),
(304, 61, 'Geografie', '1', 6, '2023-04-22'),
(305, 72, 'Fizica', '2', 6, '2023-04-22'),
(306, 5, 'Religie', '2', 7, '2023-04-22'),
(307, 33, 'Biologie', '2', 1, '2023-04-22'),
(308, 60, 'Geografie', '2', 1, '2023-04-22'),
(310, 30, 'Matematica', '2', 7, '2023-04-22'),
(311, 72, 'Limba engleza', '2', 9, '2023-04-22'),
(312, 53, 'Istorie', '2', 4, '2023-04-22'),
(313, 64, 'Fizica', '1', 8, '2023-04-22'),
(314, 53, 'Religie', '2', 2, '2023-04-22'),
(315, 31, 'Biologie', '1', 4, '2023-04-22'),
(316, 66, 'Desen', '2', 3, '2023-04-22'),
(317, 14, 'Chimie', '1', 8, '2023-04-22'),
(318, 23, 'Limba engleza', '1', 2, '2023-04-22'),
(319, 40, 'Biologie', '2', 1, '2023-04-22'),
(320, 22, 'Geografie', '2', 6, '2023-04-22'),
(321, 27, 'Biologie', '2', 5, '2023-04-22'),
(322, 68, 'Logica', '2', 1, '2023-04-22'),
(323, 4, 'Limba engleza', '2', 1, '2023-04-22'),
(324, 65, 'Filosofie', '2', 3, '2023-04-22'),
(325, 48, 'Religie', '2', 8, '2023-04-22'),
(326, 41, 'Desen', '1', 8, '2023-04-22'),
(327, 10, 'Matematica', '1', 8, '2023-04-22'),
(328, 30, 'Filosofie', '1', 7, '2023-04-22'),
(329, 38, 'Limba engleza', '2', 1, '2023-04-22'),
(330, 41, 'Psohologie', '1', 5, '2023-04-22'),
(331, 35, 'Geografie', '2', 10, '2023-04-22'),
(332, 70, 'Matematica', '2', 10, '2023-04-22'),
(333, 74, 'Chimie', '2', 10, '2023-04-22'),
(334, 36, 'Fizica', '1', 4, '2023-04-22'),
(335, 71, 'Informatica', '1', 3, '2023-04-22'),
(336, 12, 'Biologie', '2', 7, '2023-04-22'),
(337, 34, 'Desen', '2', 3, '2023-04-22'),
(338, 6, 'Sport', '2', 1, '2023-04-22'),
(339, 17, 'Limba engleza', '1', 3, '2023-04-22'),
(340, 33, 'Istorie', '2', 5, '2023-04-22'),
(341, 50, 'Fizica', '2', 1, '2023-04-22'),
(342, 57, 'Geografie', '2', 8, '2023-04-22'),
(343, 12, 'Limba engleza', '2', 8, '2023-04-22'),
(344, 18, 'Chimie', '1', 10, '2023-04-22'),
(345, 52, 'Geografie', '2', 3, '2023-04-22'),
(346, 49, 'Istorie', '1', 6, '2023-04-22'),
(347, 29, 'Logica', '2', 3, '2023-04-22'),
(348, 38, 'Religie', '1', 4, '2023-04-22'),
(349, 8, 'Desen', '2', 1, '2023-04-22'),
(350, 40, 'Informatica', '2', 8, '2023-04-22'),
(351, 44, 'Limba romana', '1', 3, '2023-04-22'),
(352, 37, 'Limba romana', '2', 6, '2023-04-22'),
(353, 30, 'Fizica', '2', 5, '2023-04-22'),
(354, 48, 'Sport', '1', 9, '2023-04-22'),
(355, 33, 'Biologie', '2', 3, '2023-04-22'),
(356, 55, 'Fizica', '2', 5, '2023-04-22'),
(357, 26, 'Limba romana', '1', 6, '2023-04-22'),
(358, 64, 'Sport', '2', 9, '2023-04-22'),
(359, 72, 'Limba romana', '1', 7, '2023-04-22'),
(360, 74, 'Biologie', '1', 8, '2023-04-22'),
(361, 36, 'Istorie', '2', 7, '2023-04-22'),
(362, 5, 'Limba engleza', '1', 5, '2023-04-22'),
(363, 1, 'Limba romana', '1', 10, '2023-04-22'),
(364, 38, 'Chimie', '2', 10, '2023-04-22'),
(365, 59, 'Biologie', '2', 7, '2023-04-22'),
(366, 33, 'Filosofie', '1', 1, '2023-04-22'),
(367, 41, 'Desen', '1', 7, '2023-04-22'),
(368, 57, 'Informatica', '1', 10, '2023-04-22'),
(369, 3, 'Geografie', '1', 9, '2023-04-22'),
(370, 5, 'Religie', '2', 9, '2023-04-22'),
(371, 67, 'Desen', '1', 6, '2023-04-22'),
(372, 59, 'Informatica', '2', 7, '2023-04-22'),
(373, 42, 'Matematica', '1', 8, '2023-04-22'),
(374, 59, 'Geografie', '2', 10, '2023-04-22'),
(375, 39, 'Filosofie', '1', 10, '2023-04-22'),
(376, 62, 'Informatica', '1', 5, '2023-04-22'),
(377, 65, 'Fizica', '2', 9, '2023-04-22'),
(378, 52, 'Limba romana', '2', 2, '2023-04-22'),
(379, 44, 'Informatica', '2', 6, '2023-04-22'),
(380, 46, 'Geografie', '1', 3, '2023-04-22'),
(381, 28, 'Informatica', '2', 5, '2023-04-22'),
(382, 21, 'Biologie', '2', 7, '2023-04-22'),
(383, 7, 'Limba romana', '2', 7, '2023-04-22'),
(384, 20, 'Psohologie', '2', 6, '2023-04-22'),
(385, 57, 'Filosofie', '2', 9, '2023-04-22'),
(386, 19, 'Fizica', '1', 9, '2023-04-22'),
(387, 35, 'Biologie', '1', 10, '2023-04-22'),
(388, 77, 'Filosofie', '1', 10, '2023-04-22'),
(389, 31, 'Religie', '2', 1, '2023-04-22'),
(390, 40, 'Logica', '1', 3, '2023-04-22'),
(391, 6, 'Psohologie', '1', 2, '2023-04-22'),
(392, 62, 'Psohologie', '2', 2, '2023-04-22'),
(393, 13, 'Psohologie', '2', 8, '2023-04-22'),
(394, 3, 'Matematica', '2', 10, '2023-04-22'),
(395, 75, 'Filosofie', '2', 1, '2023-04-22'),
(396, 22, 'Religie', '2', 6, '2023-04-22'),
(397, 21, 'Limba romana', '1', 9, '2023-04-22'),
(398, 69, 'Informatica', '2', 10, '2023-04-22'),
(399, 74, 'Filosofie', '1', 5, '2023-04-22'),
(400, 59, 'Limba engleza', '2', 5, '2023-04-22'),
(401, 39, 'Filosofie', '2', 3, '2023-04-22'),
(402, 44, 'Biologie', '2', 9, '2023-04-22'),
(403, 66, 'Chimie', '1', 2, '2023-04-22'),
(404, 21, 'Informatica', '1', 1, '2023-04-22'),
(405, 11, 'Fizica', '2', 5, '2023-04-22'),
(406, 49, 'Limba engleza', '1', 7, '2023-04-22'),
(407, 32, 'Chimie', '2', 1, '2023-04-22'),
(408, 34, 'Geografie', '2', 7, '2023-04-22'),
(409, 59, 'Limba romana', '2', 6, '2023-04-22'),
(410, 24, 'Chimie', '1', 8, '2023-04-22'),
(412, 34, 'Psohologie', '1', 4, '2023-04-22'),
(413, 32, 'Logica', '2', 7, '2023-04-22'),
(414, 75, 'Geografie', '1', 9, '2023-04-22'),
(415, 26, 'Fizica', '2', 8, '2023-04-22'),
(416, 72, 'Geografie', '2', 3, '2023-04-22'),
(417, 64, 'Psohologie', '2', 3, '2023-04-22'),
(418, 9, 'Limba romana', '1', 9, '2023-04-22'),
(419, 6, 'Biologie', '2', 2, '2023-04-22'),
(420, 64, 'Filosofie', '2', 5, '2023-04-22'),
(421, 34, 'Logica', '1', 10, '2023-04-22'),
(422, 58, 'Biologie', '1', 2, '2023-04-22'),
(423, 47, 'Matematica', '2', 6, '2023-04-22'),
(424, 33, 'Istorie', '2', 1, '2023-04-22'),
(425, 68, 'Desen', '1', 8, '2023-04-22'),
(426, 54, 'Religie', '1', 2, '2023-04-22'),
(427, 44, 'Limba romana', '2', 4, '2023-04-22'),
(428, 17, 'Fizica', '1', 4, '2023-04-22'),
(429, 58, 'Logica', '1', 6, '2023-04-22'),
(430, 47, 'Religie', '2', 4, '2023-04-22'),
(431, 34, 'Limba engleza', '2', 8, '2023-04-22'),
(432, 3, 'Chimie', '2', 1, '2023-04-22'),
(433, 71, 'Chimie', '2', 7, '2023-04-22'),
(434, 45, 'Limba engleza', '1', 6, '2023-04-22'),
(435, 67, 'Psohologie', '2', 8, '2023-04-22'),
(436, 34, 'Limba engleza', '2', 9, '2023-04-22'),
(437, 69, 'Logica', '1', 6, '2023-04-22'),
(438, 1, 'Chimie', '1', 9, '2023-04-22'),
(439, 25, 'Filosofie', '2', 7, '2023-04-22'),
(440, 11, 'Sport', '2', 4, '2023-04-22'),
(441, 44, 'Filosofie', '2', 10, '2023-04-22'),
(442, 53, 'Psohologie', '2', 8, '2023-04-22'),
(443, 6, 'Limba engleza', '1', 10, '2023-04-22'),
(444, 31, 'Psohologie', '1', 9, '2023-04-22'),
(445, 1, 'Filosofie', '2', 2, '2023-04-22'),
(446, 36, 'Matematica', '2', 7, '2023-04-22'),
(447, 21, 'Limba romana', '2', 9, '2023-04-22'),
(448, 77, 'Fizica', '1', 7, '2023-04-22'),
(449, 51, 'Limba engleza', '2', 8, '2023-04-22'),
(450, 6, 'Sport', '1', 8, '2023-04-22'),
(451, 22, 'Desen', '2', 8, '2023-04-22'),
(453, 74, 'Filosofie', '1', 8, '2023-04-22'),
(454, 52, 'Istorie', '1', 6, '2023-04-22'),
(455, 23, 'Biologie', '1', 2, '2023-04-22'),
(456, 4, 'Fizica', '2', 2, '2023-04-22'),
(457, 69, 'Chimie', '1', 8, '2023-04-22'),
(458, 46, 'Filosofie', '2', 9, '2023-04-22'),
(459, 13, 'Matematica', '1', 6, '2023-04-22'),
(460, 33, 'Logica', '1', 1, '2023-04-22'),
(461, 35, 'Filosofie', '2', 1, '2023-04-22'),
(462, 38, 'Chimie', '2', 10, '2023-04-22'),
(463, 49, 'Geografie', '2', 1, '2023-04-22'),
(464, 44, 'Informatica', '2', 7, '2023-04-22'),
(465, 10, 'Sport', '1', 1, '2023-04-22'),
(466, 7, 'Limba romana', '2', 2, '2023-04-22'),
(467, 2, 'Desen', '2', 6, '2023-04-22'),
(468, 18, 'Biologie', '2', 8, '2023-04-22'),
(469, 49, 'Logica', '2', 1, '2023-04-22'),
(470, 50, 'Geografie', '1', 8, '2023-04-22'),
(471, 1, 'Fizica', '1', 6, '2023-04-22'),
(472, 29, 'Fizica', '1', 1, '2023-04-22'),
(473, 38, 'Chimie', '2', 8, '2023-04-22'),
(474, 9, 'Informatica', '1', 10, '2023-04-22'),
(475, 69, 'Chimie', '2', 2, '2023-04-22'),
(476, 50, 'Matematica', '1', 9, '2023-04-22'),
(477, 44, 'Matematica', '1', 6, '2023-04-22'),
(478, 34, 'Biologie', '2', 1, '2023-04-22'),
(479, 68, 'Biologie', '1', 2, '2023-04-22'),
(480, 76, 'Desen', '2', 8, '2023-04-22'),
(481, 7, 'Fizica', '2', 2, '2023-04-22'),
(482, 4, 'Chimie', '1', 9, '2023-04-22'),
(483, 63, 'Logica', '2', 9, '2023-04-22'),
(484, 24, 'Geografie', '1', 8, '2023-04-22'),
(485, 43, 'Desen', '1', 6, '2023-04-22'),
(486, 62, 'Filosofie', '1', 8, '2023-04-22'),
(487, 31, 'Limba romana', '1', 8, '2023-04-22'),
(488, 50, 'Fizica', '2', 10, '2023-04-22'),
(489, 51, 'Logica', '1', 3, '2023-04-22'),
(490, 27, 'Informatica', '2', 6, '2023-04-22'),
(491, 43, 'Geografie', '1', 6, '2023-04-22'),
(492, 55, 'Chimie', '1', 5, '2023-04-22'),
(493, 19, 'Fizica', '2', 5, '2023-04-22'),
(494, 18, 'Fizica', '1', 10, '2023-04-22'),
(495, 60, 'Istorie', '1', 5, '2023-04-22'),
(496, 13, 'Limba engleza', '2', 2, '2023-04-22'),
(497, 11, 'Religie', '2', 8, '2023-04-22'),
(498, 45, 'Chimie', '1', 10, '2023-04-22'),
(499, 23, 'Filosofie', '2', 4, '2023-04-22'),
(500, 35, 'Chimie', '1', 3, '2023-04-22'),
(501, 22, 'Sport', '2', 5, '2023-04-22'),
(502, 8, 'Limba engleza', '1', 3, '2023-04-22'),
(503, 35, 'Fizica', '1', 8, '2023-04-22'),
(504, 25, 'Desen', '2', 10, '2023-04-22'),
(505, 73, 'Chimie', '1', 9, '2023-04-22'),
(506, 8, 'Psohologie', '1', 4, '2023-04-22'),
(507, 33, 'Fizica', '2', 6, '2023-04-22'),
(508, 10, 'Sport', '2', 1, '2023-04-22'),
(510, 26, 'Limba romana', '1', 2, '2023-04-22'),
(511, 49, 'Filosofie', '1', 6, '2023-04-22'),
(512, 25, 'Matematica', '1', 9, '2023-04-22'),
(513, 3, 'Religie', '1', 10, '2023-04-22'),
(514, 62, 'Chimie', '1', 1, '2023-04-22'),
(515, 8, 'Matematica', '2', 2, '2023-04-22'),
(516, 54, 'Biologie', '2', 6, '2023-04-22'),
(517, 72, 'Limba romana', '2', 6, '2023-04-22'),
(518, 53, 'Biologie', '1', 5, '2023-04-22'),
(519, 76, 'Biologie', '2', 1, '2023-04-22'),
(520, 2, 'Fizica', '2', 1, '2023-04-22'),
(521, 12, 'Biologie', '1', 2, '2023-04-22'),
(522, 68, 'Istorie', '2', 6, '2023-04-22'),
(523, 26, 'Logica', '2', 2, '2023-04-22'),
(524, 13, 'Chimie', '1', 6, '2023-04-22'),
(525, 56, 'Psohologie', '1', 10, '2023-04-22'),
(526, 60, 'Geografie', '2', 9, '2023-04-22'),
(527, 52, 'Desen', '2', 8, '2023-04-22'),
(528, 40, 'Filosofie', '2', 3, '2023-04-22'),
(529, 39, 'Matematica', '2', 9, '2023-04-22'),
(530, 17, 'Chimie', '1', 3, '2023-04-22'),
(531, 71, 'Filosofie', '1', 9, '2023-04-22'),
(532, 51, 'Psohologie', '2', 9, '2023-04-22'),
(533, 58, 'Filosofie', '2', 5, '2023-04-22'),
(534, 65, 'Psohologie', '1', 8, '2023-04-22'),
(535, 59, 'Istorie', '1', 6, '2023-04-22'),
(536, 18, 'Limba engleza', '1', 3, '2023-04-22'),
(537, 33, 'Istorie', '2', 2, '2023-04-22'),
(539, 63, 'Geografie', '2', 3, '2023-04-22'),
(540, 34, 'Limba engleza', '2', 7, '2023-04-22'),
(541, 44, 'Religie', '2', 7, '2023-04-22'),
(542, 36, 'Desen', '2', 7, '2023-04-22'),
(543, 11, 'Logica', '1', 4, '2023-04-22'),
(544, 32, 'Filosofie', '2', 10, '2023-04-22'),
(545, 8, 'Desen', '1', 6, '2023-04-22'),
(546, 31, 'Chimie', '2', 1, '2023-04-22'),
(547, 20, 'Psohologie', '1', 7, '2023-04-22'),
(548, 52, 'Religie', '2', 2, '2023-04-22'),
(549, 58, 'Informatica', '1', 1, '2023-04-22'),
(550, 70, 'Geografie', '2', 10, '2023-04-22'),
(551, 42, 'Sport', '2', 7, '2023-04-22'),
(552, 24, 'Logica', '1', 9, '2023-04-22'),
(553, 14, 'Biologie', '1', 2, '2023-04-22'),
(554, 7, 'Matematica', '2', 6, '2023-04-22'),
(555, 15, 'Biologie', '1', 4, '2023-04-22'),
(556, 63, 'Desen', '1', 3, '2023-04-22'),
(557, 27, 'Biologie', '2', 9, '2023-04-22'),
(558, 18, 'Fizica', '1', 3, '2023-04-22'),
(559, 69, 'Filosofie', '2', 3, '2023-04-22'),
(560, 14, 'Religie', '1', 6, '2023-04-22'),
(561, 38, 'Chimie', '1', 3, '2023-04-22'),
(562, 70, 'Biologie', '1', 5, '2023-04-22'),
(563, 59, 'Fizica', '1', 10, '2023-04-22'),
(564, 39, 'Biologie', '1', 2, '2023-04-22'),
(565, 2, 'Matematica', '1', 9, '2023-04-22'),
(566, 32, 'Fizica', '1', 10, '2023-04-22'),
(567, 21, 'Matematica', '2', 3, '2023-04-22'),
(568, 70, 'Limba romana', '1', 10, '2023-04-22'),
(569, 26, 'Limba romana', '2', 9, '2023-04-22'),
(570, 63, 'Filosofie', '2', 3, '2023-04-22'),
(571, 12, 'Matematica', '2', 7, '2023-04-22'),
(572, 12, 'Filosofie', '1', 4, '2023-04-22'),
(573, 7, 'Geografie', '1', 10, '2023-04-22'),
(574, 59, 'Limba romana', '1', 2, '2023-04-22'),
(575, 11, 'Istorie', '2', 4, '2023-04-22'),
(577, 4, 'Matematica', '2', 7, '2023-04-22'),
(578, 19, 'Informatica', '2', 2, '2023-04-22'),
(579, 71, 'Matematica', '1', 6, '2023-04-22'),
(580, 72, 'Informatica', '1', 5, '2023-04-22'),
(581, 13, 'Limba romana', '1', 2, '2023-04-22'),
(582, 52, 'Limba engleza', '2', 3, '2023-04-22'),
(583, 40, 'Matematica', '2', 2, '2023-04-22'),
(584, 22, 'Filosofie', '1', 3, '2023-04-22'),
(585, 48, 'Istorie', '1', 5, '2023-04-22'),
(586, 37, 'Religie', '2', 10, '2023-04-22'),
(587, 66, 'Desen', '2', 7, '2023-04-22'),
(588, 11, 'Matematica', '1', 7, '2023-04-22'),
(589, 38, 'Matematica', '2', 6, '2023-04-22'),
(590, 41, 'Biologie', '2', 2, '2023-04-22'),
(591, 59, 'Desen', '2', 9, '2023-04-22'),
(592, 36, 'Limba engleza', '1', 3, '2023-04-22'),
(593, 31, 'Biologie', '2', 4, '2023-04-22'),
(594, 7, 'Logica', '1', 6, '2023-04-22'),
(595, 12, 'Logica', '1', 1, '2023-04-22'),
(596, 73, 'Filosofie', '1', 3, '2023-04-22'),
(597, 44, 'Limba engleza', '2', 7, '2023-04-22'),
(598, 12, 'Informatica', '1', 1, '2023-04-22'),
(599, 10, 'Psohologie', '2', 8, '2023-04-22'),
(600, 30, 'Biologie', '1', 10, '2023-04-22'),
(601, 31, 'Istorie', '2', 2, '2023-04-22'),
(602, 72, 'Limba romana', '1', 5, '2023-04-22'),
(603, 17, 'Fizica', '1', 10, '2023-04-22'),
(604, 59, 'Biologie', '2', 7, '2023-04-22'),
(605, 56, 'Informatica', '1', 1, '2023-04-22'),
(606, 18, 'Limba romana', '2', 8, '2023-04-22'),
(607, 17, 'Informatica', '2', 1, '2023-04-22'),
(608, 58, 'Chimie', '2', 10, '2023-04-22'),
(609, 4, 'Chimie', '1', 7, '2023-04-22'),
(610, 22, 'Logica', '2', 3, '2023-04-22'),
(611, 34, 'Geografie', '2', 1, '2023-04-22'),
(612, 24, 'Religie', '1', 7, '2023-04-22'),
(613, 18, 'Chimie', '2', 5, '2023-04-22'),
(614, 73, 'Filosofie', '1', 8, '2023-04-22'),
(615, 69, 'Limba romana', '2', 5, '2023-04-22'),
(616, 8, 'Filosofie', '2', 6, '2023-04-22'),
(617, 45, 'Matematica', '2', 4, '2023-04-22'),
(618, 52, 'Religie', '2', 4, '2023-04-22'),
(619, 11, 'Fizica', '2', 3, '2023-04-22'),
(620, 11, 'Psohologie', '1', 6, '2023-04-22'),
(621, 18, 'Desen', '1', 1, '2023-04-22'),
(622, 13, 'Desen', '2', 2, '2023-04-22'),
(623, 15, 'Desen', '1', 4, '2023-04-22'),
(624, 75, 'Istorie', '1', 9, '2023-04-22'),
(625, 69, 'Istorie', '2', 4, '2023-04-22'),
(626, 39, 'Fizica', '1', 1, '2023-04-22'),
(627, 41, 'Informatica', '1', 2, '2023-04-22'),
(628, 10, 'Filosofie', '2', 8, '2023-04-22'),
(629, 43, 'Desen', '1', 9, '2023-04-22'),
(630, 8, 'Matematica', '1', 6, '2023-04-22'),
(631, 65, 'Filosofie', '2', 2, '2023-04-22'),
(632, 72, 'Psohologie', '1', 6, '2023-04-22'),
(633, 76, 'Informatica', '1', 8, '2023-04-22'),
(634, 12, 'Geografie', '1', 9, '2023-04-22'),
(635, 26, 'Fizica', '1', 7, '2023-04-22'),
(636, 29, 'Sport', '2', 7, '2023-04-22'),
(637, 35, 'Logica', '2', 9, '2023-04-22'),
(638, 34, 'Istorie', '1', 9, '2023-04-22'),
(639, 71, 'Fizica', '2', 6, '2023-04-22'),
(640, 24, 'Matematica', '1', 8, '2023-04-22'),
(641, 3, 'Sport', '1', 3, '2023-04-22'),
(642, 4, 'Informatica', '1', 6, '2023-04-22'),
(643, 3, 'Desen', '1', 9, '2023-04-22'),
(644, 21, 'Desen', '2', 3, '2023-04-22'),
(645, 30, 'Limba romana', '1', 1, '2023-04-22'),
(646, 70, 'Chimie', '1', 1, '2023-04-22'),
(647, 33, 'Sport', '2', 2, '2023-04-22'),
(648, 63, 'Desen', '1', 7, '2023-04-22'),
(649, 59, 'Fizica', '2', 5, '2023-04-22'),
(650, 37, 'Matematica', '1', 3, '2023-04-22'),
(651, 23, 'Fizica', '1', 2, '2023-04-22'),
(652, 77, 'Religie', '2', 6, '2023-04-22'),
(653, 39, 'Logica', '2', 5, '2023-04-22'),
(654, 38, 'Sport', '1', 5, '2023-04-22'),
(655, 20, 'Chimie', '2', 4, '2023-04-22'),
(657, 52, 'Informatica', '1', 7, '2023-04-22'),
(658, 17, 'Istorie', '2', 9, '2023-04-22'),
(659, 70, 'Biologie', '1', 5, '2023-04-22'),
(660, 51, 'Matematica', '1', 2, '2023-04-22'),
(661, 6, 'Religie', '2', 10, '2023-04-22'),
(662, 65, 'Desen', '1', 3, '2023-04-22'),
(663, 60, 'Biologie', '2', 9, '2023-04-22'),
(664, 69, 'Fizica', '1', 10, '2023-04-22'),
(665, 63, 'Istorie', '2', 9, '2023-04-22'),
(666, 38, 'Fizica', '2', 4, '2023-04-22'),
(667, 62, 'Limba romana', '1', 10, '2023-04-22'),
(668, 18, 'Matematica', '1', 5, '2023-04-22'),
(669, 27, 'Chimie', '1', 10, '2023-04-22'),
(670, 20, 'Chimie', '2', 4, '2023-04-22'),
(671, 39, 'Limba romana', '1', 10, '2023-04-22'),
(672, 29, 'Psohologie', '1', 10, '2023-04-22'),
(674, 12, 'Informatica', '2', 5, '2023-04-22'),
(675, 10, 'Logica', '1', 1, '2023-04-22'),
(676, 14, 'Geografie', '1', 5, '2023-04-22'),
(677, 24, 'Psohologie', '1', 8, '2023-04-22'),
(678, 43, 'Chimie', '1', 9, '2023-04-22'),
(679, 59, 'Informatica', '1', 7, '2023-04-22'),
(680, 74, 'Logica', '2', 3, '2023-04-22'),
(681, 70, 'Matematica', '2', 7, '2023-04-22'),
(682, 9, 'Logica', '2', 10, '2023-04-22'),
(683, 49, 'Religie', '2', 7, '2023-04-22'),
(684, 27, 'Geografie', '1', 1, '2023-04-22'),
(685, 72, 'Sport', '2', 2, '2023-04-22'),
(686, 49, 'Limba romana', '1', 7, '2023-04-22'),
(687, 72, 'Informatica', '1', 6, '2023-04-22'),
(690, 72, 'Religie', '2', 10, '2023-04-22'),
(691, 13, 'Limba engleza', '1', 8, '2023-04-22'),
(692, 22, 'Informatica', '1', 2, '2023-04-22'),
(693, 22, 'Sport', '1', 6, '2023-04-22'),
(694, 1, 'Informatica', '1', 5, '2023-04-22'),
(695, 64, 'Geografie', '2', 10, '2023-04-22'),
(696, 2, 'Limba engleza', '1', 4, '2023-04-22'),
(697, 68, 'Chimie', '1', 4, '2023-04-22'),
(698, 74, 'Matematica', '1', 1, '2023-04-22'),
(699, 64, 'Informatica', '1', 2, '2023-04-22'),
(700, 17, 'Psohologie', '1', 8, '2023-04-22'),
(701, 50, 'Limba engleza', '2', 9, '2023-04-22'),
(702, 23, 'Geografie', '2', 8, '2023-04-22'),
(703, 37, 'Fizica', '2', 4, '2023-04-22'),
(704, 74, 'Limba engleza', '2', 10, '2023-04-22'),
(705, 59, 'Filosofie', '2', 9, '2023-04-22'),
(706, 39, 'Biologie', '1', 7, '2023-04-22'),
(707, 74, 'Biologie', '1', 6, '2023-04-22'),
(708, 21, 'Matematica', '1', 6, '2023-04-22'),
(709, 15, 'Limba romana', '2', 3, '2023-04-22'),
(710, 71, 'Chimie', '1', 7, '2023-04-22'),
(711, 59, 'Logica', '2', 4, '2023-04-22'),
(712, 73, 'Psohologie', '1', 10, '2023-04-22'),
(713, 36, 'Limba engleza', '2', 10, '2023-04-22'),
(714, 20, 'Limba engleza', '1', 10, '2023-04-22'),
(715, 8, 'Informatica', '2', 4, '2023-04-22'),
(716, 9, 'Religie', '2', 7, '2023-04-22'),
(717, 23, 'Istorie', '2', 8, '2023-04-22'),
(718, 18, 'Biologie', '1', 10, '2023-04-22'),
(719, 30, 'Fizica', '2', 10, '2023-04-22'),
(720, 43, 'Biologie', '2', 7, '2023-04-22'),
(721, 49, 'Geografie', '2', 7, '2023-04-22'),
(722, 21, 'Geografie', '1', 8, '2023-04-22'),
(723, 42, 'Logica', '2', 5, '2023-04-22'),
(724, 35, 'Geografie', '2', 4, '2023-04-22'),
(725, 21, 'Limba romana', '1', 6, '2023-04-22'),
(726, 77, 'Sport', '1', 9, '2023-04-22'),
(727, 27, 'Desen', '2', 1, '2023-04-22'),
(728, 50, 'Logica', '2', 4, '2023-04-22'),
(729, 56, 'Desen', '1', 8, '2023-04-22'),
(730, 38, 'Istorie', '2', 1, '2023-04-22'),
(731, 33, 'Desen', '2', 9, '2023-04-22'),
(732, 36, 'Chimie', '2', 7, '2023-04-22'),
(733, 59, 'Sport', '2', 2, '2023-04-22'),
(734, 17, 'Geografie', '1', 4, '2023-04-22'),
(735, 58, 'Filosofie', '2', 1, '2023-04-22'),
(736, 33, 'Filosofie', '1', 2, '2023-04-22'),
(737, 54, 'Limba engleza', '1', 3, '2023-04-22'),
(738, 57, 'Informatica', '1', 6, '2023-04-22'),
(739, 70, 'Logica', '1', 9, '2023-04-22'),
(740, 34, 'Religie', '2', 3, '2023-04-22'),
(741, 37, 'Biologie', '1', 5, '2023-04-22'),
(742, 14, 'Istorie', '1', 1, '2023-04-22'),
(743, 4, 'Religie', '1', 5, '2023-04-22'),
(744, 5, 'Matematica', '1', 6, '2023-04-22'),
(745, 60, 'Filosofie', '2', 2, '2023-04-22'),
(746, 21, 'Biologie', '1', 2, '2023-04-22'),
(747, 55, 'Logica', '1', 10, '2023-04-22'),
(748, 2, 'Limba romana', '2', 7, '2023-04-22'),
(749, 63, 'Religie', '2', 7, '2023-04-22'),
(750, 72, 'Geografie', '2', 10, '2023-04-22'),
(751, 44, 'Filosofie', '2', 8, '2023-04-22'),
(752, 46, 'Istorie', '1', 4, '2023-04-22'),
(753, 28, 'Limba romana', '1', 8, '2023-04-22'),
(754, 77, 'Fizica', '2', 10, '2023-04-22'),
(755, 29, 'Limba romana', '2', 7, '2023-04-22'),
(756, 33, 'Limba engleza', '1', 6, '2023-04-22'),
(757, 21, 'Religie', '1', 4, '2023-04-22'),
(758, 47, 'Geografie', '2', 5, '2023-04-22'),
(759, 1, 'Geografie', '2', 9, '2023-04-22'),
(760, 77, 'Fizica', '2', 4, '2023-04-22'),
(761, 58, 'Limba engleza', '1', 1, '2023-04-22'),
(762, 66, 'Informatica', '1', 10, '2023-04-22'),
(763, 10, 'Sport', '1', 2, '2023-04-22'),
(764, 28, 'Religie', '1', 10, '2023-04-22'),
(765, 37, 'Logica', '1', 5, '2023-04-22'),
(766, 32, 'Fizica', '1', 10, '2023-04-22'),
(767, 24, 'Informatica', '1', 5, '2023-04-22'),
(768, 74, 'Filosofie', '2', 3, '2023-04-22'),
(769, 4, 'Limba romana', '2', 1, '2023-04-22'),
(770, 19, 'Limba engleza', '2', 2, '2023-04-22'),
(771, 25, 'Istorie', '2', 2, '2023-04-22'),
(772, 77, 'Religie', '2', 2, '2023-04-22'),
(773, 30, 'Biologie', '1', 2, '2023-04-22'),
(774, 3, 'Limba romana', '1', 5, '2023-04-22'),
(775, 44, 'Istorie', '2', 2, '2023-04-22'),
(776, 32, 'Biologie', '2', 4, '2023-04-22'),
(777, 75, 'Limba romana', '1', 2, '2023-04-22'),
(778, 39, 'Fizica', '1', 7, '2023-04-22'),
(779, 3, 'Limba engleza', '1', 9, '2023-04-22'),
(780, 17, 'Fizica', '1', 3, '2023-04-22'),
(781, 26, 'Religie', '1', 8, '2023-04-22'),
(782, 51, 'Geografie', '1', 9, '2023-04-22'),
(783, 13, 'Logica', '2', 8, '2023-04-22'),
(784, 10, 'Fizica', '1', 7, '2023-04-22'),
(785, 8, 'Religie', '1', 10, '2023-04-22'),
(786, 24, 'Biologie', '2', 6, '2023-04-22'),
(787, 69, 'Chimie', '1', 10, '2023-04-22'),
(788, 38, 'Psohologie', '1', 8, '2023-04-22'),
(789, 42, 'Informatica', '2', 6, '2023-04-22'),
(790, 77, 'Religie', '1', 5, '2023-04-22'),
(791, 42, 'Desen', '1', 5, '2023-04-22'),
(792, 30, 'Biologie', '2', 8, '2023-04-22'),
(793, 53, 'Filosofie', '2', 6, '2023-04-22'),
(794, 53, 'Geografie', '1', 5, '2023-04-22'),
(795, 10, 'Filosofie', '2', 1, '2023-04-22'),
(796, 30, 'Limba engleza', '1', 1, '2023-04-22'),
(797, 33, 'Filosofie', '2', 4, '2023-04-22'),
(798, 53, 'Matematica', '1', 9, '2023-04-22'),
(799, 76, 'Filosofie', '1', 5, '2023-04-22'),
(800, 9, 'Limba engleza', '1', 5, '2023-04-22'),
(801, 11, 'Religie', '2', 8, '2023-04-22'),
(802, 35, 'Religie', '1', 6, '2023-04-22'),
(803, 52, 'Biologie', '1', 8, '2023-04-22'),
(804, 49, 'Limba engleza', '2', 7, '2023-04-22'),
(805, 1, 'Filosofie', '2', 5, '2023-04-22'),
(806, 21, 'Fizica', '1', 2, '2023-04-22'),
(807, 9, 'Sport', '1', 3, '2023-04-22'),
(808, 20, 'Biologie', '1', 9, '2023-04-22'),
(809, 41, 'Fizica', '1', 2, '2023-04-22'),
(810, 24, 'Limba engleza', '1', 1, '2023-04-22'),
(811, 71, 'Informatica', '2', 5, '2023-04-22'),
(812, 53, 'Chimie', '1', 1, '2023-04-22'),
(813, 68, 'Limba romana', '1', 10, '2023-04-22'),
(814, 74, 'Limba engleza', '2', 6, '2023-04-22'),
(815, 77, 'Biologie', '2', 7, '2023-04-22'),
(816, 41, 'Sport', '2', 2, '2023-04-22'),
(817, 37, 'Chimie', '2', 5, '2023-04-22'),
(818, 48, 'Istorie', '2', 10, '2023-04-22'),
(819, 73, 'Istorie', '1', 6, '2023-04-22'),
(820, 71, 'Matematica', '2', 9, '2023-04-22'),
(821, 20, 'Limba engleza', '1', 10, '2023-04-22'),
(822, 25, 'Informatica', '1', 9, '2023-04-22'),
(823, 44, 'Religie', '2', 8, '2023-04-22'),
(824, 35, 'Desen', '2', 2, '2023-04-22'),
(825, 15, 'Chimie', '2', 4, '2023-04-22'),
(826, 15, 'Geografie', '2', 1, '2023-04-22'),
(827, 29, 'Logica', '2', 10, '2023-04-22'),
(828, 10, 'Matematica', '2', 3, '2023-04-22'),
(829, 46, 'Chimie', '1', 5, '2023-04-22'),
(830, 51, 'Psohologie', '1', 8, '2023-04-22'),
(831, 11, 'Logica', '2', 6, '2023-04-22'),
(832, 72, 'Matematica', '1', 6, '2023-04-22'),
(833, 73, 'Informatica', '1', 2, '2023-04-22'),
(834, 19, 'Biologie', '1', 5, '2023-04-22'),
(835, 58, 'Biologie', '1', 10, '2023-04-22'),
(836, 18, 'Psohologie', '1', 9, '2023-04-22'),
(837, 22, 'Chimie', '2', 10, '2023-04-22'),
(838, 54, 'Istorie', '1', 1, '2023-04-22'),
(839, 71, 'Religie', '1', 7, '2023-04-22'),
(840, 20, 'Informatica', '2', 1, '2023-04-22'),
(841, 54, 'Fizica', '2', 3, '2023-04-22'),
(842, 32, 'Desen', '1', 5, '2023-04-22'),
(843, 43, 'Geografie', '2', 5, '2023-04-22'),
(844, 18, 'Limba romana', '2', 1, '2023-04-22'),
(845, 62, 'Informatica', '1', 4, '2023-04-22'),
(846, 68, 'Chimie', '1', 6, '2023-04-22'),
(847, 12, 'Sport', '1', 2, '2023-04-22'),
(848, 48, 'Psohologie', '1', 9, '2023-04-22'),
(849, 3, 'Filosofie', '2', 10, '2023-04-22'),
(850, 42, 'Istorie', '2', 1, '2023-04-22'),
(851, 35, 'Desen', '1', 6, '2023-04-22'),
(852, 70, 'Psohologie', '1', 6, '2023-04-22'),
(853, 6, 'Geografie', '1', 1, '2023-04-22'),
(854, 73, 'Psohologie', '1', 4, '2023-04-22'),
(855, 28, 'Sport', '2', 2, '2023-04-22'),
(856, 13, 'Informatica', '2', 6, '2023-04-22'),
(857, 25, 'Fizica', '2', 1, '2023-04-22'),
(858, 59, 'Informatica', '1', 3, '2023-04-22'),
(859, 27, 'Psohologie', '2', 2, '2023-04-22'),
(860, 38, 'Psohologie', '2', 2, '2023-04-22'),
(861, 37, 'Religie', '2', 2, '2023-04-22'),
(862, 25, 'Logica', '1', 3, '2023-04-22'),
(863, 50, 'Filosofie', '1', 6, '2023-04-22'),
(864, 9, 'Chimie', '1', 4, '2023-04-22'),
(865, 61, 'Istorie', '1', 2, '2023-04-22'),
(866, 38, 'Limba romana', '1', 10, '2023-04-22'),
(867, 71, 'Geografie', '2', 4, '2023-04-22'),
(868, 19, 'Chimie', '1', 2, '2023-04-22'),
(869, 55, 'Religie', '2', 7, '2023-04-22'),
(870, 10, 'Religie', '1', 4, '2023-04-22'),
(871, 70, 'Religie', '1', 5, '2023-04-22'),
(872, 36, 'Desen', '1', 5, '2023-04-22'),
(873, 31, 'Psohologie', '1', 2, '2023-04-22'),
(874, 2, 'Desen', '1', 8, '2023-04-22'),
(875, 13, 'Filosofie', '1', 10, '2023-04-22'),
(876, 37, 'Desen', '1', 2, '2023-04-22'),
(877, 21, 'Limba romana', '2', 9, '2023-04-22'),
(878, 57, 'Desen', '1', 2, '2023-04-22'),
(879, 68, 'Informatica', '1', 9, '2023-04-22'),
(880, 29, 'Biologie', '2', 6, '2023-04-22'),
(881, 53, 'Matematica', '1', 6, '2023-04-22'),
(882, 32, 'Filosofie', '1', 2, '2023-04-22'),
(883, 51, 'Psohologie', '1', 3, '2023-04-22'),
(884, 44, 'Informatica', '1', 10, '2023-04-22'),
(885, 53, 'Psohologie', '1', 9, '2023-04-22'),
(886, 21, 'Istorie', '1', 10, '2023-04-22'),
(887, 65, 'Filosofie', '1', 10, '2023-04-22'),
(888, 33, 'Chimie', '1', 4, '2023-04-22'),
(889, 20, 'Filosofie', '1', 7, '2023-04-22'),
(890, 26, 'Limba romana', '2', 2, '2023-04-22'),
(891, 56, 'Informatica', '1', 5, '2023-04-22'),
(892, 54, 'Filosofie', '1', 7, '2023-04-22'),
(893, 9, 'Informatica', '1', 7, '2023-04-22'),
(894, 33, 'Informatica', '2', 9, '2023-04-22'),
(895, 11, 'Matematica', '2', 5, '2023-04-22'),
(896, 7, 'Limba romana', '2', 2, '2023-04-22'),
(897, 18, 'Geografie', '1', 2, '2023-04-22'),
(898, 15, 'Informatica', '2', 2, '2023-04-22'),
(899, 53, 'Istorie', '2', 3, '2023-04-22'),
(900, 71, 'Religie', '2', 1, '2023-04-22'),
(901, 10, 'Geografie', '1', 1, '2023-04-22'),
(902, 60, 'Informatica', '2', 9, '2023-04-22'),
(903, 46, 'Psohologie', '2', 4, '2023-04-22'),
(904, 59, 'Limba engleza', '2', 5, '2023-04-22'),
(905, 17, 'Psohologie', '1', 5, '2023-04-22'),
(906, 39, 'Chimie', '2', 5, '2023-04-22'),
(907, 52, 'Geografie', '2', 8, '2023-04-22'),
(908, 1, 'Desen', '2', 8, '2023-04-22'),
(909, 9, 'Religie', '1', 7, '2023-04-22'),
(910, 2, 'Limba romana', '2', 4, '2023-04-22'),
(911, 51, 'Informatica', '1', 7, '2023-04-22'),
(912, 17, 'Fizica', '2', 2, '2023-04-22'),
(913, 47, 'Geografie', '2', 7, '2023-04-22'),
(914, 32, 'Informatica', '2', 2, '2023-04-22'),
(915, 48, 'Geografie', '2', 9, '2023-04-22'),
(916, 40, 'Religie', '2', 8, '2023-04-22'),
(917, 65, 'Istorie', '1', 2, '2023-04-22'),
(918, 52, 'Chimie', '2', 5, '2023-04-22'),
(919, 27, 'Sport', '1', 5, '2023-04-22'),
(920, 65, 'Filosofie', '2', 1, '2023-04-22'),
(921, 31, 'Logica', '1', 5, '2023-04-22'),
(922, 42, 'Sport', '1', 2, '2023-04-22'),
(923, 72, 'Biologie', '1', 1, '2023-04-22'),
(924, 12, 'Sport', '1', 5, '2023-04-22'),
(925, 39, 'Limba romana', '2', 5, '2023-04-22'),
(926, 62, 'Chimie', '2', 6, '2023-04-22'),
(927, 68, 'Limba engleza', '2', 9, '2023-04-22'),
(928, 21, 'Religie', '1', 3, '2023-04-22'),
(929, 28, 'Psohologie', '2', 2, '2023-04-22'),
(930, 9, 'Psohologie', '2', 5, '2023-04-22'),
(931, 32, 'Psohologie', '2', 8, '2023-04-22'),
(932, 21, 'Psohologie', '1', 3, '2023-04-22'),
(933, 64, 'Filosofie', '2', 6, '2023-04-22'),
(934, 36, 'Informatica', '1', 8, '2023-04-22'),
(935, 19, 'Geografie', '1', 3, '2023-04-22'),
(936, 11, 'Desen', '2', 3, '2023-04-22'),
(937, 74, 'Matematica', '1', 4, '2023-04-22'),
(938, 5, 'Religie', '1', 7, '2023-04-22'),
(939, 16, 'Istorie', '2', 5, '2023-04-22'),
(940, 69, 'Geografie', '2', 10, '2023-04-22'),
(941, 33, 'Limba engleza', '2', 4, '2023-04-22'),
(942, 74, 'Informatica', '1', 7, '2023-04-22'),
(943, 21, 'Istorie', '1', 6, '2023-04-22'),
(944, 48, 'Fizica', '2', 10, '2023-04-22'),
(945, 33, 'Geografie', '1', 7, '2023-04-22'),
(946, 68, 'Desen', '2', 7, '2023-04-22'),
(947, 31, 'Logica', '2', 3, '2023-04-22'),
(948, 57, 'Sport', '2', 9, '2023-04-22'),
(949, 29, 'Desen', '1', 5, '2023-04-22'),
(950, 34, 'Fizica', '1', 2, '2023-04-22'),
(951, 76, 'Logica', '1', 10, '2023-04-22'),
(952, 66, 'Sport', '2', 8, '2023-04-22'),
(953, 6, 'Chimie', '1', 1, '2023-04-22'),
(954, 58, 'Limba romana', '1', 8, '2023-04-22'),
(955, 52, 'Religie', '2', 9, '2023-04-22'),
(956, 16, 'Chimie', '2', 6, '2023-04-22'),
(957, 77, 'Matematica', '2', 7, '2023-04-22'),
(958, 65, 'Chimie', '2', 10, '2023-04-22'),
(959, 67, 'Fizica', '2', 8, '2023-04-22'),
(960, 30, 'Informatica', '2', 2, '2023-04-22'),
(961, 38, 'Sport', '2', 2, '2023-04-22'),
(962, 66, 'Logica', '2', 10, '2023-04-22'),
(963, 22, 'Desen', '2', 9, '2023-04-22'),
(964, 30, 'Biologie', '1', 8, '2023-04-22'),
(965, 60, 'Limba romana', '2', 3, '2023-04-22'),
(966, 21, 'Limba engleza', '1', 6, '2023-04-22'),
(967, 27, 'Matematica', '1', 5, '2023-04-22'),
(968, 44, 'Matematica', '2', 10, '2023-04-22'),
(969, 68, 'Biologie', '2', 4, '2023-04-22'),
(970, 51, 'Religie', '2', 1, '2023-04-22'),
(971, 16, 'Limba engleza', '1', 6, '2023-04-22'),
(972, 73, 'Filosofie', '1', 6, '2023-04-22'),
(973, 2, 'Limba engleza', '2', 5, '2023-04-22'),
(974, 16, 'Psohologie', '1', 10, '2023-04-22'),
(975, 68, 'Biologie', '1', 3, '2023-04-22'),
(976, 51, 'Sport', '1', 8, '2023-04-22'),
(977, 26, 'Limba engleza', '1', 9, '2023-04-22'),
(978, 9, 'Matematica', '1', 4, '2023-04-22'),
(979, 18, 'Desen', '1', 8, '2023-04-22'),
(980, 44, 'Fizica', '1', 3, '2023-04-22'),
(981, 63, 'Limba romana', '1', 9, '2023-04-22'),
(982, 34, 'Limba romana', '2', 8, '2023-04-22'),
(983, 64, 'Fizica', '2', 7, '2023-04-22'),
(984, 4, 'Biologie', '2', 9, '2023-04-22'),
(985, 12, 'Geografie', '1', 3, '2023-04-22'),
(986, 58, 'Matematica', '1', 1, '2023-04-22'),
(987, 34, 'Sport', '2', 10, '2023-04-22'),
(988, 27, 'Logica', '2', 8, '2023-04-22'),
(989, 41, 'Chimie', '2', 9, '2023-04-22'),
(990, 35, 'Geografie', '2', 5, '2023-04-22'),
(991, 77, 'Religie', '1', 8, '2023-04-22'),
(992, 63, 'Desen', '1', 2, '2023-04-22'),
(993, 32, 'Istorie', '2', 2, '2023-04-22'),
(994, 72, 'Psohologie', '2', 5, '2023-04-22'),
(995, 7, 'Religie', '2', 7, '2023-04-22'),
(996, 68, 'Fizica', '1', 7, '2023-04-22'),
(997, 22, 'Fizica', '2', 5, '2023-04-22'),
(998, 5, 'Matematica', '2', 6, '2023-04-22'),
(999, 46, 'Logica', '2', 1, '2023-04-22'),
(1000, 55, 'Sport', '1', 10, '2023-04-22'),
(1001, 67, 'Fizica', '1', 1, '2023-04-22'),
(1002, 77, 'Fizica', '1', 9, '2023-04-22'),
(1003, 75, 'Geografie', '2', 2, '2023-04-22'),
(1004, 72, 'Filosofie', '1', 5, '2023-04-22'),
(1005, 16, 'Limba engleza', '2', 1, '2023-04-22'),
(1006, 74, 'Fizica', '2', 4, '2023-04-22'),
(1007, 24, 'Fizica', '1', 10, '2023-04-22'),
(1008, 27, 'Limba engleza', '1', 6, '2023-04-22'),
(1010, 14, 'Limba romana', '1', 1, '2023-04-22'),
(1011, 2, 'Chimie', '1', 10, '2023-05-15'),
(1012, 1, 'Fizica', '1', 9, '2023-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `profesori`
--

CREATE TABLE `profesori` (
  `id` int(11) NOT NULL,
  `nume` varchar(30) NOT NULL,
  `prenume` varchar(30) NOT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profesori`
--

INSERT INTO `profesori` (`id`, `nume`, `prenume`, `adresa`, `telefon`, `email`) VALUES
(1, 'Albu', 'Ion', 'undeva', '0745919345', 'albuion@gmail.com'),
(2, 'O\'Sesnane', 'Sutherland', '3 Village Road', '4018131917', 'sutherlandOS@yahoo.com'),
(3, 'Nodin', 'Cyndi', '0896 Riverside Junction', '8983218725', 'nodincyndi@gmail.com'),
(4, 'Gouldthorp', 'Perla', '0 Eagle Crest Terrace', '7026942878', 'perla_go@yahoo.com'),
(5, 'Evans', 'Boyd', '178 Hoffman Hill', '5306603760', NULL),
(6, 'Gillyatt', 'Hercule', '0 Jenifer Trail', '4432788460', NULL),
(7, 'Gapper', 'Nadia', '314 Stuart Circle', '8321929813', NULL),
(8, 'Sighard', 'Almeria', '931 Elgar Point', '8245665521', NULL),
(9, 'Barnett', 'Dov', '0545 Ridgeview Pass', '3292573587', NULL),
(10, 'Slyvester', 'Thane', '8156 Anzinger Circle', '2221500906', NULL),
(11, 'Orgill', 'Freemon', '61038 Mallory Trail', '8338217929', NULL),
(12, 'Ferier', 'Herold', '7 Jana Parkway', '5423440834', NULL),
(13, 'Shapero', 'Weidar', '5 Huxley Plaza', '8497665776', NULL),
(14, 'Tregenza', 'Gibb', '419 Parkside Park', '2055449063', NULL),
(15, 'Sallowaye', 'Butch', '6827 Service Plaza', '5849296736', NULL),
(16, 'Duxfield', 'Maris', '7 Blackbird Place', '1618106970', NULL),
(17, 'Milburne', 'Edee', '377 Lunder Circle', '2269144859', NULL),
(18, 'Dallimare', 'Pearline', '807 Erie Crossing', '6487752860', NULL),
(19, 'Hardingham', 'Toiboid', '8606 Mayer Way', '4191602328', NULL),
(20, 'Dubarry', 'Maura', '6270 Spohn Place', '6074707201', NULL),
(21, 'Brackpool', 'Flory', '0 Springs Point', '4689715095', NULL),
(22, 'Maud', 'Isaak', '32851 Eagle Crest Trail', '9003148406', NULL),
(23, 'Spat', 'Constancy', '08863 Corscot Plaza', '3492221853', NULL),
(24, 'Greystoke', 'Hashim', '05884 Maryland Alley', '5574785675', NULL),
(25, 'McMenamie', 'Chaddy', '2055 Anderson Drive', '2918918161', NULL),
(26, 'Cowling', 'Dorie', '4384 Butternut Place', '9379737304', NULL),
(27, 'Gerbl', 'Alejandro', '4522 Warbler Crossing', '1748933171', NULL),
(28, 'Fentem', 'Ashely', '83300 Granby Court', '3301014991', NULL),
(29, 'Macauley', 'Alverta', '1 Pine View Plaza', '4386449146', NULL),
(30, 'Corradini', 'Duncan', '341 Lighthouse Bay Lane', '6824880095', NULL),
(31, 'Minget', 'Harlin', '1 Bultman Terrace', '4128315900', NULL),
(32, 'Zoephel', 'Curran', '11204 Westerfield Trail', '4231072040', NULL),
(33, 'Pickle', 'Brooke', '692 Sycamore Park', '7568872958', NULL),
(34, 'Burhouse', 'Cullin', '341 Evergreen Park', '8609054766', NULL),
(35, 'Chartre', 'Wren', '3 Upham Point', '6287221989', NULL),
(36, 'Cumo', 'Yovonnda', '5 Crownhardt Circle', '4178559962', NULL),
(37, 'Dear', 'Audrey', '29676 Bartelt Pass', '9724927081', NULL),
(38, 'Keep', 'Scarface', '47938 Oak Valley Place', '9007812818', NULL),
(39, 'Carlozzi', 'Brendin', '43 Sloan Avenue', '4893767153', NULL),
(40, 'Oldridge', 'Travers', '09 Pond Way', '7995777163', NULL),
(41, 'Snedker', 'Naomi', '79142 Merry Parkway', '1956196501', NULL),
(42, 'Base', 'Kennie', '571 Colorado Road', NULL, NULL),
(43, 'Cerve', 'Steven', 'Str. George Cosbuc nr. 25, Sibiu, SB', '0724234567', 'stevencer@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `profesori_discipline`
--

CREATE TABLE `profesori_discipline` (
  `id` int(11) NOT NULL,
  `profesor` int(11) NOT NULL,
  `disciplina` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profesori_discipline`
--

INSERT INTO `profesori_discipline` (`id`, `profesor`, `disciplina`) VALUES
(1, 1, 'Biologie'),
(2, 2, 'Chimie'),
(5, 3, 'Desen'),
(6, 4, 'Filosofie'),
(7, 5, 'Fizica'),
(8, 6, 'Geografie'),
(9, 7, 'Informatica'),
(10, 3, 'Informatica'),
(11, 8, 'Istorie'),
(12, 9, 'Limba engleza'),
(13, 10, 'Limba romana'),
(14, 11, 'Logica'),
(15, 11, 'Psohologie'),
(16, 12, 'Religie'),
(17, 13, 'Sport'),
(18, 14, 'Biologie'),
(19, 15, 'Chimie'),
(20, 16, 'Fizica'),
(21, 17, 'Istorie'),
(22, 18, 'Limba engleza'),
(23, 19, 'Limba romana'),
(24, 20, 'Matematica'),
(25, 21, 'Matematica'),
(26, 22, 'Sport'),
(27, 23, 'Limba romana'),
(28, 24, 'Biologie'),
(29, 25, 'Limba romana'),
(30, 26, 'Matematica'),
(31, 27, 'Matematica'),
(32, 28, 'Geografie'),
(33, 29, 'Fizica'),
(34, 30, 'Informatica'),
(35, 43, 'Religie');

-- --------------------------------------------------------

--
-- Table structure for table `situatie_scolara`
--

CREATE TABLE `situatie_scolara` (
  `id` int(11) NOT NULL,
  `elev` int(11) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `medie_sem1` int(2) DEFAULT NULL,
  `medie_sem2` int(2) DEFAULT NULL,
  `medie_generala` float(2,2) DEFAULT NULL,
  `nr_abs` int(11) NOT NULL DEFAULT 0,
  `corigent` tinyint(1) NOT NULL DEFAULT 0,
  `neincheiat` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situatie_scolara`
--

INSERT INTO `situatie_scolara` (`id`, `elev`, `materia`, `medie_sem1`, `medie_sem2`, `medie_generala`, `nr_abs`, `corigent`, `neincheiat`) VALUES
(1, 1, 'Biologie', 7, 5, NULL, 0, 0, 0),
(2, 1, 'Limba engleza', 8, NULL, NULL, 1, 0, 0),
(3, 16, 'Matematica', 7, NULL, NULL, 0, 0, 0),
(4, 16, 'Limba romana', NULL, 6, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pwd` varchar(255) NOT NULL,
  `numb` int(11) DEFAULT NULL,
  `googleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `pwd`, `numb`, `googleId`) VALUES
(1, 'perla_go@yahoo.com', 'alabalaportocala', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `catalog_clase`
--
DROP TABLE IF EXISTS `catalog_clase`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catalog_clase`  AS SELECT `e`.`id` AS `id`, `e`.`nr_matricol` AS `nr_matricol`, `e`.`nume` AS `nume`, `e`.`prenume` AS `prenume`, `ce`.`clasa` AS `clasa`, `c`.`an` AS `an`, `c`.`nume` AS `nume_clasa`, `c`.`profil` AS `profil`, `p`.`nume` AS `nume_diriginte`, `p`.`prenume` AS `prenume_diriginte`, `c_m`.`materii` AS `materii` FROM ((((`elevi` `e` join `clase_elevi` `ce` on(`e`.`id` = `ce`.`elev`)) join `clase` `c` on(`ce`.`clasa` = `c`.`id`)) left join (select `cm`.`clasa` AS `clasa`,`c`.`an` AS `an`,`c`.`nume` AS `nume_clasa`,group_concat(`pd`.`disciplina` separator ',') AS `materii` from ((`clase_materii` `cm` join `clase` `c` on(`cm`.`clasa` = `c`.`id`)) join `profesori_discipline` `pd` on(`cm`.`materia_profesorul` = `pd`.`id`)) group by `cm`.`clasa`) `c_m` on(`ce`.`clasa` = `c_m`.`clasa`)) left join `profesori` `p` on(`c`.`diriginte` = `p`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `email_users`
--
DROP TABLE IF EXISTS `email_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `email_users`  AS SELECT `profesori`.`nume` AS `nume`, `profesori`.`prenume` AS `prenume`, `profesori`.`email` AS `email` FROM `profesori` WHERE `profesori`.`email` is not null union select `elevi`.`nume` AS `nume`,`elevi`.`prenume` AS `prenume`,`elevi`.`email` AS `email` from `elevi` where `elevi`.`email` is not null  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ani` (`an`),
  ADD KEY `diriginti` (`diriginte`);

--
-- Indexes for table `clase_elevi`
--
ALTER TABLE `clase_elevi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clas` (`clasa`),
  ADD KEY `elev` (`elev`);

--
-- Indexes for table `clase_materii`
--
ALTER TABLE `clase_materii`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cls` (`clasa`),
  ADD KEY `mat_prof` (`materia_profesorul`);

--
-- Indexes for table `discippline`
--
ALTER TABLE `discippline`
  ADD PRIMARY KEY (`materia`);

--
-- Indexes for table `elevi`
--
ALTER TABLE `elevi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nr_matricol` (`nr_matricol`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nivele`
--
ALTER TABLE `nivele`
  ADD PRIMARY KEY (`an`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elevi_note` (`elev`),
  ADD KEY `materia` (`materia`);

--
-- Indexes for table `profesori`
--
ALTER TABLE `profesori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `profesori_discipline`
--
ALTER TABLE `profesori_discipline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor` (`profesor`),
  ADD KEY `disc` (`disciplina`);

--
-- Indexes for table `situatie_scolara`
--
ALTER TABLE `situatie_scolara`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elv` (`elev`),
  ADD KEY `matr` (`materia`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clase_elevi`
--
ALTER TABLE `clase_elevi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `clase_materii`
--
ALTER TABLE `clase_materii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `elevi`
--
ALTER TABLE `elevi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

--
-- AUTO_INCREMENT for table `profesori`
--
ALTER TABLE `profesori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `profesori_discipline`
--
ALTER TABLE `profesori_discipline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `situatie_scolara`
--
ALTER TABLE `situatie_scolara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `ani` FOREIGN KEY (`an`) REFERENCES `nivele` (`an`) ON UPDATE CASCADE,
  ADD CONSTRAINT `diriginti` FOREIGN KEY (`diriginte`) REFERENCES `profesori` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `clase_elevi`
--
ALTER TABLE `clase_elevi`
  ADD CONSTRAINT `clas` FOREIGN KEY (`clasa`) REFERENCES `clase` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `elev` FOREIGN KEY (`elev`) REFERENCES `elevi` (`id`);

--
-- Constraints for table `clase_materii`
--
ALTER TABLE `clase_materii`
  ADD CONSTRAINT `cls` FOREIGN KEY (`clasa`) REFERENCES `clase` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mat_prof` FOREIGN KEY (`materia_profesorul`) REFERENCES `profesori_discipline` (`id`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `elevi_note` FOREIGN KEY (`elev`) REFERENCES `elevi` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `materia` FOREIGN KEY (`materia`) REFERENCES `discippline` (`materia`) ON UPDATE CASCADE;

--
-- Constraints for table `profesori_discipline`
--
ALTER TABLE `profesori_discipline`
  ADD CONSTRAINT `disc` FOREIGN KEY (`disciplina`) REFERENCES `discippline` (`materia`),
  ADD CONSTRAINT `profesor` FOREIGN KEY (`profesor`) REFERENCES `profesori` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `situatie_scolara`
--
ALTER TABLE `situatie_scolara`
  ADD CONSTRAINT `elv` FOREIGN KEY (`elev`) REFERENCES `elevi` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matr` FOREIGN KEY (`materia`) REFERENCES `discippline` (`materia`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
