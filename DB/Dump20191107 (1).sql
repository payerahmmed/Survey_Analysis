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
-- Table structure for table `employeereg`
--

DROP TABLE IF EXISTS `employeereg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeereg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `eage` int(11) NOT NULL,
  `econtact` int(11) NOT NULL,
  `efather` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emother` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeereg`
--

LOCK TABLES `employeereg` WRITE;
/*!40000 ALTER TABLE `employeereg` DISABLE KEYS */;
INSERT INTO `employeereg` VALUES (1,'Cumilla',25,1630162731,'Abdur Rashid','payer@gmail.com','Parul Begum','Payer Ahmmed','Male','123','MBBA',15000),(2,'Dkaka',24,13658471,'Abdul Haque','enamulhaque@gmail.com','Halima Begum','Enamul Haque','Male','123','Master\'s',15000),(3,'Rongpur',27,175489658,'Md. Kalam','ruhulamin@gmail.com','Forida Begum','Ruhul Amin','Male','123','BBA hourn\'s',15000),(4,'Rajbari',25,1630162731,'Abdur Rashid','payer@gmail.com','Parul Begum','Payer Ahmmed','Male','123','MBBA',15000),(5,'Chadpur',25,1475869,'Zakir Hossian','asma@gmail.com','Rabiya Begum','Asma Akter','Female','123','HSC',15000),(6,'Chittangong',24,15,'Dalower Hossian','monirkhan@gmail.com','Jannat','Monir Khan','Male','258','Master\'s',15000),(7,'Rajshai',45,745869254,'Kasam','abdulalim@gmail.com','Asiya','Abdul Alim','Male','125','Enginer ',15000),(8,'Nariyangong',31,12547,'Md Hanif','salauddin@gmail.com','Asiya Begum','Salauddin','Male','265','BBA hourn\'s',15000),(9,'Moymonsing',45,124587,'Halim Khan','nadira@gmail.com','Rohima Begum','Nadira Akter','Female','147','Master\'s',14000),(10,'Chadpur',25,124587,'Abdru Salam','luckyakter@gmail.com','Khodaja Begum','Lucky Akter','Female','123','Master\'s',15000);
/*!40000 ALTER TABLE `employeereg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeesalary`
--

DROP TABLE IF EXISTS `employeesalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeesalary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eBasicSalary` double NOT NULL,
  `eEmail` varchar(255) DEFAULT NULL,
  `eExtrafromFee` int(11) NOT NULL,
  `eLunch` int(11) NOT NULL,
  `eName` varchar(255) DEFAULT NULL,
  `eOthers` int(11) NOT NULL,
  `eTrans` int(11) NOT NULL,
  `eaddress` varchar(255) DEFAULT NULL,
  `totalSalary` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeesalary`
--

