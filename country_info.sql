-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 17 2021 г., 18:36
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eu_countries`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country_info`
--

CREATE TABLE `country_info` (
  `country` varchar(25) NOT NULL,
  `grosswage` int(10) DEFAULT NULL,
  `netwage` int(10) DEFAULT NULL,
  `gdp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `country_info`
--

INSERT INTO `country_info` (`country`, `grosswage`, `netwage`, `gdp`) VALUES
('Austria', 4379, 2973, 481796),
('Belgium', 3627, 2262, 578996),
('Croatia', 1297, 965, 65217),
('Denmark', 5607, 3562, 392570),
('Estonia', 1553, 1214, 35187),
('Finland', 3380, 2509, 300484),
('France', 3097, 2411, 2938271),
('Germany', 4094, 2913, 4319286),
('Iceland', 4739, 3221, 24155),
('Slovenia', 1952, 1278, 59132),
('Spain', 2278, 1784, 1461552),
('Switzerland', 6272, 4717, 824734);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country_info`
--
ALTER TABLE `country_info`
  ADD PRIMARY KEY (`country`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
