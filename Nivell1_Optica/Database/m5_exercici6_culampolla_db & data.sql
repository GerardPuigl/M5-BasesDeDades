CREATE DATABASE  IF NOT EXISTS `m5_nivell1_culampolla` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `m5_nivell1_culampolla`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: m5_exercici6_culampolla
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `adressess`
--

DROP TABLE IF EXISTS `adressess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adressess` (
  `adress_id` int(11) NOT NULL,
  `street` varchar(150) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `floor` varchar(45) DEFAULT NULL,
  `door` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adressess`
--

LOCK TABLES `adressess` WRITE;
/*!40000 ALTER TABLE `adressess` DISABLE KEYS */;
INSERT INTO `adressess` VALUES (1,'Calle Mayor','1','1','1','Cerdanyola','00000','countrysupplier1'),(2,'Calle Encarnación','2',NULL,NULL,'Molins de rei','00000','countrysupplier2'),(3,'Plaça del pi','1','1',NULL,'Barcelona','00000','countryclient1'),(4,'Calle del sol','4','1','2','Hospitalet','00000','countryclient2'),(5,'Calle pepito','3','3','2','Barcelona','00000','countryemploy1'),(6,'Calle sin salida','56',NULL,NULL,'Barcelona','00000','countryemploy2');
/*!40000 ALTER TABLE `adressess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(16) DEFAULT NULL,
  `client_surnames` varchar(45) DEFAULT NULL,
  `client_email` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Adressess_adress_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_users_Adressess1_idx` (`Adressess_adress_id`),
  CONSTRAINT `fk_users_Adressess1` FOREIGN KEY (`Adressess_adress_id`) REFERENCES `adressess` (`adress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Juan','Ruiz','juanruiz@email.com','2020-10-10 15:05:46',3),(2,'Laura','Prades','lprades@emal.com','2020-10-10 15:05:46',4);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configurations` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `rightgraduation` float(3,2) DEFAULT NULL,
  `leftgraduation` float(3,2) DEFAULT NULL,
  `glasscolor` enum('Transparent','Negre','Marro','Platejat') DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `Models_model_id` int(11) NOT NULL,
  PRIMARY KEY (`configuration_id`),
  UNIQUE KEY `leftgraduation_UNIQUE` (`leftgraduation`),
  KEY `fk_configurations_Models1_idx` (`Models_model_id`),
  CONSTRAINT `fk_configurations_Models1` FOREIGN KEY (`Models_model_id`) REFERENCES `models` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,1.00,1.50,'Transparent','2020-10-10 15:18:58',NULL,18),(2,0.75,0.50,'Platejat','2020-10-10 15:22:06',NULL,20);
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employ_id` int(11) NOT NULL AUTO_INCREMENT,
  `employ_name` varchar(16) DEFAULT NULL,
  `employ_surnames` varchar(45) DEFAULT NULL,
  `employ_email` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Adressess_adress_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`employ_id`),
  KEY `fk_employees_Adressess1_idx` (`Adressess_adress_id`),
  CONSTRAINT `fk_employees_Adressess1` FOREIGN KEY (`Adressess_adress_id`) REFERENCES `adressess` (`adress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Marta','Perez','mperez@email.com','2020-10-10 15:08:56',5),(2,'Vicente','Rabat','vrabat@email.com','2020-10-10 15:09:24',6);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_brand` varchar(45) DEFAULT NULL,
  `model_name` varchar(45) DEFAULT NULL,
  `model_type` enum('Flotant','Pasta','Metal·liques') DEFAULT NULL,
  `model_price` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `Suppliers_supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_Models_Suppliers1_idx` (`Suppliers_supplier_id`),
  CONSTRAINT `fk_Models_Suppliers1` FOREIGN KEY (`Suppliers_supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (18,'Rai-Ban','Hipster','Pasta',100,'2020-10-10 15:14:28',NULL,3),(19,'Rai-Ban','Airplain','Metal·liques',80,'2020-10-10 15:14:28',NULL,3),(20,'Lacoste','Flow','Flotant',120,'2020-10-10 15:14:28',NULL,4);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendations`
--

DROP TABLE IF EXISTS `recomendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recomendations` (
  `recomendation_id` int(11) NOT NULL AUTO_INCREMENT,
  `clients_client_id` int(11) DEFAULT NULL,
  `recomender_client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recomendation_id`),
  KEY `fk_Recomendations_Users1_idx` (`clients_client_id`),
  KEY `fk_Recomendations_Users2_idx` (`recomender_client_id`),
  CONSTRAINT `fk_Recomendations_Users1` FOREIGN KEY (`clients_client_id`) REFERENCES `clients` (`client_id`),
  CONSTRAINT `fk_Recomendations_Users2` FOREIGN KEY (`recomender_client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendations`
--

LOCK TABLES `recomendations` WRITE;
/*!40000 ALTER TABLE `recomendations` DISABLE KEYS */;
INSERT INTO `recomendations` VALUES (1,2,1);
/*!40000 ALTER TABLE `recomendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellesrecord`
--

DROP TABLE IF EXISTS `sellesrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellesrecord` (
  `selle_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_TIMESTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `employees_employ_id` int(11) NOT NULL,
  `clients_client_id` int(11) NOT NULL,
  `configurations_configuration_id` int(11) NOT NULL,
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

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(45) DEFAULT NULL,
  `supplier_phone` int(11) DEFAULT NULL,
  `supplier_fax` int(11) DEFAULT NULL,
  `supplier_nif` varchar(45) DEFAULT NULL,
  `create_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Adressess_adress_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `NIF_supplier_UNIQUE` (`supplier_nif`),
  KEY `fk_Suppliers_Adressess_idx` (`Adressess_adress_id`),
  CONSTRAINT `fk_Suppliers_Adressess` FOREIGN KEY (`Adressess_adress_id`) REFERENCES `adressess` (`adress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (3,'Gafaspepe',857932,19898761,'479593-A','2020-10-10 14:55:41',1),(4,'Noveona',831831,8755963,'556964-G','2020-10-10 14:55:41',2);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 19:50:57
