-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.25 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных tdarsenal
CREATE DATABASE IF NOT EXISTS `tdarsenal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tdarsenal`;


-- Дамп структуры для таблица tdarsenal.city
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы tdarsenal.city: ~17 rows (приблизительно)
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`id`, `name`) VALUES
	(1, 'Краснодар'),
	(2, 'Каневская'),
	(3, 'Славянск-на-Кубани'),
	(4, 'Ростов-на-Дону'),
	(5, 'Сочи'),
	(6, 'Новороссийск'),
	(7, 'Таганрог'),
	(8, 'Ставрополь'),
	(9, 'Армавир'),
	(10, 'Пятигорск'),
	(11, 'Кисловодск'),
	(12, 'Минеральные воды'),
	(13, 'Керчь'),
	(14, 'Феодосия'),
	(15, 'Ялта'),
	(16, 'Симферополь'),
	(17, 'Севастополь');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


-- Дамп структуры для таблица tdarsenal.punkt
CREATE TABLE IF NOT EXISTS `punkt` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `rejimRab` text,
  `id_city` int(5) NOT NULL,
  `phone` text,
  `coords` varchar(50) NOT NULL DEFAULT '0',
  `addr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_city` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы tdarsenal.punkt: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `punkt` DISABLE KEYS */;
INSERT INTO `punkt` (`id`, `rejimRab`, `id_city`, `phone`, `coords`, `addr`) VALUES
	(1, 'пн — пт: 9:00–18:00, сб: 9:00–15:00', 1, '8 (800) 100-11-77', '45.028438/39.063608', '2ое отделение АФ "Солнечная", 9/5'),
	(2, 'Пн-Пт - 9.00-19.00, Сб - 10.00-16.00', 1, '8-800-100-11-77', '45.072758/39.018163', 'ул. Текстильная, 9/2'),
	(3, '8:30 - 19:30 без выходных', 2, '8-800-100-11-77', '45.258244/38.119111', 'ул. Свердликова, 120'),
	(4, '8:30 - 19:30 без выходных', 3, ' 	8-800-100-11-77\r\n8 (988) 381-35-11', '47.229171/39.721391', 'ул. Ковтюха, 82'),
	(5, 'вт — сб: 10:00-19:00\r\nВыходной: воскресение, понедельник', 4, ' 	8-800-100-11-77', '46.079848/38.95723', 'просп. Чехова, 79'),
	(6, 'пн-пт: 09:00 - 18:00, сб: 10:00 - 16:00', 5, '8-800-100-11-77', '43.601873/39.733976', 'Пластунская, 47А, офис 11 (1 этаж)'),
	(7, ' 	Пн-Пт 9.00-18.00, Сб 10.00-14.00', 6, '8-800-100-11-77', '43.581509/39.722882', 'пр. Ленина 13'),
	(8, 'пн-пт: 09:00 - 18:00, сб: 10:00 - 14:00', 5, ' 	8-800-100-11-77', '44.699115/37.784039', 'ул. Города Волос, 119'),
	(9, 'пн-пт: 10:00 - 19:00, сб: 10:00 - 18:00', 5, ' 	8 (800) 100-11-77', '43.581509/39.722882', 'ул. Лермонтовская, 102, оф. 5'),
	(10, 'пн. - пт.: 09:00 - 18:00, сб.: 10:00 - 14:00', 7, '8-800-100-11-77', '47.209794/38.938195', 'ул. Петровская, д. 42, оф. 12');
/*!40000 ALTER TABLE `punkt` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
