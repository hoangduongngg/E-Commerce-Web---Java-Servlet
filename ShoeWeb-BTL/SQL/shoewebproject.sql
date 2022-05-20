CREATE DATABASE  IF NOT EXISTS `shoeweb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shoeweb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: shoeweb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `uID` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_bin NOT NULL,
  `pass` varchar(45) COLLATE utf8_bin NOT NULL,
  `isSell` int NOT NULL,
  `isAdmin` int NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','123456',1,1,'Admin','Admin','Admin'),(2,'sell','123456',1,0,NULL,NULL,NULL),(3,'hoangduong','123456',0,0,'Nguyen Hoang Duong','Bac Ninh, Viet Nam','0123456789'),(4,'hoangduongnguyen','123456',0,0,'Nguyen Hoang Duong','Ha Dong, Ha Noi, Viet Nam','0123456789'),(6,'abc','123456',0,0,NULL,NULL,NULL),(7,'System','123',0,0,'Nguyen Van A','Thanh Xuan, Ha Noi','0123456789'),(8,'khanh','1234',0,0,'Nguyen Van Khanh','Thanh Xuan, Ha Noi','0123456789'),(10,'khanh2','123456789',0,0,'123456','123456','123456');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `AccountID` int NOT NULL,
  `ProductID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cid` int NOT NULL,
  `cname` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'JORDAN'),(2,'NIKE AIR FORCE'),(3,'FOOTBAL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `date` date NOT NULL,
  `user` varchar(45) COLLATE utf8_bin NOT NULL,
  `product` varchar(45) COLLATE utf8_bin NOT NULL,
  `quantity` varchar(45) COLLATE utf8_bin NOT NULL,
  `totalprice` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('2022-05-17','hoangduong','Jordan 1','1','180.0'),('2022-05-19','hoangduong','Nike  Premium','1','150.0'),('2022-05-19','hoangduong','Nike Shadow 2','1','160.0'),('2022-05-20','hoangduong','Nike Force','1','180.0');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountID` int NOT NULL,
  `orderDate` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,2,'10/05/2022'),(2,1,'test'),(4,3,'2022-05-12T22:41:44.018923500'),(5,3,'2022-05-12T22:59:51.919489100'),(6,8,'2022-05-13T00:57:29.756701800'),(7,3,'2022-05-13T11:27:23.740356'),(8,1,'2022-05-13T15:43:12.106118100'),(9,4,'2022-05-17T14:45:19.075291900'),(10,3,'2022-05-17T15:53:49.668791900'),(11,3,'2022-05-19T18:20:13.778947400'),(12,3,'2022-05-19T18:21:36.510085900'),(13,3,'2022-05-20T08:22:16.866512700');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,4,1,1,100),(2,4,5,1,150),(3,5,1,2,100),(4,6,5,3,150),(5,6,6,1,160),(6,7,1,1,100),(7,8,1,1,100),(8,8,5,1,150),(9,8,9,1,180),(10,9,10,1,180),(11,9,11,1,150),(12,10,10,1,180),(13,11,1,1,100),(14,11,8,1,150),(15,12,6,1,160),(16,13,9,1,180);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'742874161','abc',100000,'chinh chuyển khoản','00','13401455','NCB','2020-10-10 01:00:00'),(2,'608324672','abc',1000000,'test chuyển khoản','00','13401811','NCB','2020-10-11 21:00:00'),(3,'1134065293','CT2',150000,'học phí','00','13407163','NCB','2020-10-22 23:00:00'),(4,'596509313','CT2',5000000,'học phí','00','13407176','NCB','2020-10-23 00:00:00'),(5,'70267166','CT2',5000000,'học phí','00','13407178','NCB','2020-10-23 00:00:00'),(6,'1672349048','CT1',150000,'học phí','00','13407729','NCB','2020-10-23 21:00:00');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_bin NOT NULL,
  `image` varchar(5000) COLLATE utf8_bin NOT NULL,
  `price` double NOT NULL,
  `title` varchar(1000) COLLATE utf8_bin NOT NULL,
  `description` varchar(5000) COLLATE utf8_bin NOT NULL,
  `cateID` int NOT NULL,
  `sell_ID` int NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Nike 1 \'07','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f094af40-f82f-4fb9-a246-e031bf6fc411/air-force-1-07-shoe-NMmm1B.png',100,'Nike Air Force 1 \'07 White','The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.',2,2,49,'10-05-2022'),(2,'Nike 1 \'071','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/aee23c65-5ed1-4a07-aeff-180b2ad74c00/air-force-1-07-shoe-NMmm1B.png',120,'Nike Air Force 1 \'07 Green','The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.',2,2,50,'10-05-2022'),(3,'Nike 1 \'072','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/64999541-d10f-4bc6-b0d3-5a143bbecf77/air-force-1-07-shoe-NMmm1B.png',130,'Nike Air Force 1 \'07 Gray','The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.',2,2,50,'10-05-2022'),(4,'Nike LV8 EMB','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e28d2e35-8a74-49e7-996a-778a815fe065/air-force-1-07-lv8-emb-shoes-3qf7r1.png',140,'Nike Air Force 1 \'07 LV8 EMB','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,50,'10-05-2022'),(5,'Nike Shadow','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/21385d10-9b67-4719-907b-97e761874d3e/air-force-1-shadow-shoes-mN8Glx.png',150,'Nike Air Force 1 Shadow Green','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,50,'10-05-2022'),(6,'Nike Shadow 2','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/76976120-1c43-4b97-8e7e-251f0b9684e8/air-force-1-shadow-shoes-mN8Glx.png',160,'Nike Air Force 1 Shadow Pink','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,49,'10-05-2022'),(7,'Nike Shadow 3','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/4621066a-6e19-49e5-a2d7-4e7e5eade298/air-force-1-shadow-shoes-mN8Glx.png',170,'Nike Air Force 1 Shadow','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,50,'10-05-2022'),(8,'Nike  Premium','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/08105925-b788-48d7-8381-99257fcd0281/air-force-1-07-shoes-dbvfjQ.png',150,'Nike Air Force 1 \'07 Premium','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,49,'10-05-2022'),(9,'Nike Force','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/22191d2e-0b52-49fc-9b68-c03edd91dad0/force-1-toggle-younger-shoe-BDVjjK.png',180,'Nike Force 1 Toggle','The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.',2,2,49,'10-05-2022'),(10,'Jordan 1','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9146f1f8-e561-4fd6-b1fc-d4ddcad66fed/air-jordan-1-shoes-d1vgvb.png',180,'Air Jordan 1','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,49,'10-05-2022'),(11,'Jordan MA2','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/eeffc3fb-b18d-4db4-966b-2629ed2a30c4/jordan-ma2-shoe-qw1Z6m.png',150,'Jordan MA2','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,50,'10-05-2022'),(12,'Jordan NFH','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5b734c61-39ab-44b2-b18d-53963181f6d8/jordan-air-nfh-shoes-1msFvZ.png',165,'Jordan Air NFH','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,50,'10-05-2020'),(13,'Jordan Retro','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/eb4fd3e6-71cc-4a34-8b65-0f5dbba2a7b6/air-jordan-6-retro-shoes-4m3b9d.png',185,'Air Jordan 6 Retro','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,50,'10-05-2020'),(14,'Jordan SE','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/6da91d9c-038b-4104-9f50-b6c50ade106e/air-jordan-1-mid-se-shoes-bwRXft.png',200,'Air Jordan 1 Mid SE','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,50,'10-05-2020'),(15,'Jordan Air','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3c526174-8f08-41df-bf58-c0a158e74d35/jordan-air-nfh-bayou-shoe-3JqHmN.png',100,'Jordan Air NFH \'Bayou Boys\'','Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.',1,2,50,'2020-05-10'),(16,'Legend 9','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/022cde50-18e5-4b81-b63e-c71340a43e7f/tiempo-legend-9-academy-mg-multi-ground-football-boot-8Vvl8G.png',120,'Nike Tiempo Legend 9 Academy MG','1 of our lightest Tiempos to date, the Nike Tiempo Legend 9 Academy MG lets you go on the offensive with a low-profile design that\'s reinvented for attackers. The upper has raised textures backed by soft foam pods for precise dribbling, passing and shooting, while studs on the bottom provide traction for quick cuts and sudden stops.',3,2,50,'2020-05-10'),(17,'Phantom GT2','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0e089df8-44f3-49ce-ba75-825b0eab1bec/phantom-gt2-academy-mg-multi-ground-football-boot-Mnr9D7.png',100,'Nike Phantom GT2 Academy MG','The Nike Mercurial Vapor 14 Club elevates a classic with gold and silver accents for a look that\'s fit for champions. A grippy texture throughout the upper provides precise control when dribbling at higher speeds.',3,2,50,'2020-05-10'),(18,'Vapor 14','https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/67cfc9bf-4006-4e4a-958a-e82517199ce8/mercurial-vapor-14-club-mg-multi-ground-football-boots-6M4M03.png',120,'Nike Mercurial Vapor 14 Club MG','The Nike Mercurial Vapor 14 Club elevates a classic with gold and silver accents for a look that\'s fit for champions. A grippy texture throughout the upper provides precise control when dribbling at higher speeds.',3,2,50,'10-05-2022');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20  9:01:32
