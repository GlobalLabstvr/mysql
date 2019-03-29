-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: training_app_api
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses` (
  `courseid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`courseid`),
  UNIQUE KEY `UK_5o6x4fpafbywj4v2g0owhh11r` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Java Environment details','Java Environment Setup'),(8,'Object Oriented Programming','OOPS');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documents` (
  `documentid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `topicid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`documentid`),
  UNIQUE KEY `UK_f2ja8c7khxmlkq1y8c1gfchbf` (`name`),
  KEY `FKphpbwkvfg8ry0ahthdpc3eccb` (`topicid`),
  CONSTRAINT `FKphpbwkvfg8ry0ahthdpc3eccb` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (7,'Setting up the Java and Class Path','Java Environment Setup','https://stackoverflow.com/questions/1672281/environment-variables-for-java-installation',3),(14,'Merits and Demerits','OOps Features','https://www.quora.com/What-are-the-features-of-OOP',10);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (15),(15),(15),(15),(15),(15),(15);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playlists` (
  `playlistid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `topicid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`playlistid`),
  UNIQUE KEY `UK_tegb7jba8f00yyy58jaiw9d64` (`name`),
  KEY `FKrs0g4g15sopynyp70rekd28r9` (`topicid`),
  CONSTRAINT `FKrs0g4g15sopynyp70rekd28r9` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (4,'Setting up the Java and Class Path','Setting up the Java Path','https://www.youtube.com/embed/bxIZ1GVWYkQ',3),(11,'Procedural and Object oriented Programming','POPs vs OOPs','https://www.youtube.com/embed/70sld4fYcqU',10);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `programs` (
  `siteid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `topicid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`siteid`),
  UNIQUE KEY `UK_4uh20rvftatfys82a9nkvpl0o` (`name`),
  KEY `FKklp5prw2faeu06ean98is95dx` (`topicid`),
  CONSTRAINT `FKklp5prw2faeu06ean98is95dx` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (5,'Setting up the Java and Class Path','Java Environment Setup','https://www.geeksforgeeks.org/set-temporary-permanent-paths-java/',3),(12,'Real world entity and collection of objects','Object and Class','https://www.tutorialspoint.com/java/java_object_classes.htm',10);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sites` (
  `siteid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `topicid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`siteid`),
  UNIQUE KEY `UK_3yyd9iafwesfu340rddu8gqjs` (`name`),
  KEY `FKq3thmi6mhuupc1fw1y25b9hud` (`topicid`),
  CONSTRAINT `FKq3thmi6mhuupc1fw1y25b9hud` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (6,'Setting up the Java and Class Path','Java Environment Setup','https://www.sitesbay.com/java/java-classpath-setting',3),(13,'How it works?','OOPs Functionalities','https://www.w3schools.com/java/java_classes.asp',10);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `slides` (
  `slideid` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `master` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `student` varchar(250) NOT NULL,
  `documentid` bigint(20) DEFAULT NULL,
  `playlistid` bigint(20) DEFAULT NULL,
  `programid` bigint(20) DEFAULT NULL,
  `siteid` bigint(20) DEFAULT NULL,
  `topicid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`slideid`),
  UNIQUE KEY `UK_ctutw3hm7hfc077lb71dsv3eh` (`name`),
  KEY `FKl9wmbd6sfpxjrg3cays6np2h5` (`documentid`),
  KEY `FKirfxf65ua3x51jpjuycs6yt19` (`playlistid`),
  KEY `FK14q0ae0s8jl9fb0kvkb0573od` (`programid`),
  KEY `FKfigui0885724kil0j4n4f17i2` (`siteid`),
  KEY `FKrjsxxdhqq03rf2sovol0nh9vx` (`topicid`),
  CONSTRAINT `FK14q0ae0s8jl9fb0kvkb0573od` FOREIGN KEY (`programid`) REFERENCES `programs` (`siteid`),
  CONSTRAINT `FKfigui0885724kil0j4n4f17i2` FOREIGN KEY (`siteid`) REFERENCES `sites` (`siteid`),
  CONSTRAINT `FKirfxf65ua3x51jpjuycs6yt19` FOREIGN KEY (`playlistid`) REFERENCES `playlists` (`playlistid`),
  CONSTRAINT `FKl9wmbd6sfpxjrg3cays6np2h5` FOREIGN KEY (`documentid`) REFERENCES `documents` (`documentid`),
  CONSTRAINT `FKrjsxxdhqq03rf2sovol0nh9vx` FOREIGN KEY (`topicid`) REFERENCES `topics` (`topicid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Setting up the Java and Class Path','https://github.com/Kathambaritvr/Images-for-admin-app/blob/master/Set%20path.JPG','How to set the java path?','Java Environment Setup','Not have any clear idea',NULL,NULL,NULL,NULL,3),(2,'Object Oriented Programming','https://github.com/Kathambaritvr/Images-for-admin-app/blob/master/oops.png','Differentitate POP\'s and OOP\'s?','OOPS Slides','In Pop\'s, everything considered as procedures\nIn Oop\'s ,everything considered as objects',NULL,NULL,NULL,NULL,10),(3,'Object Oriented Programming','https://github.com/Kathambaritvr/Images-for-admin-app/blob/master/oops%201.jpg','Define class and object?','OOPs Slide 2','Object is known as real world entity.\nCollection of objects is collectively known as class.',NULL,NULL,NULL,NULL,10),(4,'Object Oriented Programming',NULL,'How to define an object for a class?\nCan you able to create multiple objects for a single class?\nOk...\nWhat\'s the purpose of new keyword?','OOps Slide 3','class objname = new classname();\nDon\'t know?\nsorry sir, please explain ',NULL,NULL,NULL,NULL,10),(5,'Object Oriented Programming','https://github.com/Kathambaritvr/Images-for-admin-app/commit/ff9452349c7cb1603ff51b5ea2151a9a9e7d6ff5','Do you know about the features of oops in depth?','OOPS Slide 4','Not in depth but only the definitions',NULL,NULL,NULL,NULL,10);
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subjects` (
  `subjectid` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` longtext NOT NULL,
  `courseid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`subjectid`),
  KEY `FK2qwuaxtma415j6mdmxc7qlnfq` (`courseid`),
  CONSTRAINT `FK2qwuaxtma415j6mdmxc7qlnfq` FOREIGN KEY (`courseid`) REFERENCES `courses` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (2,'Path details','Setting up the Java Path and Class Path',1),(9,'Object Oriented Programming','Introduction to oops',8);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topics` (
  `topicid` bigint(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subjectid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `UK_7tuhnscjpohbffmp7btit1uff` (`name`),
  KEY `FK42jd8eveqpksfdairljv6ul33` (`subjectid`),
  CONSTRAINT `FK42jd8eveqpksfdairljv6ul33` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (3,'Setting up the Java and Class Path','Java Environment Setup',2),(10,'Object Oriented Programming','OOPS Introduction',9);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-29 10:38:13
