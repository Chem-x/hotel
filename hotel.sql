-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 14 2019 г., 15:04
-- Версия сервера: 5.5.58
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hotel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appartments`
--

CREATE TABLE `appartments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `beds` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `appartments`
--

INSERT INTO `appartments` (`id`, `title`, `description`, `beds`, `img`, `price`) VALUES
(11, 'Номер на одного', 'Однокімнатний номер. У номері: зручні меблі, велике двоспальне або два односпальні ліжка, ванна кімната з сучасним обладнанням.', 1, '40476572.jpg', 35),
(12, 'Номер на двох', 'Ексклюзивний номер з панорамним видом на Майдан Незалежності. У номері дві спальні, дві ванні кімнати, простора вітальня з каміном, диваном і зручними кріслами.', 2, '-47952560.jpg', 55),
(13, 'На велику компанию', 'Трикімнатний номер з панорамним видом на Майдан Незалежності.\r\nУ номері: спальня з ліжком «king size», кабінет з робочим столом і кріслом, затишна вітальня кімната.', 3, '660865024.jpg', 100),
(14, 'Люкс', 'Просторий двокімнатний номер.\r\nНомер складається з великої вітальні з мяким куточком та затишній спальні.', 2, '655582228.jpg', 50);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `text`, `date`) VALUES
(5, 'Вадим', 'info@vadmaz.ua', 'Nice!!!!!', '2018-01-26'),
(6, 'Борис', 'info@bora.ua', 'Me gusta!', '2018-01-26');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appartments`
--
ALTER TABLE `appartments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appartments`
--
ALTER TABLE `appartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
