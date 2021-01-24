-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: m2_exercici5_redsocial
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
-- Table structure for table `howyoumet`
--

DROP TABLE IF EXISTS `howyoumet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `howyoumet` (
  `HowYouMet_id` int NOT NULL AUTO_INCREMENT,
  `metway` varchar(45) NOT NULL,
  `users_user_id` int NOT NULL,
  `friend_user_id` int NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`HowYouMet_id`),
  KEY `fk_HowYouMet_users2_idx` (`users_user_id`) /*!80000 INVISIBLE */,
  KEY `fk_HowYouMet_users1_idx` (`friend_user_id`),
  CONSTRAINT `fk_HowYouMet_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `howyoumet`
--

LOCK TABLES `howyoumet` WRITE;
/*!40000 ALTER TABLE `howyoumet` DISABLE KEYS */;
INSERT INTO `howyoumet` VALUES (1,'En la playa',1,2,'2020-10-09 21:21:43'),(2,'En un bar',1,3,'2020-10-09 21:21:43'),(3,'Por internet',1,4,'2020-10-09 21:21:43'),(4,'Por la calle',2,3,'2020-10-09 21:21:43'),(5,'Un amigo en común',2,4,'2020-10-09 21:21:43'),(6,'En la playa',3,5,'2020-10-09 21:21:43'),(7,'Wallapop',5,2,'2020-10-09 21:21:43');
/*!40000 ALTER TABLE `howyoumet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 18:27:36
