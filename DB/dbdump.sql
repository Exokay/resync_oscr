-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: exo.ovh    Database: CVT_Guild
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `away`
--

DROP TABLE IF EXISTS `away`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `away` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` varchar(200) DEFAULT NULL,
  `away_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `away`
--

LOCK TABLES `away` WRITE;
/*!40000 ALTER TABLE `away` DISABLE KEYS */;
INSERT INTO `away` VALUES (1,'115802058485006340','2020-09-09 19:30:00.000'),(2,'752594623834357870','2020-10-22 19:30:00.000'),(3,'374541544490795029','2020-10-22 19:30:00.000'),(5,'115802058485006340','2021-01-01 10:00:00.000'),(6,'445558709322645507','2021-01-01 10:00:00.000'),(7,'258981212788359168','2021-01-28 19:30:00.000');
/*!40000 ALTER TABLE `away` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_gold_history`
--

DROP TABLE IF EXISTS `bank_gold_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_gold_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_name` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_gold_history`
--

LOCK TABLES `bank_gold_history` WRITE;
/*!40000 ALTER TABLE `bank_gold_history` DISABLE KEYS */;
INSERT INTO `bank_gold_history` VALUES (1,'Shirokuya',0.5003,1),(2,'Shirokuya',0.66,1),(3,'Shirokuya',0.78,1),(4,'Shirokuya',0.0008,1);
/*!40000 ALTER TABLE `bank_gold_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_item_history`
--

DROP TABLE IF EXISTS `bank_item_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_item_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_name` varchar(100) DEFAULT NULL,
  `item` varchar(200) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `calculated` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_item_history`
--

LOCK TABLES `bank_item_history` WRITE;
/*!40000 ALTER TABLE `bank_item_history` DISABLE KEYS */;
INSERT INTO `bank_item_history` VALUES (1,'Exoqt','Vantusrune: Ny\'alotha, die Erwachte Stadt',1,0,418.8),(2,'Shirokuya','Zin\'anthid',200,1,600),(3,'Shirokuya','Star Moss',200,1,514),(4,'Shirokuya','Star Moss',200,1,514),(5,'Exoqt','Enchant Weapon - Deadly Navigation',1,1,281.57),(6,'Exoqt','Greater Flask of the Vast Horizon',3,1,1030.53),(7,'Exoqt','Greater Flask of the Vast Horizon',3,1,1030.53),(8,'Exoqt','Bil\'Tong',20,1,185.79),(9,'Exoqt','Greater Flask of the Vast Horizon',3,1,1030.53),(10,'Andeebrew','Enchant Weapon - Deadly Navigation',1,0,281.57),(11,'Norime','Veiled Crystal',18,1,1247.75),(12,'Myrarri','Enchant Weapon - Versatile Navigation',1,0,299.13),(13,'Exoqt','Greater Flask of the Vast Horizon',3,1,1030.53),(14,'Exoqt','Enchant Weapon - Deadly Navigation',1,1,281.57),(15,'Exoqt','Lightfoot Potion',3,0,57.12),(16,'Exoqt','Enchant Weapon - Deadly Navigation',1,1,0),(17,'Exoqt','Bil\'Tong',20,1,0),(18,'Exoqt','Greater Flask of the Vast Horizon',3,1,0),(19,'Exoqt','Bil\'Tong',20,1,0),(20,'Colbat','Vantus Rune: Ny\'alotha, the Waking City',15,1,0);
/*!40000 ALTER TABLE `bank_item_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_log`
--

DROP TABLE IF EXISTS `bank_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` varchar(300) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_log`
--

LOCK TABLES `bank_log` WRITE;
/*!40000 ALTER TABLE `bank_log` DISABLE KEYS */;
INSERT INTO `bank_log` VALUES (1,'Colbat deposited 2500 Gold | 7% days ago |',0),(2,'Colbat deposited 5000 Gold | /7 days ago )',0),(3,'Colbat deposited 5000 Gold | /7 days ago )',0),(4,'Exogt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(5,'Exogt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(6,'Exogt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(7,'Exogt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(8,'Ellibam entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] (vor 4 Tagen )',0),(9,'Arsinal entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(10,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(11,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(12,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(13,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(14,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(15,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(16,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(17,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(18,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(19,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(20,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(21,'Roesmi entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(22,'Ellibam entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] (vor 4 Tagen )',0),(23,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(24,'Colbat withdrew [Osmenite Ore] x 200 ( 28 days ago )',0),(25,'Colbat withdrew [Osmenite Ore] x 200 ( 28 days ago )',0),(26,'Norime deposited [Umbra Shard] x 3 ( 19 days ago )',0),(27,'Joshventos withdrew [Enchant Weapon - Quick Navigation] ( 21 days ago )',0),(28,'Colbat withdrew [Osmenite Ore] x 200 | 28 days ago |',0),(29,'Corpseycord deposited 50000 Gold ( 5 days ago)',0),(30,'Corpseycord deposited 50000 Gold ( 5 days ago)',0),(31,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago )',0),(32,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago )',0),(33,'Corpseycord deposited 50000 Gold ( 5 days ago)',0),(34,'Corpseycord deposited 50000 Gold ( 5 days ago)',0),(35,'Agitur withdrew 2900000 Gold ( 28 days ago )',0),(36,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago )',0),(37,'Colbat deposited 20 Kupfer ( 71 days ago |!',0),(38,'Colbat deposited 20 Kupfer | 71 days ago |!',0),(39,'Colbat deposited 1500 Gold | 21 days ago |',0),(40,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(41,'Shirokuya deposited 66 Silver (< an hour ago )',0),(42,'Shirokuya deposited 8 Copper (< an hour ago )',0),(43,'Shirokuya deposited 50 Silver 3 Copper (< an hour ago )',0),(44,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(45,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(46,'Myrarri deposited 15000 Gold | 21 days ago |',0),(47,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(48,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(49,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(50,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(51,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(52,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago |',0),(53,'Agitur withdrew 1202282 Gold 32 Silver 36 Copper | 25 days ago )',0),(54,'Corpseycord zahlte/lagerte 50000 Gold ein ( vor 5 Tagen )',0),(55,'Myrarri zahlte/lagerte 15000 Gold ein ( vor 21 Tagen )',0),(56,'Colbat zahlte/lagerte 2500 Gold ein ( vor 25 Tagen )',0),(57,'Norime entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(58,'Tysvar entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(59,'Roesmi entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(60,'Kikataru entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(61,'Roesmi entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(62,'Fidorha entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(63,'Norime entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(64,'Arsinal entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(65,'Exoqt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(66,'Exoqt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(67,'Arsinal entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(68,'Roesmi entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(69,'Colbat entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(70,'Zavis entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(71,'Colbat zahlte/lagerte [Vantusrune: Ny\'alotha, die Erwachte Stadt] ein x 10 ( vor 4 Tagen )',0),(72,'Colbat entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(73,'Ellibam entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(74,'Kptnpeng entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(75,'Shirokuya entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(76,'Fidorha entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(77,'Andeebrew entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(78,'Wendylicious entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(79,'Myrarri entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(80,'Kikataru entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(81,'Norime entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(82,'Tysvar entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(83,'Agitur entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(84,'Joshventos entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(85,'Areliani entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(86,'Lethea entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(87,'Exoqt entnahm [Vantusrune: Ny\'alotha, die Erwachte Stadt] ( vor 4 Tagen )',0),(88,'Shirokuya deposited 50 Silver 3 Copper | 5 hours ago |',0),(89,'Shirokuya deposited 66 Silver | 5 hours ago |',0),(90,'Shirokuya deposited 78 Silver | 5 hours ago |',0),(91,'Shirokuya deposited [Zin\'anthid] x 200 (< an hour ago )',0),(92,'Shirokuya deposited [Star Moss] x 200 (< an hour ago )',0),(93,'Shirokuya deposited [Star Moss] x 200 (< an hour ago )',0),(94,'Shirokuya deposited 8 Copper (5 hours ago |',0),(95,'Exoqt deposited [Enchant Weapon - Deadly Navigation] x2 (< an hour ago )',0),(96,'Exoqt deposited [Greater Flask of the Vast Horizon] x 3',0),(97,'Exoqt deposited [Greater Flask of the Vast Horizon] x 3',0),(98,'Exoqt deposited [Bil\'Tong] x 20 | 12 days ago |',0),(99,'Exoqt deposited [Greater Flask of the Vast Horizon] x 3',0),(100,'Andeebrew withdrew [Enchant Weapon - Deadly Navigation] ( 12 days ago )',0),(101,'Norime deposited [Veiled Crystal] x 18 ( 20 days ago )',0),(102,'Myrarri withdrew [Enchant Weapon - Versatile Navigation] ( 19 days ago )',0),(103,'Exoqt deposited [Greater Flask of the Vast Horizon] x 3',0),(104,'Exoqt deposited [Enchant Weapon - Deadly Navigation] x2 ( < an hour ago )',0),(105,'Exoqt withdrew [Lightfoot Potion] x 3 ( 19 days ago )',0),(106,'Exoqt deposited [Enchant Weapon - Deadly Navigation] x2 ( < an hour ago )',0),(107,'Exoqt deposited [Bil\'Tong] x 20 | 12 days ago |',0),(108,'Exoqt deposited [Greater Flask of the Vast Horizon] x 3',0),(109,'Exoqt deposited [Bil\'Tong] x 20 | 12 days ago |',0),(110,'Colbat deposited [Vantus Rune: Ny\'alotha, the Waking City] x 15 ( 2 hours ago)',0);
/*!40000 ALTER TABLE `bank_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotes`
--

DROP TABLE IF EXISTS `emotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `discord_id` varchar(200) DEFAULT NULL,
  `locked` int(11) DEFAULT '0',
  `link` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotes`
--

LOCK TABLES `emotes` WRITE;
/*!40000 ALTER TABLE `emotes` DISABLE KEYS */;
INSERT INTO `emotes` VALUES (3,'2020-10-04 17:24:00.000','12','dc590ab3240e2bfb260414d2679ff5d9','762334265605095424',1,'https://cdn.discordapp.com/attachments/748995833445482586/762334264372756530/New_Project_2.png',NULL),(4,'2020-10-04 17:40:00.000','12','c8effcd810cb3a5be255a38fbd1e5db2','762336370130681867',1,'https://cdn.discordapp.com/attachments/748995833445482586/762336368637640714/bastijuice.png',NULL),(5,'2020-10-08 18:30:00.000','4','62f4946e1d6b558979070e2f9d660436','762350880167034900',1,'https://cdn.discordapp.com/attachments/748995833445482586/762350879138381834/526260885975728160.png',NULL),(6,'2020-10-08 18:35:00.000','4','689f9d4217c1e46ede7dd523fc11114c','762352474307690496',1,'https://cdn.discordapp.com/attachments/748995833445482586/762352473318621244/3913_hypers.png',NULL),(7,'2020-10-08 18:42:14.571','4','52e8906a75edd696a2509705d4446240','762353904091922455',1,'https://cdn.discordapp.com/attachments/748995833445482586/762353903466971206/7651_PeepoEek.png',NULL),(8,'2020-10-08 18:53:42.549','4','0c26f09c3cfb771ec8980c812afa5fa0','762356789991309322',1,'https://cdn.discordapp.com/attachments/748995833445482586/762356788972355614/3248_peepoknife.png','peepoknife'),(9,'2020-10-08 19:03:10.375','4','0317c7cd22565b731eabf51cd51af4f6','762359171512532993',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359170841444382/1219_KEKW.png','KEKW'),(10,'2020-10-08 19:03:27.876','4','ecf4e596e844f4e8ebbf5ef8c51cdd3e','762359245281951794',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359244255002634/609230160310304798.png','peepouganda'),(11,'2020-10-08 19:03:40.705','4','56aea8b57a29c6492ed00b3c50d77fa5','762359298838757376',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359298042363914/609238566530318360.png','peepofoil'),(12,'2020-10-08 19:03:57.260','4','535d21908d71cc8633a1b58a658dd015','762359368241905665',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359367491780638/3x.png','pogU'),(14,'2020-10-08 19:05:02.884','4','38642e83c1154d1245d08cb09974ab81','762359643338965033',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359642621607946/7882_dogekek.png','dogekek'),(15,'2020-10-08 19:05:17.944','4','2d23dbcb2c573e11197da6e75f0a4b38','762359706320633858',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359705883901992/shiroskurrlove.png','shiroLove'),(16,'2020-10-08 19:05:34.446','4','86c205d4b93924e60da47b2ee88233c1','762359775957745684',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359775127142400/9520_Amongus_pog.png','amongus_pog'),(17,'2020-10-08 19:05:58.364','4','243105fce2089777dd30010526e04c59','762359876147347477',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359875421995095/schwitzen.png','agischwitzen'),(18,'2020-10-08 19:06:21.225','4','430035ebc5c333172f7b35c872e1f202','762359972184719381',1,'https://cdn.discordapp.com/attachments/748995833445482586/762359971299196928/LoLcut.png','lolcut'),(21,'2020-10-08 19:19:33.631','4','5dde25eee2620dd8c1e891dee601e0d6','762363295813861376',1,'https://cdn.discordapp.com/attachments/748995833445482586/762363294547574794/agimongus.png','agimongus'),(22,'2020-10-08 19:20:40.710','4','f8821d86f7144df242bbe2232f83304c','762363577079562301',1,'https://cdn.discordapp.com/attachments/748995833445482586/762363576048287774/0i21ur4fl1x11.png','pikawut'),(23,'2020-10-08 19:20:55.511','4','dea11b2b615624c08b2184646e249340','762363639163650079',1,'https://cdn.discordapp.com/attachments/748995833445482586/762363638375252008/3x.png','pepega'),(24,'2020-10-08 19:21:09.740','4','14a98bb3fb0d062e662bf4ecae187903','762363699221758022',1,'https://cdn.discordapp.com/attachments/748995833445482586/762363698000953375/3x.png','ayaya'),(25,'2020-10-08 21:37:19.304','4','dd56dd3db6adff4288b31546a129e5c4','762397968019750912',1,'https://cdn.discordapp.com/attachments/748995833445482586/762397963552161832/agimongus_2.png','agimongus_2'),(26,'2020-10-08 21:37:55.169','4','7929ed4752af9e461474094cf1429912','762398114937438269',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398114001846272/6064_Dog_u.png','dog_u'),(27,'2020-10-08 21:38:11.413','4','251772af0db98487d6a7d12333627f7f','762398182650675201',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398181937774602/3x.png','sadcat'),(28,'2020-10-08 21:38:24.495','4','a65aee0cf8810756a36d10021e6ea964','762398237931864136',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398237038477332/3x.png','pepehands'),(29,'2020-10-08 21:38:34.847','4','7406ea39de42e52d3601a359eac89473','762398281321152512',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398280487010365/3x.png','wesmart'),(30,'2020-10-08 21:39:15.988','4','73a80837352a37309e3a8e50e3163987','762398454214295602',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398453090615306/3x.png','monkagun'),(31,'2020-10-08 21:39:33.575','4','409c17859367ac900aa3d02824276773','762398527774654475',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398526873141248/3x.png','captainfail'),(32,'2020-10-08 21:39:45.485','4','0935f42ee92ada269fcb2ebd61ad4466','762398577502453761',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398576709337108/3x.png','angery'),(33,'2020-10-08 21:40:03.545','4','7372da9b0ff92681dff99e77dd17e0f0','762398653809426489',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398652501065738/3x.png','dawae'),(35,'2020-10-08 21:41:15.240','4','99a84ff62cbfbb0261ce1d34beb1951b','762398954075324416',1,'https://cdn.discordapp.com/attachments/748995833445482586/762398953257304095/3x.png','monkablyat'),(36,'2020-10-08 21:41:47.906','4','6ee4342e3c9c949f85235fda09f35c70','762399091199967242',1,'https://cdn.discordapp.com/attachments/748995833445482586/762399090125570058/3x.png','spongebruh'),(37,'2020-10-08 21:41:59.291','4','6c1c75287762d7cb49406fd7a10e3385','762399138750791711',1,'https://cdn.discordapp.com/attachments/748995833445482586/762399137882439711/3x.png','stonks'),(38,'2020-10-09 13:18:48.912','4','124a28c3c3beef9598f475b4c0169df2','762634899122552832',1,'https://cdn.discordapp.com/attachments/748995833445482586/762634898275696690/agiWirSchaffenDas.png','agiWirSchaffenDas'),(39,'2020-10-19 14:19:28.396','4','d6172dfb66ae47e4e579724cf8745596','766274042990297138',1,'https://cdn.discordapp.com/attachments/748995833445482586/766274041693601792/blobhmm.png','blobhmm'),(40,'2020-10-19 14:36:35.768','4','3f38b35a35cf47be9fe3a4be45894fb4','766278351966044200',1,'https://cdn.discordapp.com/attachments/748995833445482586/766278351144484884/Anduin.png','anduin'),(41,'2020-10-19 16:14:36.717','4','bb3f0681c7240c58ff4ac83160824573','766303018483449908',1,'https://cdn.discordapp.com/attachments/748995833445482586/766303017582460939/BlobbXtoDoubt.png','blobXtoDoubt'),(42,'2020-10-21 23:15:03.959','4','a5522944d0830a3b8bfe82ff370da4a6','767133604660379739',1,'https://cdn.discordapp.com/attachments/748995833445482586/767133603989159956/yyeeeeboi.png','yeeeboi'),(44,'2020-10-24 21:03:02.956','4','14fee2876c99e475ee5b1b684937918f','768187545804079164',1,'https://cdn.discordapp.com/attachments/748995833445482586/768187544495718400/ginsen.png','grinsen'),(45,'2020-11-01 21:26:16.742','4','61c274c81f04280c087dbd9c7a6ab9aa','771107593790685235',1,'https://cdn.discordapp.com/attachments/748995833445482586/771107592868462622/SquidDab.png','squiddab'),(46,'2020-11-01 21:27:55.444','4','23c179ccd3c0a192be29aa9958296bd6','771108007844380732',1,'https://cdn.discordapp.com/attachments/748995833445482586/771108006933823548/4.png','oof'),(47,'2020-11-01 21:28:11.797','4','cf712b1917a5e511dd0adb7baf4fa673','771108076144295977',1,'https://cdn.discordapp.com/attachments/748995833445482586/771108075510693938/4.png','weebsout'),(48,'2020-11-03 04:05:45.671','4','6475354ec0649f76ea505c04bc8d80ca','771570514681921536',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570513762975804/4.png','cosmicbrain'),(49,'2020-11-03 04:05:57.825','4','c4a54b0caa8907ea49382f8aba9657da','771570565521080321',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570564774494269/4.png','monkachrist'),(50,'2020-11-03 04:06:13.067','4','f4ace1b99734fb86da3527f9e4648264','771570629425496066',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570628674715648/4.png','waitwhat'),(51,'2020-11-03 04:06:28.044','4','32a48b2423ed788659c5eb250fbe644a','771570692315414578',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570691509190676/4.png','pepetoxic'),(52,'2020-11-03 04:06:41.024','4','31bc84372927899d87e55ef733f1cfee','771570746701905951',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570745964101682/4.png','kekleo'),(53,'2020-11-03 04:06:53.509','4','7231564e845112df1a6ed8125bf0cc34','771570799185887242',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570798283849738/4.png','cavebob'),(54,'2020-11-03 04:07:06.905','4','e76b0f9a48d4582528e01360b3ff1f3a','771570855364919317',1,'https://cdn.discordapp.com/attachments/748995833445482586/771570854516883466/4.png','cmonbruh'),(55,'2020-11-03 14:03:48.242','4','adb2b21f81da8efb0c16a6100799941a','771721017223413780',1,'https://cdn.discordapp.com/attachments/748995833445482586/771721016132239360/Link_Thumbs_Up.png','LinkThumbsUp'),(56,'2021-01-09 20:42:19.831','4','b3d66a822ca2e184d215ee38854fdda3','796101296611655720',1,'https://cdn.discordapp.com/attachments/748995833445482586/796101295501082704/SireStrong.png','SHCgrinsen');
/*!40000 ALTER TABLE `emotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_signup`
--

DROP TABLE IF EXISTS `event_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `event_user` int(11) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_signup`
--

LOCK TABLES `event_signup` WRITE;
/*!40000 ALTER TABLE `event_signup` DISABLE KEYS */;
INSERT INTO `event_signup` VALUES (1,1,4,'0'),(4,1,1,'0'),(17,1,10,'0'),(20,1,18,'0'),(44,1,20,'0'),(51,1,15,'0'),(57,1,3,'0'),(58,1,24,'1'),(59,1,17,'0'),(60,1,23,'0'),(61,1,9,'0'),(62,1,7,'0'),(63,1,6,'0'),(64,1,25,'1'),(66,1,13,'0'),(67,1,21,'0'),(68,1,8,'0'),(71,1,14,'1'),(72,1,5,'0'),(75,1,19,'1'),(76,1,11,'0'),(77,1,22,'2'),(78,1,16,'0'),(84,3,4,'0'),(86,3,11,'0'),(88,3,10,'0'),(93,3,15,'0'),(96,3,25,'1'),(97,3,12,'0'),(100,3,5,'0'),(103,3,21,'0'),(104,3,1,'0'),(105,3,2,'0'),(106,4,4,'0'),(107,4,1,'0'),(108,4,2,'0'),(109,4,5,'0'),(110,4,15,'0'),(114,3,24,'1'),(115,4,24,'0'),(117,3,6,'0'),(118,4,6,'0'),(120,4,10,'0'),(121,3,7,'0'),(122,4,7,'0'),(124,3,18,'1'),(125,4,18,'1'),(126,4,8,'0'),(128,4,3,'0'),(130,4,21,'0'),(131,4,13,'0'),(132,3,13,'2'),(133,3,16,'0'),(134,4,16,'0'),(136,4,17,'0'),(137,3,17,'2'),(138,4,20,'0'),(139,4,9,'0'),(140,3,9,'0'),(141,3,8,'0'),(142,3,20,'0'),(143,3,22,'0'),(144,4,22,'0'),(146,3,23,'0'),(147,3,3,'0'),(149,4,14,'1'),(168,4,23,'1'),(171,4,11,'1'),(174,4,25,'1'),(177,4,12,'0'),(181,4,19,'0'),(201,7,1,'0'),(202,7,10,'0'),(203,7,6,'0'),(204,7,8,'0'),(205,7,4,'0'),(206,7,12,'0'),(207,7,2,'0'),(208,7,5,'0'),(209,7,3,'0'),(210,7,16,'0'),(212,7,15,'0'),(215,7,9,'0'),(216,7,17,'0'),(217,7,21,'1'),(218,7,18,'0'),(219,7,23,'0'),(220,7,7,'0'),(221,7,24,'1'),(222,7,13,'0'),(233,7,20,'0'),(236,7,14,'1'),(239,7,25,'1'),(241,7,22,'0'),(242,7,11,'0'),(243,7,19,'0'),(247,9,4,'0'),(248,9,2,'0'),(249,9,11,'0'),(250,9,10,'0'),(251,9,12,'0'),(252,9,18,'0'),(253,9,13,'0'),(255,9,21,'0'),(256,9,1,'0'),(257,9,15,'0'),(258,9,24,'0'),(259,9,19,'0'),(260,9,17,'0'),(261,9,3,'0'),(262,9,5,'0'),(263,9,16,'0'),(265,9,27,'0'),(266,9,28,'0'),(267,9,9,'0'),(268,9,7,'0'),(269,9,25,'0'),(270,9,14,'1'),(271,9,6,'0'),(272,9,23,'0'),(297,9,8,'0'),(298,9,22,'0'),(300,9,20,'0'),(301,11,4,'0'),(302,11,15,'0'),(303,11,2,'0'),(304,11,8,'0'),(305,11,18,'0'),(306,11,27,'0'),(309,11,21,'0'),(310,11,24,'0'),(311,11,11,'0'),(312,11,19,'0'),(313,11,7,'0'),(314,11,3,'0'),(315,11,23,'0'),(316,11,13,'0'),(317,11,5,'0'),(318,11,17,'0'),(319,11,16,'0'),(321,11,12,'0'),(322,11,14,'1'),(324,11,22,'0'),(325,11,1,'2'),(326,11,9,'0'),(327,11,20,'0'),(328,11,25,'1'),(329,11,6,'0'),(330,12,4,'0'),(331,12,2,'0'),(332,12,10,'0'),(333,12,11,'0'),(335,12,15,'0'),(336,12,25,'1'),(337,12,16,'0'),(338,12,19,'1'),(339,12,3,'0'),(340,12,17,'0'),(341,12,14,'1'),(343,12,5,'1'),(344,12,23,'0'),(345,12,27,'0'),(346,12,21,'0'),(347,12,30,'0'),(348,12,24,'0'),(350,12,7,'0'),(351,12,1,'0'),(352,12,12,'0'),(353,12,6,'0'),(354,12,22,'0'),(355,12,8,'0'),(356,12,13,'1'),(357,12,18,'0'),(358,12,9,'1'),(359,12,20,'0'),(360,13,4,'0'),(362,13,27,'0'),(363,13,12,'0'),(364,13,2,'0'),(366,13,14,'1'),(368,13,15,'0'),(370,13,17,'0'),(371,13,25,'1'),(372,13,21,'0'),(373,13,10,'0'),(374,13,5,'0'),(375,13,24,'0'),(376,13,3,'0'),(377,13,19,'1'),(378,13,32,'0'),(380,13,6,'0'),(381,13,7,'0'),(382,13,30,'0'),(383,13,22,'0'),(384,13,23,'0'),(385,13,18,'0'),(386,13,13,'0'),(387,13,9,'2'),(388,13,8,'0'),(389,13,16,'0'),(390,13,20,'0'),(391,13,1,'0'),(392,13,11,'0'),(393,14,4,'0'),(394,14,11,'0'),(395,14,18,'0'),(396,14,15,'0'),(397,14,12,'0'),(398,14,8,'0'),(399,14,16,'0'),(400,14,10,'0'),(401,14,2,'0'),(402,14,3,'0'),(404,14,21,'0'),(405,15,15,'0'),(406,15,4,'0'),(408,15,11,'0'),(410,15,12,'0'),(411,15,3,'0'),(412,15,30,'0'),(413,15,23,'0'),(414,15,24,'1'),(415,14,24,'0'),(417,15,6,'0'),(418,15,16,'0'),(419,15,21,'0'),(420,15,19,'1'),(421,15,7,'0'),(422,15,14,'1'),(423,14,14,'1'),(424,15,9,'0'),(425,15,27,'0'),(426,14,27,'0'),(427,14,19,'1'),(429,15,2,'0'),(430,15,1,'0'),(431,14,1,'2'),(432,15,32,'1'),(433,15,8,'0'),(434,15,20,'1'),(435,15,10,'1'),(436,15,17,'1'),(437,14,23,'0'),(438,14,9,'0'),(439,14,17,'2'),(440,14,7,'1'),(441,14,30,'0'),(442,14,20,'0'),(443,14,22,'0'),(444,14,5,'0'),(445,14,13,'0'),(446,16,11,'0'),(447,16,4,'0'),(448,16,23,'0'),(450,16,27,'0'),(451,16,8,'0'),(452,16,6,'0'),(453,16,10,'1'),(454,16,15,'0'),(455,16,24,'0'),(456,16,16,'0'),(457,16,21,'0'),(458,16,3,'0'),(459,16,2,'0'),(460,16,5,'0'),(461,16,19,'1'),(462,16,17,'0'),(463,16,30,'0'),(464,16,14,'1'),(465,16,18,'0'),(466,16,1,'1'),(467,16,9,'0'),(468,16,7,'0'),(469,16,22,'0'),(470,16,13,'0'),(471,16,20,'1'),(506,20,1,'0'),(507,20,6,'0'),(508,20,15,'0'),(509,20,11,'0'),(510,20,8,'0'),(511,20,12,'0'),(512,21,15,'0'),(513,21,11,'0'),(514,21,6,'0'),(515,20,4,'0'),(516,21,1,'0'),(517,21,4,'0'),(518,21,8,'0'),(520,21,5,'0'),(521,20,24,'0'),(522,21,24,'0'),(523,20,19,'0'),(524,21,19,'0'),(525,20,16,'0'),(526,21,16,'0'),(527,20,2,'0'),(528,21,2,'0'),(529,20,13,'0'),(530,21,13,'0'),(531,20,10,'0'),(532,21,10,'0'),(533,21,34,'0'),(534,20,34,'0'),(535,20,18,'0'),(536,21,18,'0'),(537,21,22,'0'),(538,21,12,'0'),(539,20,36,'0'),(540,21,36,'0'),(542,20,7,'0'),(543,20,37,'0'),(544,21,37,'0'),(545,20,23,'0'),(546,21,23,'0'),(547,20,30,'0'),(548,21,30,'0'),(549,20,21,'0'),(550,21,21,'0'),(551,20,22,'0'),(552,20,17,'0'),(553,21,3,'0'),(554,20,3,'0'),(555,20,20,'0'),(556,21,20,'0'),(557,21,14,'0'),(558,20,14,'0'),(559,20,33,'0'),(560,21,33,'0'),(561,20,35,'0'),(562,21,35,'0'),(563,20,5,'0'),(564,22,4,'0'),(565,22,2,'0'),(566,22,18,'0'),(567,22,14,'0'),(568,22,6,'0'),(569,22,1,'0'),(571,22,11,'0'),(572,22,33,'0'),(573,22,24,'0'),(575,22,16,'0'),(576,22,13,'2'),(577,22,22,'0'),(578,22,3,'0'),(579,22,5,'0'),(581,22,17,'0'),(582,21,17,'0'),(583,22,19,'0'),(584,22,12,'0'),(585,22,7,'0'),(586,22,15,'0'),(587,22,36,'0'),(588,20,9,'0'),(589,22,9,'0'),(594,22,30,'1'),(595,22,34,'0'),(596,22,20,'0'),(597,22,8,'0'),(598,22,10,'0'),(599,22,35,'0'),(600,22,21,'0'),(601,22,37,'0'),(602,23,2,'0'),(603,23,11,'0'),(604,23,8,'0'),(605,23,4,'0'),(606,24,4,'0'),(607,24,2,'0'),(608,23,18,'0'),(609,24,18,'0'),(610,23,19,'0'),(611,24,10,'0'),(612,24,19,'0'),(613,23,10,'0'),(614,24,12,'0'),(615,23,24,'0'),(616,24,24,'0'),(617,24,5,'0'),(618,23,1,'0'),(619,24,1,'0'),(620,23,12,'0'),(621,23,33,'0'),(622,23,6,'0'),(623,24,33,'0'),(624,24,6,'0'),(625,23,21,'0'),(626,24,21,'0'),(627,23,34,'0'),(628,24,34,'0'),(629,23,36,'0'),(631,24,36,'0'),(632,23,17,'0'),(633,23,15,'0'),(634,24,15,'0'),(636,23,37,'1'),(637,23,23,'0'),(638,24,23,'0'),(639,23,30,'0'),(640,24,30,'0'),(641,23,7,'0'),(642,24,7,'0'),(643,24,8,'0'),(644,23,16,'0'),(645,24,16,'0'),(646,23,3,'0'),(647,24,3,'0'),(648,23,9,'0'),(650,23,42,'0'),(651,23,20,'0'),(652,24,20,'0'),(653,24,11,'0'),(654,23,13,'0'),(655,24,13,'0'),(656,25,4,'0'),(657,25,15,'0'),(659,25,8,'0'),(660,25,1,'0'),(661,25,19,'0'),(662,25,12,'2'),(663,25,11,'0'),(664,25,36,'0'),(665,25,10,'0'),(666,25,16,'0'),(667,25,6,'0'),(668,25,18,'1'),(669,25,24,'0'),(670,25,33,'0'),(671,24,14,'0'),(672,25,14,'0'),(673,25,5,'0'),(674,25,17,'0'),(675,25,21,'0'),(676,25,2,'0'),(677,25,30,'1'),(678,25,34,'0'),(679,25,3,'0'),(682,25,13,'0'),(683,25,42,'0'),(684,24,42,'0'),(685,24,17,'0'),(687,25,23,'1'),(688,24,9,'0'),(689,25,37,'1'),(690,24,37,'1'),(691,24,22,'0'),(692,26,4,'0'),(693,26,18,'0'),(694,26,12,'0'),(695,26,2,'0'),(696,26,10,'0'),(697,26,8,'0'),(698,26,33,'0'),(699,26,42,'0'),(700,26,6,'0'),(701,26,19,'0'),(702,26,14,'0'),(703,26,11,'0'),(704,26,1,'0'),(705,26,21,'0'),(706,26,13,'0'),(707,26,16,'0'),(708,26,3,'0'),(709,26,34,'0'),(710,26,15,'0'),(711,26,5,'0'),(712,26,43,'0'),(714,25,20,'2'),(715,25,7,'0'),(716,26,7,'1'),(717,26,37,'1'),(718,25,9,'0'),(719,25,22,'0'),(720,26,24,'0'),(721,26,30,'0'),(722,26,23,'0'),(723,27,16,'0'),(724,27,4,'0'),(725,28,4,'0'),(726,28,16,'0'),(727,28,12,'0'),(728,27,12,'0'),(729,27,19,'0'),(730,28,19,'0'),(731,27,1,'0'),(732,28,1,'0'),(733,27,33,'0'),(734,28,33,'0'),(735,27,24,'0'),(736,28,24,'0'),(737,27,13,'0'),(738,28,13,'0'),(739,28,11,'0'),(740,27,11,'0'),(741,27,8,'0'),(742,28,8,'0'),(743,27,17,'0'),(744,28,17,'0'),(745,28,10,'0'),(746,27,10,'0'),(747,27,18,'0'),(748,28,18,'0'),(749,28,2,'0'),(750,27,2,'0'),(752,26,9,'0'),(753,28,14,'0'),(754,27,14,'0'),(755,27,21,'0'),(756,28,21,'0'),(757,27,42,'0'),(758,28,42,'0'),(759,27,15,'0'),(760,28,15,'0'),(761,27,6,'0'),(762,28,6,'0'),(763,27,43,'0'),(764,28,43,'0'),(765,27,34,'0'),(766,28,34,'0'),(767,26,20,'0'),(768,27,30,'0'),(769,28,30,'0'),(770,27,36,'0'),(771,28,36,'0'),(772,28,5,'0'),(773,27,5,'0'),(774,27,22,'0'),(775,28,22,'0'),(776,27,20,'0'),(777,27,7,'0'),(778,28,7,'0'),(779,28,9,'1'),(780,28,3,'0'),(781,28,44,'0'),(782,28,23,'0'),(783,29,4,'0'),(784,29,22,'0'),(785,29,12,'0'),(786,29,1,'0'),(787,29,16,'0'),(788,29,17,'0'),(789,29,11,'0'),(790,29,34,'0'),(791,29,19,'0'),(792,29,24,'0'),(793,29,13,'0'),(794,29,2,'0'),(795,29,3,'0'),(796,29,14,'1'),(797,29,21,'0'),(798,29,18,'0'),(799,29,33,'0'),(800,29,5,'0'),(801,29,15,'0'),(802,29,10,'0'),(803,29,44,'0'),(804,29,23,'0'),(805,29,30,'0'),(806,28,20,'0'),(807,29,7,'0'),(808,30,4,'0'),(809,30,10,'0'),(810,30,2,'0'),(811,30,14,'0'),(812,30,5,'0'),(813,30,16,'0'),(814,30,11,'0'),(815,30,12,'0'),(817,30,15,'0'),(818,30,18,'0'),(819,30,19,'0'),(820,30,3,'0'),(821,29,6,'0'),(822,30,6,'0'),(823,30,21,'0'),(824,30,24,'0'),(825,30,7,'0'),(826,30,8,'0'),(827,30,13,'0'),(828,30,44,'0'),(829,30,30,'0'),(830,30,17,'0'),(831,29,20,'0'),(832,29,8,'0'),(833,30,34,'0'),(834,30,43,'0'),(835,30,42,'0'),(836,30,33,'0'),(837,30,1,'0'),(838,31,15,'0'),(839,31,4,'0'),(840,31,1,'0'),(841,31,8,'0'),(842,31,12,'0'),(843,31,44,'0'),(844,31,18,'0'),(845,31,19,'0'),(846,31,7,'0'),(847,31,2,'0'),(848,31,33,'0'),(849,31,30,'0'),(850,31,10,'0'),(851,31,34,'0'),(852,31,11,'0'),(853,31,5,'0'),(854,31,17,'0'),(855,31,13,'0'),(856,31,16,'0'),(857,31,24,'0'),(858,31,21,'0'),(859,31,3,'0'),(860,30,23,'0'),(862,31,14,'0'),(863,31,43,'0'),(864,30,20,'0'),(865,32,4,'0'),(866,32,16,'0'),(867,32,12,'0'),(868,32,14,'0'),(869,32,1,'0'),(870,32,24,'0'),(871,32,11,'0'),(872,32,15,'0'),(873,32,19,'0'),(874,32,7,'0'),(875,32,21,'0'),(876,32,10,'0'),(877,32,18,'0'),(878,32,8,'0'),(879,32,5,'0'),(880,32,34,'0'),(881,32,33,'0'),(882,32,2,'0'),(883,32,17,'0'),(884,32,13,'0'),(885,31,6,'0'),(886,32,6,'0'),(887,32,30,'0'),(888,32,3,'0'),(889,32,44,'0'),(890,31,45,'0'),(891,32,45,'0'),(892,31,22,'1'),(893,31,23,'1'),(894,32,23,'1'),(895,31,20,'0'),(896,32,42,'0'),(897,33,4,'0'),(898,33,8,'0'),(899,33,2,'0'),(900,33,1,'0'),(901,33,11,'0'),(902,33,5,'0'),(903,33,10,'0'),(904,33,12,'0'),(905,33,19,'0'),(906,33,24,'0'),(907,33,3,'0'),(908,33,7,'0'),(909,33,18,'0'),(910,33,33,'0'),(911,33,21,'0'),(912,33,15,'0'),(913,33,16,'0'),(914,33,13,'0'),(916,33,44,'2'),(917,33,17,'0'),(918,32,20,'0'),(919,33,30,'1'),(920,32,22,'1'),(921,33,6,'0'),(922,33,42,'0'),(923,34,4,'0'),(924,34,11,'0'),(925,34,2,'0'),(926,34,3,'0'),(927,34,33,'0'),(928,34,19,'0'),(929,34,14,'0'),(930,33,14,'0'),(931,34,16,'0'),(932,34,18,'0'),(933,34,15,'0'),(934,34,7,'0'),(935,34,1,'0'),(936,34,24,'0'),(937,34,10,'0'),(938,34,42,'0'),(939,34,30,'0'),(940,34,21,'0'),(941,34,13,'0'),(942,34,17,'0'),(943,34,8,'0'),(944,34,44,'0'),(945,34,5,'0'),(946,34,46,'0'),(947,33,46,'0'),(948,34,6,'0'),(949,33,20,'0'),(950,33,45,'0'),(951,34,45,'0'),(952,33,22,'1'),(953,35,4,'0'),(954,35,33,'0'),(955,35,16,'0'),(956,35,17,'0'),(957,35,10,'0'),(958,35,5,'0'),(959,35,18,'0'),(960,35,21,'0'),(961,35,11,'0'),(962,35,15,'0'),(963,35,2,'0'),(964,35,19,'0'),(965,35,30,'1'),(969,35,8,'0'),(970,35,24,'0'),(971,35,13,'0'),(972,35,3,'0'),(974,35,47,'0'),(975,34,47,'0'),(976,35,1,'0'),(977,35,44,'0'),(978,34,20,'0'),(979,35,48,'0'),(980,35,7,'0'),(981,35,49,'0'),(984,34,12,'0'),(985,34,22,'1'),(986,35,45,'0'),(988,36,33,'0'),(989,36,10,'0'),(990,36,5,'0'),(991,36,12,'0'),(992,36,1,'0'),(993,36,15,'0'),(994,36,24,'0'),(995,36,2,'0'),(996,36,18,'0'),(997,36,30,'0'),(998,36,11,'0'),(1001,36,17,'0'),(1002,36,3,'0'),(1003,36,8,'0'),(1004,36,13,'0'),(1005,36,7,'0'),(1006,36,21,'0'),(1007,36,16,'0'),(1008,35,12,'0'),(1009,36,44,'0'),(1010,36,47,'0'),(1011,36,49,'0'),(1012,36,46,'0'),(1013,35,46,'0'),(1014,36,48,'0'),(1015,36,45,'0'),(1016,35,20,'0'),(1017,36,42,'0'),(1018,35,22,'1'),(1019,35,42,'0'),(1020,36,50,'0'),(1021,35,50,'0'),(1023,37,4,'0'),(1024,37,1,'0'),(1025,37,2,'0'),(1026,37,45,'0'),(1027,37,46,'0'),(1028,37,8,'0'),(1029,37,3,'0'),(1030,37,19,'0'),(1031,37,16,'0'),(1032,37,24,'0'),(1033,37,48,'0'),(1034,37,11,'0'),(1035,37,21,'0'),(1036,37,33,'0'),(1037,37,12,'0'),(1038,37,18,'0'),(1040,37,13,'0'),(1041,37,5,'0'),(1042,37,15,'0'),(1043,37,7,'0'),(1044,37,17,'0'),(1045,37,44,'2'),(1046,37,47,'0'),(1047,37,42,'0'),(1048,37,30,'0'),(1050,36,20,'2'),(1051,36,4,'0'),(1052,37,49,'0'),(1053,37,50,'0'),(1054,38,4,'0'),(1055,38,1,'0'),(1056,38,11,'0'),(1057,38,10,'0'),(1058,38,17,'0'),(1059,38,24,'0'),(1060,38,48,'0'),(1061,38,45,'0'),(1062,38,5,'0'),(1063,38,19,'0'),(1064,38,33,'0'),(1065,38,42,'0'),(1066,38,18,'0'),(1067,38,2,'0'),(1069,38,16,'0'),(1071,38,21,'0'),(1072,38,12,'0'),(1074,38,3,'0'),(1075,38,46,'0'),(1076,38,47,'0'),(1077,38,8,'0'),(1078,37,20,'0'),(1080,39,4,'0'),(1081,39,2,'0'),(1082,39,10,'0'),(1083,39,1,'0'),(1084,39,11,'0'),(1085,39,45,'0'),(1086,39,46,'0'),(1087,39,19,'0'),(1088,39,47,'0'),(1089,39,24,'0'),(1090,39,16,'0'),(1091,39,8,'0'),(1092,39,42,'0'),(1093,39,17,'0'),(1094,39,3,'0'),(1095,39,13,'0'),(1096,38,13,'1'),(1097,39,5,'0'),(1098,39,21,'0'),(1099,38,49,'0'),(1100,39,7,'0'),(1101,39,30,'0'),(1102,39,12,'0'),(1103,39,48,'0'),(1104,38,50,'1'),(1106,38,20,'0'),(1107,38,44,'2'),(1108,39,44,'0'),(1109,38,7,'0'),(1110,39,50,'0'),(1111,40,4,'0'),(1113,40,33,'0'),(1114,40,12,'0'),(1115,40,11,'0'),(1116,40,1,'0'),(1117,40,13,'0'),(1118,40,10,'0'),(1119,40,8,'0'),(1120,40,46,'0'),(1121,40,7,'0'),(1122,40,16,'0'),(1123,40,47,'0'),(1124,40,18,'0'),(1125,40,3,'1'),(1127,40,45,'0'),(1128,40,5,'0'),(1129,40,24,'0'),(1130,40,21,'0'),(1131,40,30,'0'),(1132,40,48,'0'),(1133,39,49,'0'),(1134,40,17,'0'),(1135,40,2,'2'),(1136,40,20,'0'),(1137,39,20,'0'),(1138,39,18,'0'),(1139,40,42,'0'),(1140,40,19,'0'),(1141,41,2,'0'),(1142,41,11,'0'),(1143,41,16,'0'),(1145,41,1,'0'),(1146,41,4,'0'),(1147,41,47,'0'),(1148,41,24,'0'),(1149,41,42,'0'),(1150,41,45,'0'),(1151,40,49,'0'),(1152,41,5,'0'),(1153,41,18,'0'),(1154,41,19,'0'),(1155,41,46,'0'),(1156,41,33,'0'),(1157,41,10,'0'),(1158,41,13,'0'),(1159,41,3,'0'),(1160,41,21,'0'),(1161,41,8,'0'),(1162,41,7,'0'),(1164,41,48,'0'),(1165,41,30,'0'),(1166,40,44,'0'),(1167,41,44,'0'),(1168,41,17,'0'),(1169,41,51,'0'),(1170,41,12,'0'),(1171,42,4,'0'),(1172,42,17,'0'),(1173,42,12,'0'),(1174,42,1,'0'),(1175,42,10,'0'),(1177,42,46,'0'),(1178,42,19,'0'),(1179,42,2,'0'),(1180,42,16,'0'),(1181,42,21,'0'),(1182,42,11,'0'),(1183,42,13,'0'),(1184,42,47,'0'),(1186,42,24,'0'),(1187,42,5,'0'),(1188,42,7,'0'),(1189,42,3,'0'),(1191,41,50,'0'),(1192,41,49,'0'),(1193,42,42,'0'),(1194,42,30,'0'),(1196,42,52,'0'),(1197,42,50,'0'),(1199,41,20,'0'),(1200,42,18,'0'),(1201,42,8,'0'),(1202,42,33,'0'),(1203,42,45,'0'),(1204,43,4,'0'),(1205,43,33,'0'),(1206,43,46,'0'),(1207,43,2,'0'),(1208,43,11,'0'),(1209,43,42,'0'),(1210,43,21,'0'),(1211,43,45,'0'),(1212,43,16,'0'),(1213,43,12,'0'),(1214,43,1,'0'),(1215,43,24,'0'),(1216,43,10,'0'),(1217,43,7,'0'),(1218,43,19,'0'),(1219,43,52,'0'),(1221,43,8,'0'),(1222,43,18,'1'),(1223,43,17,'0'),(1224,43,5,'0'),(1225,43,51,'0'),(1228,43,48,'0'),(1230,43,30,'0'),(1231,43,50,'0'),(1232,42,51,'1'),(1233,42,48,'0'),(1234,42,49,'1'),(1235,43,3,'0'),(1236,42,20,'0'),(1237,43,44,'0'),(1238,43,47,'0'),(1239,44,4,'0'),(1240,44,33,'0'),(1241,44,18,'1'),(1242,44,42,'0'),(1243,44,5,'0'),(1244,44,46,'0'),(1245,44,30,'0'),(1246,44,12,'0'),(1247,44,19,'0'),(1248,44,2,'0'),(1249,44,1,'0'),(1250,44,11,'0'),(1251,44,47,'0'),(1252,44,52,'0'),(1253,44,48,'0'),(1254,44,10,'0'),(1255,44,24,'0'),(1256,44,21,'0'),(1257,44,44,'0'),(1258,44,45,'0'),(1259,44,17,'0'),(1260,44,3,'0'),(1261,44,13,'0'),(1262,43,13,'0'),(1263,44,50,'0'),(1264,44,16,'0'),(1265,43,20,'0'),(1266,43,49,'1'),(1267,44,7,'0'),(1268,45,4,'0'),(1269,45,33,'0'),(1270,45,46,'0'),(1271,45,2,'0'),(1272,45,3,'0'),(1273,45,11,'0'),(1274,45,1,'0'),(1276,45,52,'0'),(1277,45,47,'0'),(1278,45,48,'0'),(1279,45,17,'0'),(1280,45,19,'0'),(1281,45,13,'0'),(1282,45,24,'0'),(1283,45,7,'0'),(1284,45,5,'1'),(1285,45,42,'0'),(1286,45,21,'0'),(1287,45,10,'0'),(1288,45,18,'0'),(1289,45,12,'0'),(1290,45,30,'0'),(1291,44,8,'0'),(1292,45,8,'0'),(1293,45,44,'0'),(1294,45,45,'0'),(1295,44,20,'0'),(1296,44,49,'1'),(1297,45,16,'0'),(1298,46,4,'0'),(1299,46,33,'0'),(1300,46,2,'0'),(1301,46,11,'0'),(1302,46,8,'0'),(1303,46,46,'0'),(1304,46,48,'0'),(1305,46,5,'0'),(1306,46,17,'0'),(1307,46,18,'0'),(1308,46,12,'0'),(1309,46,19,'0'),(1310,46,52,'0');
/*!40000 ALTER TABLE `event_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `discord_id` varchar(200) DEFAULT NULL,
  `locked` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Mainraid','2020-09-02 19:30:00.000','4','b240f7c6e258e9a6aeb32e395b182a71','749037059720609906',1),(3,'Mainraid 06.09.','2020-09-06 19:30:00.000','4','51fdeb52af6293ca4b75768c19c07b24','750418507174510632',1),(4,'Mainraid 09.09.','2020-09-09 19:30:00.000','4','80a73bbe7542832fc2e62dda0e391b70','750458907708752014',1),(7,'Mainraid 16.09.','2020-09-16 19:30:00.000','4','de2794f03d3ffb09adf508dc91e9a0c7','753358624125878433',1),(9,'Mainraid 23.09.','2020-09-23 19:30:00.000','4','ed39093f1fb789ae140037b2d85c98e3','755724715406131271',1),(11,'Mainraid 30.09.','2020-09-30 19:30:00.000','4','056c662137690415dab0ae2c916999a8','758415214923350016',1),(12,'Mainraid 07.10.','2020-10-07 19:30:00.000','4','61e874f90f58923458131e17a6e13239','760885089214398495',1),(13,'Mainraid 14.10.','2020-10-14 19:30:00.000','4','a4e84f0044147c3c90fef3e7e049d27f','763091932921593872',1),(14,'Mainraid 21.10.','2020-10-21 19:30:00.000','4','1600fd7bf4648ffdd7bc5248beb65c71','765875559170703380',1),(15,'Mainraid 18.10.','2020-10-18 19:30:00.000','4','96533431af02a11a7dbd19a03ca6aa2f','766010696549793813',1),(16,'Mainraid 28.10.','2020-10-28 19:30:00.000','4','0a1141ccc7637b8623b49e3efe98f343','768183544882266142',1),(20,'Mainraid 09.12.','2020-12-09 19:30:00.000','4','cfcda14ea070f6242e38b6ba58b1e7f1','783698420275216395',1),(21,'Mainraid 13.12.','2020-12-13 19:30:00.000','4','3928e2c8ad2ceb19da45c059636e0c63','783698527493947403',1),(22,'Mainraid 10.12.','2020-12-10 19:30:00.000','4','b625228e99a927ddd14d024b3bc1ad84','785263653250531409',1),(23,'Mainraid 16.12.','2020-12-16 19:30:00.000','4','e0e6f67e3155639b96eabdf37c713c07','787394078974935041',1),(24,'Mainraid 20.12.','2020-12-20 19:30:00.000','4','0fa8105cba5e9f4f0001192c1a6749ac','787394167599792139',1),(25,'Mainraid 23.12.','2020-12-23 19:30:00.000','4','43410029cb337dcd968d4c5cb363d249','788473367573299220',1),(26,'Mainraid 27.12.','2020-12-27 19:30:00.000','4','15a1c25f026c0d75fe1f0efc5bc6c4d7','789952732949118984',1),(27,'Mainraid 30.12.','2020-12-30 19:30:00.000','4','5ebf5f195915d61422fe03f145b960f0','791964304634937354',1),(28,'Mainraid 03.01.','2021-01-03 19:30:00.000','4','56d50131f24f52ec19b6d54ee91330b3','791964398586953728',1),(29,'Mainraid 06.01.','2021-01-06 19:30:00.000','4','ad153acf0c59be15559d504384f55292','794267903838912523',1),(30,'Mainraid 10.01.','2021-01-10 19:30:00.000','4','2d1a7c25040bfd8d416643c5b9d7e9a0','795020655803498576',1),(31,'Mainraid 13.01.','2021-01-13 19:30:00.000','4','8d36541021fe2c527ee2b8e70f01e097','796100976749969438',1),(32,'Mainraid 17.01.','2021-01-17 19:30:00.000','4','92ac6dce8d8e033fdbe567b5a03d4b79','797557593677365268',1),(33,'Mainraid 20.01.','2021-01-20 19:30:00.000','4','0f9deb9e9656b46802a19bd105ba0ea8','798638258560303174',1),(34,'Mainraid 24.01.','2021-01-24 19:30:00.000','4','5ec9fab55bce6ae4f727dc50d2e8ea5f','800414948589174834',1),(35,'Mainraid 27.01.','2021-01-27 19:30:00.000','4','7685422d2b2a09e77cc76a2145eeb381','801609239730454559',1),(36,'Mainraid 31.01.','2021-01-31 19:30:00.000','4','8245d44fd82f4fbecfed0a058a194ae7','802633238110666762',1),(37,'Mainraid 03.02.','2021-02-03 19:30:00.000','4','526958e6beb2e109e2f2c28e9f3abf7e','804031929951191060',1),(38,'Mainraid 07.02.','2021-02-07 19:30:00.000','4','dc3bae0a6a9312d6b171e0ac9ebe7894','805490384581951508',1),(39,'Mainraid 10.02.','2021-02-10 19:30:00.000','4','2f653e60e06d19e87daa8d7548b9897c','806280152018321440',1),(40,'Mainraid 14.02.','2021-02-14 19:30:00.000','4','8cb98c14db2e45bbea35ab982eeb28a4','807692492945883206',1),(41,'Mainraid 17.02.','2021-02-17 19:30:00.000','4','c0ee724b81b093397c17adfd38b96de0','809182943003148288',1),(42,'Mainraid 21.02.','2021-02-21 19:30:00.000','4','88b0656f53b172896c773d1db125cf74','810227410678841344',1),(43,'Mainraid 24.02.','2021-02-24 19:30:00.000','4','256117d6b79282c1e27345b7d0925800','811336675128508458',1),(44,'Mainraid 28.02.','2021-02-28 19:30:00.000','4','83222264857cc4afda70f2728a5e1f37','812775996021407765',1),(45,'Mainraid 03.03.','2021-03-03 19:30:00.000','4','021e9242d9d7b885cbcf20d8712a7b84','813851449531564142',0),(46,'Mainraid 07.03.','2021-03-07 19:30:00.000','4','e5bcff276a3dcc8e1e7ea910a0cba8ef','815381983781322792',0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (8,1,1,'Hallo Lucas - raiden vor Shadowlands? LUL',3),(15,22,1,'Vorläufig, da ich nicht weiß wann genau ich da bin.',2),(24,13,3,'Du hast dich für das Event \'Mainraid 09.09.\' angemeldet.',2),(26,17,3,'Falscher Termin, also nochmal: Schwiegermutter dies Wochenende da, kann sein das ich bisschen später komme ca. 30 min, aber zu 90% bin ich pünktlich.',2),(30,1,11,'erst gegen 21 Uhr',2),(31,9,13,'ca. 15-30 Minuten Verspätung',2),(33,1,14,'eventuell komme ich etwas später kann ich noch nicht genau sagen',2),(34,17,14,'Ich komme vermutlich später ich gebe Dienstag Mittwoch ein Seminar und weiß nicht genau wann ich wieder zuhause bin geplant ist glaube ich 19:00',2),(35,13,22,'Frühestens 20.30 da',2),(36,12,25,'Habe am 23. Geburtstag, weiß nicht ob ich anwesend bin/ nicht.',2),(38,20,25,'komme zwischen 20:00 und 20:30',2),(39,44,33,'Komme erst gegen 9 Uhr',2),(40,44,37,'Komme um 9 Uhr',2),(41,20,36,'komme zwischen 19:30 und 20:00',2),(43,44,38,'um 9 Uhr',2),(44,2,40,'Unklarer gesundheitlicher Zustand, Rücksprache im Voraus notwendig.',2);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punishments`
--

DROP TABLE IF EXISTS `punishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punishments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discord_id` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `reason` varchar(1000) DEFAULT NULL,
  `msg_id` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punishments`
--

LOCK TABLES `punishments` WRITE;
/*!40000 ALTER TABLE `punishments` DISABLE KEYS */;
INSERT INTO `punishments` VALUES (1,'282630890486628352','15000','du hast die Anmeldung für das Event \"Mainraid 10.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','786298664758673498',1,'746676628146356285'),(2,'322811876792598538','15000','du hast die Anmeldung für das Event \"Mainraid 13.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','787385852274933781',1,'746676628146356285'),(3,'290916400241967104','15000','du hast die Anmeldung für das Event \"Mainraid 13.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','787385853579624448',1,'746676628146356285'),(4,'258981212788359168','15000','du hast die Anmeldung für das Event \"Mainraid 16.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','788473039502835713',1,'746676628146356285'),(5,'374541544490795029','15000','du hast die Anmeldung für das Event \"Mainraid 16.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','788473040614195311',1,'746676628146356285'),(6,'467458048492044299','15000','du hast die Anmeldung für das Event \"Mainraid 16.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','788473041658314752',1,'746676628146356285'),(8,'258981212788359168','30000','du hast die Anmeldung für das Event \"Mainraid 27.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','792459396760338433',1,'746676628146356285'),(9,'322811876792598538','30000','du hast die Anmeldung für das Event \"Mainraid 30.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','793546582690889748',1,'746676628146356285'),(10,'267723957396963337','15000','du hast die Anmeldung für das Event \"Mainraid 30.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','793546589163225130',1,'746676628146356285'),(11,'282630890486628352','30000','du hast die Anmeldung für das Event \"Mainraid 30.12.\" verpasst. Melde dich umgehend persönlich bei Lucas.','793546591335743508',1,'746676628146356285'),(12,'257912018101731328','15000','du hast die Anmeldung für das Event \"Mainraid 06.01.\" verpasst. Melde dich umgehend persönlich bei Lucas.','796083098247757854',1,'746676628146356285'),(13,'258981212788359168','45000','du hast die Anmeldung für das Event \"Mainraid 10.01.\" verpasst. Melde dich umgehend persönlich bei Lucas.','797532682476060693',0,'746676628146356285'),(14,'257912018101731328','30000','du hast die Anmeldung für das Event \"Mainraid 13.01.\" verpasst. Melde dich umgehend persönlich bei Lucas.','798619868068184064',1,'746676628146356285'),(15,'258981212788359168','60000','du hast die Anmeldung für das Event \"Mainraid 31.01.\" verpasst. Melde dich umgehend persönlich bei Lucas.','805142989839663134',0,'746676628146356285'),(16,'199102771998359554','15000','du hast die Anmeldung für das Event \"Mainraid 31.01.\" verpasst. Melde dich umgehend persönlich bei Lucas.','805142991072264212',1,'746676628146356285'),(17,'260058372085252097','15000','du hast die Anmeldung für das Event \"Mainraid 03.02.\" verpasst. Melde dich umgehend persönlich bei Lucas.','806230177175961661',1,'746676628146356285'),(18,'389489824178110465','15000','du hast die Anmeldung für das Event \"Mainraid 07.02.\" verpasst. Melde dich umgehend persönlich bei Lucas.','807679510442672160',1,'746676628146356285'),(19,'243837822212112387','15000','du hast die Anmeldung für das Event \"Mainraid 10.02.\" verpasst. Melde dich umgehend persönlich bei Lucas.','808766698727538690',1,'746676628146356285'),(20,'267034826668900353','15000','du hast die Anmeldung für das Event \"Mainraid 21.02.\" verpasst. Melde dich umgehend persönlich bei Lucas.','812752970315464754',1,'746676628146356285');
/*!40000 ALTER TABLE `punishments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raider`
--

DROP TABLE IF EXISTS `raider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `discord_id` varchar(100) DEFAULT NULL,
  `offi` int(11) DEFAULT NULL,
  `alternative_names` varchar(2000) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raider`
--

LOCK TABLES `raider` WRITE;
/*!40000 ALTER TABLE `raider` DISABLE KEYS */;
INSERT INTO `raider` VALUES (1,'Andeebrew','tank',0,'308994673567989760',0,'0'),(2,'Colbat','tank',0,'141221666255536128',1,'Ealbn'),(3,'Badaccent','tank',0,'267723957396963337',0,'0'),(4,'Agitur','heal',0,'270258488654036992',1,'0'),(5,'Ellibäm','heal',0,'467458048492044299',0,'Ellibam'),(7,'Zavis','dps',0,'290916400241967104',0,'Zatrina'),(8,'Arsinal','dps',0,'247118727718371328',0,'0'),(10,'Cedone','dps',0,'260058372085252097',0,'0'),(11,'Dunken','dps',0,'236179808055197706',0,'0'),(12,'Exoqt','dps',0,'115802058485006340',1,'Exogt'),(13,'Roesmi','dps',0,'178231003347812352',0,'0'),(16,'Kikataru','dps',0,'245331742662066177',1,'0'),(17,'Kptnpeng','dps',0,'278181095881834496',0,'0'),(18,'Letheâ','dps',0,'406478745344671745',0,'Lethed,Lethea,l_.ethel,Letheä'),(19,'Myrarri','dps',0,'199102771998359554',0,'0'),(20,'Norime','dps',0,'188747775242928128',0,'0'),(21,'Joshventos','heal',0,'145129182332977163',0,'Ioshventos'),(24,'Fidorha','dps',0,'295528644804214785',0,'0'),(30,'Slammer','dps',0,'389489824178110465',0,'0'),(33,'Walan','dps',0,'243837822212112387',0,'0'),(42,'Tâmtâle','dps',0,'257912018101731328',0,'0'),(44,'Wombabonker','dps',0,'267034826668900353',0,'0'),(45,'Tenninshaman','heal',0,'345555113722642432',0,'0'),(46,'Kissmybubblé','heal',0,'158516071060602880',0,'0'),(47,'Tschapatalpi','dps',0,'209335087643230208',0,'0'),(48,'Andael','dps',0,'216629383614431232',0,'0'),(49,'Dàres','dps',0,'232246134943252490',0,'0'),(52,'Uwäh','heal',1,'288722136665948160',0,'0');
/*!40000 ALTER TABLE `raider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28  9:24:46
