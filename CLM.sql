-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Centralised_Loudeness_Meter
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Hours`
--

DROP TABLE IF EXISTS `Hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hours` (
  `hour` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hours`
--

LOCK TABLES `Hours` WRITE;
/*!40000 ALTER TABLE `Hours` DISABLE KEYS */;
INSERT INTO `Hours` VALUES ('0'),('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('20'),('21'),('22'),('23');
/*!40000 ALTER TABLE `Hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loudness_Main`
--

DROP TABLE IF EXISTS `Loudness_Main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loudness_Main` (
  `Longitude` varchar(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `SPL` varchar(100) NOT NULL,
  `TimeStamp` timestamp NOT NULL,
  `Location` varchar(100) NOT NULL,
  PRIMARY KEY (`Longitude`,`Latitude`,`TimeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loudness_Main`
--

LOCK TABLES `Loudness_Main` WRITE;
/*!40000 ALTER TABLE `Loudness_Main` DISABLE KEYS */;
INSERT INTO `Loudness_Main` VALUES ('-090.4687','-60.2341','-89','2020-11-16 18:12:05','cheeka'),('-090.4687','-60.2341','-89','2020-11-20 05:24:09','cheeka'),('-100.45667','-50.2341','-20','2020-11-16 17:26:23','New Delhi'),('-20.45667','-100.2341','-10','2020-11-16 17:30:08','modinagar'),('-20.4687','-70.2341','10','2020-11-22 14:03:44','modinagar'),('-20.4687','-70.2341','40','2020-11-22 14:03:49','modinagar'),('-20.4687','-70.2341','70','2020-11-22 14:03:52','modinagar'),('-20.4687','-70.2341','88','2020-11-22 14:03:59','modinagar'),('-29.4687','-64.2341','20','2020-11-22 14:04:24','new delhi'),('-29.4687','-64.2341','50','2020-11-22 14:04:29','new delhi'),('-29.4687','-64.2341','70','2020-11-22 14:04:33','new delhi'),('-29.4687','-64.2341','60','2020-11-22 14:31:45','new delhi'),('-29.4687','-64.2341','50','2020-11-22 14:31:49','new delhi'),('-29.4687','-64.2341','120','2020-11-22 16:49:04','modinagar'),('-29.4687','-64.2341','130','2020-11-22 16:50:56','modinagar'),('-29.4687','-64.2341','120','2020-11-24 05:45:43','UP'),('-29.4687','-64.2341','110','2020-11-24 05:45:46','UP'),('-29.4687','-64.2341','100','2020-11-24 05:58:14','UP'),('-29.4687','-64.2341','140','2020-11-24 06:15:52','UP'),('-29.4687','-64.2341','140','2020-11-24 06:25:26','UP'),('-40.4687','-30.2341','-77','2020-11-20 05:48:36','cheeka'),('-40.4687','-30.2341','77','2020-11-22 14:02:56','cheeka'),('-41.4687','-32.2341','90','2020-11-22 14:03:21','cheeka'),('-41.4687','-32.2341','120','2020-11-22 14:03:27','cheeka'),('-60.4687','-30.2341','-80','2020-11-16 17:35:30','cheeka');
/*!40000 ALTER TABLE `Loudness_Main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Centralised_Loudeness_Meter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24 12:03:55
