-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.37-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица toshnur.Questions
CREATE TABLE IF NOT EXISTS `Questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `reply` text NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `lang` varchar(50) DEFAULT '0',
  `name` varchar(255) DEFAULT '0',
  `email` varchar(255) DEFAULT '0',
  `phone` varchar(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы toshnur.Questions: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
INSERT INTO `Questions` (`id`, `question`, `reply`, `status`, `view`, `lang`, `name`, `email`, `phone`) VALUES
	(1, 'test Вопрос', 'test Ответ', 0, 0, 'uz', 'test name', 'jam-90-87@mail.ru', '777-77-77'),
	(2, 'Вопросы', 'Ответ', 1, 1, 'ru', 'Название', 'E-mail', '000-00-00'),
	(4, 'quest 1', '', 0, 0, 'en', 'name 1', 'mail@mail.ru', '1324567'),
	(5, 'quest 1', '', 0, 0, 'ru', 'name 1', 'mail@mail.r', '1324567');
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
