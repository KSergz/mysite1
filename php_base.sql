-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лют 02 2019 р., 01:04
-- Версія сервера: 8.0.12
-- Версія PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `php_base`
--
CREATE DATABASE IF NOT EXISTS `php_base` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `php_base`;

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Lorem ipsum dolor ', '2016-05-12 10:05:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(2, 'Perform a regular expression search and replace', '2016-05-11 21:00:00', 'The string or an array with strings to replace. If this parameter is a string and the pattern parameter is an array, all patterns will be replaced by that string. If both pattern and replacement parameters are arrays, each pattern will be replaced by the replacement counterpart. ', 'The string or an array with strings to replace. If this parameter is a string and the pattern parameter is an array, all patterns will be replaced by that string. If both pattern and replacement parameters are arrays, each pattern will be replaced by the replacement counterpart. If there are fewer elements in the replacement array than in the pattern array, any extra patterns will be replaced by an empty string.\r\nreplacement may contain references of the form \\\\n or $n, with the latter form being the preferred one. Every such reference will be replaced by the text captured by the n\'th parenthesized pattern. n can be from 0 to 99, and \\\\0 or $0 refers to the text matched by the whole pattern. Opening parentheses are counted from left to right (starting from 1) to obtain the number of the capturing subpattern. To use backslash in replacement, it must be doubled ', 'TopicAuthorAWER', 'images/2.png', 'NewsPublication'),
(3, 'Parse a CSV string into an array', '2016-05-11 21:00:00', 'The locale settings are taken into account by this function. If LC_CTYPE is e.g. en_US.UTF-8, strings in one-byte encodings may be read wrongly by this function.', 'The locale settings are taken into account by this function. If LC_CTYPE is e.g. en_US.UTF-8, strings in one-byte encodings may be read wrongly by this function.\r\nThe escape parameter now interprets an empty string as signal to disable the proprietary escape mechanism. Formerly, an empty string was treated like the default parameter value.', 'TopicAuthor121', 'images/2.png', 'NewsPublication'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(5, 'printf — Output a formatted string', '2017-05-11 21:00:00', 'A list of characters to be escaped. If charlist contains characters \\n, \\r etc., they are converted in C-like style, while other non-alphanumeric characters with ASCII codes lower than 32 and higher than 126 converted to octal representation.', 'A list of characters to be escaped. If charlist contains characters \\n, \\r etc., they are converted in C-like style, while other non-alphanumeric characters with ASCII codes lower than 32 and higher than 126 converted to octal representation.\r\n\r\nWhen you define a sequence of characters in the charlist argument make sure that you know what characters come between the characters that you set as the start and end of the range.', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:05', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-03-11 22:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
