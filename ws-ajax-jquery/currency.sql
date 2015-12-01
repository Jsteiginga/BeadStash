-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Machine: localhost:3306
-- Gegenereerd op: 01 dec 2015 om 10:05
-- Serverversie: 5.5.38
-- PHP-versie: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `currency`
--
CREATE DATABASE IF NOT EXISTS `currency` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `currency`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
`ID` int(10) unsigned NOT NULL,
  `CurrencyName` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `CurrencyValue` decimal(10,6) NOT NULL,
  `Updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Tabel leegmaken voor invoegen `currency`
--

TRUNCATE TABLE `currency`;
--
-- Gegevens worden geëxporteerd voor tabel `currency`
--

INSERT INTO `currency` (`ID`, `CurrencyName`, `CurrencyValue`, `Updated`) VALUES
(35, 'USD', 1.241000, '2014-11-24 18:35:13'),
(36, 'JPY', 146.820000, '2014-11-24 18:35:13'),
(37, 'BGN', 1.955800, '2014-11-24 18:35:13'),
(38, 'CZK', 27.592000, '2014-11-24 18:35:13'),
(39, 'DKK', 7.440000, '2014-11-24 18:35:13'),
(40, 'GBP', 0.791600, '2014-11-24 18:35:13'),
(41, 'HUF', 304.760000, '2014-11-24 18:35:13'),
(42, 'LTL', 3.452800, '2014-11-24 18:35:13'),
(43, 'PLN', 4.194300, '2014-11-24 18:35:13'),
(44, 'RON', 4.431300, '2014-11-24 18:35:13'),
(45, 'SEK', 9.239600, '2014-11-24 18:35:13'),
(46, 'CHF', 1.202700, '2014-11-24 18:35:13'),
(47, 'NOK', 8.407000, '2014-11-24 18:35:13'),
(48, 'HRK', 7.671000, '2014-11-24 18:35:13'),
(49, 'RUB', 55.915000, '2014-11-24 18:35:13'),
(50, 'TRY', 2.764900, '2014-11-24 18:35:13'),
(51, 'AUD', 1.438700, '2014-11-24 18:35:13'),
(52, 'BRL', 3.141900, '2014-11-24 18:35:13'),
(53, 'CAD', 1.396100, '2014-11-24 18:35:13'),
(54, 'CNY', 7.621200, '2014-11-24 18:35:13'),
(55, 'HKD', 9.626200, '2014-11-24 18:35:13'),
(56, 'IDR', 9999.999999, '2014-11-24 18:35:13'),
(57, 'ILS', 4.795500, '2014-11-24 18:35:13'),
(58, 'INR', 76.829100, '2014-11-24 18:35:13'),
(59, 'KRW', 1385.460000, '2014-11-24 18:35:13'),
(60, 'MXN', 16.904700, '2014-11-24 18:35:13'),
(61, 'MYR', 4.161800, '2014-11-24 18:35:13'),
(62, 'NZD', 1.577200, '2014-11-24 18:35:13'),
(63, 'PHP', 55.817000, '2014-11-24 18:35:13'),
(64, 'SGD', 1.617900, '2014-11-24 18:35:13'),
(65, 'THB', 40.737000, '2014-11-24 18:35:13'),
(66, 'ZAR', 13.639800, '2014-11-24 18:35:13');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `currency`
--
ALTER TABLE `currency`
 ADD PRIMARY KEY (`ID`), ADD KEY `CurrencyName` (`CurrencyName`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `currency`
--
ALTER TABLE `currency`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
