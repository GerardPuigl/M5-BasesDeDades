CREATE DATABASE  IF NOT EXISTS `m5_exercici4_amazon` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `m5_exercici4_amazon`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: m2_exercici4_amazon
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookcatalog`
--

DROP TABLE IF EXISTS `bookcatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookcatalog` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) DEFAULT NULL,
  `book_quantity` int DEFAULT NULL,
  `book_price` varchar(45) DEFAULT NULL,
  `create_time TIMESTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Authors_author_id` int NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_BookCatalog_Authors1_idx` (`Authors_author_id`),
  CONSTRAINT `fk_BookCatalog_Authors1` FOREIGN KEY (`Authors_author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookcatalog`
--

LOCK TABLES `bookcatalog` WRITE;
/*!40000 ALTER TABLE `bookcatalog` DISABLE KEYS */;
INSERT INTO `bookcatalog` VALUES (25,'Libro1',20,'15','2020-10-09 19:11:56',1),(26,'Libro2',20,'20','2020-10-09 19:11:56',1),(27,'Libro3',5,'18','2020-10-09 19:11:56',1),(28,'Libro4',2,'10','2020-10-09 19:11:56',2),(29,'Libro5',15,'12','2020-10-09 19:11:56',3),(30,'Libro6',7,'15','2020-10-09 19:11:56',3);
/*!40000 ALTER TABLE `bookcatalog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 19:43:57
