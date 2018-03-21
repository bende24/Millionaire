-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Verzió:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for slim
CREATE DATABASE IF NOT EXISTS `slim` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci */;
USE `slim`;

-- Dumping structure for tábla slim.answers
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `letter` char(1) COLLATE utf8_hungarian_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- Dumping data for table slim.answers: ~60 rows (approximately)
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`id`, `body`, `letter`, `question_id`) VALUES
	(1, 'Dr. Pepper', 'A', 1),
	(2, 'Pepsi', 'B', 1),
	(3, 'Cola', 'C', 1),
	(4, 'Sprite', 'D', 1),
	(5, 'Alive', 'A', 2),
	(6, 'Dead', 'B', 2),
	(7, 'Lost', 'C', 2),
	(8, 'Unknown', 'D', 2),
	(10, 'Christian', 'A', 3),
	(11, 'Jew', 'B', 3),
	(12, 'Buddhism', 'C', 3),
	(13, 'Shinto', 'D', 3),
	(14, 'J.K.Rowling', 'A', 4),
	(15, 'Dan Wells', 'B', 4),
	(16, 'George.R.R.Martin', 'C', 4),
	(17, 'J.R.R.Tolkien', 'D', 4),
	(18, 'Chef', 'A', 5),
	(19, 'Theoretical physicist', 'B', 5),
	(20, 'Programmer', 'C', 5),
	(21, 'Basketball player', 'D', 5),
	(22, 'Birds', 'A', 6),
	(23, 'Cats', 'B', 6),
	(24, 'Dogs', 'C', 6),
	(25, 'Rats', 'D', 6),
	(26, 'Psychopathy', 'A', 7),
	(27, 'Machiavellianism', 'B', 7),
	(28, 'Narcissism', 'C', 7),
	(29, 'Depression', 'D', 7),
	(30, 'F=m/a', 'A', 8),
	(31, 'F=m+a', 'B', 8),
	(32, 'F=ma', 'C', 8),
	(33, 'F=m-a', 'D', 8),
	(34, 'Sarcoidosis', 'A', 9),
	(35, 'Cipa', 'B', 9),
	(36, 'Lupus', 'C', 9),
	(37, 'Huntington', 'D', 9),
	(38, 'Potato chip', 'A', 10),
	(39, 'Marshmallow', 'B', 10),
	(40, 'Jelly Bean', 'C', 10),
	(41, 'Cookie', 'D', 10),
	(42, 'Pons', 'A', 11),
	(43, 'Medulla', 'B', 11),
	(44, 'Hypothalamus', 'C', 11),
	(45, 'Thalamus', 'D', 11),
	(46, 'INTP', 'A', 12),
	(47, 'INTJ', 'B', 12),
	(48, 'ISTJ', 'C', 12),
	(49, 'ISTP', 'D', 12),
	(50, 'Brocas area', 'A', 13),
	(51, 'Frontal lobe', 'B', 13),
	(52, 'Corpus callosum', 'C', 13),
	(53, 'Auditory cortex', 'D', 13),
	(54, '0-3', 'A', 14),
	(55, '4-7', 'B', 14),
	(56, '7-11', 'C', 14),
	(57, '11-13', 'D', 14),
	(58, 'Telomere', 'A', 15),
	(59, 'Ploidy', 'B', 15),
	(60, 'Diploid', 'C', 15),
	(61, 'Osmosis', 'D', 15);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;

-- Dumping structure for tábla slim.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` int(11) NOT NULL DEFAULT '0',
  `d` varchar(50) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- Dumping data for table slim.news: ~2 rows (approximately)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `title`, `d`) VALUES
	(1, 1, 'sdsadsadasasa'),
	(2, 3, ':c'),
	(3, 1, ':::::::c');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for tábla slim.prizes
CREATE TABLE IF NOT EXISTS `prizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prize` int(11) NOT NULL,
  `checkpoint` tinyint(4) NOT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- Dumping data for table slim.prizes: ~15 rows (approximately)
/*!40000 ALTER TABLE `prizes` DISABLE KEYS */;
INSERT INTO `prizes` (`id`, `prize`, `checkpoint`, `number`) VALUES
	(1, 5000, 0, 1),
	(5, 10000, 0, 2),
	(6, 20000, 0, 3),
	(7, 50000, 0, 4),
	(8, 100000, 1, 5),
	(9, 200000, 0, 6),
	(10, 300000, 0, 7),
	(11, 500000, 0, 8),
	(12, 800000, 0, 9),
	(13, 1000000, 1, 10),
	(14, 2000000, 0, 11),
	(15, 5000000, 0, 12),
	(16, 10000000, 0, 13),
	(17, 20000000, 0, 14),
	(18, 40000000, 1, 15);
/*!40000 ALTER TABLE `prizes` ENABLE KEYS */;

-- Dumping structure for tábla slim.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_hungarian_ci,
  `correctAnswer` char(1) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `difficulty` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- Dumping data for table slim.questions: ~15 rows (approximately)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `body`, `correctAnswer`, `difficulty`) VALUES
	(1, 'What is the drink of intellectuals?', 'A', 1),
	(2, 'What is Schrödingers cats status?', 'D', 1),
	(3, 'What was the religion of Einstein?', 'B', 1),
	(4, 'Who wrote the Harry Potter series?', 'A', 1),
	(5, 'Who is Stephen Hawking?', 'B', 1),
	(6, 'Russian psychologist Ivan Pavlov is most famous for conducting experiments using what animals?', 'C', 2),
	(7, 'Which isn\'t a dark triad trait?', 'D', 2),
	(8, 'Which of these is another way to write Newton\'s second law of motion?', 'C', 2),
	(9, 'Which disease is the meme of House MD?', 'C', 2),
	(10, 'I\'ll take a ... and eat it!', 'A', 2),
	(11, 'What part of the brain stem regulates your heartbeat?', 'B', 3),
	(12, 'What is the MBTI type of Friedrich Nietzsche?', 'B', 3),
	(13, 'Where are languages separated in the brain?', 'A', 3),
	(14, 'At what age does the latent stage occur?', 'B', 3),
	(15, 'What protects the end of the chromosomes?', 'A', 3);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
