-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 06 2018 г., 00:46
-- Версия сервера: 10.0.36-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `collaborators`
--

CREATE TABLE `collaborators` (
  `id` bigint(19) NOT NULL,
  `fullname` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `org_id` bigint(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `collaborators`
--

INSERT INTO `collaborators` (`id`, `fullname`, `org_id`) VALUES
(1, 'Джордж Вашингтон', 1),
(3, 'Исаак Ньютон', 1),
(4, 'Альберт Эйнштейн', 2),
(5, 'Луи Пастер', 1),
(6, 'Антуан Лавуазье', 2),
(7, 'Джеймс Максвелл', 2),
(8, 'Мартин Лютер', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` bigint(19) NOT NULL,
  `name` varchar(900) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'Планирование. Объекты закупок'),
(2, 'Планирование. Детализированные объекты закупок'),
(3, 'Планирование. Планы-графики'),
(4, 'Реестр контрактов. Ввод сведений о переходящих контрактах');

-- --------------------------------------------------------

--
-- Структура таблицы `learnings`
--

CREATE TABLE `learnings` (
  `id` bigint(19) NOT NULL,
  `person_id` bigint(19) DEFAULT NULL,
  `course_id` bigint(19) DEFAULT NULL,
  `state_id` bigint(19) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `learnings`
--

INSERT INTO `learnings` (`id`, `person_id`, `course_id`, `state_id`, `start_date`, `finish_date`) VALUES
(1, 1, 1, 2, '2018-12-01 02:06:13', '2018-12-02 04:00:00'),
(2, 1, 1, 3, '2018-12-01 01:00:00', '2018-12-03 01:00:00'),
(3, 3, 2, 2, '2018-12-02 00:00:00', '2018-12-04 00:00:00'),
(4, 4, 2, 4, '2018-12-02 00:00:00', '2018-12-03 00:00:00'),
(5, 5, 1, 3, '2018-12-02 00:00:00', '2018-12-05 00:00:00'),
(7, 7, 1, 2, '2018-12-01 00:00:00', '2018-12-03 00:00:00'),
(8, 8, 3, 1, '2018-12-03 00:00:00', '2018-12-05 00:00:00'),
(9, 1, 3, 2, '2018-12-03 00:00:00', '2018-12-05 00:00:00'),
(10, 4, 4, 4, '2018-12-02 00:00:00', '2018-12-04 00:00:00'),
(11, 6, 2, 2, '2018-12-04 00:00:00', '2018-12-05 00:00:00'),
(12, 7, 3, 4, '2018-12-02 00:00:00', '2018-12-04 00:00:00'),
(13, 3, 1, 2, '2018-12-02 00:00:00', '2018-12-05 00:00:00'),
(14, 5, 4, 3, '2018-12-01 00:00:00', '2018-12-02 00:00:00'),
(15, 8, 4, 2, '2018-12-03 00:00:00', '2018-12-05 00:00:00'),
(16, 8, 2, 4, '2018-12-01 00:00:00', '2018-12-04 00:00:00'),
(17, 1, 2, 2, '2018-12-01 00:00:00', '2018-12-03 00:00:00'),
(18, 1, 4, 3, '2018-12-03 00:00:00', '2018-12-04 00:00:00'),
(19, 3, 3, 2, '2018-12-03 00:00:00', '2018-12-04 00:00:00'),
(20, 3, 4, 4, '2018-12-02 00:00:00', '2018-12-04 00:00:00'),
(21, 4, 1, 1, '2018-12-01 00:00:00', '2018-12-03 00:00:00'),
(22, 4, 3, 2, '2018-12-02 00:00:00', '2018-12-05 00:00:00'),
(23, 5, 2, 2, '2018-12-02 00:00:00', '2018-12-03 00:00:00'),
(24, 6, 3, 2, '2018-12-04 00:00:00', '2018-12-05 00:00:00'),
(25, 6, 4, 3, '2018-12-02 00:00:00', '2018-12-05 00:00:00'),
(26, 7, 4, 3, '2018-12-03 00:00:00', '2018-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `orgs`
--

CREATE TABLE `orgs` (
  `id` bigint(19) NOT NULL,
  `name` varchar(900) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orgs`
--

INSERT INTO `orgs` (`id`, `name`) VALUES
(1, 'Администрация Пермского края'),
(2, 'Администрация города Перми');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `collaborators`
--
ALTER TABLE `collaborators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `learnings`
--
ALTER TABLE `learnings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orgs`
--
ALTER TABLE `orgs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `collaborators`
--
ALTER TABLE `collaborators`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `learnings`
--
ALTER TABLE `learnings`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `orgs`
--
ALTER TABLE `orgs`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
