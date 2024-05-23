-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Май 23 2024 г., 21:16
-- Версия сервера: 5.7.24
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `fio`, `phone`) VALUES
(1, 'jonson', '+7896045736');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `message` text NOT NULL,
  `masterID` int(11) NOT NULL,
  `requestID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `masters`
--

CREATE TABLE `masters` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `masters`
--

INSERT INTO `masters` (`id`, `fio`, `phone`) VALUES
(1, 'АЛЕКСАСЕР', '+7859068487');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `requestID` int(11) NOT NULL,
  `startDate` varchar(15) NOT NULL,
  `carType` varchar(255) NOT NULL,
  `carModel` varchar(255) NOT NULL,
  `problemDescription` text NOT NULL,
  `requestStatus` varchar(255) NOT NULL,
  `completionDate` varchar(255) DEFAULT NULL,
  `repairParts` varchar(255) DEFAULT NULL,
  `masterID` int(11) NOT NULL,
  `clientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`requestID`, `startDate`, `carType`, `carModel`, `problemDescription`, `requestStatus`, `completionDate`, `repairParts`, `masterID`, `clientID`) VALUES
(11, '2024-05-24', 'fsfs', 'sdfs', 'sdfsdf', 'Pending', NULL, NULL, 1, 1),
(12, '2024-05-24', 'fsfsd', 'fdsfs', 'fsfsfds', 'Pending', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`userID`, `fio`, `phone`, `login`, `password`, `type`) VALUES
(1, 'Белов Александр Давидович', '89210563128', 'login1', 'pass1', 'Менеджер'),
(2, 'Харитонова Мария Павловна', '89535078985', 'login2', 'pass2', 'Автомеханик'),
(3, 'Марков Давид Иванович', '89210673849', 'login3', 'pass3', 'Автомеханик'),
(4, 'Громова Анна Семёновна', '89990563748', 'login4', 'pass4', 'Оператор'),
(5, 'Карташова Мария Данииловна', '89994563847', 'login5', 'pass5', 'Оператор'),
(6, 'Касаткин Егор Львович', '89219567849', 'login11', 'pass11', 'Заказчик'),
(7, 'Ильина Тамара Даниловна', '89219567841', 'login12', 'pass12', 'Заказчик'),
(8, 'Елисеева Юлиана Алексеевна', '89219567842', 'login13', 'pass13', 'Заказчик'),
(9, 'Никифорова Алиса Тимофеевна', '89219567843', 'login14', 'pass14', 'Заказчик'),
(10, 'Васильев Али Евгеньевич', '89219567844', 'login15', 'pass15', 'Автомеханик'),
(12, 'fsdfds', 'dfsfds', 'fdsf', '1123', 'менеджер'),
(13, 'Березин', '+789504', 'CC', '2674', 'Админ'),
(14, 'JONNSON', '+8958962', 'CC2', '2675', 'АДМИН');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `masterID` (`masterID`),
  ADD KEY `requestID` (`requestID`);

--
-- Индексы таблицы `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `masterID` (`masterID`),
  ADD KEY `clientID` (`clientID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `requestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`masterID`) REFERENCES `masters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`requestID`) REFERENCES `requests` (`requestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`masterID`) REFERENCES `masters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
