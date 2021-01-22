-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: m2_exercici6_culampolla
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
-- Table structure for table `sellesrecord`
--

DROP TABLE IF EXISTS `sellesrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellesrecord` (
  `selle_id` int NOT NULL AUTO_INCREMENT,
  `create_TIMESTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `employees_employ_id` int NOT NULL,
  `clients_client_id` int NOT NULL,
  `configurations_configuration_id` int NOT NULL,
  PRIMARY KEY (`selle_id`),
  KEY `fk_SellesRecord_employees1_idx` (`employees_employ_id`),
  KEY `fk_SellesRecord_configurations1_idx` (`configurations_configuration_id`),
  KEY `fk_SellesRecord_users1_idx` (`clients_client_id`),
  CONSTRAINT `fk_SellesRecord_configurations1` FOREIGN KEY (`configurations_configuration_id`) REFERENCES `configurations` (`configuration_id`),
  CONSTRAINT `fk_SellesRecord_employees1` FOREIGN KEY (`employees_employ_id`) REFERENCES `employees` (`employ_id`),
  CONSTRAINT `fk_SellesRecord_users1` FOREIGN KEY (`clients_client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellesrecord`
--

LOCK TABLES `sellesrecord` WRITE;
/*!40000 ALTER TABLE `sellesrecord` DISABLE KEYS */;
INSERT INTO `sellesrecord` VALUES (3,'2020-10-10 15:24:32',1,1,1),(4,'2020-10-10 15:24:32',1,2,2);
/*!40000 ALTER TABLE `sellesrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-10 20:35:41
