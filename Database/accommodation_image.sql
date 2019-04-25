-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: accommodation
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `ImageId` int(11) NOT NULL AUTO_INCREMENT,
  `AccommodationImage` varchar(200) DEFAULT NULL,
  `AccommodationId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ImageId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/18/phongquangcao1_1534561953.jpg','1'),(2,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/18/phongquangcao2_1534561966.jpg','1'),(3,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/18/dsc-0614_1534561977.jpg','1'),(4,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/16/aebc2898-bad1-47f0-a84f-c7937f800851_1555413052.jpg','2'),(5,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/16/d1562938-98b6-4126-96bb-aa6938cce017_1555413056.jpg','2'),(6,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/16/895314de-282d-46d0-b2de-d28e658884bc_1555413067.jpg','2'),(7,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/16/1e44201c-bacd-4f47-8715-c8a5d810fa33_1555413073.jpg','2'),(8,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/01/07/16998105-1247241572057741-2517486908126135640-n_1546839385.jpg','3'),(9,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/02/17/16998252-1247241635391068-5080082794594543136-n_1550357294.jpg','3'),(10,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/02/17/17021974-1247241682057730-3573823234062350054-n_1550357295.jpg','3'),(11,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/31/z1099776645636-41d1ca3595ad3cd9fe847342331b6dc4_1535713340.jpg','4'),(12,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/31/z1099776637303-81fd3f09c7963bee81608b51e5dc3550_1535713365.jpg','4'),(13,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2018/08/31/z1099776642109-57a682191843670c56f4faf6e6d37c3e_1535713332.jpg','4'),(14,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/25/20180616-142209_1556149613.jpg','5'),(15,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/22/20140126-101335_1555905332.jpg','6'),(16,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/22/20140126-101630_1555905348.jpg','6'),(17,'https://static123.com/phongtro123/uploads/images/thumbs/900x600/fit/2019/04/22/20140126-101637_1555905359.jpg','6');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 10:51:10
