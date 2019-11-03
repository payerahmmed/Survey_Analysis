CREATE DATABASE  IF NOT EXISTS `surveyanalysis` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `surveyanalysis`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: surveyanalysis
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `productanalysis`
--

DROP TABLE IF EXISTS `productanalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productanalysis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aboutPrice` tinyblob,
  `age` varchar(255) DEFAULT NULL,
  `always` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `familyUse` varchar(255) DEFAULT NULL,
  `flavor` varchar(255) DEFAULT NULL,
  `flavorUse` tinyblob,
  `gender` varchar(255) DEFAULT NULL,
  `howOften` varchar(255) DEFAULT NULL,
  `likeUse` varchar(255) DEFAULT NULL,
  `luxShop` varchar(255) DEFAULT NULL,
  `luxSize` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namySize` tinyblob,
  `notflavor` varchar(255) DEFAULT NULL,
  `prices` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `satisfied` tinyblob,
  `seeAd` varchar(255) DEFAULT NULL,
  `thinkprice` varchar(255) DEFAULT NULL,
  `whereSee` tinyblob,
  `whyU` varchar(255) DEFAULT NULL,
  `selectValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productanalysis`
--

LOCK TABLES `productanalysis` WRITE;
/*!40000 ALTER TABLE `productanalysis` DISABLE KEYS */;
INSERT INTO `productanalysis` VALUES (3,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','35','Yes','2019-10-24','Yes','sdfsdfnjk',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Female','sdfsf','fdsfk','No','No','Noyon',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','jksfj','Yes','sfsd',NULL,'No','ksdfjsl',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nBill Board','sdfaj',NULL),(4,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','34','Yes','2019-10-24','Yes','jkdg',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','','ksdlfjl','No','No','Saladdin',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','klsdfjl','Yes','jhdsfj',NULL,'Yes','dskfjsdkl',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Radio','dsfdj',NULL),(5,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','33','Yes','2019-10-24','Yes','hsdjkfh',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','sdjkfh','dsfjkhsdk','Yes','No','A Alim',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','jkhsdfjh','Yes','dfsjdhf',NULL,'No','fjksdhk',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nBill Board','sdfkjskf',NULL),(6,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is satisfactory','33','Yes','2019-10-24','No','jksdfj',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Female','','jkhjkhc',NULL,'No','Faruky',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','jhfdsjkf','No','asfhksdjfh',NULL,'Yes','sdfjklsdjf',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nBill Board','sdjkh',NULL);
/*!40000 ALTER TABLE `productanalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'Cumilla',25,145,'payerahmmed@gmail','payer','Male','ahmmed','123','payerahmmed'),(2,'hghg',12,1245,'alim@gmail.com','abdul','Male','alim','123','Alim');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (3,'2019-10-07 06:00:00','farid@gmail.com',_binary '\0','Farid','Ahmed','$2a$10$JYdFgypMh6aeSrLs/e5nXOY8Yro/Vl8OovztVR9HAZ4s28HJMYO5m','ADMIN',NULL,'farid');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'surveyanalysis'
--

--
-- Dumping routines for database 'surveyanalysis'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-26  9:55:02
