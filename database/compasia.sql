-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.48-MariaDB-0ubuntu0.18.04.1 - Ubuntu 18.04
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for compasia
CREATE DATABASE IF NOT EXISTS `compasia` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `compasia`;

-- Dumping structure for table compasia.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table compasia.products: ~5 rows (approximately)
INSERT IGNORE INTO `products` (`id`, `product_id`, `type`, `brand`, `model`, `capacity`, `quantity`, `created_at`, `updated_at`) VALUES
	(1, 4450, 'Smartphone', 'Apple', 'iPhone SE', '2GB/16GB', 3, '2023-06-15 19:45:03', '2023-06-16 06:10:55'),
	(2, 4768, 'Smartphone', 'Apple', 'iPhone SE', '2GB/32GB', 20, '2023-06-15 19:45:03', '2023-06-16 06:10:55'),
	(3, 4451, 'Smartphone', 'Apple', 'iPhone SE', '2GB/64GB', 18, '2023-06-15 19:45:03', '2023-06-16 06:10:55'),
	(4, 4574, 'Smartphone', 'Apple', 'iPhone SE', '2GB/128GB', 6, '2023-06-15 19:45:03', '2023-06-16 06:10:55'),
	(5, 6039, 'Smartphone', 'Apple', 'iPhone SE (2020)', '3GB/64GB', 42, '2023-06-15 19:45:03', '2023-06-16 06:10:55');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