LOCK TABLES `employeesalary` WRITE;
/*!40000 ALTER TABLE `employeesalary` DISABLE KEYS */;
INSERT INTO `employeesalary` VALUES (1,15000,'payer@gmail.com',1000,650,'Payer Ahmmed',850,1058,'\"Cumilla\"',18558),(2,15000,'enamulhaque@gmail.com',3500,650,'Enamul Haque',450,450,'\"Dkaka\"',20050);
/*!40000 ALTER TABLE `employeesalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formsubmit`
--

DROP TABLE IF EXISTS `formsubmit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `formsubmit` (
  `submitid` bigint(20) NOT NULL AUTO_INCREMENT,
  `emName` varchar(255) DEFAULT NULL,
  `selectValue` varchar(255) DEFAULT NULL,
  `submitnum` int(11) NOT NULL,
  PRIMARY KEY (`submitid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formsubmit`
--

LOCK TABLES `formsubmit` WRITE;
/*!40000 ALTER TABLE `formsubmit` DISABLE KEYS */;
INSERT INTO `formsubmit` VALUES (1,'Payer Ahmmed','January',70),(2,'Payer Ahmmed','February',80),(3,'Payer Ahmmed','February',80),(4,'Payer Ahmmed','March',90),(5,'Payer Ahmmed','April',60),(6,'Enamul Haque','January',120),(7,'Enamul Haque','February',100),(8,'Enamul Haque','March',140),(9,'Ruhul Amin','January',120),(10,'Ruhul Amin','January',120),(11,'Ruhul Amin','February',150),(12,'Payer Ahmmed','January',80),(13,'Asma Akter','January',96),(14,'Monir Khan','January',120),(15,'Salauddin','January',100),(16,'Nadira Akter','February',99),(17,'Lucky Akter','January',102),(18,'Enamul Haque','March',125),(19,'Ruhul Amin','March',100),(20,'Monir Khan','October',125),(21,'Enamul Haque','April',83),(22,'Ruhul Amin','April',140),(23,'Payer Ahmmed','April',125),(24,'Asma Akter','April',98),(25,'Monir Khan','April',106),(26,'Abdul Alim','April',107),(27,'Salauddin','April',108),(28,'Nadira Akter','April',99),(29,'Lucky Akter','April',108),(30,'Payer Ahmmed','May',150),(31,'Enamul Haque','May',104),(32,'Ruhul Amin','May',104),(33,'Payer Ahmmed','May',105),(34,'Monir Khan','May',125),(35,'Abdul Alim','May',124);
/*!40000 ALTER TABLE `formsubmit` ENABLE KEYS */;
UNLOCK TABLES;

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
  `selectValue` varchar(255) DEFAULT NULL,
  `thinkprice` varchar(255) DEFAULT NULL,
  `whereSee` tinyblob,
  `whyU` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productanalysis`
--

LOCK TABLES `productanalysis` WRITE;
/*!40000 ALTER TABLE `productanalysis` DISABLE KEYS */;
INSERT INTO `productanalysis` VALUES (1,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','25','No','2019-11-06','Yes','It\'s seem is very nice',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Male','I use alawys','Keya soap','Yes','No','Payer Ahmmed',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Family Size','Na','Yes','Businessman',NULL,'Yes',NULL,'15 tk is better for every man use.',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TVt\0Radiot\0\nNews Paper','Nearest shop  doesn\'t it give.'),(2,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is low t\0The price is satisfactory','26','Yes','2019-11-06','No','It like very much',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','Never it use before','Detoil','No','No','Enamul Hauque',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','It is high price','No','Stadunt',NULL,'Yes',NULL,'Must be price low  for market live',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TVt\0\nBill Board','It is my favorite soap'),(3,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','28','No','2019-11-06','Yes','It\'s seem is not good',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impresst\0Iconic Iris','Male','use some time','','No','Yes','Rabbi',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSmall Size','It\'s seem is good','No','Devoloper',NULL,'Yes',NULL,'25tk is perfact',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TVt\0\nBill Board','Some time other shop test'),(4,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','28','No','2019-11-06','Yes','It\'s seem my favorite',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','Alawys','Na','Yes','Yes','Asraful Islam',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Family Size','I did not like','Yes','Programmer',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Satisfied[]','Yes',NULL,'25Th is perfact',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TVt\0\nNews Paper','Na'),(5,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','28','No','2019-11-06','Yes','It\'s flavor my favorite',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','It\'s use alawys','Meril soap','Yes','Yes','Asif',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSmall Size','Na','Yes','Student',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Satisfied[]','Yes',NULL,'It\'s price is perfect',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Radiot\0\nBill Boardt\0\nNews Paper','Sometime it use for test ,'),(6,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is satisfactory','25','No','2019-11-06','Yes','It is safety for  health',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Male','yes','Na','Yes','Yes','Alim',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Sizet\0Family Size','Na','Yes','Doctor',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Satisfied[]','Yes',NULL,'Price will be high for quality best ',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TV','Other soap i did not like'),(7,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','29','Yes','2019-11-06','Yes','JHJHGJhgjjgttgyu',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Male','hjhjhj','sdasad','Yes','Yes','Robiul Islam',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSmall Size','dsfertre dsfds','Yes','Computer Enginer',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Satisfied[]','No',NULL,'dsdsdas',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nBill Board','asdsad'),(8,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is low ','25','No','2019-11-06','No','I use childhood. so it\'s my favorite saop',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rWhite Impress','Male','KHjkhgfgff','Lifebore','No','Yes','Juto',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','No','No','Teacher',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Not satisfied[]','Yes',NULL,'perfect',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Radiot\0\nBill Board','Sometime'),(9,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','23','Yes','2019-11-06',NULL,'jghhjytrftyfv',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Touch','Male','KJkjgg','jhk','No','Yes','Monir Khan',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSmall Size','jhk','Yes','Banker',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Satisfied[]','Yes',NULL,'kjhk',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nBill Board','ghfhf'),(10,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','45','No','2019-11-06','Yes','jhgfhjfgytf',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\rHypnotic Rose','Female','kjhkhkj','jhhjghj','No','Yes','Omor Faruk',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0	Mini Size','ertetdfgd','No','Driver',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Low satisfied[]','Yes',NULL,'jhghjg',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Radiot\0\nNews Paper','hfghfghf'),(11,_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0The price is higher','32','No','2019-11-06','Yes','jghjg',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSoft Toucht\0Iconic Iris','Male','hjh','kjhjkhk','Yes','No','Saif Tanvir',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0\nSmall Size','jhgjg','Yes','Businessman',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Not satisfied[]','No',NULL,'hjjhghjg',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0TVt\0\nNews Paper','hfghf');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'Cumilla',24,1744233380,'payerbabu@gmail.com','Payer','Male','Ahmmed','123','payerahmmed'),(2,'Dhaka',30,124758369,'saif@gmail.com','Saif','Male','Tanvir','123','saiftanvir'),(3,'Faridpur',26,175698245,'alim@gmail.com','Abdul','Male','Alim','123','abdulalim'),(4,'Manikgong',28,1632458,'robiulislam@gmail.com','Robiul','Male','Islam','123','robiulislam'),(5,'Borisal',27,1236584,'habibur@gmail.com','Habibur','Male','Rahman','123','habibur'),(6,'Dhaka',29,1258,'omorfaruk@gmail.com','Omor','Male','Faruk','123','omorfaruk'),(7,'Kustiya',26,12547,'monirkhan@gmail.com','Monir','Male','Khan','123','monirkhan'),(8,'Faridpur',25,1245698,'robayuate@gmail.com','Robayaute ','Male','Islam','123','robayuate'),(9,'Rajbari',25,1254,'mmjitu@gmail.com','Nurrzaman','Male','Jitu','01245','nurrzaman'),(10,'Dhaka',25,125487,'salauddin@gmail.com','Salauddin','Male','sakar','123','salauddin'),(11,'Damrai',28,125478,'asraful@gmail.com','Asraful','Male','Islam','01254','asrafulislam'),(12,'Dhaka',25,124587,'asifakbar@gmail.com','Asif','Male','Akbar','123','asifakbar'),(13,'Cumilla',29,213658,'rabbi@gmail.com','Rabbi','Male','Islam','01254','rabby'),(14,'Chadpur',28,2354879,'enamulhaque@gmail.com','Enamul','Male','Haque','3265','enamulhaque'),(15,'Borisal',35,214789,'w3farid@gmail.com','Farid','Male','Ahmed','258','farid');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (3,'2019-10-07 06:00:00','farid@gmail.com',_binary '\0','Farid','Ahmed','$2a$10$JYdFgypMh6aeSrLs/e5nXOY8Yro/Vl8OovztVR9HAZ4s28HJMYO5m','ADMIN',NULL,'payer');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 11:19:54
