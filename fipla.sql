-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Eki 2019, 19:55:08
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fipla`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `places`
--

CREATE TABLE `places` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `places`
--

INSERT INTO `places` (`id`, `name`, `longitude`, `latitude`) VALUES
(234, 'Adina Apartment Hotel Sydney Darling Harbour', 151.2024054, -33.8686241),
(232, 'Amora Hotel Jamison Sydney', 151.2063162, -33.8643922),
(228, 'Four Seasons Hotel Sydney', 151.2076032, -33.8615633),
(227, 'Fraser Suites Sydney', 151.205514, -33.8748502),
(237, 'Harbour Rocks Hotel Sydney - MGallery by Sofitel', 151.208137, -33.859661),
(235, 'Hotel Swissôtel Sydney', 151.2073863, -33.8703191),
(221, 'ibis Sydney Darling Harbour', 151.1981166, -33.8713101),
(222, 'Novotel Sydney on Darling Harbour', 151.1978693, -33.8722417),
(223, 'Oaks Goldsbrough Apartments', 151.1973586, -33.8741293),
(229, 'PARKROYAL Darling Harbour', 151.2035868, -33.873562),
(225, 'QT Sydney', 151.2074116, -33.8708902),
(230, 'Radisson Hotel and Suites Sydney', 151.2046731, -33.8759039),
(238, 'Sofitel Sydney Wentworth', 151.2110457, -33.8655338),
(220, 'Sydney', 151.2092955, -33.8688197),
(231, 'Sydney Harbour YHA - The Rocks', 151.20694, -33.859839),
(224, 'The Grace Hotel', 151.2058908, -33.86896410000001),
(233, 'The Little Snail Restaurant', 151.1978505, -33.87036190000001),
(226, 'The Sebel Quay West Suites Sydney', 151.2069501, -33.8616709),
(236, 'The Star Grand Residences (formerly Astral Residences)', 151.1953331, -33.8684714);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `relation`
--

CREATE TABLE `relation` (
  `id` bigint(20) NOT NULL,
  `requestid` int(11) NOT NULL,
  `placeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `relation`
--

INSERT INTO `relation` (`id`, `requestid`, `placeid`) VALUES
(176, 48, 220),
(177, 48, 221),
(178, 48, 222),
(179, 48, 223),
(180, 48, 224),
(181, 48, 225),
(182, 48, 226),
(183, 48, 227),
(184, 48, 228),
(185, 48, 229),
(186, 48, 230),
(187, 48, 231),
(188, 48, 232),
(189, 48, 233),
(190, 48, 234),
(191, 48, 235),
(192, 48, 236),
(193, 48, 237),
(194, 48, 238),
(195, 48, 220);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) NOT NULL,
  `longitude` double NOT NULL,
  `lat` double NOT NULL,
  `rad` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `requests`
--

INSERT INTO `requests` (`id`, `longitude`, `lat`, `rad`) VALUES
(48, 151.1957362, -33.8670522, 1500);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`longitude`,`latitude`);

--
-- Tablo için indeksler `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `longitude` (`longitude`,`lat`,`rad`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- Tablo için AUTO_INCREMENT değeri `relation`
--
ALTER TABLE `relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- Tablo için AUTO_INCREMENT değeri `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
