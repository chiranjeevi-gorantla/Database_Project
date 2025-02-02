CREATE DATABASE  IF NOT EXISTS `campus_eats_fall2020` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `campus_eats_fall2020`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Temporary view structure for view `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_orders` AS SELECT 
 1 AS `customer_id`,
 1 AS `order_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,3,8,'2004-04-15 15:15:01'),(2,6,17,'1986-03-09 13:02:10'),(3,8,4,'2007-03-27 04:20:50'),(4,4,4,'1990-11-27 07:17:36'),(5,4,7,'1985-05-17 20:06:35'),(6,5,15,'1987-07-21 03:13:27'),(7,7,1,'1984-12-20 02:07:33'),(8,6,16,'1987-10-24 02:17:47'),(9,6,10,'1973-08-23 08:51:27'),(10,4,8,'1984-07-05 15:41:52'),(11,3,12,'2005-08-13 13:46:19'),(12,4,12,'2000-06-10 15:12:36'),(13,3,4,'1997-03-15 11:26:07'),(14,2,7,'2002-11-02 13:09:13'),(15,3,16,'1981-12-08 18:29:25'),(16,7,16,'1996-08-06 00:30:01'),(17,5,20,'0000-00-00 00:00:00'),(18,5,19,'1992-08-13 02:49:56'),(19,8,12,'1993-07-28 11:48:09'),(20,5,6,'1990-01-04 11:00:09'),(21,5,3,'2000-12-13 17:38:36'),(22,4,13,'1990-03-19 22:51:00'),(23,5,9,'1972-02-19 02:26:18'),(24,7,7,'2017-03-20 16:51:08'),(25,8,13,'1974-01-01 11:14:14'),(26,2,13,'2019-01-15 05:59:35'),(27,1,3,'2007-04-20 19:22:11'),(28,6,18,'1982-06-13 10:39:10'),(29,7,6,'1996-02-24 19:28:29'),(30,8,9,'1975-02-18 15:58:47'),(31,4,17,'1994-05-20 07:20:50'),(32,2,1,'2012-05-15 03:14:38'),(33,5,6,'2003-04-13 15:05:16'),(34,4,15,'2013-03-20 03:42:18'),(35,7,16,'2016-11-14 07:19:17'),(36,1,2,'1978-05-30 23:37:54'),(37,5,10,'2012-04-12 12:47:41'),(38,8,19,'1976-11-28 20:32:04'),(39,4,6,'2014-06-13 10:12:35'),(40,6,3,'2014-10-26 06:51:03'),(41,2,4,'1977-10-01 00:42:32'),(42,3,10,'1999-09-16 09:29:48'),(43,5,4,'1997-10-10 15:57:51'),(44,5,19,'2002-05-07 05:34:59'),(45,5,15,'2004-05-06 01:40:09'),(46,7,9,'1987-08-29 11:10:25'),(47,1,9,'1999-05-04 20:14:44'),(48,8,1,'2013-05-18 02:51:44'),(49,4,20,'2000-11-18 05:13:35'),(50,1,10,'1974-04-01 19:29:04'),(51,3,3,'2009-01-01 08:06:39'),(52,7,6,'1983-06-24 13:57:13'),(53,5,7,'2001-06-27 04:51:36'),(54,1,8,'2010-06-22 15:40:38'),(55,8,8,'2005-08-13 20:44:05'),(56,7,4,'1997-11-15 04:34:41'),(57,4,11,'1980-08-20 18:58:41'),(58,1,12,'1999-11-10 05:16:48'),(59,5,1,'2007-05-23 12:18:57'),(60,4,20,'1997-12-01 11:07:06'),(61,4,12,'2012-04-22 10:09:20'),(62,4,12,'0000-00-00 00:00:00'),(63,2,17,'1974-03-09 13:17:06'),(64,2,14,'2006-05-23 00:09:16'),(65,6,5,'2015-12-04 02:40:23'),(66,5,8,'2013-10-06 09:32:26'),(67,4,16,'2007-10-19 19:02:18'),(68,8,6,'2004-07-18 07:16:52'),(69,8,13,'1994-09-18 22:12:40'),(70,6,15,'2001-07-24 11:56:32'),(71,5,11,'1997-05-08 08:13:38'),(72,2,17,'0000-00-00 00:00:00'),(73,5,11,'2007-01-29 00:46:12'),(74,7,18,'1972-10-08 02:30:28'),(75,2,11,'2012-08-08 06:06:23'),(76,5,20,'1992-03-03 17:59:04'),(77,3,11,'0000-00-00 00:00:00'),(78,2,17,'2004-12-20 16:44:08'),(79,5,1,'1976-04-03 09:33:28'),(80,8,12,'2015-05-07 06:51:40'),(81,1,11,'1982-05-17 00:05:21'),(82,5,11,'0000-00-00 00:00:00'),(83,2,17,'1983-07-04 04:40:47'),(84,3,1,'2014-07-13 06:03:16'),(85,7,15,'2005-11-22 09:50:13'),(86,3,6,'2016-01-24 01:19:46'),(87,7,14,'1970-04-25 22:44:54'),(88,8,15,'1981-11-19 06:22:17'),(89,5,5,'1982-12-27 11:00:06'),(90,5,11,'1972-06-18 13:59:01'),(91,4,4,'2008-06-17 01:54:35'),(92,6,13,'1993-04-09 05:12:19'),(93,1,12,'1996-12-24 00:24:04'),(94,1,5,'1999-09-03 23:23:03'),(95,1,7,'1982-04-08 01:10:43'),(96,5,12,'1996-11-17 03:22:08'),(97,7,4,'1976-02-29 10:04:08'),(98,2,10,'1980-05-01 04:18:43'),(99,3,4,'1983-10-04 13:03:38'),(100,6,2,'2011-06-16 17:20:37'),(101,4,2,NULL);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,110,'fi3980','1989-01-18',4),(2,98,'js4003','0000-00-00',3),(3,104,'xt8429','2002-10-11',3),(4,43,'yv6392','2010-02-23',3),(5,75,'cf3679','1997-04-06',4),(6,68,'rx3942','1970-03-24',3),(7,143,'mf2647','2014-05-06',3),(8,96,'ia9372','2011-06-25',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant \nProfessor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant \nProfessor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct \nProfessor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct \nProfessor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant \nProfessor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant \nProfessor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant \nProfessor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct \nProfessor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant \nProfessor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id` DESC),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Suite 157','69612 Will Ferry\nEwellfort, KS \n63168','-60.101046','101.481031','7893 Zita Mission Suite 949'),(2,'Apt. 080','711 \nSammie Manor Apt. 863\nNorth Derek, NC 10578-4530','43.715801','3.213285','456 \nLucio Common'),(3,'Suite 057','28742 Cole Forest Suite 483\nPort Jettiestad, RI \n73714','89.842723','176.244614','145 Hal Skyway'),(4,'Apt. 443','356 Anderson Ridge\nSuite 742\nNorth Napoleon, VT 49903-3077','58.930520','109.869865','783 Travis \nJunction Apt. 728'),(5,'Suite 615','160 Skylar Union Apt. 740\nNew Elna, WY 49897-\n8734','79.842372','-61.397932','29350 Vandervort Estates'),(6,'Apt. 102','0552 Oran\nForest Apt. 992\nMurazikview, NH 38317','-33.883942','-170.177924','1097 Wellington\nValleys Apt. 395'),(7,'Apt. 309','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL \n35738-8854','-64.515628','8.086937','408 Arely Streets Suite 405'),(8,'Apt. \n210','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','86.553283','-\n141.049418','5539 Mohammad Heights'),(9,'Suite 985','11269 Satterfield Knoll\nnMauricehaven, WA 28902','5.180228','-52.389443','65717 Emmerich Walks'),(10,'Suite\n343','147 Rempel Fork Apt. 940\nLake Delbert, LA \n88131','44.909586','153.999345','658 Muhammad Land'),(11,'Suite 534','6402 Nienow \nBranch\nAriannatown, OK 28871-1749','-54.503176','-25.420009','27516 Elizabeth Road\nSuite 956'),(12,'Apt. 170','500 Boyle Gardens\nEast Amaliamouth, NY 48976','-\n54.104944','162.891267','67672 Frederik Skyway'),(13,'Suite 059','10112 Rau Station\nApt. 761\nGarryland, AL 55900-5843','2.597478','-155.953323','7712 Maddison Centers\nSuite 850'),(14,'Suite 699','3808 Doyle Trail\nEast Silas, IA 37233-\n1658','30.753077','86.288575','136 O\'Connell Cape'),(15,'Apt. 286','20238 \nAltenwerth Loaf Suite 010\nDereckshire, VA 95393','-66.122207','-149.824885','77965\nDestini Expressway Apt. 959'),(16,'Suite 691','9248 Bogisich Valleys\nTrompstad, NC\n13748-3393','2.515638','177.753639','549 McClure Mission Apt. 918'),(17,'Apt. \n332','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','-\n68.893434','174.800381','11522 Haag Ferry Suite 031'),(18,'Apt. 158','63501 Funk \nMeadows\nUptonland, SD 60736-9385','28.507958','-75.256071','277 Mitchell Groves'),(19,'Suite 575','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','-16.610616','-\n72.268415','43775 Narciso Plains'),(20,'Suite 268','345 Hermiston Streets\nnPadbergton, MT 28143','65.738737','58.149015','3512 Carmela Cove Apt. 544'),(21,'Apt. 524','873 Percival Lights Suite 233\nAliviaview, GA 03965','67.141265','-\n173.513727','3838 Kirk Estates'),(22,'Apt. 190','66253 Reynolds Estate Suite 044\nnSimonisside, WA 61688','5.838614','-111.040987','2610 Nolan Mill'),(23,'Suite \n971','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','38.930320','-\n13.117365','82341 Bernier Hills'),(24,'Suite 241','0276 Tamia Station Suite 735\nnSolonfort, RI 12291-5788','7.830370','144.207856','4173 Theodora Plains'),(25,'Apt. 982','61231 Oda Loaf\nNew Nayeli, AK 82397','-12.199068','-\n17.852044','4485 Larissa Locks'),(26,'Apt. 366','3756 Terry Garden\nEast \nLowellchester, AR 21100-1833','-18.154077','-82.234137','7989 Keira Fields'),(27,'Apt. 655','080 Darian Court\nSchuppemouth, NY 01757-0964','32.289014','-\n51.656823','6354 Chaya Inlet Apt. 859'),(28,'Suite 627','077 Jones Way\nSouth Mac, \nNH 34012','-77.441834','138.508983','8576 Mraz Route'),(29,'Apt. 067','532 Walsh \nRest\nClementtown, KS 33449-1356','21.713872','64.510151','5524 Amina Meadow'),(30,'Apt. 435','62852 Josianne Mills\nEast Jeromeview, LA 82405','3.125229','-\n111.949983','21779 Nikolaus Common Apt. 851'),(31,'Apt. 862','3932 Alysha Station \nSuite 223\nLake Jakeland, WI 16933-0548','-4.658250','90.607759','352 Lehner \nClub'),(32,'Apt. 547','675 Giuseppe Divide\nNorth Angela, NY 08608','-\n72.446033','47.048924','7245 Lindgren Mount'),(33,'Suite 890','752 Cecilia Bypass \nApt. 959\nSanfordhaven, WA 56971-1157','51.665170','77.806552','15710 Leon \nViaduct'),(34,'Suite 328','7598 Klocko Oval Apt. 344\nDavionview, OH \n58638','11.881816','73.668767','657 Annie Mission Apt. 557'),(35,'Suite 753','485 \nGrayce Oval\nWest Jarrett, IA 91623-1323','24.690149','66.045301','369 Schumm Lock \nApt. 238'),(36,'Apt. 645','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','-\n74.927689','83.265896','091 Matilde Plains'),(37,'Suite 951','6198 Fay Wells\nnGaylordstad, CT 61152','66.394980','-59.050144','83844 Colten Locks Apt. 489'),(38,'Suite 216','346 Schaefer Coves\nJadeland, MS 78153','-66.245838','-\n158.722669','5860 Herbert Mill Apt. 351'),(39,'Suite 468','784 Nickolas Prairie\nnEmmanuelleberg, MO 24742','56.745502','-157.051267','333 Kassulke Stravenue Suite \n365'),(40,'Apt. 687','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-\n9670','29.819380','-32.122210','1610 Hermina Harbor'),(41,'Apt. 130','50315 Frami \nAvenue\nLubowitztown, AR 11074','-84.989439','-80.878304','0930 Kessler Pines'),(42,'Apt. 621','46127 Rowe Meadows\nPort Kacey, OH \n67514','42.828977','103.587679','27321 Jonas Lodge'),(43,'Apt. 339','13115 Goyette \nHill Apt. 020\nNew Viviane, WI 82795-6389','-64.609637','91.929908','674 Axel \nSquare Apt. 434'),(44,'Suite 091','64736 Michale Dam Suite 996\nVioletton, CT \n07419-1266','2.426098','-55.634546','90325 Samson Manors'),(45,'Suite 606','8865 \nWeimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','9.188521','150.453880','70401\nAndres Cape'),(46,'Apt. 895','0651 Hoeger Route\nNew Madelineport, NJ 20757','-\n87.709982','76.089939','4599 Crona Wall'),(47,'Suite 874','48826 Jacobson Rue Apt. \n189\nNew Javon, MT 26911','-21.845400','35.257482','827 Barrows Grove Suite 824'),(48,'Apt. 942','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','-78.054954','-\n130.852481','832 Muller Valley'),(49,'Apt. 614','69415 Gerry Wall Suite 971\nnBeattyfort, VT 50012-9205','72.283789','-108.170390','4022 Koelpin Fords Apt. \n743'),(50,'Apt. 030','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','-\n38.728546','-35.072223','0068 Tromp Centers'),(51,'Apt. 940','794 Hilbert Roads\nnWilhelminemouth, DC 00100','-8.897519','88.848386','346 Janae Harbor Suite 458'),(52,'Apt. 634','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-\n6419','23.408943','165.398873','36035 Barton Crest'),(53,'Apt. 782','746 Jalon \nFort\nDariofort, MA 79648','-59.088037','-103.347456','321 Margarett Path'),(54,'Suite 426','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','-\n26.565917','115.692025','189 Blick Manors Apt. 066'),(55,'Apt. 709','62270 Katelynn\nViews\nTomborough, WV 24093-0247','-37.074660','76.206560','2245 Alexander Forest \nApt. 581'),(56,'Suite 991','7814 Stanley Ramp\nNorth Alene, MA 01296-\n2354','46.302614','-25.734456','49283 Kamryn Point Suite 174'),(57,'Suite \n960','65592 Liam Route\nLucymouth, VA 96459','-20.775978','121.809647','1714 Dena \nFerry Suite 821'),(58,'Apt. 765','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL \n65517-3493','-82.197132','47.558329','5529 Rosamond Forges Suite 578'),(59,'Suite \n078','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','-84.757382','-\n58.654951','3021 Baumbach Terrace Suite 512'),(60,'Apt. 554','8312 Elaina Stream\nnOsborneview, ME 31318','-41.348220','-36.548238','9338 Chadd Landing'),(61,'Apt. \n649','32904 Kunze Point\nWest Marlon, KS 96283','77.113732','173.740537','036 \nRebeca Ports Suite 971'),(62,'Suite 285','2055 Reinger Isle Suite 643\nPort \nGilbert, CO 29400','41.839736','140.371966','6591 Murazik Fields'),(63,'Suite \n131','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','-\n12.717245','98.803269','0573 Jennie Centers Suite 444'),(64,'Suite 549','38523 \nEbert Plains\nNorth Reesemouth, PA 81161','39.412911','-13.612642','847 Alexandrine\nPine'),(65,'Suite 057','577 Bosco Green Apt. 208\nRubytown, CO \n67492','74.904833','138.781453','715 Elena Prairie'),(66,'Apt. 224','2759 Emmalee \nRadial\nBogisichmouth, GA 93636-4262','80.350868','109.402133','32117 Larkin Glens \nSuite 120'),(67,'Suite 842','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-\n0332','51.879563','139.262053','6672 O\'Reilly Station Apt. 304'),(68,'Suite \n051','1579 Cyrus Square\nPort Raphaelle, SD 02230','54.628958','16.532622','60762 \nLafayette Mount'),(69,'Suite 566','354 Konopelski Mission Suite 967\nNorth Waldo, \nNH 57787','55.835435','121.519774','37963 Eliseo Field Suite 782'),(70,'Suite \n194','270 Wyman Burgs\nSchmidtborough, ID 31185','2.428639','18.915083','3011 \nKeagan Cliff'),(71,'Suite 400','7180 Devante Hills Suite 245\nSouth Rossie, ND \n77848-7427','-31.676452','-171.620202','601 Adriana Forge'),(72,'Suite 170','5862 \nLeatha Orchard Suite 024\nReubenmouth, LA 38852','-48.152329','144.854379','57056 \nLang Vista Suite 576'),(73,'Suite 972','775 Quinton Lane Apt. 482\nQuitzonfort, ID \n32867-1172','5.775053','120.802147','01687 Russel Streets'),(74,'Apt. 814','344 \nRylee Vista Apt. 872\nElvistown, CO 63706-4744','-67.390203','-38.347276','938 \nAbshire Mission'),(75,'Apt. 669','45232 Jast Shoals Apt. 768\nWest Nelsview, KY \n81086-6074','-71.989135','168.958988','404 Ena Crest Suite 279'),(76,'Suite \n564','576 Huels Burgs\nPort Fritz, OH 46070-9005','47.057137','115.145131','2263 \nElla Lodge Apt. 429'),(77,'Suite 399','065 Stracke Mountain Suite 204\nnWildermantown, MS 82948-2075','-53.323383','140.320853','4862 Stone Coves'),(78,'Apt. 094','91865 Letha Village Suite 621\nLangchester, ND 52116','-\n6.897948','-60.925732','833 Colten Shore'),(79,'Apt. 567','25427 Casimer Oval Apt. \n791\nNorth Herta, TN 66396-2943','-33.475706','131.064403','395 Koepp Plain'),(80,'Suite 693','688 Hahn Centers\nPort Alphonsoview, RI 76712','-\n53.028515','19.837964','165 Mercedes Place Apt. 655'),(81,'Suite 509','658 Conor \nPort Apt. 489\nAbigaleview, IN 71308-0448','-76.085998','-54.565506','2862 Marty \nThroughway'),(82,'Apt. 678','6248 Frida Neck\nHarveyport, NJ 19092-\n3293','0.498058','39.425007','45787 Chaya Forks'),(83,'Apt. 539','19376 Name Neck \nSuite 362\nAntonioland, NV 49104-5101','-72.426565','-153.978776','60734 Kathlyn \nRue Suite 096'),(84,'Suite 174','16736 Annabel Rapid Suite 989\nPort\n Halie, VT 56468','20.498983','-156.991411','0603 Ryan Glens'),(85,'Apt. 010','522 \nWaelchi Ramp\nSouth Polly, HI 61817-1149','-67.186395','95.299372','12273 Paucek \nMount Suite 261'),(86,'Suite 873','20209 Mazie Glens Suite 966\nGwenview, KY \n53849','-79.339662','-18.135492','9742 Nico Turnpike Apt. 716'),(87,'Apt. \n198','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-\n7217','81.564385','129.153519','667 Nyasia Stravenue Apt. 223'),(88,'Apt. \n386','3824 Jerald Wells\nLednerchester, IL 34650','-62.141340','-50.218426','313 \nToy Shore'),(89,'Apt. 627','9946 Evangeline Trail\nMitchellfurt, KS 78732','-\n45.361426','141.801986','48675 Mann Mission'),(90,'Apt. 408','359 Reichel Course\nnPort Heathville, NV 22035-1749','-37.629458','142.868503','04507 Aisha Light'),(91,'Apt. 940','2841 Matilda Light\nNew Berneice, KY 93006-\n1067','44.019826','61.089192','7894 Wiegand Center'),(92,'Suite 523','09351 Dawn \nIsle\nPort Monty, IN 03900','5.537848','-47.637225','000 Gleichner Groves Suite \n760'),(93,'Suite 515','9156 Earlene Drives\nFadelbury, VA 22109-1994','-\n58.840136','-151.166289','7213 Unique Curve Apt. 238'),(94,'Suite 390','3194 \nVonRueden Road Suite 638\nEast Tiana, NE 22875','64.883603','157.722086','843 \nKonopelski Gardens Apt. 507'),(95,'Suite 353','441 Steuber Landing Suite 981\nnBayleehaven, DC 05649','28.826289','41.172158','853 Fritsch Street Suite 159'),(96,'Suite 901','94240 Tremblay Viaduct Suite 169\nNew Melody, AR \n25552','55.711350','161.543504','9168 Lilly Ranch Apt. 651'),(97,'Apt. 441','26914 \nJohnston Via Suite 614\nGloverport, GA 39771','-26.328698','120.427582','2852 \nMarisol Meadows Suite 534'),(98,'Apt. 481','863 Nina Village\nSouth Vernonberg, WA \n34268','-68.889173','84.854941','57866 Birdie Corners'),(99,'Apt. 412','50421 \nHeaney Unions\nNew Pasquale, AK 98565-2159','-35.314166','-155.680802','97642 \nRempel Tunnel Suite 610'),(100,'Apt. 474','42828 Evangeline Square\nJacklynfort, AK\n42024-2081','66.232111','91.681238','778 Cassandre Cliff');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_catalog`
--

DROP TABLE IF EXISTS `menu_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_catalog` (
  `Item_id` int NOT NULL,
  `Item_Name` varchar(60) NOT NULL,
  `Item_Desc` varchar(200) NOT NULL,
  `Item_Price` decimal(15,3) NOT NULL,
  `restaurant_id` int NOT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `menu_catalog_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_catalog`
--

LOCK TABLES `menu_catalog` WRITE;
/*!40000 ALTER TABLE `menu_catalog` DISABLE KEYS */;
INSERT INTO `menu_catalog` VALUES (1,'Chicken Soup','Hot Liquid Soup with Tinge of Chicken and Spices',7.050,102),(2,'Chicken Nuggets','Hot and Crispy Nuggets with some added spices',5.600,101),(3,'Veggie Delight','A mix of boiled veggies with cheese and salad',8.400,104),(4,'Vegetable Spring Roll','Roll consisting of mixed vegetables with crispy wonton wrapper',8.700,105),(5,'Garden Salad','Fresh Romaine Lettuce with added carrots and grape tomatoes',10.200,103),(6,'Chocolate Lava Cake','Lava Cake consisting of Hot Chocolate',6.800,106),(7,'Chicken Pizza','Hot and Soft Pizza with olives and chicken',10.050,102),(8,'French Fries','Hot and Crispy French Fries with Ranch',3.600,101),(9,'Veg Sub','A mix of boiled veggies with salad dressing',7.600,104),(10,'Beef Spring Roll','Roll consisting of beef with crispy wonton wrapper',11.700,105),(11,'Romaine Salad','Fresh Romaine Lettuce with added cheese',8.200,103),(12,'Chocolate Brownie','Brownie with dry fruits topping',6.800,106),(13,'Chicken Burger','Burger consisting of Chicken and Cheese',7.050,102),(14,'Steak Burger','Burger consisting of Steak and Sauce',12.600,101),(15,'Chocolate Cookies','Choco Chip Cookies baked in low flame',4.400,104),(16,'Orange Chicken','Chicken dipped in Orange Sauce',6.700,105),(17,'SoftDrink','Drinks with Ice Cubes',3.200,103),(18,'Flavoured Yoghurt','Yoghurt in different flavours',4.800,106);
/*!40000 ALTER TABLE `menu_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `location_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float NOT NULL,
  `status_id` int NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  KEY `fk_O_status_id_idx` (`status_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,1,1,1,15.63,6.63,0,'2021-10-06 13:22:47'),(2,2,2,2,2,2,18.03,9.43,0,'2021-09-06 15:46:16'),(3,3,3,3,3,3,11.91,7.42,0,'2021-07-06 17:31:47'),(4,4,4,4,4,4,19.13,6.26,0,'0000-00-00 00:00:00'),(5,5,5,5,5,5,13.76,6.24,0,'2021-08-11 14:24:16'),(6,6,6,6,6,6,5.4,4.83,0,'0000-00-00 00:00:00'),(7,7,7,7,7,7,14.05,8.57,0,'0000-00-00 00:00:00'),(8,8,8,8,8,8,3.81,2.38,0,'0000-00-00 00:00:00'),(9,9,9,9,1,9,17.1,6.72,0,'0000-00-00 00:00:00'),(10,10,10,10,2,10,12.71,1.82,0,'0000-00-00 00:00:00'),(11,11,11,11,3,11,3.9,7.26,0,'0000-00-00 00:00:00'),(12,12,12,12,4,12,6.82,7.4,0,'0000-00-00 00:00:00'),(13,13,13,13,5,13,4.73,7.43,0,'0000-00-00 00:00:00'),(14,14,14,14,6,14,12.08,1.21,0,'0000-00-00 00:00:00'),(15,15,15,15,7,15,3.83,4.77,0,'0000-00-00 00:00:00'),(16,16,16,16,8,16,12.43,2.76,0,'0000-00-00 00:00:00'),(17,17,17,17,1,17,6.61,4.85,0,'0000-00-00 00:00:00'),(18,18,18,18,2,18,7.89,5.69,0,'0000-00-00 00:00:00'),(19,19,19,19,3,19,16.54,4.88,0,'0000-00-00 00:00:00'),(20,20,20,20,4,20,3.21,4.98,0,'0000-00-00 00:00:00'),(21,21,21,21,5,21,5.19,4.17,0,'0000-00-00 00:00:00'),(22,22,22,22,6,22,19,1.39,0,'0000-00-00 00:00:00'),(23,23,23,23,7,23,14.5,3.28,0,'0000-00-00 00:00:00'),(24,24,24,24,8,24,11.81,2.71,0,'0000-00-00 00:00:00'),(25,25,25,25,1,25,6.83,4.85,0,'0000-00-00 00:00:00'),(26,26,26,26,2,26,7.24,5.65,0,'0000-00-00 00:00:00'),(27,27,27,27,3,27,10.56,1.73,0,'0000-00-00 00:00:00'),(28,28,28,28,4,28,4.25,4.98,0,'0000-00-00 00:00:00'),(29,29,29,29,5,29,6.68,8.66,0,'0000-00-00 00:00:00'),(30,30,30,30,6,30,14.5,6.47,0,'0000-00-00 00:00:00'),(31,31,31,31,7,31,14.92,9.53,0,'0000-00-00 00:00:00'),(32,32,32,32,8,32,4.12,9.42,0,'0000-00-00 00:00:00'),(33,33,33,33,1,33,7.02,7.99,0,'0000-00-00 00:00:00'),(34,34,34,34,2,34,8.6,6.69,0,'0000-00-00 00:00:00'),(35,35,35,35,3,35,8.98,4.72,0,'0000-00-00 00:00:00'),(36,36,36,36,4,36,7.94,4.78,0,'0000-00-00 00:00:00'),(37,37,37,37,5,37,14.8,2.13,0,'0000-00-00 00:00:00'),(38,38,38,38,6,38,19.05,6.61,0,'0000-00-00 00:00:00'),(39,39,39,39,7,39,12.49,5.97,0,'0000-00-00 00:00:00'),(40,40,40,40,8,40,15.56,6.01,0,'0000-00-00 00:00:00'),(41,41,41,41,1,41,8.85,7.06,0,'0000-00-00 00:00:00'),(42,42,42,42,2,42,12.28,5.52,0,'0000-00-00 00:00:00'),(43,43,43,43,3,43,9.28,9.63,0,'0000-00-00 00:00:00'),(44,44,44,44,4,44,9.78,8,0,'0000-00-00 00:00:00'),(45,45,45,45,5,45,12.43,5.11,0,'0000-00-00 00:00:00'),(46,46,46,46,6,46,4.11,9.65,0,'0000-00-00 00:00:00'),(47,47,47,47,7,47,14.29,6.65,0,'0000-00-00 00:00:00'),(48,48,48,48,8,48,5.69,3.31,0,'0000-00-00 00:00:00'),(49,49,49,49,1,49,12.52,6.38,0,'0000-00-00 00:00:00'),(50,50,50,50,2,50,8.84,9.92,0,'0000-00-00 00:00:00'),(51,51,51,51,3,51,5.69,1.5,0,'0000-00-00 00:00:00'),(52,52,52,52,4,52,14.53,4.58,0,'0000-00-00 00:00:00'),(53,53,53,53,5,53,10.23,3.61,0,'0000-00-00 00:00:00'),(54,54,54,54,6,54,10.7,7.36,0,'0000-00-00 00:00:00'),(55,55,55,55,7,55,14.03,8.66,0,'0000-00-00 00:00:00'),(56,56,56,56,8,56,13.46,1.26,0,'0000-00-00 00:00:00'),(57,57,57,57,1,57,13.98,8.85,0,'0000-00-00 00:00:00'),(58,58,58,58,2,58,15.21,6.59,0,'0000-00-00 00:00:00'),(59,59,59,59,3,59,4.6,8.25,0,'0000-00-00 00:00:00'),(60,60,60,60,4,60,3.27,6.39,0,'0000-00-00 00:00:00'),(61,61,61,61,5,61,9.39,2.63,0,'0000-00-00 00:00:00'),(62,62,62,62,6,62,3.7,2.47,0,'0000-00-00 00:00:00'),(63,63,63,63,7,63,18.49,7.01,0,'0000-00-00 00:00:00'),(64,64,64,64,8,64,15.51,8.26,0,'0000-00-00 00:00:00'),(65,65,65,65,1,65,6.8,9.41,0,'0000-00-00 00:00:00'),(66,66,66,66,2,66,12.57,1.88,0,'0000-00-00 00:00:00'),(67,67,67,67,3,67,8.69,6.21,0,'0000-00-00 00:00:00'),(68,68,68,68,4,68,9.38,9.56,0,'0000-00-00 00:00:00'),(69,69,69,69,5,69,18.23,3.89,0,'0000-00-00 00:00:00'),(70,70,70,70,6,70,13.39,9.65,0,'0000-00-00 00:00:00'),(71,71,71,71,7,71,17.71,3.01,0,'0000-00-00 00:00:00'),(72,72,72,72,8,72,10.59,2.03,0,'0000-00-00 00:00:00'),(73,73,73,73,1,73,6.99,9.8,0,'0000-00-00 00:00:00'),(74,74,74,74,2,74,14.14,3.98,0,'0000-00-00 00:00:00'),(75,75,75,75,3,75,16.73,7.27,0,'0000-00-00 00:00:00'),(76,76,76,76,4,76,6.64,5.09,0,'0000-00-00 00:00:00'),(77,77,77,77,5,77,16.48,1.15,0,'0000-00-00 00:00:00'),(78,78,78,78,6,78,18.61,6.49,0,'0000-00-00 00:00:00'),(79,79,79,79,7,79,18.66,8.19,0,'0000-00-00 00:00:00'),(80,80,80,80,8,80,7.6,9.54,0,'0000-00-00 00:00:00'),(81,81,81,81,1,81,16.72,4.05,0,'0000-00-00 00:00:00'),(82,82,82,82,2,82,5.64,7.18,0,'0000-00-00 00:00:00'),(83,83,83,83,3,83,7.39,9.14,0,'0000-00-00 00:00:00'),(84,84,84,84,4,84,11.61,1.57,0,'0000-00-00 00:00:00'),(85,85,85,85,5,85,16.74,8.84,0,'0000-00-00 00:00:00'),(86,86,86,86,6,86,19.88,2.43,0,'0000-00-00 00:00:00'),(87,87,87,87,7,87,7.52,4.32,0,'0000-00-00 00:00:00'),(88,88,88,88,8,88,14.63,4.4,0,'0000-00-00 00:00:00'),(89,89,89,89,1,89,19.45,9.89,0,'0000-00-00 00:00:00'),(90,90,90,90,2,90,12.5,8.23,0,'0000-00-00 00:00:00'),(91,91,91,91,3,91,10.34,3.69,0,'0000-00-00 00:00:00'),(92,92,92,92,4,92,11.34,6.34,0,'0000-00-00 00:00:00'),(93,93,93,93,5,93,15.05,8.26,0,'0000-00-00 00:00:00'),(94,94,94,94,6,94,7.89,7.05,0,'0000-00-00 00:00:00'),(95,95,95,95,7,95,16.69,9.19,0,'0000-00-00 00:00:00'),(96,96,96,96,8,96,5.71,8.39,0,'0000-00-00 00:00:00'),(97,97,97,97,1,97,16.9,9.15,0,'0000-00-00 00:00:00'),(98,98,98,98,2,98,15.63,8.92,0,'0000-00-00 00:00:00'),(99,99,99,99,3,99,3.71,2.53,0,'0000-00-00 00:00:00'),(100,100,100,100,4,100,5.08,2.74,0,'0000-00-00 00:00:00'),(101,1,2,3,4,5,6,1,0,'2021-10-06 13:22:47'),(102,2,2,2,2,102,16.13,7.63,0,'2021-09-06 15:46:16'),(103,3,3,3,3,103,17.26,10.7,0,'2021-07-06 17:31:47');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_bill`
--

DROP TABLE IF EXISTS `order_bill`;
/*!50001 DROP VIEW IF EXISTS `order_bill`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_bill` AS SELECT 
 1 AS `customer_id`,
 1 AS `order_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_rating`
