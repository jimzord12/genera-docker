-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: eu-cdbr-west-03.cleardb.net    Database: test
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `achiev_templates`
--

DROP TABLE IF EXISTS `achiev_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achiev_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `reward` int(10) unsigned NOT NULL,
  `image` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idachievements_templates_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achiev_templates`
--

LOCK TABLES `achiev_templates` WRITE;
/*!40000 ALTER TABLE `achiev_templates` DISABLE KEYS */;
INSERT INTO `achiev_templates` VALUES (3,'play for 15 mins','daily',9999,NULL),(6,'Superaa','oneTimer',5,NULL),(7,'Eat x100 Burgers','Insane',1000000,'Can Not Fit!'),(8,'DESPOINA EYGENI','fff',12334,'ffff'),(10,'Γιαννης','555',555,NULL);
/*!40000 ALTER TABLE `achiev_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `achievement_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (3,5,12);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alliances`
--

DROP TABLE IF EXISTS `alliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alliances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `embassy_points` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alliances`
--

LOCK TABLES `alliances` WRITE;
/*!40000 ALTER TABLE `alliances` DISABLE KEYS */;
INSERT INTO `alliances` VALUES (1,'Δημητρης',333,556);
/*!40000 ALTER TABLE `alliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_stats`
--

DROP TABLE IF EXISTS `card_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardId` int(11) NOT NULL,
  `gold` int(11) DEFAULT NULL,
  `concrete` int(11) DEFAULT NULL,
  `metals` int(11) DEFAULT NULL,
  `crystals` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `expenses` int(11) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_stats`
--

LOCK TABLES `card_stats` WRITE;
/*!40000 ALTER TABLE `card_stats` DISABLE KEYS */;
INSERT INTO `card_stats` VALUES (1,13,0,0,0,0,NULL,NULL,NULL,NULL,NULL),(2,1,123,123,123,123,123,123,123,123,NULL),(22,22,4,4,4,4,NULL,NULL,NULL,NULL,NULL),(41,61,0,0,0,0,0,0,0,0,NULL),(51,51,1,0,0,0,0,0,0,0,NULL),(91,271,0,0,0,0,0,0,0,0,NULL),(101,281,0,0,0,0,0,0,0,0,NULL),(111,301,0,0,0,0,0,0,0,0,NULL),(121,321,0,0,0,0,0,0,0,0,NULL),(131,361,0,0,0,0,0,0,0,0,NULL),(141,141,0,1,0,0,0,0,0,0,NULL),(151,431,0,0,0,0,0,0,0,0,NULL),(231,231,1,1,0,0,0,0,0,0,NULL),(251,251,1,1,1,1,0,0,0,0,NULL);
/*!40000 ALTER TABLE `card_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_templates`
--

DROP TABLE IF EXISTS `card_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'This table is used to link Card Instaces with their data.\nFor example, in the frontend:\n\n1. We will fetch all Card Instaces a Player has.\n2. For each card, we fetch from this table it''s data.\n3. We use this data, to implant methods and properties to the Card Instace',
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `image` varchar(128) NOT NULL,
  `op_target_stat` varchar(45) DEFAULT NULL,
  `op_multiply_by` decimal(5,2) DEFAULT NULL,
  `op_research_points` int(10) unsigned DEFAULT NULL,
  `op_gold` int(10) unsigned DEFAULT NULL,
  `op_pop` int(10) unsigned DEFAULT NULL,
  `op_concrete` int(10) unsigned DEFAULT NULL,
  `op_metals` int(10) unsigned DEFAULT NULL,
  `op_crystals` int(10) unsigned DEFAULT NULL,
  `op_energy` int(10) unsigned DEFAULT NULL,
  `req_gold` int(10) unsigned DEFAULT NULL,
  `req_pop` int(10) unsigned DEFAULT NULL,
  `req_concrete` int(10) unsigned DEFAULT NULL,
  `req_metals` int(10) unsigned DEFAULT NULL,
  `req_crystals` int(10) unsigned DEFAULT NULL,
  `req_energy` int(10) unsigned DEFAULT NULL,
  `req_research_points` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_templates`
--

LOCK TABLES `card_templates` WRITE;
/*!40000 ALTER TABLE `card_templates` DISABLE KEYS */;
INSERT INTO `card_templates` VALUES (2,'Wind Turbine','reg','%2F&psig=AOvVaw066uyl3kzaNGhNNv0YLjjB&ust=1671894921648000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIi1jImEkPwCFQAAAAAdAAAAABAE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,360,4,120,780,NULL,70,40);
/*!40000 ALTER TABLE `card_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templateId` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `ownerId` int(10) unsigned NOT NULL,
  `in_mp` tinyint(4) DEFAULT NULL,
  `priceTag` int(10) unsigned DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `locked` tinyint(4) DEFAULT NULL,
  `town_id` int(10) unsigned DEFAULT NULL,
  `rarity` int(10) unsigned DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  `creationTime` date DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idcards_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (19,1,4,151,0,25000,1,0,NULL,3,NULL,'2023-04-03','test 2',NULL),(27,1,1,10,1,25000,0,0,NULL,1,NULL,'2023-04-05','toast 2',NULL),(28,1,3,22,1,25000,0,0,NULL,3,NULL,'2023-04-05','toast 2',NULL),(30,1,2,22,1,100000,0,0,NULL,3,NULL,'2023-04-05','toast 2',NULL),(31,1,2,22,1,100000,0,0,NULL,5,NULL,'2023-04-06','mobile1',NULL),(91,1,1,61,1,100000,0,0,NULL,1,NULL,'2023-04-09','test 2',NULL),(121,1,1,16,1,100000,0,0,NULL,3,NULL,'2023-04-11','test 2',NULL),(201,7,0,22,1,100000,0,0,NULL,3,NULL,'2023-04-12','mobile1','2023-04-12 12:50:12'),(211,7,0,22,1,100000,0,0,NULL,3,1,'2023-04-12','test 2','2023-04-12 13:30:15'),(221,1,1,22,1,100000,0,0,NULL,1,NULL,'2023-04-12','master01',NULL),(231,13,1,61,1,100000,0,0,NULL,4,NULL,'2023-04-12','master01',NULL),(241,7,0,61,1,100000,0,0,NULL,1,1,'2023-04-12','master01','2023-04-12 14:08:23'),(251,13,1,16,1,100000,0,0,NULL,3,NULL,'2023-04-12','test 2',NULL),(261,1,1,51,1,100000,0,0,NULL,1,NULL,'2023-04-18','toast 2',NULL),(271,13,2,10,1,100000,0,0,NULL,1,NULL,'2023-04-18','toast 2',NULL),(281,13,1,51,1,100000,0,0,NULL,1,NULL,'2023-04-18','toast 2',NULL),(291,1,3,51,1,100000,0,0,NULL,4,NULL,'2023-04-18','toast 2',NULL),(301,13,1,10,1,2000000,0,0,NULL,1,NULL,'2023-04-22','test 2',NULL),(311,7,0,22,1,3000000,0,0,NULL,4,1,'2023-04-22','test 2','2023-04-23 00:08:53'),(421,13,1,10,0,15000,0,0,NULL,1,NULL,'2023-05-04','genera test 3',NULL),(431,13,1,151,NULL,NULL,1,0,NULL,3,NULL,'2023-05-04','genera test 3',NULL),(441,1,1,151,NULL,NULL,1,0,NULL,3,NULL,'2023-05-04','genera test 3',NULL),(451,7,0,151,NULL,NULL,0,0,NULL,1,1,'2023-05-04','genera test 3','2023-05-04 18:44:15');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `islands`
--

DROP TABLE IF EXISTS `islands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `islands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `position_x` float NOT NULL,
  `position_y` float NOT NULL,
  `info` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `islands`
--

LOCK TABLES `islands` WRITE;
/*!40000 ALTER TABLE `islands` DISABLE KEYS */;
INSERT INTO `islands` VALUES (1,'Suka',111.235,2223.24,'I AM SO SEXY'),(2,'asdasd',123.123,2344.23,'asdjlhsdfghoaisjdioa');
/*!40000 ALTER TABLE `islands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaderboard_al`
--

DROP TABLE IF EXISTS `leaderboard_al`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard_al` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alliance_id` int(10) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `total_grp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idleaderboard_al_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard_al`
--

LOCK TABLES `leaderboard_al` WRITE;
/*!40000 ALTER TABLE `leaderboard_al` DISABLE KEYS */;
INSERT INTO `leaderboard_al` VALUES (2,14,2,5000),(3,678,678,678);
/*!40000 ALTER TABLE `leaderboard_al` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaderboard_pl`
--

DROP TABLE IF EXISTS `leaderboard_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard_pl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(10) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `grp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idlead_board_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard_pl`
--

LOCK TABLES `leaderboard_pl` WRITE;
/*!40000 ALTER TABLE `leaderboard_pl` DISABLE KEYS */;
INSERT INTO `leaderboard_pl` VALUES (1,1,0,0),(2,155,560,650);
/*!40000 ALTER TABLE `leaderboard_pl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace`
--

DROP TABLE IF EXISTS `marketplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardId` int(10) unsigned NOT NULL,
  `buyerId` int(10) unsigned NOT NULL,
  `sellerId` int(10) unsigned NOT NULL,
  `priceTag` int(10) unsigned NOT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `templateId` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idmarketplace_UNIQUE` (`id`),
  UNIQUE KEY `cardId_UNIQUE` (`cardId`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace`
--

LOCK TABLES `marketplace` WRITE;
/*!40000 ALTER TABLE `marketplace` DISABLE KEYS */;
INSERT INTO `marketplace` VALUES (241,19,151,22,25000,0,3,1,4);
/*!40000 ALTER TABLE `marketplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `wallet` varchar(42) NOT NULL,
  `password` varchar(85) NOT NULL DEFAULT '12345678!@#',
  `island_id` int(10) unsigned DEFAULT NULL,
  `townhall_lvl` int(10) unsigned NOT NULL DEFAULT '1',
  `workers_concrete` int(10) unsigned DEFAULT NULL,
  `workers_metals` int(10) unsigned DEFAULT NULL,
  `workers_crystals` int(10) unsigned DEFAULT NULL,
  `taxes` decimal(5,2) DEFAULT NULL,
  `voteCasted` tinyint(4) DEFAULT NULL,
  `concrete` int(10) unsigned DEFAULT NULL,
  `metals` int(10) unsigned DEFAULT NULL,
  `crystals` int(10) unsigned DEFAULT NULL,
  `population` int(10) unsigned DEFAULT NULL,
  `gold` int(10) unsigned DEFAULT NULL,
  `alliance` int(10) unsigned DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `grp` int(10) unsigned DEFAULT NULL,
  `refreshToken` varchar(256) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idplayers_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `wallet_UNIQUE` (`wallet`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (2,'Giannis ProMaster','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C999','',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'prof kogias','0xADe1348F008baCc942E20ecF113644A6B1F2e802','',2,0,NULL,NULL,NULL,NULL,NULL,0,0,0,60,166600,NULL,98,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6InByb2Yga29naWFzIiwid2FsbGV0IjoiMHhBRGUxMzQ4RjAwOGJhQ2M5NDIifSwiaWF0IjoxNjgzMjE1NTgzLCJleHAiOjE2ODMzMDE5ODN9.xdiZI4t-Kt6uBErZP3KTTxrVDsF-uNKJpp3S24fkN90','2023-05-04 18:53:42'),(11,'aaaa','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C444','$2b$10$VhEDikSNy/dHfmtX57Yfd.5fz5EeSqQyzwTLEQibHJw7Rg..4zbkG',5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'jim2','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C866','$2b$10$t52xTQBvn1Hqt61rtpd0AejSptaLjiYxhGZ6gShSaMQbWVOxmbFve',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'genera1','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C875','$2b$10$EfsglIqtsOn6rR2gh51fp.KTAmEN7r5VagKZ1k0fGUSf4aDfQdpw6',4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6ImdlbmVyYTEiLCJ3YWxsZXQiOiIweDliYTNEYUMxN0M0Mjg2RmQzMjU3MkE2ZDc1MjAzNTk4QzFjOEM4NzUifSwiaWF0IjoxNjgwMzU1NTA4LCJleHAiOjE2ODA0NDE5MDh9.R-Ew1QLWvyX3eQQY_p2L2bFifi6KvLyAfI9c11TwGFc',NULL),(17,'jim1','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C333','$2b$10$ypjw6Dsefr5mprSYOk0jxewv/fV91q4zXW8FPWaerVNnxEAt39AO2',3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6ImppbTEiLCJ3YWxsZXQiOiIweDliYTNEYUMxN0M0Mjg2RmQzMjU3MkE2ZDc1MjAzNTk4QzFjOEMzMzMifSwiaWF0IjoxNjcyNDg5Njg0LCJleHAiOjE2NzI0ODk2OTl9.HJdtPygX-XYpuYHOnzP58sAxZ0LM05MQSxJrHBvJ3HU',NULL),(18,'genera2','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C777','$2b$10$Wyuf01OjA0vAxCBJT0Yvu.iyEn8kGqqBXDHAfoSqW07yWoFQ6ExEi',3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6ImdlbmVyYTIiLCJ3YWxsZXQiOiIweDliYTNEYUMxN0M0Mjg2RmQzMjU3MkE2ZDc1MjAzNTk4QzFjOEM3NzcifSwiaWF0IjoxNjgwMTk3MjQzLCJleHAiOjE2ODAyODM2NDN9.vVMsPnol_VvypJPBPB0_L0nLDru2FRJ4ke6d5Spmgbw',NULL),(20,'jim bo','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C555','1',1,1,1,1,1,1.00,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL),(22,'test 2','0xCe8E2AAd6a2aE2C69B31e5CFa7512878c4cA4197','444444444',1,3,105,52,10,0.00,0,759924,548060,502664,176,930568,11,287,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6InRlc3QgMiIsIndhbGxldCI6IjB4Q2U4RTJBQWQ2YTJhRTJDNjlCIn0sImlhdCI6MTY4MzIxMzEyNywiZXhwIjoxNjgzMjk5NTI3fQ.xn2VShTe-K5TTgSPj_J4cgGkhK7X70ugS-eFnCvaYVc','2023-05-04 18:41:48'),(41,'toast 1','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C87E','12345678!@#',5,1,0,30,0,NULL,NULL,1001,502,200,30,1513,NULL,49,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6InRvYXN0IDEiLCJ3YWxsZXQiOiIweDliYTNEYUMxN0M0Mjg2RmQzMiJ9LCJpYXQiOjE2ODA2ODc0OTUsImV4cCI6MTY4MDc3Mzg5NX0.uBYkOXWcCWoZ5fc1pKoC5h0K5w6GmUaT6rcowVlZmJQ','2023-04-05 06:38:25'),(51,'toast 2','0x9ba3DaC17C4286Fd32572A6d75203598C1c8C84E','12345678!@#',2,3,15,16,19,NULL,NULL,28350,25447,25411,136,241171,NULL,221,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6InRvYXN0IDIiLCJ3YWxsZXQiOiIweDliYTNEYUMxN0M0Mjg2RmQzMiJ9LCJpYXQiOjE2ODI2NzI4OTgsImV4cCI6MTY4Mjc1OTI5OH0.VVpOV8zwsyeoTga24v95TsZ4uFoiFaVgDP1dVCYeA_c','2023-04-28 12:59:45'),(61,'mobile1','0x306fff1051b600C5a49F771E775CE0b14d5Ec657','12345678!@#',4,1,0,0,10,NULL,NULL,48600,49000,48591,60,632784,NULL,98,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6Im1vYmlsZTEiLCJ3YWxsZXQiOiIweDMwNmZmZjEwNTFiNjAwQzVhNCJ9LCJpYXQiOjE2ODI3NjY1MjksImV4cCI6MTY4Mjg1MjkyOX0.VWPiUoaqr4FstuXOEwIl8uiYMljT44NjOkgGYukDuEw','2023-04-29 18:04:35'),(111,'master01','0x9ba4DaC17C4286Fd32572A6d75203598C1c8C87E','12345678!@#',4,2,6,5,4,NULL,NULL,49193,49020,49246,69,510494,NULL,161,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6Im1hc3RlcjAxIiwid2FsbGV0IjoiMHg5YmE0RGFDMTdDNDI4NkZkMzIifSwiaWF0IjoxNjgxMzkxNjQyLCJleHAiOjE2ODE0NzgwNDJ9.t7aa9G5d_1yMLL8mCIURBZ7DniyiN3mq-shMicqgoAU','2023-04-13 16:14:45'),(131,'Super mommy','0x15B6E2726b9521914F897490AE23A1Dd5b86100F','12345678!@#',NULL,3,73,25,10,NULL,NULL,694287,517832,493117,136,807798,NULL,2417,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6IlN1cGVyIG1vbW15Iiwid2FsbGV0IjoiMHgxNUI2RTI3MjZiOTUyMTkxNEYifSwiaWF0IjoxNjgyODU4OTA1LCJleHAiOjE2ODI5NDUzMDV9.fcpZdTmoxEtLDEE8Q0H1if4Btf3WWYA0SXneHU9K_Iw','2023-04-30 15:57:29'),(151,'genera test 3','0x7179D68e8410bE511B4C555F71b1dbED9f9832e0','12345678!@#',2,1,6,11,5,NULL,NULL,49141,29233,24049,60,104673,NULL,269,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySW5mbyI6eyJ1c2VybmFtZSI6ImdlbmVyYSB0ZXN0IDMiLCJ3YWxsZXQiOiIweDcxNzlENjhlODQxMGJFNTExQiJ9LCJpYXQiOjE2ODMzNzEzMzAsImV4cCI6MTY4MzQ1NzczMH0.PHrZGGaZf5YVWwRwbZilnqIbW5N8MZ7rbPcc5TbKwR0','2023-05-06 14:09:01');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `votes_counter_yes` smallint(5) unsigned DEFAULT NULL,
  `votes_counter_no` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idsubjects_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,12,13,1,0,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `testingcol1` varchar(45) NOT NULL,
  `testingcol2` int(10) unsigned NOT NULL,
  `testingcol3` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idtesting_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing`
--

LOCK TABLES `testing` WRITE;
/*!40000 ALTER TABLE `testing` DISABLE KEYS */;
INSERT INTO `testing` VALUES (1,'Hello Mate!',12345,NULL),(2,'Hello Mate!',12345,1);
/*!40000 ALTER TABLE `testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towns`
--

DROP TABLE IF EXISTS `towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `towns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `location_x` decimal(12,6) unsigned NOT NULL,
  `location_y` decimal(12,6) unsigned NOT NULL,
  `ez_avail_slots` int(10) unsigned DEFAULT NULL,
  `avail_slots` smallint(5) unsigned DEFAULT NULL,
  `concrete_hour` decimal(5,2) unsigned DEFAULT NULL,
  `metals_hour` decimal(5,2) unsigned DEFAULT NULL,
  `crystals_hour` decimal(5,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idtowns_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (2,12,323.541000,5.678900,12,5,15.70,20.00,3.80);
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06 14:39:45
