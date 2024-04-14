-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2024-04-14 09:30:54
-- 伺服器版本： 8.2.0
-- PHP 版本： 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `parking_lots`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cars_insyde`
--

DROP TABLE IF EXISTS `cars_insyde`;
CREATE TABLE IF NOT EXISTS `cars_insyde` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` int NOT NULL,
  `time_in` datetime NOT NULL,
  `time_pay_count` datetime NOT NULL,
  `time_pay` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `cost` int NOT NULL,
  `discount` int NOT NULL,
  `gate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `floor`
--

DROP TABLE IF EXISTS `floor`;
CREATE TABLE IF NOT EXISTS `floor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_slot` int NOT NULL DEFAULT '0',
  `pregnant_slot` int NOT NULL DEFAULT '0',
  `disabled_slot` int NOT NULL DEFAULT '0',
  `charging_slot` int NOT NULL DEFAULT '0',
  `reserved_slot` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `floor`
--

INSERT INTO `floor` (`id`, `car_slot`, `pregnant_slot`, `disabled_slot`, `charging_slot`, `reserved_slot`) VALUES
(1, 100, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` varchar(20) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `time_pay` datetime DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `bill_number` varchar(20) DEFAULT NULL,
  `payment` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ip_cam`
--

DROP TABLE IF EXISTS `ip_cam`;
CREATE TABLE IF NOT EXISTS `ip_cam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `in_out` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `regular_pass`
--

DROP TABLE IF EXISTS `regular_pass`;
CREATE TABLE IF NOT EXISTS `regular_pass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` int NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `cost` int NOT NULL DEFAULT '0',
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