--

DROP TABLE IF EXISTS `order_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_rating` (
  `rating_id` int NOT NULL,
  `order_id` int NOT NULL,
  `food_rating` int DEFAULT NULL,
  `delivery_rating` int DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `order_id_indx` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_rating`
--

LOCK TABLES `order_rating` WRITE;
/*!40000 ALTER TABLE `order_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `status_id` int NOT NULL,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Delivered'),(2,'On the way'),(3,'Preparing'),(4,'Order placed');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `Customer_id` int NOT NULL,
  `Total_Amount` float NOT NULL,
  `Delivery_Price` float NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `_indx` (`order_id`),
  KEY `Customer_id_indx` (`Customer_id`),
  CONSTRAINT `Customer_id` FOREIGN KEY (`Customer_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,1,20.63,7.25),(2,4,2,16.85,4.25),(3,5,3,13.89,3.85),(4,7,4,10.54,2.08),(5,6,5,4.9,1.87),(6,10,6,25.34,6.45),(7,15,7,14.52,9.01),(8,19,8,19.67,7.05);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  `cell` bigint DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Keith Turner','shanon08@example.com',9768623560),(2,'Ms. Antonette Keeling','brady73@example.com',9710540609),(3,'Miss Rosanna \nConnelly','alayna.schowalter@example.net',9436829146),(4,'Noel \nEmard','icie96@example.org',9166085646),(5,'Trudie McClure \nJr.','hwolf@example.net',9831320422),(6,'Dr. Velva \nHowe','schmidt.stephan@example.org',9401293781),(7,'Colby \nStokes','william.predovic@example.net',9595806999),(8,'Rosie Shields \nV','prosacco.vidal@example.com',9324930770),(9,'Ms. Marlee Spinka \nSr.','otilia80@example.com',9670194175),(10,'Skylar Koelpin \nJr.','nterry@example.com',9848597984),(11,'Prof. Marquis Sawayn \nSr.','mills.hollis@example.com',9888512127),(12,'Isadore Auer \nIV','wkuvalis@example.org',9787570990),(13,'Candace \nKoss','kassulke.estevan@example.net',9308906690),(14,'Carey \nSawayn','rgreenfelder@example.org',9256868854),(15,'Mr. Dayne Grimes \nDVM','phaley@example.org',9757688590),(16,'Rosie \nBrown','ron18@example.net',9633493813),(17,'Kayli \nMaggio','stroman.arden@example.net',9524209592),(18,'Eddie \nOsinski','rocio.mann@example.com',9150770929),(19,'Dr. Lia Marks \nJr.','kmedhurst@example.com',9800676038),(20,'Baron \nFeil','harris.angelina@example.com',9863696126),(21,'Lyric Cassin \nDVM','tkovacek@example.net',9767050989),(22,'Sigmund \nTorp','auer.everardo@example.net',9690677374),(23,'Rahsaan \nCollins','macie66@example.org',9634329045),(24,'Ansel \nWelch','jeff47@example.net',9842908406),(25,'Axel Bins \nPhD','bruen.merlin@example.net',9148329336),(26,'Frank \nLeffler','kautzer.ernestine@example.net',9451359352),(27,'Eden \nSchowalter','montana49@example.com',9918645459),(28,'Eldridge \nVon','uupton@example.net',9988165013),(29,'Dagmar \nKassulke','emilia.bauch@example.com',9213090583),(30,'Ms. Madelyn Gleichner \nII','hans36@example.net',9383676151),(31,'Lilliana \nEmard','xnicolas@example.com',9945887810),(32,'Mrs. Cheyanne \nKeeling','janelle32@example.org',9289654741),(33,'Gabe \nCole','jonathan26@example.com',9344083273),(34,'Mr. Gabe Bauch \nPhD','konopelski.kylee@example.net',9416224204),(35,'Esther \nBrekke','anna04@example.org',9577172566),(36,'Mrs. Freida \nMurphy','delmer.wiza@example.com',9837045438),(37,'Kellie Nicolas \nV','sylvia31@example.org',9235802954),(38,'Blaise \nDare','madison95@example.org',9543994427),(39,'Randi Witting \nIV','hschultz@example.net',9418786674),(40,'Dr. Kacey \nGorczany','camron52@example.com',9238976740),(41,'Alexandrine \nDonnelly','queen.davis@example.org',9403417764),(42,'Adonis \nWilkinson','kamryn97@example.org',9969106027),(43,'Mr. Marcelo Breitenberg \nSr.','cconn@example.net',9545589550),(44,'Kraig \nLittel','lubowitz.lorenza@example.com',9801051720),(45,'Althea \nShanahan','mraz.danial@example.org',9179524322),(46,'Haylee \nHickle','kirlin.della@example.net',9389501779),(47,'Mallory \nRolfson','oraynor@example.org',9944432699),(48,'Lelia \nTromp','koch.nathen@example.net',9721533567),(49,'Nicolette \nLeuschke','ervin.homenick@example.org',9943930303),(50,'Dr. Winston Gottlieb \nDVM','xwill@example.net',9755087308),(51,'Zackery \nHermiston','donny20@example.org',9717042066),(52,'Kari \nRunte','weimann.marshall@example.org',9873383120),(53,'Alena \nMacejkovic','jesus54@example.org',9826083434),(54,'Braeden \nSchamberger','wilfred.hickle@example.org',9294415272),(55,'Mariana Schowalter \nII','zion.koch@example.net',9236157601),(56,'Osvaldo \nCasper','queen81@example.com',9627646768),(57,'Malika \nBeatty','yharvey@example.com',9598094832),(58,'Lisa Conroy \nJr.','ilueilwitz@example.com',9228064461),(59,'Earl \nDare','gwendolyn.gerhold@example.net',9673098021),(60,'Juvenal \nMcLaughlin','ryan.d\'amore@example.org',9246052737),(61,'Prof. Khalil \nHowe','brady08@example.com',9687594736),(62,'Emanuel \nSchmitt','althea.koch@example.org',9284770565),(63,'Bianka \nLarkin','jaylan46@example.net',9641407974),(64,'Samson \nHansen','nathaniel.rowe@example.net',9139417942),(65,'Westley \nLakin','enrique60@example.org',9743557343),(66,'Mr. Shane \nLebsack','fhirthe@example.net',9313519846),(67,'Emelie \nGoyette','uharris@example.com',9278293617),(68,'Ms. Meredith Gerlach \nII','rubie.rosenbaum@example.net',9703845293),(69,'Miss Alberta Conroy \nI','larkin.ernestine@example.org',9403734826),(70,'Elnora \nWeissnat','wpadberg@example.com',9348642594),(71,'Joey Reichel \nMD','jerald.skiles@example.org',9120762353),(72,'Ephraim \nJohnson','kovacek.ryann@example.com',9268160216),(73,'Mrs. Yesenia Hills \nPhD','rsteuber@example.net',9537042178),(74,'Diana \nStroman','alec.lebsack@example.com',9166374642),(75,'Mr. Alfonso Ullrich \nIV','beer.camren@example.net',9456875969),(76,'Dr. Deon Harber \nIV','mafalda94@example.org',9279814004),(77,'Angus Steuber \nV','laverna47@example.com',9392527907),(78,'Mrs. Antoinette Tremblay \nV','tanner52@example.com',9627926487),(79,'Mr. Alexandre \nBalistreri','orodriguez@example.org',9410869140),(80,'Seth Russel \nV','schmidt.waylon@example.org',9319090756),(81,'Mr. Terrell \nBecker','tyler11@example.org',9519262117),(82,'Viviane \nBayer','harrison18@example.net',9427541515),(83,'Mr. Baron Windler \nI','seth56@example.net',9242394545),(84,'Mrs. Kaitlyn Jacobs \nSr.','vhettinger@example.org',9259287865),(85,'Javier \nDooley','tillman.jude@example.com',9143324793),(86,'Alvera \nKling','germaine.runolfsdottir@example.com',9403386314),(87,'Prof. Kamryn \nArmstrong','tyrel13@example.org',9163099974),(88,'Alexandrine Berge \nSr.','tia55@example.org',9647050394),(89,'Beryl \nAdams','randall.strosin@example.com',9607795527),(90,'Dr. Buster Parisian \nIV','nlangworth@example.org',9965444463),(91,'Prof. Hiram \nShanahan','mazie.towne@example.org',9452681581),(92,'Joy \nMacejkovic','mccullough.kenyon@example.org',9999885755),(93,'Stone \nKshlerin','peter.cole@example.org',9851384624),(94,'Gladyce \nCole','wweber@example.com',9459837816),(95,'Virginia \nRoob','augustus08@example.net',9734279443),(96,'Prof. Rahul \nHowe','anita.torphy@example.com',9644683434),(97,'Bryon \nHeidenreich','judah.keebler@example.org',9968760342),(98,'Prof. Yessenia \nBatz','percy62@example.com',9328404976),(99,'Emil \nMonahan','cassin.elvie@example.org',9168018675),(100,'Guillermo \nHaley','melvin83@example.com',9266256971),(101,'Dr. Xavier \nRyan','sbatz@example.net',9290692579),(102,'Dr. Anibal \nGrady','tmurazik@example.org',9538369344),(103,'Willis \nWill','chance.leannon@example.com',9336382266),(104,'Myron \nMayert','erling.boyle@example.org',9853200718),(105,'Eleonore \nKling','billy.mills@example.org',9278446285),(106,'Adrian Orn \nMD','felipe.osinski@example.net',9299958360),(107,'Mrs. Lavina \nWill','bhuel@example.net',9468867991),(108,'Easton Buckridge \nMD','smcdermott@example.org',9303570434),(109,'Peyton Christiansen \nII','white.sherwood@example.org',9383615879),(110,'Glennie Corkery \nSr.','filomena.mayer@example.com',9467683043),(111,'Prof. Nola Homenick \nV','brennan.sauer@example.net',9318343144),(112,'Arnaldo Raynor \nIV','eichmann.rashawn@example.com',9836340755),(113,'Fabiola Gusikowski \nV','mayert.minerva@example.org',9121545851),(114,'Maxie \nGrady','laney.flatley@example.net',9628920683),(115,'Mr. Sigrid \nMorissette','hodkiewicz.dean@example.org',9699469427),(116,'Prof. Mayra \nSchamberger','hnienow@example.net',9606514404),(117,'Elisha \nO\'Conner','jabbott@example.com',9569544603),(118,'Colt \nWyman','kozey.austyn@example.com',9159123982),(119,'Asha \nKuhic','kovacek.shea@example.com',9804473835),(120,'Claudie \nWilliamson','vwintheiser@example.org',9790100203),(121,'Eula \nRolfson','wruecker@example.org',9742865777),(122,'Prof. Mitchel O\'Kon \nDVM','tierra46@example.net',9759421993),(123,'Erica \nSporer','khickle@example.net',9537817472),(124,'Greta Hodkiewicz \nV','alexandro02@example.com',9765562675),(125,'Delores \nHuel','schimmel.ludie@example.net',9976770718),(126,'Kassandra Quigley \nSr.','oo\'conner@example.com',9463113682),(127,'Hayley \nPfeffer','rhoda36@example.com',9793665395),(128,'Garrett \nBotsford','jaunita.schmeler@example.com',9868074160),(129,'Marco \nZboncak','vlubowitz@example.net',9115868268),(130,'Walton \nGutkowski','kelsie92@example.org',9363265672),(131,'Xzavier \nHilpert','ysporer@example.com',9803198155),(132,'Dr. Alec \nLeannon','labadie.karley@example.com',9980582077),(133,'Hobart \nMiller','mann.antonio@example.com',9135280373),(134,'Ike \nParisian','luella.cummerata@example.org',9463566099),(135,'Casey \nFeil','jdaniel@example.net',9166649183),(136,'Leopoldo \nWelch','hills.merritt@example.org',9627584754),(137,'Chasity \nKiehn','anna.spinka@example.net',9695158064),(138,'Kenya \nLittel','bradtke.zita@example.org',9385173006),(139,'Prof. Roxanne Wilderman \nJr.','joel.olson@example.net',9291456099),(140,'Miss Aubrey Sawayn \nMD','trippin@example.net',9535890585),(141,'Prof. Nathen \nReichert','shanny.upton@example.net',9645155276),(142,'Ms. Kassandra \nJacobi','hadley.kunze@example.com',9362461068),(143,'Myrl \nGoodwin','kub.jameson@example.net',9851877198),(144,'Bill \nDouglas','hassan61@example.org',9416415238),(145,'Mr. Peter \nD\'Amore','otha37@example.org',9562685050),(146,'Dr. Keshawn Greenholt \nPhD','gillian.von@example.net',9692023975),(147,'Ms. Sincere \nMcDermott','eudora.grant@example.com',9417365224),(148,'Prof. Davonte \nHarvey','fay.simone@example.net',9198585720),(149,'Adeline \nOndricka','wroob@example.org',9489869630),(150,'Ms. Opal Fisher \nIV','ukuvalis@example.net',9304350705),(151,'Dora \nDouglas','imelda58@example.net',9351442884),(152,'Prof. Gust \nSchulist','marlin11@example.org',9253008977),(153,'Mr. Jamaal \nGraham','gkreiger@example.com',9299781232),(154,'Estevan \nStamm','dare.aurelie@example.com',9975958279),(155,'Eda \nLowe','damian04@example.org',9738082899),(156,'Caitlyn \nRunolfsdottir','nwilliamson@example.net',9157717821),(157,'Josh \nBuckridge','ali85@example.org',9214116473),(158,'Amya \nCole','rquitzon@example.net',9739257967),(159,'Jammie \nBernhard','gayle.hagenes@example.org',9145191828),(160,'Meredith \nKonopelski','bode.marianne@example.com',9722902908),(161,'Dr. Russ \nUllrich','kaylie25@example.org',9496887232),(162,'Miss Amanda Beier \nIV','haven70@example.com',9979440999),(163,'Everardo \nVonRueden','vokuneva@example.net',9307513590),(164,'Kyla\n Dibbert','katherine17@example.com',9397654914),(165,'Dr. Celestino \nHegmann','xwaters@example.net',9574385694),(166,'Adella \nGutmann','helga34@example.com',9403978574),(167,'Arch \nCassin','qmuller@example.net',9691385176),(168,'Candida \nGutmann','kuphal.elwyn@example.net',9919339129),(169,'Millie \nMcClure','quitzon.yvonne@example.com',9379344758),(170,'Will \nHowe','gutmann.novella@example.org',9149480450),(171,'Celine \nMertz','hilpert.caden@example.net',9601448593),(172,'Cletus Connelly \nDVM','romaguera.odessa@example.com',9568191939),(173,'Abel \nMcLaughlin','maximus04@example.com',9596114054),(174,'Marian \nKuphal','bkirlin@example.org',9826873637),(175,'Rita Vandervort \nII','dooley.godfrey@example.net',9820809334),(176,'Leann O\'Kon \nSr.','ruthie15@example.org',9521975342),(177,'Maryam \nHyatt','miguel74@example.org',9835366363),(178,'Carmella \nKulas','hagenes.wilbert@example.net',9280103270),(179,'Royce Ledner \nII','lbogan@example.org',9511542747),(180,'Araceli \nEmard','hcassin@example.org',9314707204),(181,'Alexandro Strosin \nDVM','kathleen.parisian@example.com',9814787976),(182,'Ernestina \nBlanda','pearl25@example.com',9871777207),(183,'Kelly \nKunze','lloyd62@example.com',9462462695),(184,'Bert Miller \nDVM','zack.littel@example.net',9532493167),(185,'Ima Deckow \nPhD','o\'keefe.kevon@example.org',9325208962),(186,'Giovanna \nHuels','nkrajcik@example.net',9352726912),(187,'Kaitlyn \nHeller','mozell.bechtelar@example.com',9558063000),(188,'Evan Herman \nSr.','adolfo.green@example.net',9553259799),(189,'Carroll \nHahn','norberto98@example.com',9447842897),(190,'Isaias \nShields','stiedemann.chandler@example.net',9775912526),(191,'Mrs. Emmie Nikolaus \nSr.','mcdermott.austin@example.com',9203282907),(192,'Audreanne \nOlson','litzy.prosacco@example.com',9203988422),(193,'Mr. Lawrence \nMcClure','holly.wolff@example.com',9961654066),(194,'Dr. Hester \nFeil','cartwright.lonzo@example.net',9976085056),(195,'Pearl \nGottlieb','katrina.marvin@example.org',9371313181),(196,'Aubrey \nKihn','weissnat.annetta@example.com',9615559380),(197,'Odell \nGraham','thansen@example.net',9891213805),(198,'Thaddeus \nNader','rohan.ressie@example.com',9396553983),(199,'Miss Stephany \nHarris','judge.predovic@example.org',9368433529),(200,'Prof. Erick \nDaniel','khills@example.com',9755384471),(201,'Dhananjay \nArora','darora2@uncc.edu',9802878895),(202,'Dhananjay \nArora','darora2@uncc.edu',9802878895),(203,'Dhananjay \nArora','darora2@uncc.edu',9802878896),(204,'Dhananjay \nArora','darora2@uncc.edu',9802878897),(205,'Akshay \nBabu','ababu1@uncc.edu',9802820800);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_join`
--

DROP TABLE IF EXISTS `person_join`;
/*!50001 DROP VIEW IF EXISTS `person_join`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_join` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `student_id`,
 1 AS `graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_student`
--

DROP TABLE IF EXISTS `person_student`;
/*!50001 DROP VIEW IF EXISTS `person_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_student` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `cell`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(75) DEFAULT NULL,
  `restaurant_name` varchar(75) DEFAULT NULL,
  `schedule` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'5357 Adrianna Shoal Suite 418\nEnochside, OH \n46739-1915','Rath Ltd','9am -10pm','http://hahn.com/'),(2,'6977 Adams Locks Suite \n001\nErikastad, LA 55321-5793','Kerluke-Herman','11am - \n11pm','http://wilderman.com/'),(3,'559 Robin Cape\nWest Merl, OH 31271-9957','Berge\nInc','11am - 11pm','http://okunevarohan.com/'),(4,'4501 Labadie Via\nLake America, \nNJ 33290','Hamill, Prohaska and Lehner','10am - \n9pm','http://jacobswilderman.info/'),(5,'5587 Fanny Port\nNorth Nigel, NC \n05813','Ratke LLC','10am - 9pm','http://www.williamson.org/'),(6,'3906 Wilkinson \nStreet Suite 611\nLake Moisesburgh, DE 83148','Fisher-Rempel','9am \n-10pm','http://www.lehner.net/'),(7,'459 Labadie Course Suite 026\nNorth Ola, ND \n60631','Ryan, Jaskolski and Schinner','10am - 9pm','http://www.schuster.org/'),(8,'630 Block Harbors\nEast Rudolphhaven, LA 44638','Kub, Borer and Ward','11am - \n11pm','http://klingprohaska.com/'),(9,'40616 Mante Islands\nSouth Gileschester, MI \n75466','O\'Conner-Mraz','9am -10pm','http://www.rosenbaum.com/'),(10,'9015 Velma \nJunction\nSpencerland, KY 15821-5602','Mayert LLC','9am \n-10pm','http://www.raynorgoldner.com/'),(11,'48482 Bode Harbors\nPort Modesta, AZ \n10082-7993','Grady, Kreiger and Frami','10am - 9pm','http://skiles.com/'),(12,'597 \nLeora Summit Apt. 714\nEbertbury, WI 48130-6262','Abbott-Schmitt','9am -\n10pm','http://feil.com/'),(13,'387 Tromp Estates Suite 445\nWest Leopoldshire, NC \n80009','Ankunding Group','9am -10pm','http://www.balistreri.info/'),(14,'679 Russel\nVillages\nConnellyfort, MD 72266','Weber, Lehner and Mueller','9am \n-10pm','http://mccullough.com/'),(15,'177 Katrina Gateway Apt. 797\nJastport, MN \n44988-2805','Connelly, Wolf and Murazik','10am - 9pm','http://mraz.com/'),(16,'3136\nKunde Ports Apt. 399\nLake Trevor, CO 19002','Abernathy, Lehner and Zulauf','10am -\n9pm','http://kirlinkulas.com/'),(17,'03334 Blanda Trafficway Suite 568\nFloyfort, \nOK 34900-7724','Heathcote, Kovacek and Cummerata','9am \n-10pm','http://glover.biz/'),(18,'031 Milton Bypass Suite 952\nStephonburgh, WY \n82916-7389','Hauck, Rodriguez and Cremin','11am - 11pm','http://reynolds.com/'),(19,'375 Alanna Crossroad Suite 259\nNorth Shanna, MN 54873','Hermiston-\nPurdy','11am - 11pm','http://herzog.com/'),(20,'9359 Marcos Park Apt. 091\nnSchmitttown, IL 68853','Smitham-Haley','11am - \n11pm','http://quitzonmckenzie.com/'),(21,'215 Shanon Creek\nEast Antonettaview, MN \n74167-8029','Cruickshank-Reilly','10am - 9pm','http://rodriguezkshlerin.com/'),(22,'0562 Cassin Divide\nElenorafurt, AR 37048','Eichmann-Casper','10am - \n9pm','http://www.farrell.biz/'),(23,'41925 Bosco Station Apt. 238\nSouth Clara, MA \n87547-3817','Gorczany, Kuphal and Pouros','9am -10pm','http://www.dare.com/'),(24,'9119 Cummerata Avenue Suite 529\nAbshiremouth, ND 00145-7770','Moen Ltd','9am \n-10pm','http://www.eichmannhomenick.org/'),(25,'422 Lesch Common Apt. 940\nNew \nFelicitaborough, IL 21308-3053','Keeling, Maggio and Hirthe','10am - \n9pm','http://hermannwalter.info/'),(26,'52787 Ullrich Locks\nReynoldsside, IA \n48689-5885','Mraz, Reichel and Hermiston','11am - \n11pm','http://www.runolfsdottir.com/'),(27,'1135 Bartell Islands\nLake Philipton, \nHI 43588-0971','Oberbrunner-Herman','10am - 9pm','http://www.rice.com/'),(28,'8279 \nConcepcion Center\nHauckshire, AL 83821','Stanton-D\'Amore','9am \n-10pm','http://nienow.com/'),(29,'283 Nadia Islands\nAudreanneburgh, GA 64125-\n4442','Waelchi LLC','11am - 11pm','http://www.littel.net/'),(30,'093 Fredrick \nSpurs\nSouth Shannamouth, RI 24292','Ziemann, Denesik and Kunze','10am - \n9pm','http://www.klinghilll.info/'),(31,'3948 Kiehn Forest Apt. 782\nnHageneschester, VT 94419','Tromp Ltd','9am -10pm','http://white.com/'),(32,'4652 \nMaeve Brook\nSouth Corine, WA 21701-5426','Beatty Ltd','11am - \n11pm','http://parisian.biz/'),(33,'4863 Becker Spring\nNorth Candelarioburgh, UT \n16649-1046','Gutmann LLC','10am - 9pm','http://beahan.net/'),(34,'46083 Mekhi \nRidge\nLake Jerrodhaven, VT 38507-5949','Macejkovic Ltd','9am \n-10pm','http://www.beahan.com/'),(35,'214 Lyric Mission\nPort Meaganview, AR \n17033','Rolfson LLC','9am -10pm','http://skiles.com/'),(36,'96083 Konopelski Isle \nSuite 006\nBruenfort, KY 49444-9497','Marquardt, Reinger and Gusikowski','11am - \n11pm','http://www.daniel.com/'),(37,'213 Larkin Coves\nQuintonside, TX \n07955','Harber Group','10am - 9pm','http://www.goodwin.biz/'),(38,'0859 Hills Pine \nApt. 888\nMyriammouth, NM 69940-8316','Wuckert, Reilly and Wuckert','9am -\n10pm','http://www.boscokilback.com/'),(39,'67511 Graham Shore\nLaceyland, WI \n78493','Kirlin, Gibson and Kovacek','9am -10pm','http://schinner.com/'),(40,'0416 \nNyasia Hills\nWest Penelope, MA 56613','Morissette, Kutch and Spinka','11am - \n11pm','http://www.smitham.biz/'),(41,'6044 Prohaska Oval\nWillton, MI \n09742','Corkery, Kilback and Skiles','10am - 9pm','http://www.schumm.com/'),(42,'0561 Dora Manors Suite 455\nNew Aliamouth, CO 28487-7002','Huels-\nConsidine','11am - 11pm','http://dareboehm.biz/'),(43,'719 Virgil Orchard Apt. 083\nnSouth Amalia, KY 78515-9294','Gusikowski, Funk and Rau','10am - \n9pm','http://www.johnston.org/'),(44,'8474 Joana Rest\nNorth Kariane, MI 13273-\n8980','Friesen, Zemlak and Runolfsson','9am \n-10pm','http://www.schillerstreich.org/'),(45,'85504 Jacky Radial Suite 460\nnBeauberg, ND 20689','Hayes-O\'Hara','9am -10pm','http://www.feest.net/'),(46,'791 \nLennie Tunnel Apt. 153\nTyreekshire, DC 94328','Sporer, Reinger and Runte','10am - \n9pm','http://www.gerhold.com/'),(47,'269 Keeling Forks\nBauchfort, TN 32390-\n9816','Rutherford, Cummerata and Langosh','10am - 9pm','http://pacocha.net/'),(48,'976 Gislason Heights Suite 926\nChristiansenshire, FL 00995','McGlynn \nPLC','10am - 9pm','http://langoshmcclure.com/'),(49,'3227 Witting Landing\nnFerrystad, WY 43540','Crooks, Corkery and Dickinson','11am - \n11pm','http://hudson.com/'),(50,'59694 Ulises Ranch Apt. 292\nRobelhaven, NY \n81549','Jenkins-Greenholt','11am - 11pm','http://feil.net/'),(51,'71811 Gertrude \nVia Suite 007\nSouth Taryn, NV 23967','Waters, Turner and Adams','9am -\n10pm','http://franeckikuhn.com/'),(52,'09615 Green Shores Suite 103\nJaquanmouth, \nVA 66615','Hilpert, Von and Frami','11am - 11pm','http://gloverhansen.com/'),(53,'7385 Douglas Rapid\nLake Eusebioberg, NV 04724','Larkin, Lakin and Huel','11am\n- 11pm','http://www.pfeffer.com/'),(54,'121 Hartmann Falls Apt. 221\nEast \nAshleyshire, CT 19450','Cremin Ltd','10am - 9pm','http://davis.com/'),(55,'9775 \nVictoria Inlet\nWest Clifford, NV 16309-4617','Orn, Kshlerin and Ebert','10am - \n9pm','http://www.wisokywilderman.net/'),(56,'983 Macie Squares Apt. 211\nEast Lyda,\nPA 70725','Keeling-Jaskolski','11am - 11pm','http://doyle.com/'),(57,'801 Strosin \nVillage\nDouglasbury, WY 85892','Kuhn-Kuhn','10am - 9pm','http://www.blick.com/'),(58,'162 Renner Walk\nNew Lexie, IN 72766','Runolfsdottir-Hagenes','9am -\n10pm','http://hickle.info/'),(59,'207 Berge Turnpike\nNorth Bulah, NY 56382-\n2747','Bradtke, Johnston and Baumbach','11am - 11pm','http://jones.org/'),(60,'93126 O\'Reilly Stream\nSouth Reneebury, NE 37534','Schulist-Dickinson','9am -\n10pm','http://www.huels.net/'),(61,'7027 Harold Vista Apt. 309\nSouth Lamarchester,\nAK 74002','Rath, Lebsack and Hane','10am - 9pm','http://www.sawayn.com/'),(62,'070 \nValerie Radial\nLake Geraldine, ID 66048','Botsford Inc','9am \n-10pm','http://kesslergreenholt.com/'),(63,'83563 Gabe Cliffs Suite 176\nnMurraybury, MI 42637-0699','Klocko and Sons','9am \n-10pm','http://cruickshankhahn.org/'),(64,'65258 Nelle Bypass Apt. 441\nNew Noemie,\nOR 56221-2401','Greenfelder-Strosin','11am - 11pm','http://www.quitzon.com/'),(65,'392 Terry Common\nReneeburgh, GA 16078-5698','Volkman Group','10am - \n9pm','http://hansen.com/'),(66,'58362 Weimann View Apt. 783\nBorertown, IA \n93172','Stanton-Marvin','10am - 9pm','http://johns.org/'),(67,'7339 Ziemann Common\nnWest Diamondport, NC 14355-1563','Huels, Schamberger and Volkman','9am -\n10pm','http://www.greenholtlittle.com/'),(68,'172 Daisy Overpass\nFeestbury, MI \n69119','Bahringer, Herman and Lebsack','10am - 9pm','http://www.reichert.info/'),(69,'744 Trudie Row Apt. 555\nLake Eduardoport, AL 24252-6634','Von and Sons','9am \n-10pm','http://www.buckridge.com/'),(70,'0420 Waelchi Ferry\nCedrickberg, KY 95033-\n5914','Daniel PLC','11am - 11pm','http://www.barton.com/'),(71,'90000 Pinkie \nSummit\nSouth Ansleyport, NJ 05455','Daniel, Ledner and Keebler','9am -\n10pm','http://swift.com/'),(72,'267 Kemmer Dam Suite 757\nLake Shanna, ND 06978-\n8017','Shields-Wehner','9am -10pm','http://maggiowisozk.com/'),(73,'5242 Maymie \nPrairie\nJosephinechester, CT 08166','Davis-Gottlieb','10am - \n9pm','http://kiehn.com/'),(74,'503 Halvorson Roads\nEmilianomouth, WY \n48846','Kuhic, DuBuque and Rutherford','10am - 9pm','http://mcdermott.com/'),(75,'61619 White Lock\nKassulkeberg, SD 92407','Miller-Schuppe','9am -\n10pm','http://langworth.net/'),(76,'2686 Rosina Drives\nLake Irving, WI \n93674','Marquardt and Sons','9am -10pm','http://schoen.info/'),(77,'665 Reba Field \nSuite 259\nAbbieville, HI 45209','Heller-Stoltenberg','10am - \n9pm','http://keebler.net/'),(78,'274 Aniyah View\nCorkerybury, NJ 42353-0485','Kub-\nBartoletti','10am - 9pm','http://www.walkerschuster.biz/'),(79,'136 Champlin \nCircles Suite 260\nElmiraburgh, NY 86723','Pollich-Connelly','10am - \n9pm','http://quigleyjohns.com/'),(80,'6656 Durgan Glens\nSidneyfort, NY 23527-\n3946','Predovic Group','11am - 11pm','http://www.mcclure.info/'),(81,'916 Kenna \nWalks Apt. 224\nDomenichaven, SD 08585','Thiel-Paucek','11am - \n11pm','http://www.klein.com/'),(82,'87162 Keven Wall\nNew Amya, GA 23801-\n4982','Bednar and Sons','10am - 9pm','http://hamill.org/'),(83,'32020 Langworth \nWay\nJaycefort, MT 55909','Sipes-Carroll','9am -10pm','http://larkin.net/'),(84,'198 Mazie Bypass Apt. 852\nPort Newellland, ID 46813-6856','Kohler-\nPredovic','10am - 9pm','http://hermiston.com/'),(85,'8170 Orn Pine\nJadonton, MN \n06564-1919','Fisher, Yundt and Wiegand','10am - 9pm','http://friesen.com/'),(86,'6809\n Kulas Circles Suite 622\nPort Leonieland, KS 31358-9888','Corwin Inc','10am - \n9pm','http://turner.com/'),(87,'540 Maximillia Via Suite 247\nNew Christine, OH \n16149-9776','Veum PLC','10am - 9pm','http://www.shields.biz/'),(88,'8085 Alvina \nIsle Apt. 893\nJamisonland, MD 06507','Barrows Group','10am - \n9pm','http://www.marquardtschumm.com/'),(89,'7446 Jarrett Plaza\nNew Phoebeview, ME\n25224','Kub, Hoeger and Swaniawski','10am - 9pm','http://www.haley.biz/'),(90,'631 \nWilkinson Shoal Apt. 785\nMadisynbury, NE 51948','Kerluke-Flatley','11am - \n11pm','http://www.waters.net/'),(91,'86467 Kshlerin Point\nHeathcotetown, AZ 27728-\n4616','Rowe, Pouros and Gutkowski','11am - 11pm','http://gerlach.com/'),(92,'92578 \nKylie Trafficway Suite 755\nLake Murphy, GA 78904','Grimes-Sporer','9am -\n10pm','http://www.osinski.com/'),(93,'72392 Hahn Station Apt. 674\nWest \nJosianeside, MT 59330-3244','Price-Reinger','11am - \n11pm','http://stoltenbergmohr.biz/'),(94,'9329 Vesta Harbors Suite 849\nnUllrichchester, DC 53814','Boehm, White and Kilback','9am \n-10pm','http://www.hillljohnson.com/'),(95,'30248 Eichmann Street Suite 151\nLake \nNelson, VT 78923-5543','Conroy-O\'Keefe','10am - 9pm','http://hermiston.org/'),(96,'1070 Green Forks\nSelenaland, VT 70941','Wiegand LLC','9am \n-10pm','http://www.streich.com/'),(97,'20073 Clyde Ways Suite 898\nWest \nDejahchester, GA 59632','Donnelly and Sons','10am - 9pm','http://cummings.net/'),(98,'215 Altenwerth Mall Apt. 621\nDietrichberg, MI 96944','McDermott, Senger and \nFerry','10am - 9pm','http://www.collins.net/'),(99,'1105 Liza Shores Apt. 158\nnHermannland, GA 62111','Grimes-Lakin','9am -10pm','http://terry.net/'),(100,'88626\nLouvenia Fork\nLake Maxiefurt, TN 43522','Mertz Ltd','9am \n-10pm','http://ortiz.com/'),(101,'9201 University City Blvd','Wendys','11am -10pm','https://www.wendys.com'),(102,'8917 Johnson Alumni Way','SoVi','7am - \n11pm','http://aux.charlotte.edu/dining/dining'),(103,'901 University City Blvd','Bojangles','8am - 10pm','https://www.bojangles.com/'),(104,'9025 University Rd, Charlotte','Subway','10am - \n10pm','https://order.subway.com/'),(105,'9025 University Rd, Charlotte','Panda Express','10am - 9pm','https://www.pandaexpress.com/'),(106,'crowns: 8845 Craver Rd, Charlotte','Crowns','11am \n-8pm','https://dineoncampus.com/UNCCharlotte');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  KEY `fk_S_person_id` (`person_id`),
  CONSTRAINT `fk_S_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `check_is_admin_y_n` CHECK ((`is_admin` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,27,'Janitor','Y'),(2,37,'Bus Driver','N'),(3,48,'Bus \nDriver','N'),(4,28,'Assistant Manager','N'),(5,31,'Receptionist','Y'),(6,38,'Assistant Manager','Y'),(7,26,'Bus Driver','N'),(8,49,'Logistic \nManager','N'),(9,33,'Receptionist','Y'),(10,45,'Assistant Manager','Y'),(11,40,'Bus\nDriver','Y'),(12,29,'Logistic Manager','N'),(13,46,'Receptionist','N'),(14,41,'Logistic Manager','Y'),(15,32,'Logistic Manager','Y'),(16,47,'Janitor','N'),(17,50,'Logistic Manager','Y'),(18,30,'Janitor','Y'),(19,39,'Assistant Manager','Y'),(20,43,'Bus Driver','Y'),(21,35,'Bus Driver','Y'),(22,42,'Logistic Manager','Y'),(23,36,'Janitor','N'),(24,34,'Logistic \nManager','Y'),(25,44,'Bus Driver','Y');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `graduation_year` int DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,101,1987,'Philosophy','Undergraduate'),(2,141,1986,'Accounts','Undergraduate'),(3,92,1978,'Electronics','Graduate'),(4,85,2008,'Computer Science','Graduate'),(5,66,1979,'Accounts','Graduate'),(6,164,2019,'Accounts','Graduate'),(7,110,1989,'Philosophy','Undergraduate'),(8,137,1987,'Accounts','Undergraduate'),(9,140,1975,'Data Science','Graduate'),(10,107,1985,'Data Science','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(12,91,2006,'Electrical','Undergraduate'),(13,144,2008,'Cyber \nSecurity','Graduate'),(14,58,2005,'Mechanical','Graduate'),(15,191,2015,'Accounts','Undergraduate'),(16,190,2011,'Biotechnology','Undergraduate'),(17,60,1990,'Cyber \nSecurity','Undergraduate'),(18,59,1987,'Environmental','Undergraduate'),(19,114,1999,'Data Science','Graduate'),(20,185,1986,'Electrical','Graduate'),(21,61,2006,'Electrical','Undergraduate'),(22,117,1984,'Data \nScience','Undergraduate'),(23,73,2004,'Chemical','Graduate'),(24,170,1976,'Chemical','Undergraduate'),(25,146,1997,'Computer \nScience','Graduate'),(26,143,1977,'Chemical','Undergraduate'),(27,108,1995,'Mechanical','Undergraduate'),(28,198,2000,'Mechanical','Graduate'),(29,94,2013,'Accounts','Graduate'),(30,172,2005,'Philosophy','Graduate'),(31,68,1981,'Chemical','Graduate'),(32,111,1991,'Environmental','Undergraduate'),(33,165,1983,'Cyber Security','Undergraduate'),(34,155,1993,'Environmental','Graduate'),(35,163,2013,'Accounts','Undergraduate'),(36,71,2002,'Accounts','Undergraduate'),(37,194,2013,'Data Science','Graduate'),(38,125,1983,'Chemical','Undergraduate'),(39,126,1980,'Chemical','Graduate'),(40,168,2014,'Electrical','Undergraduate'),(41,106,2010,'Data Science','Graduate'),(42,112,1990,'Accounts','Graduate'),(43,93,1975,'Philosophy','Graduate'),(44,195,2016,'Mechanical','Undergraduate'),(45,69,1975,'Philosophy','Graduate'),(46,180,1972,'Accounts','Undergraduate'),(47,56,1990,'Computer \nScience','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(49,193,2012,'Accounts','Graduate'),(50,100,1988,'Civil','Graduate'),(51,78,1999,'Mechanical','Graduate'),(52,63,1989,'Mechanical','Undergraduate'),(53,153,1978,'Philosophy','Undergraduate'),(54,65,1985,'Cyber \nSecurity','Graduate'),(55,118,2010,'Biotechnology','Graduate'),(56,169,1981,'Chemical','Undergraduate'),(57,184,1980,'Chemical','Graduate'),(58,51,2001,'Accounts','Graduate'),(59,130,1993,'Data Science','Graduate'),(60,80,2005,'Chemical','Graduate'),(61,134,1994,'Chemical','Graduate'),(62,142,1979,'Accounts','Graduate'),(63,97,1988,'Data Science','Graduate'),(64,148,1998,'Biotechnology','Undergraduate'),(65,166,1980,'Civil','Undergraduate'),(66,116,1970,'Accounts','Undergraduate'),(67,138,2014,'Chemical','Graduate'),(68,113,1997,'Data Science','Undergraduate'),(69,70,2006,'Mechanical','Graduate'),(70,173,1975,'Cyber Security','Graduate'),(71,182,1984,'Accounts','Undergraduate'),(72,160,1974,'Cyber \nSecurity','Undergraduate'),(73,128,1972,'Environmental','Undergraduate'),(74,99,2009,'Environmental','Graduate'),(75,147,1971,'Mechanical','Graduate'),(76,81,1994,'Cyber Security','Graduate'),(77,177,1999,'Electronics','Graduate'),(78,90,1978,'Computer Science','Graduate'),(79,158,1985,'Computer \nScience','Graduate'),(80,79,2004,'Environmental','Graduate'),(81,119,1989,'Biotechnology','Graduate'),(82,171,2019,'Electronics','Undergraduate'),(83,77,1989,'Electronics','Undergraduate'),(84,186,1973,'Mechanical','Undergraduate'),(85,105,2011,'Chemical','Undergraduate'),(86,149,1971,'Mechanical','Undergraduate'),(87,133,1978,'Mechanical','Undergraduate'),(88,174,2010,'Environmental','Graduate'),(89,95,1994,'Mechanical','Undergraduate'),(90,72,2019,'Environmental','Undergraduate'),(91,76,1978,'Data \nScience','Graduate'),(92,123,2008,'Philosophy','Undergraduate'),(93,188,1979,'Data \nScience','Graduate'),(94,132,2001,'Data Science','Graduate'),(95,183,1983,'Data \nScience','Graduate'),(96,179,1973,'Data Science','Graduate'),(97,129,2000,'Accounts','Graduate'),(98,115,2015,'Philosophy','Undergraduate'),(99,200,1986,'Electronics','Undergraduate'),(100,84,2009,'Cyber \nSecurity','Undergraduate'),(101,54,1984,'Chemical','Graduate'),(102,102,2000,'Biotechnology','Undergraduate'),(103,152,2003,'Data \nScience','Graduate'),(104,176,1985,'Cyber Security','Graduate'),(105,120,2019,'Environmental','Graduate'),(106,53,1992,'Chemical','Graduate'),(107,178,1971,'Cyber Security','Graduate'),(108,122,1998,'Electronics','Graduate'),(109,86,2011,'Electrical','Graduate'),(110,136,2016,'Electronics','Graduate'),(111,151,1981,'Chemical','Undergraduate'),(112,196,1992,'Philosophy','Undergraduate'),(113,161,1994,'Computer \nScience','Undergraduate'),(114,83,2004,'Biotechnology','Undergraduate'),(115,98,1985,'Civil','Graduate'),(116,139,1979,'Accounts','Undergraduate'),(117,181,1977,'Mechanical','Graduate'),(118,197,1973,'Accounts','Undergraduate'),(119,135,1998,'Electronics','Undergraduate'),(120,109,2002,'Cyber \nSecurity','Undergraduate'),(121,159,1976,'Chemical','Graduate'),(122,67,1971,'Chemical','Undergraduate'),(123,199,2019,'Computer \nScience','Graduate'),(124,64,1992,'Accounts','Undergraduate'),(125,74,2002,'Data \nScience','Graduate'),(126,175,1987,'Environmental','Undergraduate'),(127,157,2017,'Biotechnology','Undergraduate'),(128,62,1971,'Biotechnology','Undergraduate'),(129,103,1993,'Cyber \nSecurity','Graduate'),(130,131,1972,'Environmental','Graduate'),(131,87,1989,'Electrical','Undergraduate'),(132,150,1984,'Cyber \nSecurity','Graduate'),(133,75,1988,'Accounts','Graduate'),(134,82,2018,'Civil','Graduate'),(135,124,2016,'Computer Science','Undergraduate'),(136,88,1989,'Biotechnology','Undergraduate'),(137,167,1991,'Data \nScience','Undergraduate'),(138,127,2013,'Chemical','Undergraduate'),(139,89,1986,'Electronics','Undergraduate'),(140,189,1995,'Environmental','Graduate'),(141,192,1972,'Philosophy','Graduate'),(142,145,1981,'Computer Science','Graduate'),(143,156,1996,'Environmental','Undergraduate'),(144,162,1999,'Cyber \nSecurity','Undergraduate'),(145,154,2009,'Biotechnology','Undergraduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(148,187,2002,'Cyber Security','Undergraduate'),(149,52,1995,'Cyber \nSecurity','Undergraduate'),(150,121,1994,'Mechanical','Graduate'),(151,204,2019,'graduate','Graduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_plate` varchar(75) DEFAULT NULL,
  `model` varchar(75) DEFAULT NULL,
  `make` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'4333','p','Mercedes'),(2,'8289','y','BMW'),(3,'1126','h','Bugatti'),(4,'7749','p','Audi'),(5,'2644','z','BMW'),(6,'9878','o','Kia'),(7,'4697','i','Kia'),(8,'9687','s','Mercedes'),(9,'3364','c','Hyundai'),(10,'8683','z','Toyota'),(11,'5436','i','Kia'),(12,'9357','e','Kia'),(13,'6519','z','Toyota'),(14,'3585','t','Hyundai'),(15,'2767','d','Bugatti'),(16,'4184','j','Mercedes'),(17,'6489','l','BMW'),(18,'4260','j','Audi'),(19,'6455','d','Mercedes'),(20,'7009','q','Toyota');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'campus_eats_fall2020'
--

--
-- Dumping routines for database 'campus_eats_fall2020'
--
/*!50003 DROP FUNCTION IF EXISTS `driver_expertise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `driver_expertise`(
 rating INT
) RETURNS varchar(150) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE rating_feedback varchar(150);
    IF rating = 1 THEN
		SET rating_feedback = "Bad driver";
	ELSEIF rating = 2 THEN
		SET rating_feedback = "Moderate driver";
	ELSEIF rating = 3 THEN
		SET rating_feedback = "Decent driver";
	ELSEIF rating = 4 THEN
		SET rating_feedback = "Great driver";
	ELSEIF rating = 5 THEN
		SET rating_feedback = "Excellent driver";
	END IF;
    RETURN rating_feedback; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(in person_name 
varchar(300), in email varchar(150), cellno bigint (15), person_type varchar(10))
BEGIN
insert into person (person_name, person_email, cell) values(person_name, email, 
cellno);
if(person_type = 'student') then
insert into student (person_id, graduation_year, major, type) values 
((select person_id from person where cell = cellno), 2019, 'Computer Science', 
'Graduate');
elseif(person_type = 'faculty') then
insert into faculty (person_id, title, degree_college, highest_degree) values 
((select person_id from person where cell = cellno), 'Assistant Professor', 'UCLA',
'PhD');
elseif(person_type = 'staff') then
insert into student (person_id, position, is_admin) values 
((select person_id from person where cell = cellno), 'Bus Driver', 'N');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Average_Price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Average_Price`(IN S VARCHAR(75), OUT Output varchar(100))
BEGIN
DECLARE TEMP float;
SELECT AVG(total_price) INTO TEMP
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.ORDER_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S;
SET Output = concat("The average of the total price is ", TEMP);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Count_Title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Count_Title`(IN T VARCHAR(75), OUT Output varchar(50))
BEGIN
DECLARE TEMP INT;
SELECT count(title) into TEMP from faculty
WHERE Title = T;
SET Output = concat("The count of this particular title is ", TEMP);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeliveryDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryDetail`(id int(3))
BEGIN
SELECT p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN ORDERS o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN ORDERS ON v.VEHICLE_ID = d.VEHICLE_ID
WHERE id = o.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeliveryDetail1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryDetail1`(id int(3))
BEGIN
SELECT o.order_id, p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN ORDERS o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN ORDERS ON v.VEHICLE_ID = d.VEHICLE_ID
WHERE id = o.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delivery_2_Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delivery_2_Detail`(id int(3))
BEGIN
SELECT p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN ORDERS o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION l ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY d ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN VEHICLE v ON v.VEHICLE_ID = d.VEHICLE_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delivery_3_Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delivery_3_Detail`()
BEGIN
SELECT p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN ORDERS o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION l ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY d ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN VEHICLE v ON v.VEHICLE_ID = d.VEHICLE_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delivery_Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delivery_Detail`(id int(2))
BEGIN
SELECT person_name, cell
FROM PERSON
INNER JOIN ORDERS ON PERSON.PERSON_ID = ORDERS.PERSON_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delivery_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delivery_Details`()
BEGIN
SELECT p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN `ORDER` o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION l ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY d ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN VEHICLE v ON v.VEHICLE_ID = d.VEHICLE_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delivery__Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delivery__Detail`()
BEGIN
SELECT p.person_name, p.cell, d.delivery_time, l.location_name, l.location_address, l.drop_off_point, v.vehicle_plate, v.make
FROM PERSON p
INNER JOIN ORDERS o ON p.PERSON_ID = o.PERSON_ID
INNER JOIN LOCATION ON l.LOCATION_ID = o.LOCATION_ID
INNER JOIN DELIVERY ON d.DELIVERY_ID = o.DELIVERY_ID
INNER JOIN ORDERS ON v.VEHICLE_ID = d.VEHICLE_ID
WHERE id = o.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `max_min_avg_rating_for_each_feature` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `max_min_avg_rating_for_each_feature`(IN restaurant_id INT(50), OUT max_food INT, OUT min_food INT, OUT avg_food INT, OUT max_deli INT, OUT min_deli INT, OUT avg_deli INT)
BEGIN
    SET max_food = 0;
	SET min_food = 0;
    SET avg_food = 0;
    SET max_deli = 0;
    SET min_deli = 0;
    SET avg_deli = 0;
    
select max(food_rating)
into max_food
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 3);
    
select min(food_rating)
into min_food
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 5);
    
select avg(food_rating)
into avg_food
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 7);
    
select max(delivery_rating)
into max_deli
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 3);
    
select min(delivery_rating)
into min_deli
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 7);
    
select avg(delivery_rating)
into avg_deli
from order_rating where order_id 
IN (select order_id from `order` where `order`.restaurant_id = 9);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `max_min_avg_rating_for_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `max_min_avg_rating_for_restaurant`(IN restaurant_id INT(50), OUT max_food INT, OUT min_food INT, OUT avg_food INT, OUT max_deli INT, OUT min_deli INT, OUT avg_deli INT)
BEGIN
    SET max_food = 0;
	SET min_food = 0;
    SET avg_food = 0;
    SET max_deli = 0;
    SET min_deli = 0;
    SET avg_deli = 0;
    
    SELECT MAX(food_rating) 
    INTO max_food 
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
    SELECT MIN(food_rating) 
    INTO min_food 
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
    SELECT AVG(food_rating) 
    INTO avg_food 
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
    SELECT MAX(delivery_rating) 
    INTO max_deli
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
    SELECT MIN(delivery_rating) 
    INTO min_deli 
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
    SELECT AVG(delivery_rating) 
    INTO avg_deli 
    FROM order_rating 
    LEFT JOIN campus_eats_fall2020.order 
    ON order_rating.order_id = campus_eats_fall2020.order.order_id
    where campus_eats_fall2020.order.restaurant_id = restaurant_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrderDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrderDetail`()
BEGIN
select restaurant_name, location, website, total_price, delivery_charge from restaurant, orders WHERE restaurant.restaurant_id = orders.restaurant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrderDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrderDetails`()
BEGIN
select restaurant_name, location, website, total_price, delivery_charge from restaurant, orders WHERE Restaurant.restaurant_id = orders.restaurant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_10_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_10_Details`(IN id INT, OUT saketh varchar(100))
BEGIN
SELECT saketh = (SELECT restaurant_name, location, website, total_price, delivery_charge 
FROM RESTAURANT, `ORDER` WHERE id = order_id AND restaurant.restaurant_id = `order`.restaurant_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_count`(IN begin_year INT,IN final_year INT, OUT output_str varchar(100))
BEGIN
	  DECLARE number_of_orders Varchar(20);
	  SELECT count(*) into number_of_orders
	  FROM `order`
	  WHERE person_id in (
	  select person_id from student where graduation_year between begin_year and final_year
	  );
	  IF number_of_orders < 0 THEN
		SET output_str = CONCAT("The number of orders are 0");
	  ELSE
		SET output_str = CONCAT("The number of orders are ", number_of_orders); 
	  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Detail`(id int(2))
BEGIN
select restaurant_name, location, website, total_price, delivery_charge from restaurant, orders WHERE id = order_id AND restaurant.restaurant_id = orders.restaurant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details`(IN T VARCHAR(75), OUT Output varchar(50))
BEGIN
DECLARE TEMP VARCHAR(20);
SELECT count(title) into TEMP from faculty
WHERE Title = T;
SET Output = concat("The count of this particular title is ", TEMP);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details11`(IN S VARCHAR(20))
BEGIN
SELECT AVG(TOTAL_PRICE) FROM ORDERS 
WHERE ORDERS.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY RESTAURANT.`SCHEDULE`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details12` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details12`(IN S VARCHAR(20))
BEGIN
SELECT AVG(TOTAL_PRICE) FROM `ORDER` 
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY RESTAURANT.`SCHEDULE`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details14` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details14`(IN S VARCHAR(20))
BEGIN
SELECT AVG(TOTAL_PRICE) FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY RESTAURANT.`SCHEDULE`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details15` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details15`(IN S VARCHAR(20), OUT output float)
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY RESTAURANT.`SCHEDULE`;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details16` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details16`(IN S VARCHAR(20), OUT output float)
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details17` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details17`(IN S VARCHAR(20), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details19` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details19`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details20` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details20`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
/*SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;*/

SELECT S, AVG(total_price)
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;

SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details21` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details21`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
/*SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S
GROUP BY `SCHEDULE`;*/

SELECT S, AVG(total_price)
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID
GROUP BY `SCHEDULE`;

SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details31` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details31`(IN T VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE TEMP VARCHAR(20);
select count(title) into TEMP from faculty
where title=T;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details41` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details41`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `ORDER`.RESTAURANT_ID = RESTAURANT.RESTAURANT_ID AND `SCHEDULE` = S;

SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details42` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details42`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`
WHERE RESTAURANT.`SCHEDULE` = S;

SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details43` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details43`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`
WHERE `SCHEDULE` = S;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details44` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details44`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `SCHEDULE` = S;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Details45` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Details45`(IN S VARCHAR(75), OUT output varchar(100))
BEGIN
DECLARE temp float;
SELECT AVG(total_price) INTO temp
FROM `ORDER`, RESTAURANT
WHERE `schedule` = S;
SET output = concat("The average of the total price is ", temp);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order__Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order__Details`(id int(3))
BEGIN
SELECT restaurant_name, location, website, total_price, delivery_charge 
FROM RESTAURANT, `ORDER` WHERE id = order_id AND restaurant.restaurant_id = orders.restaurant_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_orders`
--

/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_orders` AS select `order`.`person_id` AS `customer_id`,round((`order`.`total_price` + `order`.`delivery_charge`),0) AS `order_total` from `order` group by `order`.`person_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_bill`
--

/*!50001 DROP VIEW IF EXISTS `order_bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_bill` AS select `order`.`person_id` AS `customer_id`,round((`order`.`total_price` + `order`.`delivery_charge`),0) AS `order_cost` from `order` group by `order`.`person_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select `person`.`person_id` AS `person_id`,`person`.`person_name` AS `person_name`,`person`.`person_email` AS `person_email`,`student`.`student_id` AS `student_id`,`student`.`graduation_year` AS `graduation_year` from (`person` join `student` on((`student`.`person_id` = `person`.`person_id`))) where (`student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select `a`.`person_id` AS `person_id`,`a`.`person_name` AS `person_name`,`a`.`person_email` AS `person_email`,`a`.`cell` AS `cell` from `person` `a` where `a`.`person_id` in (select `student`.`person_id` from `student` where (`student`.`graduation_year` = 2019)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 20:29:11
