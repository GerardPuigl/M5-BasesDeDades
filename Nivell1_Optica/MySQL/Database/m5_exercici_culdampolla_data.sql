-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: m5_nivell1_culampolla
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
-- Dumping data for table `adressess`
--

LOCK TABLES `adressess` WRITE;
/*!40000 ALTER TABLE `adressess` DISABLE KEYS */;
INSERT INTO `adressess` VALUES (1,'Calle Mayor','1','1','1','Cerdanyola','00000','countrysupplier1'),(2,'Calle Encarnación','2',NULL,NULL,'Molins de rei','00000','countrysupplier2'),(3,'Plaça del pi','1','1',NULL,'Barcelona','00000','countryclient1'),(4,'Calle del sol','4','1','2','Hospitalet','00000','countryclient2'),(5,'Calle pepito','3','3','2','Barcelona','00000','countryemploy1'),(6,'Calle sin salida','56',NULL,NULL,'Barcelona','00000','countryemploy2');
/*!40000 ALTER TABLE `adressess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Juan','Ruiz','juanruiz@email.com','2020-10-10 15:05:46',3),(2,'Laura','Prades','lprades@emal.com','2020-10-10 15:05:46',4);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,1.00,1.50,'Transparent','2020-10-10 15:18:58',NULL,18),(2,0.75,0.50,'Platejat','2020-10-10 15:22:06',NULL,20);
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Marta','Perez','mperez@email.com','2020-10-10 15:08:56',5),(2,'Vicente','Rabat','vrabat@email.com','2020-10-10 15:09:24',6);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (18,'Rai-Ban','Hipster','Pasta',100,'2020-10-10 15:14:28',NULL,3),(19,'Rai-Ban','Airplain','Metal·liques',80,'2020-10-10 15:14:28',NULL,3),(20,'Lacoste','Flow','Flotant',120,'2020-10-10 15:14:28',NULL,4);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recomendations`
--

LOCK TABLES `recomendations` WRITE;
/*!40000 ALTER TABLE `recomendations` DISABLE KEYS */;
INSERT INTO `recomendations` VALUES (1,2,1);
/*!40000 ALTER TABLE `recomendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sellesrecord`
--

LOCK TABLES `sellesrecord` WRITE;
/*!40000 ALTER TABLE `sellesrecord` DISABLE KEYS */;
INSERT INTO `sellesrecord` VALUES (3,'2020-10-10 15:24:32',1,1,1),(4,'2020-10-10 15:24:32',1,2,2);
/*!40000 ALTER TABLE `sellesrecord` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2021-01-29  2:21:34
