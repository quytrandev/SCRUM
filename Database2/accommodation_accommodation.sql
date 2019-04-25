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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accommodation` (
  `accommodationid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `preferclient` varchar(50) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`accommodationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,'213/8 Đường D2, Phường 25, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','40','5400000','CÒN 03 PHÒNG TRONG TÒA NHÀ MỚI XÂY 100% FULL NỘI THẤT!','Phòng trọ cao cấp rộng rãi','1',1,'còn',NULL),(2,'186 Đường Bình Lợi, Phường 13, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','45','5500000','Địa chỉ: 186 Bình Lợi, P. 13, Q. Bình Thạnh.','Phòng trọ cao cấp có nhà gởi xe','1',1,NULL,NULL),(3,'224/17 Đường Phan Văn Hân, Phường 17, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','25','4000000','cho thuê phòng trọ cao cấp số 224/17 phan văn hân ,phường 17 quận bình thạnh','Phòng trọ rộng rãi thoáng mát Bình Thạnh','2',2,NULL,NULL),(4,'261/37/38 Đường Chu Văn An, Phường 12, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','24','3500000','Cho thuê nhà trọ thoáng mát khu yên tĩnh an ninh điện nước đồng hồ riêng giờ giấc tự do lối để xe riêng, nhà trọ mới xây tất cả đều mới chỉ việc dọn đồ vô ở, địa chỉ chu văn an, phường 12, quận bình thạnh','Cho thuê phòng trọ Bình Thạnh','2',2,NULL,NULL),(5,'Đường Nguyễn Duy, Phường 3, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','9','1400000','Phòng trọ thoáng mát, sang trọng, nhà 4 tầng, có chỗ để xe, giặt và phơi đồ trên sân thượng','Phòng trọ giá sinh viên','3',3,NULL,NULL),(6,'41F/9 Đường Trục 30, Phường 13, Quận Bình Thạnh, Hồ Chí Minh','Tất cả','12','2600000','Cho thuê phòng trọ mới xây full noi that tại Bình Thạnh','cho thuê phòng trọ Bình Thạnh','3',3,NULL,NULL);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 14:34:04
