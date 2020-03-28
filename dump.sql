-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: mmcpsc5910team03.cillrbubr4qu.us-east-1.rds.amazonaws.com    Database: mm_cpsc5910team03
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `cust_address`
--

DROP TABLE IF EXISTS `cust_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_address` (
  `cust_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(50) NOT NULL,
  `street(line2)` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_address_id`,`cust_id`),
  UNIQUE KEY `cust_address_id_UNIQUE` (`cust_address_id`),
  KEY `fk_cust_address_cust_info1` (`cust_id`),
  CONSTRAINT `fk_cust_address_cust_info1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_address`
--

LOCK TABLES `cust_address` WRITE;
/*!40000 ALTER TABLE `cust_address` DISABLE KEYS */;
INSERT INTO `cust_address` VALUES (1,'6649 N Blue Gum St','','Seattle','WA','98122',1),(2,'4 B Blue Ridge Blvd','','Bellevue','WA','98006',2),(3,'8 W Cerritos Ave #54','','Seattle','WA','98122',3),(4,'639 Main St','','Seattle','WA','98122',4),(5,'34 Center St','','Seattle','WA','98101',5),(6,'3 Mcauley Dr','','Sammamish','WA','98029',6),(7,'7 Eads St','','Kirkland','WA','98033',7),(8,'7 W Jackson Blvd','','Redmond','WA','98052',8),(9,'5 Boston Ave #88','','Redmond','WA','98052',9),(10,'228 Runamuck Pl #2808','','Sammamish','WA','98029',10),(11,'2371 Jerrold Ave','','Sammamish','WA','98029',11),(12,'37275 St Rt 17m M','','Bellevue','WA','98006',12),(13,'25 E 75th St #69','','Seattle','WA','98102',13),(14,'98 Connecticut Ave Nw','','Seattle','WA','98102',14),(15,'56 E Morehead St','','Seattle','WA','98102',15),(16,'73 State Road 434 E','','Bellevue','WA','98006',16),(17,'69734 E Carrillo St','','Redmond','WA','98052',17),(18,'322 New Horizon Blvd','','Redmond','WA','98052',18),(19,'1 State Route 27','','Bellevue','WA','98006',19),(20,'394 Manchester Blvd','','Bellevue','WA','98006',20),(21,'6 S 33rd St','','Bellevue','WA','98006',21),(22,'6 Greenleaf Ave','','Bellevue','WA','98006',22),(23,'618 W Yakima Ave','','Bellevue','WA','98006',23),(24,'74 S Westgate St','','Seattle','WA','98112',24),(25,'3273 State St','','Sammamish','WA','98029',25),(26,'1 Central Ave','','Kirkland','WA','98033',26),(27,'86 Nw 66th St #8673','','Kirkland','WA','98033',27),(28,'2 Cedar Ave #84','','Seattle','WA','98122',28),(29,'90991 Thorburn Ave','','Seattle','WA','98122',29),(30,'386 9th Ave N','','Seattle','WA','98122',30);
/*!40000 ALTER TABLE `cust_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_contact_info`
--

DROP TABLE IF EXISTS `cust_contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_contact_info` (
  `cust_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_num` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_contact_id`,`cust_id`),
  UNIQUE KEY `cust_contact_id_UNIQUE` (`cust_contact_id`),
  KEY `fk_cust_contact_info_cust_info1` (`cust_id`),
  CONSTRAINT `fk_cust_contact_info_cust_info1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_contact_info`
--

LOCK TABLES `cust_contact_info` WRITE;
/*!40000 ALTER TABLE `cust_contact_info` DISABLE KEYS */;
INSERT INTO `cust_contact_info` VALUES (1,'504-621-8927','lois.walker@hotmail.com',1),(2,'810-292-9388','lois.walker@hotmail.com',1),(3,'856-636-8749','brenda.robinson@gmail.com',2),(4,'907-385-4412','joe.robinson@gmail.com',3),(5,'513-570-1893','diane.evans@yahoo.com',4),(6,'419-503-2484','benjamin.russell@charter.net',5),(7,'773-573-6914','benjamin.russell@charter.net',5),(8,'408-752-3500','patrick.bailey@aol.com',6),(9,'605-414-2147','nancy.baker@bp.com',7),(10,'410-655-8723','carol.murphy@gmail.com',8),(11,'215-874-1229','carol.murphy@gmail.com',8),(12,'631-335-3414','frances.young@gmail.com',9),(13,'310-498-5651','diana.peterson@hotmail.com',10),(14,'440-780-8425','ralph.flores@yahoo.com',11),(15,'956-537-6195','ralph.flores@yahoo.com',11),(16,'602-277-4385','jack.alexander@gmail.com',12),(17,'931-313-9635','melissa.king@comcast.net',13),(18,'414-661-9598','wayne.watson@gmail.com',14),(19,'313-288-7937','cheryl.scott@gmail.com',15),(20,'815-828-2147','paula.diaz@gmail.com',16),(21,'610-545-3615','paula.diaz@gmail.com',16),(22,'408-540-1785','joshua.stewart@yahoo.ca',17),(23,'972-303-9197','theresa.lee@gmail.com',18),(24,'518-966-7987','theresa.lee@gmail.com',18),(25,'732-658-3154','julia.scott@apple.com',19),(26,'715-662-6764','thomas.lewis@gmail.com',20),(27,'913-388-2079','carol.edwards@msn.com',21),(28,'410-669-1642','matthew.turner@gmail.com',22),(29,'212-582-4976','joan.stewart@yahoo.com',23),(30,'504-845-1427','joan.stewart@yahoo.com',23),(31,'810-374-9840','ruby.rogers@gmail.com',24),(32,'856-264-4130','carolyn.hayes@hotmail.co.uk',25),(33,'907-921-2010','anne.russell@ibm.com',26),(34,'513-549-4561','daniel.cooper@yahoo.com',27),(35,'419-800-6759','roger.roberts@gmail.com',28),(36,'773-924-8565','maria.walker@microsoft.com',29),(37,'480-814-8284','brenda.butler@gmail.com',30);
/*!40000 ALTER TABLE `cust_contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_info`
--

DROP TABLE IF EXISTS `cust_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_info` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `ps_word` varchar(45) NOT NULL,
  `member_level` varchar(30) NOT NULL,
  `mem_since` date NOT NULL,
  `points` int(11) NOT NULL,
  `last_login_time` date NOT NULL,
  `last_order_time` date DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `custID_UNIQUE` (`cust_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_info`
--

LOCK TABLES `cust_info` WRITE;
/*!40000 ALTER TABLE `cust_info` DISABLE KEYS */;
INSERT INTO `cust_info` VALUES (1,'Lois','Walker','1967-12-01','lhwalker','DCa}.T}X:v?NP','1','2017-01-05',78,'2019-06-13','2018-05-10'),(2,'Brenda','Robinson','1969-02-10','bsrobinson','TCoj#Zg;SQ~o','5','2016-11-24',431,'2020-02-22','2020-02-06'),(3,'Joe','Robinson','1983-09-14','jwrobinson','GO4$J8MiEh[A','4','2016-08-03',356,'2020-01-15','2020-01-15'),(4,'Diane','Evans','1973-12-22','dievans','0gGRtp1HfL<r5','2','2016-02-07',146,'2019-12-16','2019-12-16'),(5,'Benjamin','Russell','1994-11-14','brrussell','Rd<Y8cp!@R;*%F','3','2016-01-24',279,'2019-11-17','2018-10-07'),(6,'Patrick','Bailey','1991-08-31','pfbailey','K7&5aY/*','6','2015-01-19',563,'2020-02-18','2020-02-18'),(7,'Nancy','Baker','1982-07-29','ntbaker','xJdKlAcYQhT_BE#','7','2016-09-14',680,'2020-02-08','2020-02-08'),(8,'Carol','Murphy','1985-01-04','cvmurphy','Uc+VG%vuZU<k','8','2015-07-25',750,'2020-02-20','2020-02-20'),(9,'Frances','Young','1978-12-11','fbyoung','K}^USc0l7[A','4','2018-09-10',380,'2019-10-21','2019-07-21'),(10,'Diana','Peterson','1964-08-15','dtpeterson','3o8>v&tYxjyEAo','7','2014-02-17',630,'2020-02-22','2020-02-22'),(11,'Ralph','Flores','1983-11-14','rlflores','7tPLrSr}qTqj','3','2016-08-18',280,'2020-01-17','2020-01-17'),(12,'Jack','Alexander','1989-11-09','jcalexander','9L*-O1U.9mSUSh','8','2014-03-06',750,'2020-02-23','2020-02-23'),(13,'Melissa','King','1991-08-12','mqking','FE5i<e-Y}[4f78','2','2018-11-24',150,'2019-11-19','2019-11-19'),(14,'Wayne','Watson','1993-11-10','wgwatson','wM4J{]&j-eGc','9','2017-07-19',890,'2020-02-22','2020-02-22'),(15,'Cheryl','Scott','1996-04-14','coscott','Vbb+~2N|_yR','5','2017-05-01',460,'2020-02-10','2020-02-10'),(16,'Paula','Diaz','1988-10-31','pgdiaz','3Kg55luU','6','2017-08-20',570,'2020-01-28','2020-01-28'),(17,'Joshua','Stewart','1989-05-11','jtstewart','K?vi9BBznj','1','2020-01-12',80,'2020-02-11','2020-02-11'),(18,'Theresa','Lee','1979-03-22','tglee','JS#hN&Xij%QEr','8','2015-01-19',720,'2020-01-27','2020-01-27'),(19,'Julia','Scott','1982-11-06','jsscott','r.:Q7c^Tpb','4','2016-09-30',380,'2020-01-23','2020-01-23'),(20,'Thomas','Lewis','1976-05-30','tqlewis','y;OJd_Oa#4g|!G','2','2018-06-07',175,'2020-02-07','2020-02-07'),(21,'Carol','Edwards','1991-05-04','cjedwards','wi>v-a9gt','4','2016-04-25',360,'2019-11-04','2019-11-04'),(22,'Matthew','Turner','1992-12-25','mlturner','I>tL>d[|lZdi_|^','6','2016-08-23',590,'2020-02-05','2020-02-05'),(23,'Joan','Stewart','1984-10-28','jcstewart','u+CtpZ~gyR*>','8','2014-08-30',730,'2020-02-09','2020-02-09'),(24,'Ruby','Rogers','1984-01-19','rrrogers','t>#P@D9s<:9V','2','2017-06-21',180,'2019-09-07','2019-04-10'),(25,'Carolyn','Hayes','1995-08-27','cvhayes','NY!Y2sw.[_v-Q9{','4','2016-02-05',390,'2020-02-03','2020-02-03'),(26,'Anne','Russell','1994-10-08','alrussell','c8Nk&Y^~Vz!2','5','2017-08-20',457,'2020-02-09','2020-02-09'),(27,'Daniel','Cooper','1969-10-30','dkcooper','d8p{Pwx2fsW0-Z','1','2019-06-09',60,'2020-02-10','2020-02-10'),(28,'Roger','Roberts','1984-11-06','rlroberts','41:C_0ik|Jb0iTO','3','2017-02-22',285,'2020-01-26','2020-01-26'),(29,'Maria','Walker','1987-12-30','mwwalker','cw?%U}s{?','7','2015-04-13',690,'2020-02-02','2020-02-02'),(30,'Brenda','Butler','1990-02-19','bmbutler','u+CtpZ~gyR*>','9','2016-01-09',900,'2020-02-23','2020-02-23');
/*!40000 ALTER TABLE `cust_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_review`
--

DROP TABLE IF EXISTS `cust_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_review` (
  `cust_review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(500) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_review_id`,`product_id`,`cust_id`),
  UNIQUE KEY `cust_review_id_UNIQUE` (`cust_review_id`),
  KEY `fk_cust_review_product_info1_idx` (`product_id`),
  KEY `fk_cust_review_cust_info1_idx` (`cust_id`),
  CONSTRAINT `fk_cust_review_cust_info1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`),
  CONSTRAINT `fk_cust_review_product_info1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_review`
--

LOCK TABLES `cust_review` WRITE;
/*!40000 ALTER TABLE `cust_review` DISABLE KEYS */;
INSERT INTO `cust_review` VALUES (1,'The flowers were beautiful! Will order again from here!',5,21,1),(2,'The flowers were beautiful! Will order again from here!',5,22,1),(3,'The flowers were beautiful! Will order again from here!',5,23,1),(4,'The flowers were beautiful! Will order again from here!',5,24,1),(5,'The flowers were beautiful! Will order again from here!',4,25,1),(6,'The flowers were beautiful! Will order again from here!',4,26,1),(7,'The flowers were beautiful! Will order again from here!',5,21,1),(8,'The flowers were beautiful! Will order again from here!',5,22,1),(9,'Beautiful arrangement of flowers!',5,35,2),(10,'Good service',4,22,3),(11,'Good service',4,25,3),(12,'Good service',4,27,3),(13,'Good service',4,21,3),(14,'I was impressed how timely the delivery was. My daughter loved the bouquet! Thanks',5,36,4),(15,'Gorgeous arrangement and above and beyond delivery service considering the bad weather we were having.',5,22,5),(16,'Gorgeous arrangement and above and beyond delivery service considering the bad weather we were having.',4,22,5),(17,'Gorgeous arrangement and above and beyond delivery service considering the bad weather we were having.',5,24,5),(18,'Gorgeous arrangement and above and beyond delivery service considering the bad weather we were having.',5,24,5),(19,'Gorgeous flower arrangements and excellent service!! Many thanks!',5,26,6),(20,'Gorgeous flower arrangements and excellent service!! Many thanks!',5,27,6),(21,'We love the service you guys give thank you very much',5,21,7),(22,'We love the service you guys give thank you very much',4,24,7),(23,'We love the service you guys give thank you very much',5,21,7),(24,'The flowers arrangement are beautiful. Easy company to work with',5,24,8),(25,'The flowers arrangement are beautiful. Easy company to work with',4,22,8),(26,'The flowers arrangement are beautiful. Easy company to work with',5,21,8),(27,'The flowers arrangement are beautiful. Easy company to work with',5,21,8),(28,'I got your email and the flower arrangement is lovely and the lady that delivered them was very nice thank you',5,32,9),(29,'',0,29,10),(30,'Beautiful arngements and amazing customer service.',5,25,11),(31,'Beautiful arngements and amazing customer service.',5,21,11),(32,'The floral arrangements have been the prettiest I have ever seen.',5,24,12),(33,'The floral arrangements have been the prettiest I have ever seen.',5,21,12),(34,'The floral arrangements have been the prettiest I have ever seen.',4,23,12),(35,'Nice floral arrangements',4,37,13),(36,'',0,30,14),(37,'Beautiful flowers and they lasted for quite some time. Great service.',5,35,15),(38,'I received a floral arrangement from my husband for out 37th wedding anniversary. The flowers perfectly arranged and very colourful. Great job.',5,33,16),(39,'Very happy with the order I made. It was well worth the cost - a very beautiful arrangement was delivered. thank you!!',5,26,17),(40,'Very happy with the order I made. It was well worth the cost - a very beautiful arrangement was delivered. thank you!!',5,26,17),(41,'Very happy with the order I made. It was well worth the cost - a very beautiful arrangement was delivered. thank you!!',5,26,17),(42,'Very happy with the order I made. It was well worth the cost - a very beautiful arrangement was delivered. thank you!!',5,27,17),(43,'Thank you for your quality service.',4,21,18),(44,'Thank you for your quality service.',4,21,18),(45,'Thank you for your quality service.',4,21,18),(46,'Thank you for your quality service.',4,26,18),(47,'Thank you for your quality service.',5,27,18),(48,'I want to say how happy and impressed I am with the excellent service I recieved and the beautiful arrangement that was delivered.',5,35,19),(49,'',0,30,20),(50,'Beautiful arrangement as always.',4,27,21),(51,'Beautiful arrangement as always.',4,26,21),(52,'Beautiful arrangement as always.',4,27,21),(53,'',0,28,22),(54,'The flowers were very beautiful and amazing thank you so much very exciting',5,23,23),(55,'The flowers were very beautiful and amazing thank you so much very exciting',5,23,23),(56,'The flowers were very beautiful and amazing thank you so much very exciting',5,24,23),(57,'Excellent service, from start to finish, I could not have been more pleased.',5,33,24),(58,'I received an arrangement from your shop that was beautiful. I then needed 4 arrangements for a celebration of life so I ordered from your shop and again they were beautiful.',5,24,25),(59,'I received an arrangement from your shop that was beautiful. I then needed 4 arrangements for a celebration of life so I ordered from your shop and again they were beautiful.',5,25,25),(60,'I received an arrangement from your shop that was beautiful. I then needed 4 arrangements for a celebration of life so I ordered from your shop and again they were beautiful.',4,25,25),(61,'I received an arrangement from your shop that was beautiful. I then needed 4 arrangements for a celebration of life so I ordered from your shop and again they were beautiful.',5,22,25),(62,'We were happy to receive two beautiful arrangements for my B D plus a balloon. Made my day. Flowers doing great. thank you.',5,22,26),(63,'We were happy to receive two beautiful arrangements for my B D plus a balloon. Made my day. Flowers doing great. thank you.',5,22,26),(64,'Although the order was quickly put together, the flowers were in rough shape when delivered, and not worth the price of bouquet, will most likely not use again.',5,35,27),(65,'Very good, fast service, beautiful flowers',5,31,28),(66,'',0,33,29),(67,'',0,34,30);
/*!40000 ALTER TABLE `cust_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_manager`
--

DROP TABLE IF EXISTS `event_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `specialty` varchar(50) NOT NULL COMMENT 'Specialty in holding one event, e.g.: Birthday, Wedding…',
  PRIMARY KEY (`manager_id`),
  UNIQUE KEY `manager_id_UNIQUE` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_manager`
--

LOCK TABLES `event_manager` WRITE;
/*!40000 ALTER TABLE `event_manager` DISABLE KEYS */;
INSERT INTO `event_manager` VALUES (1,'Barbara','Wicks','431-796-2043','bwicks0@issuu.com','Birthday'),(2,'Billy','Crosser','556-908-5296','bcrosser1@columbia.edu','Wedding'),(3,'Morris','Reynalds','337-000-2332','mreynalds2@oaic.gov.au','Wedding'),(4,'Haslett','Sarath','811-146-0326','hsarath3@scientificamerican.com','Graduation'),(5,'Elwin','Belly','438-209-3715','ebelly4@51.la','Party'),(6,'Christie','Seal','881-371-9046','cseal5@uiuc.edu','Birthday'),(7,'Godiva','Cleyburn','904-237-9313','gcleyburn6@cloudflare.com','Birthday'),(8,'Eugene','Perez','308-646-6219','eugene.perez@exxonmobil.com','Party'),(9,'Deborah','Smith','314-731-7135','deborah.smith@yahoo.com','Party'),(10,'Janice','Parker','308-827-9016','janice.parker@yahoo.com','Wedding'),(11,'Rebecca','Stewart','240-513-8668','rebecca.stewart@gmail.com','Wedding'),(12,'Phillip','White','480-946-9780','phillip.white@gmail.com','Birthday'),(13,'Jose','Hill','219-624-3708','jose.hill@hotmail.com','Birthday'),(14,'Harold','Nelson','423-974-2755','harold.nelson@gmail.com','Wedding'),(15,'Nicole','Ward','225-968-5952','nicole.ward@yahoo.com','Wedding'),(16,'Theresa','Murphy','406-961-7340','theresa.murphy@gmail.com','Birthday'),(17,'Tammy','Young','217-856-6752','tammy.young@comcast.net','Birthday'),(18,'Jimmy','Lee','390-288-4902','jlee@gmail.com','Wedding'),(19,'null','null','123-456-789','null@gmail.com','null');
/*!40000 ALTER TABLE `event_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_manager_schedule`
--

DROP TABLE IF EXISTS `event_manager_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_manager_schedule` (
  `event_manager_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduled_time` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `event_manager_id` int(11) NOT NULL,
  PRIMARY KEY (`event_manager_schedule_id`,`event_manager_id`),
  UNIQUE KEY `event_manager_schedule_id_UNIQUE` (`event_manager_schedule_id`),
  KEY `fk_event_manager_schedule_event_manager_info1_idx` (`event_manager_id`),
  CONSTRAINT `fk_event_manager_schedule_event_manager_info1` FOREIGN KEY (`event_manager_id`) REFERENCES `event_manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_manager_schedule`
--

LOCK TABLES `event_manager_schedule` WRITE;
/*!40000 ALTER TABLE `event_manager_schedule` DISABLE KEYS */;
INSERT INTO `event_manager_schedule` VALUES (1,'2019-03-10','Available',1),(2,'2020-02-14','Not Available',3),(3,'2019-08-20','Available',2),(4,'2019-06-04','Available',4),(5,'2019-06-26','Available',6),(6,'2020-02-08','Available',7),(7,'2019-08-04','Not Available',2),(8,'2019-11-10','Available',3),(9,'2019-07-30','Available',5),(10,'2019-03-15','Not Available',1),(11,'2019-04-22','Available',6),(12,'2019-02-25','Not Available',7),(13,'2019-05-04','Not Available',4),(14,'2020-02-14','Available',7),(15,'2020-02-14','Available',8),(16,'2020-02-14','Available',9),(17,'2020-02-14','Available',12),(18,'2020-02-14','Available',13),(19,'2020-02-14','Available',1),(20,'2021-02-14','Available',18),(21,'2021-02-14','Available',2),(22,'2021-02-14','Available',3),(23,'2021-02-14','Available',8),(24,'2021-02-14','Available',9);
/*!40000 ALTER TABLE `event_manager_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_service`
--

DROP TABLE IF EXISTS `event_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(45) NOT NULL,
  `service_time` date NOT NULL,
  `street` varchar(60) NOT NULL,
  `street(line 2)` varchar(60) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `service_status` varchar(45) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`service_id`,`manager_id`),
  UNIQUE KEY `service_id_UNIQUE` (`service_id`),
  KEY `fk_event_service_event_manager_info1_idx` (`manager_id`),
  CONSTRAINT `fk_event_service_event_manager_info1` FOREIGN KEY (`manager_id`) REFERENCES `event_manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_service`
--

LOCK TABLES `event_service` WRITE;
/*!40000 ALTER TABLE `event_service` DISABLE KEYS */;
INSERT INTO `event_service` VALUES (201,'Party','2020-02-14','4 B Blue Ridge Blvd','','Bellevue','WA','98006','completed',3),(202,'Party','2019-12-25','639 Main St','','Seattle','WA','98122','completed',5),(203,'Wedding','2019-07-30','5 Boston Ave #88','','Redmond','WA','98052','completed',10),(204,'Birthaday','2020-04-09','228 Runamuck Pl #2808','','Sammamish','WA','98029','not completed',1),(205,'Party','2019-12-24','25 E 75th St #69','','Seattle','WA','98102','completed',5),(206,'Birthaday','2020-03-22','98 Connecticut Ave Nw','','Seattle','WA','98102','not completed',12),(207,'Party','2020-02-14','56 E Morehead St','','Seattle','WA','98102','completed',14),(208,'Wedding','2020-02-14','73 State Road 434 E','','Bellevue','WA','98006','completed',15),(209,'Party','2020-02-14','1 State Route 27','','Bellevue','WA','98006','completed',2),(210,'Birthaday','2020-05-07','394 Manchester Blvd','','Bellevue','WA','98006','not completed',6),(211,'Birthaday','2020-04-25','6 Greenleaf Ave','','Bellevue','WA','98006','not completed',7),(212,'Wedding','2019-04-10','74 S Westgate St','','Seattle','WA','98112','completed',10),(213,'Party','2020-02-14','86 Nw 66th St #8673','','Kirkland','WA','98033','completed',10),(214,'Wedding','2020-02-14','2 Cedar Ave #84','','Seattle','WA','98122','completed',11),(215,'Wedding','2020-03-31','90991 Thorburn Ave','','Seattle','WA','98122','not completed',10),(216,'Graduation','2020-06-23','386 9th Ave N','','Seattle','WA','98122','not completed',4),(217,'Delivery','2020-01-01','not applied','','Greater Seattle Area','WA','98000','not applied',19);
/*!40000 ALTER TABLE `event_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `sale_price` decimal(10,2) NOT NULL,
  `price_after_disc` decimal(10,2) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`,`order_id`,`product_id`),
  KEY `fk_product_info_has_order_info_order_info1_idx` (`order_id`,`cust_id`),
  KEY `fk_product_info_has_order_info_product_info1_idx` (`product_id`),
  CONSTRAINT `fk_oeder_info_has_product_info` FOREIGN KEY (`order_id`, `cust_id`) REFERENCES `order_info` (`order_id`, `cust_id`),
  CONSTRAINT `fk_product_info_has_order_info` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (15.99,14.39,1,101,21),(34.99,29.74,1,102,22),(42.99,42.99,1,103,23),(135.99,101.99,1,104,24),(150.99,150.99,1,105,25),(82.99,62.24,1,106,26),(15.99,14.39,1,107,21),(34.99,29.74,1,108,22),(499.99,499.99,2,109,35),(34.99,34.99,3,110,22),(150.99,113.24,3,111,25),(349.98,314.98,3,112,27),(15.99,15.99,3,113,21),(799.99,799.99,4,114,36),(34.99,29.74,5,115,22),(34.99,26.24,5,116,22),(135.99,122.39,5,117,24),(135.99,135.99,5,118,24),(82.99,70.54,6,119,26),(349.98,262.49,6,120,27),(15.99,13.59,7,121,21),(135.99,122.39,7,122,24),(15.99,15.99,7,123,21),(135.99,115.59,8,124,24),(34.99,34.99,8,125,22),(15.99,13.59,8,126,21),(15.99,15.99,8,127,21),(2799.99,2799.99,9,128,32),(399.99,399.99,10,129,29),(150.99,113.24,11,130,25),(15.99,13.59,11,131,21),(135.99,115.59,12,132,24),(15.99,15.99,12,133,21),(42.99,38.69,12,134,23),(1099.99,1099.99,13,135,37),(699.99,699.99,14,136,30),(499.99,499.99,15,137,35),(3499.99,3499.99,16,138,33),(82.99,82.99,17,139,26),(82.99,74.69,17,140,26),(82.99,70.54,17,141,26),(349.98,349.98,17,142,27),(15.99,15.99,18,143,21),(15.99,14.39,18,144,21),(15.99,15.99,18,145,21),(82.99,82.99,18,146,26),(349.98,297.48,18,147,27),(499.99,499.99,19,148,35),(699.99,699.99,20,149,30),(15.99,13.59,21,150,27),(15.99,15.99,21,151,26),(15.99,13.59,21,152,27),(199.99,199.99,22,153,28),(42.99,42.99,23,154,23),(42.99,38.69,23,155,23),(42.99,42.99,23,156,24),(3499.99,3499.99,24,157,33),(150.99,150.99,25,158,24),(150.99,113.24,25,159,25),(150.99,135.89,25,160,25),(150.99,150.99,25,161,22),(82.99,70.54,26,162,22),(82.99,82.99,26,163,22),(499.99,499.99,27,164,35),(1999.99,1999.99,28,165,31),(3499.99,3499.99,29,166,33),(599.99,599.99,30,167,34);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(45) NOT NULL,
  `order_status` varchar(45) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `ship_id` int(11) NOT NULL,
  `shipment_fee_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`cust_id`,`payment_id`,`service_id`,`ship_id`),
  UNIQUE KEY `oderID_UNIQUE` (`order_id`),
  KEY `fk_order_info_payment_info1_idx` (`payment_id`),
  KEY `fk_order_info_event_service1_idx` (`service_id`),
  KEY `fk_order_info_shipping_info*1_idx` (`ship_id`),
  KEY `fk_order_info_shipment_fee1_idx` (`shipment_fee_id`),
  KEY `fk_order_info_cust_info1` (`cust_id`),
  CONSTRAINT `fk_order_info_cust_info1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`),
  CONSTRAINT `fk_order_info_payment_info1` FOREIGN KEY (`payment_id`) REFERENCES `payment_detail` (`payment_id`),
  CONSTRAINT `fk_order_info_shipment_fee1` FOREIGN KEY (`shipment_fee_id`) REFERENCES `shipment_fee` (`shipment_fee_id`),
  CONSTRAINT `fk_order_info_shipping_info*1` FOREIGN KEY (`ship_id`) REFERENCES `shipping` (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES (101,1100,'2017-10-10','delivery','Completed',14.39,1,10001,217,1,8),(102,1101,'2017-11-10','delivery','Completed',29.74,1,10002,217,2,8),(103,1102,'2017-12-10','delivery','Completed',42.99,1,10003,217,3,8),(104,1103,'2018-01-10','delivery','Completed',101.99,1,10004,217,4,8),(105,1104,'2018-02-10','delivery','Completed',150.99,1,10005,217,5,8),(106,1105,'2018-03-10','delivery','Completed',62.24,1,10006,217,6,8),(107,1106,'2018-04-10','delivery','Completed',14.39,1,10007,217,7,8),(108,1107,'2018-05-10','delivery','Completed',29.74,1,10008,217,8,8),(109,1108,'2020-02-22','event service','Completed',499.99,2,10009,201,9,1),(110,1109,'2019-04-11','delivery','Completed',34.99,3,10010,217,10,8),(111,1110,'2019-08-21','delivery','Completed',113.24,3,10011,217,11,8),(112,1111,'2019-12-25','delivery','Completed',314.98,3,10012,217,12,8),(113,1112,'2020-01-15','delivery','Completed',15.99,3,10013,217,13,8),(114,1113,'2019-12-16','event service','Completed',799.99,4,10014,202,14,8),(115,1114,'2018-07-07','delivery','Completed',29.74,5,10015,217,15,5),(116,1115,'2018-08-07','delivery','Completed',26.24,5,10016,217,16,5),(117,1116,'2018-09-07','delivery','Completed',122.39,5,10017,217,17,5),(118,1117,'2018-10-07','delivery','Completed',135.99,5,10018,217,18,5),(119,1118,'2019-12-25','delivery','Completed',70.54,6,10019,217,19,2),(120,1119,'2020-02-18','delivery','Completed',262.49,6,10020,217,20,2),(121,1120,'2019-09-12','delivery','Completed',13.59,7,10021,217,21,3),(122,1121,'2020-01-05','delivery','Completed',122.39,7,10022,217,22,3),(123,1122,'2020-02-08','delivery','Completed',15.99,7,10023,217,23,3),(124,1123,'2019-08-20','delivery','Completed',115.59,8,10024,217,24,4),(125,1124,'2018-10-20','delivery','Completed',34.99,8,10025,217,25,4),(126,1125,'2019-12-20','delivery','Completed',13.59,8,10026,217,26,4),(127,1126,'2020-02-20','delivery','Completed',15.99,8,10027,217,27,4),(128,1127,'2019-07-21','event service','Completed',2799.99,9,10028,203,28,4),(129,1128,'2020-02-22','event service','Completed',399.99,10,10029,204,29,2),(130,1129,'2019-05-20','delivery','Completed',113.24,11,10030,217,30,2),(131,1130,'2020-01-17','delivery','Completed',13.59,11,10031,217,31,2),(132,1131,'2020-01-16','delivery','Completed',115.59,12,10032,217,32,1),(133,1132,'2020-02-10','delivery','Completed',15.99,12,10033,217,33,1),(134,1133,'2020-02-23','delivery','Completed',38.69,12,10034,217,34,1),(135,1134,'2019-11-19','event service','Completed',1099.99,13,10035,205,35,6),(136,1135,'2020-02-22','event service','Completed',699.99,14,10036,206,36,6),(137,1136,'2020-02-10','event service','Completed',499.99,15,10037,207,37,6),(138,1137,'2020-01-28','event service','Completed',3499.99,16,10038,208,38,1),(139,1138,'2019-08-11','delivery','Completed',82.99,17,10039,217,39,4),(140,1139,'2018-10-11','delivery','Completed',74.69,17,10040,217,40,4),(141,1140,'2019-12-11','delivery','Completed',70.54,17,10041,217,41,4),(142,1141,'2020-02-11','delivery','Completed',349.98,17,10042,217,42,4),(143,1142,'2019-06-25','delivery','Completed',15.99,18,10043,217,43,4),(144,1143,'2019-08-25','delivery','Completed',14.39,18,10044,217,44,4),(145,1144,'2019-10-25','delivery','Completed',15.99,18,10045,217,45,4),(146,1145,'2019-12-25','delivery','Completed',82.99,18,10046,217,46,4),(147,1146,'2020-01-27','delivery','Completed',297.48,18,10047,217,47,4),(148,1147,'2020-01-23','event service','Completed',499.99,19,10048,209,48,1),(149,1148,'2020-02-07','event service','Completed',699.99,20,10049,210,49,1),(150,1149,'2019-11-02','delivery','Completed',13.59,21,10050,217,50,1),(151,1150,'2019-11-03','delivery','Completed',15.99,21,10051,217,51,1),(152,1151,'2019-11-04','delivery','Completed',13.59,21,10052,217,52,1),(153,1152,'2020-02-05','delivery','Completed',199.99,22,10053,211,53,1),(154,1153,'2019-03-28','delivery','Completed',42.99,23,10054,217,54,1),(155,1154,'2019-05-12','delivery','Completed',38.69,23,10055,217,55,1),(156,1155,'2020-02-09','delivery','Completed',42.99,23,10056,217,56,1),(157,1156,'2019-04-10','event service','Completed',3499.99,24,10057,212,57,7),(158,1157,'2019-11-03','delivery','Completed',150.99,25,10058,217,58,2),(159,1158,'2019-12-03','delivery','Completed',113.24,25,10059,217,59,2),(160,1159,'2020-01-03','delivery','Completed',135.89,25,10060,217,60,2),(161,1160,'2020-02-03','delivery','Completed',150.99,25,10061,217,61,2),(162,1161,'2019-12-25','delivery','Completed',70.54,26,10062,217,62,3),(163,1162,'2020-02-09','delivery','Completed',82.99,26,10063,217,63,3),(164,1163,'2020-02-10','event service','Completed',499.99,27,10064,213,64,3),(165,1164,'2020-01-26','event service','Completed',1999.99,28,10065,214,65,8),(166,1165,'2020-02-02','event service','Completed',3499.99,29,10066,215,66,8),(167,1166,'2020-02-23','event service','Completed',599.99,30,10067,216,67,8);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_detail`
--

DROP TABLE IF EXISTS `payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_detail` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mtd` varchar(60) NOT NULL,
  `name_on_card` varchar(50) NOT NULL,
  `card_num` char(16) NOT NULL,
  `scurity_code` varchar(4) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `street` varchar(60) NOT NULL,
  `street(line 2)` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`,`cust_id`),
  UNIQUE KEY `payment_id_UNIQUE` (`payment_id`),
  KEY `fk_payment_info_cust_info1_idx` (`cust_id`),
  CONSTRAINT `fk_payment_info_cust_info1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10068 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_detail`
--

LOCK TABLES `payment_detail` WRITE;
/*!40000 ALTER TABLE `payment_detail` DISABLE KEYS */;
INSERT INTO `payment_detail` VALUES (10001,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6649 N Blue Gum St','','Seattle','WA','98122',1),(10002,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6650 N Blue Gum St','','Seattle','WA','98123',1),(10003,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6651 N Blue Gum St','','Seattle','WA','98124',1),(10004,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6652 N Blue Gum St','','Seattle','WA','98125',1),(10005,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6653 N Blue Gum St','','Seattle','WA','98126',1),(10006,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6654 N Blue Gum St','','Seattle','WA','98127',1),(10007,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6655 N Blue Gum St','','Seattle','WA','98128',1),(10008,'Credit','Lois Walker','4.56E+15','789','0000-00-00','3456','6655 N Blue Gum St','','Seattle','WA','98128',1),(10009,'Debit','Brenda Robinson','4.44E+15','464','0000-00-00','4565','4 B Blue Ridge Blvd','','Bellevue','WA','98006',2),(10010,'Credit','Joe Robinson','4.01E+15','463','0000-00-00','8976','8 W Cerritos Ave #54','','Seattle','WA','98122',3),(10011,'Credit','Joe Robinson','4.01E+15','463','0000-00-00','8976','8 W Cerritos Ave #54','','Seattle','WA','98122',3),(10012,'Credit','Joe Robinson','4.01E+15','463','0000-00-00','8976','8 W Cerritos Ave #54','','Seattle','WA','98122',3),(10013,'Credit','Joe Robinson','4.01E+15','463','0000-00-00','8976','8 W Cerritos Ave #54','','Seattle','WA','98122',3),(10014,'Debit','Diane Evans','4.59E+15','342','0000-00-00','2325','8 W Cerritos Ave #54','','Seattle','WA','98122',4),(10015,'Credit','Benjanmin Russell','4.52E+15','452','0000-00-00','5432','639 Main St','','Seattle','WA','98122',5),(10016,'Credit','Benjanmin Russell','4.52E+15','452','0000-00-00','5432','34 Center St','','Seattle','WA','98101',5),(10017,'Debit','Benjanmin Russell','4.52E+15','452','0000-00-00','5432','34 Center St','','Seattle','WA','98101',5),(10018,'Debit','Benjanmin Russell','4.52E+15','452','0000-00-00','5432','34 Center St','','Seattle','WA','98101',5),(10019,'Credit','Patrick Bailey','4.05E+15','342','0000-00-00','5467','3 Mcauley Dr','','Sammamish','WA','98029',6),(10020,'Credit','Patrick Bailey','4.05E+15','342','0000-00-00','5467','3 Mcauley Dr','','Sammamish','WA','98029',6),(10021,'Credit','Nancy Baker','4.14E+15','675','0000-00-00','3543','3 Mcauley Dr','','Sammamish','WA','98029',7),(10022,'Credit','Nancy Baker','4.14E+15','675','0000-00-00','3543','7 Eads St','','Kirkland','WA','98033',7),(10023,'Debit','Nancy Baker','4.14E+15','675','0000-00-00','3543','7 Eads St','','Kirkland','WA','98033',7),(10024,'Debit','Carol Murphy','4.51E+15','567','0000-00-00','3262','7 Eads St','','Kirkland','WA','98033',8),(10025,'Debit','Carol Murphy','4.51E+15','567','0000-00-00','3262','7 W Jackson Blvd','','Redmond','WA','98052',8),(10026,'Credit','Carol Murphy','4.51E+15','567','0000-00-00','3262','7 W Jackson Blvd','','Redmond','WA','98052',8),(10027,'Credit','Carol Murphy','4.51E+15','567','0000-00-00','3262','7 W Jackson Blvd','','Redmond','WA','98052',8),(10028,'Credit','Frances Young','4.00E+15','634','0000-00-00','3225','7 W Jackson Blvd','','Redmond','WA','98052',9),(10029,'Debit','Diana Peterson','4.40E+15','578','0000-00-00','2345','5 Boston Ave #88','','Redmond','WA','98052',10),(10030,'Credit','Raph Flores','4.07E+15','204','0000-00-00','2242','228 Runamuck Pl #2808','','Sammamish','WA','98029',11),(10031,'Debit','Raph Flores','4.07E+15','204','0000-00-00','2242','2371 Jerrold Ave','','Sammamish','WA','98029',11),(10032,'Debit','Jack Alexander','4.56E+15','405','0000-00-00','2446','2371 Jerrold Ave','','Sammamish','WA','98029',12),(10033,'Debit','Jack Alexander','4.56E+15','405','0000-00-00','2446','37275 St Rt 17m M','','Bellevue','WA','98006',12),(10034,'Credit','Jack Alexander','4.56E+15','405','0000-00-00','2446','37275 St Rt 17m M','','Bellevue','WA','98006',12),(10035,'Credit','Melissa King','4.38E+15','456','0000-00-00','2436','37275 St Rt 17m M','','Bellevue','WA','98006',13),(10036,'Debit','Wayne Watson','4.81E+15','504','0000-00-00','2634','25 E 75th St #69','','Seattle','WA','98102',14),(10037,'Credit','Cheryl Scott','4.16E+15','205','0000-00-00','4673','98 Connecticut Ave Nw','','Seattle','WA','98102',15),(10038,'Credit','Paula Diaz','4.55E+15','406','0000-00-00','2343','56 E Morehead St','','Seattle','WA','98102',16),(10039,'Credit','Joshua Stewart','4.17E+15','504','0000-00-00','6364','73 State Road 434 E','','Bellevue','WA','98006',17),(10040,'Credit','Joshua Stewart','4.17E+15','504','0000-00-00','3456','69734 E Carrillo St','','Redmond','WA','98052',17),(10041,'Debit','Joshua Stewart','4.17E+15','504','0000-00-00','3456','69734 E Carrillo St','','Redmond','WA','98052',17),(10042,'Debit','Joshua Stewart','4.17E+15','504','0000-00-00','3456','69734 E Carrillo St','','Redmond','WA','98052',17),(10043,'Debit','Theresa Lee','4.05E+15','547','0000-00-00','5363','69734 E Carrillo St','','Redmond','WA','98052',18),(10044,'Credit','Theresa Lee','4.05E+15','547','0000-00-00','5363','322 New Horizon Blvd','','Redmond','WA','98052',18),(10045,'Credit','Theresa Lee','4.05E+15','547','0000-00-00','5363','322 New Horizon Blvd','','Redmond','WA','98052',18),(10046,'Debit','Theresa Lee','4.05E+15','547','0000-00-00','5363','322 New Horizon Blvd','','Redmond','WA','98052',18),(10047,'Credit','Theresa Lee','4.05E+15','547','0000-00-00','5363','322 New Horizon Blvd','','Redmond','WA','98052',18),(10048,'Debit','Julia Scott','4.52E+15','895','0000-00-00','3452','322 New Horizon Blvd','','Redmond','WA','98052',19),(10049,'Credit','Thomas Lewis','4.07E+15','194','0000-00-00','4663','1 State Route 27','','Bellevue','WA','98006',20),(10050,'Debit','Carol Edwards','4.56E+15','105','0000-00-00','3245','394 Manchester Blvd','','Bellevue','WA','98006',21),(10051,'Debit','Carol Edwards','4.56E+15','105','0000-00-00','3245','6 S 33rd St','','Bellevue','WA','98006',21),(10052,'Debit','Carol Edwards','4.56E+15','105','0000-00-00','3245','6 S 33rd St','','Bellevue','WA','98006',21),(10053,'Credit','Matthew Turner','4.07E+15','204','0000-00-00','3452','6 S 33rd St','','Bellevue','WA','98006',22),(10054,'Credit','Joan Stewart','4.17E+15','890','0000-00-00','8967','6 Greenleaf Ave','','Bellevue','WA','98006',23),(10055,'Debit','Joan Stewart','4.17E+15','890','0000-00-00','8967','618 W Yakima Ave','','Bellevue','WA','98006',23),(10056,'Debit','Joan Stewart','4.17E+15','890','0000-00-00','8967','618 W Yakima Ave','','Bellevue','WA','98006',23),(10057,'Credit','Ruby Rogers','4.17E+15','948','0000-00-00','6453','618 W Yakima Ave','','Bellevue','WA','98006',24),(10058,'Debit','Carolyn Hayes','4.07E+15','493','0000-00-00','4562','74 S Westgate St','','Seattle','WA','98112',25),(10059,'Debit','Carolyn Hayes','4.07E+15','493','0000-00-00','4562','3273 State St','','Sammamish','WA','98029',25),(10060,'Credit','Carolyn Hayes','4.07E+15','493','0000-00-00','4562','3273 State St','','Sammamish','WA','98029',25),(10061,'Debit','Carolyn Hayes','4.07E+15','493','0000-00-00','4562','3273 State St','','Sammamish','WA','98029',25),(10062,'Credit','Anne Russell','4.82E+15','503','0000-00-00','4623','3273 State St','','Sammamish','WA','98029',26),(10063,'Debit','Anne Russell','4.82E+15','503','0000-00-00','4623','1 Central Ave','','Kirkland','WA','98033',26),(10064,'Credit','Daniel Cooper','4.07E+15','458','0000-00-00','2536','1 Central Ave','','Kirkland','WA','98033',27),(10065,'Debit','Roger Roberts','4.55E+15','395','0000-00-00','6685','2 Cedar Ave #84','','Seattle','WA','98122',28),(10066,'Credit','Maria Walker','4.56E+15','503','0000-00-00','3456','90991 Thorburn Ave','','Seattle','WA','98122',29),(10067,'Debit','Brenda Butler','4.54E+15','650','0000-00-00','6688','386 9th Ave N','','Seattle','WA','98122',30);
/*!40000 ALTER TABLE `payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(60) NOT NULL,
  `product_description` varchar(300) DEFAULT NULL,
  `category` varchar(45) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (21,'Rose','','Flower','',15.99),(22,'Poeny','','Flower','',34.99),(23,'Orchids','','Flower','',42.99),(24,'Rose Bundle','','Package','',135.99),(25,'Orchids Bundle','','Package','',150.99),(26,'Tulips','','Flower','',82.99),(27,'Buttercup Bundle','','Package','',349.98),(28,'Birthday Event Flowers (small)','','Event','',199.99),(29,'Birthday Event Flowers (medium)','','Event','',399.99),(30,'Birthday Event Flowers (large)','','Event','',699.99),(31,'Wedding Event Flowers (small)','','Event','',1999.99),(32,'Wedding Event Flowers (medium)','','Event','',2799.99),(33,'Wedding Event Flowers (large)','','Event','',3499.99),(34,'Graduation Event Flowers','','Event','',599.99),(35,'Party Event Flowers (small)','','Event','',499.99),(36,'Party Event Flowers (medium)','','Event','',799.99),(37,'Party Event Flowers (large)','','Event','',1099.99);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_fee`
--

DROP TABLE IF EXISTS `shipment_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment_fee` (
  `shipment_fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(20) NOT NULL,
  `shippment_fee` decimal(5,2) NOT NULL,
  PRIMARY KEY (`shipment_fee_id`),
  UNIQUE KEY `shipment_fee_id_UNIQUE` (`shipment_fee_id`),
  UNIQUE KEY `zip_code_UNIQUE` (`zip_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_fee`
--

LOCK TABLES `shipment_fee` WRITE;
/*!40000 ALTER TABLE `shipment_fee` DISABLE KEYS */;
INSERT INTO `shipment_fee` VALUES (1,'98006',15.00),(2,'98029',20.00),(3,'98033',22.00),(4,'98052',20.00),(5,'98101',25.00),(6,'98102',22.00),(7,'98112',25.00),(8,'98122',18.00);
/*!40000 ALTER TABLE `shipment_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_num` varchar(40) NOT NULL,
  `street` varchar(100) NOT NULL,
  `street(line2)` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `ship_company` varchar(60) NOT NULL,
  `ship_status` varchar(45) NOT NULL,
  `est_arrive_time` date NOT NULL,
  `recipient_f_name` varchar(30) NOT NULL,
  `recipient_l_name` varchar(30) NOT NULL,
  `recipient_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`ship_id`),
  UNIQUE KEY `shipping_id_UNIQUE` (`ship_id`),
  UNIQUE KEY `tracking_num_UNIQUE` (`tracking_num`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'NC001PF015053','6649 N Blue Gum St','','Seattle','WA','98122','FedEx','Shipped','2018-05-11','Lois','Walker','810-292-9388'),(2,'NC002PF015054','4 B Blue Ridge Blvd','','Bellevue','WA','98006','DHL','Deliveried','2020-02-23','Brenda','Robinson','856-636-8749'),(3,'NC003PF015055','8 W Cerritos Ave #54','','Seattle','WA','98122','UPS','En Route','2020-01-17','Joe','Robinson','907-385-4412'),(4,'NC001PF015054','639 Main St','','Seattle','WA','98122','USP','Not yet been shipped','2019-12-18','Diane','Evans','513-570-1893'),(5,'NC002PF015055','34 Center St','','Seattle','WA','98101','FedEx','Deliveried','2018-10-09','Benjamin','Russell','419-503-2484'),(6,'NC003PF015056','3 Mcauley Dr','','Sammamish','WA','98029','DHL','En Route','2020-02-19','Minh','Nguyen','206-854-1995'),(7,'NC001PF015055','7 Eads St','','Kirkland','WA','98033','FedEx','Shipped','2020-02-09','Nancy','Baker','605-414-2147'),(8,'NC002PF015056','7 W Jackson Blvd','','Redmond','WA','98052','UPS','En Route','2020-02-20','Carol','Murphy','410-655-8723'),(9,'NC003PF015057','5 Boston Ave #88','','Redmond','WA','98052','FedEx','Deliveried','2019-07-21','Britney','Spear','206-839-2943'),(10,'NC001PF015056','228 Runamuck Pl #2808','','Sammamish','WA','98029','DHL','Shipped','2020-02-28','Diana','Peterson','310-498-5651'),(11,'NC002PF015057','2371 Jerrold Ave','','Sammamish','WA','98029','UPS','Deliveried','2020-01-24','Ralph','Flores','440-780-8425'),(12,'NC003PF015058','37275 St Rt 17m M','','Bellevue','WA','98006','FedEx','Shipped','2020-02-23','Jack','Alexander','602-277-4385'),(13,'NC001PF015057','25 E 75th St #69','','Seattle','WA','98102','DHL','Not yet been shipped','2019-11-26','Melissa','King','931-313-9635'),(14,'NC002PF015058','98 Connecticut Ave Nw','','Seattle','WA','98102','FedEx','Deliveried','2020-02-27','Dwayne','Johnson','212-349-2954'),(15,'NC003PF015059','56 E Morehead St','','Seattle','WA','98102','USP','En Route','2020-02-14','Cheryl','Scott','313-288-7937'),(16,'NC001PF015058','73 State Road 434 E','','Bellevue','WA','98006','DHL','Deliveried','2020-02-12','Paula','Diaz','815-828-2147'),(17,'NC002PF015059','69734 E Carrillo St','','Redmond','WA','98052','UPS','Not yet been shipped','2020-02-16','Son','Tung','206-104-4353'),(18,'NC003PF015060','322 New Horizon Blvd','','Redmond','WA','98052','UPS','Shipped','2020-02-06','Theresa','Lee','972-303-9197'),(19,'NC001PF015059','1 State Route 27','','Bellevue','WA','98006','USP','Not yet been shipped','2020-01-29','Julia','Scott','732-658-3154'),(20,'NC002PF015060','394 Manchester Blvd','','Bellevue','WA','98006','FedEx','Shipped','2020-02-15','Thomas','Lewis','715-662-6764'),(21,'NC003PF015061','6 S 33rd St','','Bellevue','WA','98006','UPS','Deliveried','2019-11-27','Carol','Edwards','913-388-2079'),(22,'NC001PF015060','6 Greenleaf Ave','','Bellevue','WA','98006','USP','En Route','2020-02-14','Matthew','Turner','410-669-1642'),(23,'NC002PF015061','618 W Yakima Ave','','Bellevue','WA','98006','USP','Shipped','2020-02-14','Adam','Lavine','202-405-3390'),(24,'NC003PF015062','74 S Westgate St','','Seattle','WA','98112','UPS','Deliveried','2019-04-18','Ruby','Rogers','810-374-9840'),(25,'NC001PF015061','3273 State St','','Sammamish','WA','98029','FedEx','Deliveried','2020-02-19','Carolyn','Hayes','856-264-4130'),(26,'NC002PF015062','1 Central Ave','','Kirkland','WA','98033','USP','Not yet been shipped','2020-02-09','Anne','Russell','907-921-2010'),(27,'NC003PF015063','86 Nw 66th St #8673','','Kirkland','WA','98033','FedEx','Deliveried','2020-03-10','Clark','Ken','206-350-4938'),(28,'NC001PF015062','2 Cedar Ave #84','','Seattle','WA','98122','USP','Not yet been shipped','2020-01-29','Roger','Roberts','419-800-6759'),(29,'NC002PF015063','90991 Thorburn Ave','','Seattle','WA','98122','DHL','En Route','2020-02-09','Maria','Walker','773-924-8565'),(30,'NC003PF015064','386 9th Ave N','','Seattle','WA','98122','DHL','Shipped','2020-02-25','Brenda','Butler','480-814-8284'),(31,'NC003PF015065','4252 N Washington Ave #9','','Seattle','WA','98122','DHL','','0000-00-00','Christiane','Eschberger','404-505-4445'),(32,'NC003PF015066','42754 S Ash Ave','','Seattle','WA','98122','DHL','','0000-00-00','Goldie','Schirpke','973-412-2995'),(33,'NC003PF015067','703 Beville Rd','','Seattle','WA','98122','DHL','','0000-00-00','Loreta','Timenez','208-252-4552'),(34,'NC003PF015068','5 Harrison Rd','','Seattle','WA','98122','DHL','','0000-00-00','Fabiola','Hauenstein','415-411-1775'),(35,'NC003PF015069','73 Southern Blvd','','Seattle','WA','98122','DHL','','0000-00-00','Amie','Perigo','508-942-4186'),(36,'NC003PF015070','189 Village Park Rd','','Seattle','WA','98122','DHL','','0000-00-00','Raina','Brachle','248-357-8718'),(37,'NC003PF015071','6 Middlegate Rd #106','','Seattle','WA','98122','DHL','','0000-00-00','Erinn','Canlas','920-353-6377'),(38,'NC003PF015072','1128 Delaware St','','Seattle','WA','98122','DHL','','0000-00-00','Cherry','Lietz','410-665-4903'),(39,'NC003PF015073','577 Parade St','','Seattle','WA','98122','DHL','','0000-00-00','Kattie','Vonasek','719-669-1664'),(40,'NC003PF015074','70 Mechanic St','','Seattle','WA','98122','DHL','','0000-00-00','Lilli','Scriven','419-588-8719'),(41,'NC003PF015075','4379 Highway 116','','Seattle','WA','98122','DHL','','0000-00-00','Whitley','Tomasulo','301-998-9644'),(42,'NC003PF015076','55 Hawthorne Blvd','','Seattle','WA','98122','DHL','','0000-00-00','Barbra','Adkin','508-855-9887'),(43,'NC003PF015077','7116 Western Ave','','Seattle','WA','98122','DHL','','0000-00-00','Hermila','Thyberg','703-483-1970'),(44,'NC003PF015078','2026 N Plankinton Ave #3','','Seattle','WA','98122','DHL','','0000-00-00','Jesusita','Flister','410-678-2473'),(45,'NC003PF015079','99586 Main St','','Seattle','WA','98122','DHL','','0000-00-00','Caitlin','Julia','512-223-4791'),(46,'NC003PF015080','8739 Hudson St','','Seattle','WA','98122','DHL','','0000-00-00','Roosevelt','Hoffis','623-461-8551'),(47,'NC003PF015081','383 Gunderman Rd #197','','Seattle','WA','98122','DHL','','0000-00-00','Helaine','Halter','419-571-5920'),(48,'NC003PF015082','4441 Point Term Mkt','','Seattle','WA','98122','DHL','','0000-00-00','Lorean','Martabano','206-311-4137'),(49,'NC003PF015083','2972 Lafayette Ave','','Redmond','WA','98052','DHL','','0000-00-00','France','Buzick','513-617-2362'),(50,'NC003PF015084','2140 Diamond Blvd','','Redmond','WA','98052','DHL','','0000-00-00','Justine','Ferrario','812-368-1511'),(51,'NC003PF015085','93 Redmond Rd #492','','Redmond','WA','98052','DHL','','0000-00-00','Adelina','Nabours','847-353-2156'),(52,'NC003PF015086','3989 Portage Tr','','Seattle','WA','98122','DHL','','0000-00-00','Derick','Dhamer','718-232-2337'),(53,'NC003PF015087','1 Midway Rd','','Seattle','WA','98122','DHL','','0000-00-00','Jerry','Dallen','407-446-4358'),(54,'NC003PF015088','77132 Coon Rapids Blvd Nw','','Seattle','WA','98122','DHL','','0000-00-00','Leota','Ragel','734-561-6170'),(55,'NC003PF015089','755 Harbor Way','','Seattle','WA','98122','DHL','','0000-00-00','Jutta','Amyot','936-751-7961'),(56,'NC003PF015090','87 Sierra Rd','','Seattle','WA','98122','DHL','','0000-00-00','Aja','Gehrett','973-482-2430'),(57,'NC003PF015091','7667 S Hulen St #42','','Seattle','WA','98122','DHL','','0000-00-00','Kirk','Herritt','201-693-3967'),(58,'NC003PF015092','75684 S Withlapopka Dr #32','','Seattle','WA','98122','DHL','','0000-00-00','Leonora','Mauson','305-988-4162'),(59,'NC003PF015093','5 Elmwood Park Blvd','','Kirkland','WA','98033','DHL','','0000-00-00','Winfred','Brucato','931-553-9774'),(60,'NC003PF015094','23 Palo Alto Sq','','Kirkland','WA','98033','DHL','','0000-00-00','Tarra','Nachor','714-771-3880'),(61,'NC003PF015095','38062 E Main St','','Kirkland','WA','98033','DHL','','0000-00-00','Corinne','Loder','847-633-3216'),(62,'NC003PF015096','3958 S Dupont Hwy #7','','Kirkland','WA','98033','DHL','','0000-00-00','Dulce','Labreche','215-888-3304'),(63,'NC003PF015097','560 Civic Center Dr','','Kirkland','WA','98033','DHL','','0000-00-00','Kate','Keneipp','973-654-1561'),(64,'NC003PF015098','3270 Dequindre Rd','','Kirkland','WA','98033','DHL','','0000-00-00','Kaitlyn','Ogg','814-865-8113'),(65,'NC003PF015099','1 Garfield Ave #7','','Bellevue','WA','98006','DHL','','0000-00-00','Sherita','Saras','801-293-9853'),(66,'NC003PF015100','9122 Carpenter Ave','','Bellevue','WA','98006','DHL','','0000-00-00','Lashawnda','Stuer','910-922-3672'),(67,'NC003PF015101','48 Lenox St','','Bellevue','WA','98006','DHL','','0000-00-00','Ernest','Syrop','336-370-5333');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `add_time` date NOT NULL,
  `placed_order_time` date NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`,`cust_id`),
  UNIQUE KEY `cart_id_UNIQUE` (`cart_id`),
  KEY `fk_order_cart_cust_info1_idx` (`cust_id`),
  CONSTRAINT `fk_order_cart_cust_id1` FOREIGN KEY (`cust_id`) REFERENCES `cust_info` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (3001,21,15.99,1,'2018-05-01','2018-05-10',1),(3002,25,150.99,1,'2020-01-10','2020-01-15',3),(3003,24,135.99,1,'2018-10-01','2018-10-07',5),(3004,21,15.99,1,'2020-02-06','2020-02-08',7),(3005,24,135.99,1,'2020-02-15','2020-02-20',8),(3006,21,15.99,1,'2020-02-16','2020-02-23',12),(3007,26,82.99,1,'2020-02-03','2020-02-11',17),(3008,21,15.99,1,'2020-01-14','2020-01-27',18),(3009,27,15.99,1,'2019-11-02','2019-11-04',21),(3010,23,42.99,1,'2020-02-03','2020-02-09',23),(3011,25,150.99,1,'2020-01-03','2020-02-03',25),(3012,22,82.99,1,'2020-01-09','2020-02-09',26);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(60) NOT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `contact_person` varchar(60) DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `web_url` varchar(200) DEFAULT NULL,
  `bank_acct_num` char(16) DEFAULT NULL,
  `bank_info` varchar(100) DEFAULT NULL,
  `license_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `supplier_id_UNIQUE` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1001,'Rosy Rose','63517 Dupont St','Husser','419-417-4674','sharee_maile@aol.com','http://www.kenjeterstoreequipmentinc.com','548926458','BoA','ahd73jf'),(1002,'ButterCup Blossoms','5 E Truman Rd','Onofrio','619-727-3892','cordelia_storment@aol.com','http://www.potterbrendajcpa.com','573837533','WellsFargo','jflwsh39'),(1003,'Tuesday\'s Farms','251 Park Ave #979','Jurney','203-918-3939','mollie_mcdoniel@yahoo.com','http://www.bairdkurtzdobson.com','657829262','Chase','sjfgk2h3'),(1004,'Flower Me Up','43496 Commercial Dr #29','Heimann','201-969-7063','brett.mccullan@mccullan.com','http://www.minorcynthiaaesq.com','265926593','BoA','hflgfl238'),(1005,'Boss Blossoms','2184 Worth St','Wenzinger','330-566-8898','teddy_pedrozo@aol.com','http://www.soloverobertaesq.com','837659626','Chase','jvkvhe2'),(1006,'Hi Hi Bye','50126 N Plankinton Ave','Angalich','201-772-4377','tasia_andreason@yahoo.com','http://www.markiiimportsinc.com','165936490','BoA','wa82jf'),(1007,'Thompson, John Randolph Jr','38773 Gravois Ave','Ohms','616-568-4113','hubert@walthall.org','http://www.whitesigndivctrlequipco.com','356814037','BoA','ahd73jf'),(1008,'Five Star','16452 Greenwich St','Leinenbach','601-637-5479','arthur.farrow@yahoo.com','http://www.mmstorefixturescoinc.com','313517287','WellsFargo','jflwsh39'),(1009,'Moskowitz, Barry S','40 Cambridge Ave','Suell','901-869-4314','vberlanga@berlanga.com','http://www.judahcasterwheelco.com','270220538','Chase','sjfgk2h3'),(1010,'Jackson Millwork Co','20113 4th Ave E','Myricks','303-997-7760','billye_miro@cox.net','http://www.galaxyinternationalinc.com','226923789','BoA','hflgfl238'),(1011,'Knwz Newsradio','6 Ridgewood Center Dr','Swayze','901-739-5892','glenna_slayton@cox.net','http://www.sigmacorpofamerica.com','183627039','Chase','jvkvhe2'),(1012,'Ac Supply Co','469 Outwater Ln','Castros','626-293-7678','mitzie_hudnall@yahoo.com','http://www.sowardanneesq.com','140330290','BoA','wa82jf'),(1013,'Milford Enterprises Inc','62 Monroe St','Greenbush','773-857-2231','bernardine_rodefer@yahoo.com','http://www.osbornemichellemesq.com','97033540','BoA','ahd73jf'),(1014,'Mosocco, Ronald A','3338 A Lockport Pl #6','Lapage','718-728-5051','staci_schmaltz@aol.com','http://www.studentsinfreeentrprsnatl.com','53736791','WellsFargo','jflwsh39'),(1015,'Tri Co','9 Hwy','Claucherty','509-847-3352','nichelle_meteer@meteer.com','http://www.johnsonrobertmesq.com','10440041','Chase','sjfgk2h3'),(1016,'Cowan & Kelly flower planting','8284 Hart St','Villanueva','410-429-4888','jrhoden@yahoo.com','http://www.delcharroapartments.com','285670787','BoA','hflgfl238'),(1017,'Adam gardern','5 Washington St #1','Perruzza','973-605-6492','ettie.hoopengardner@hotmail.com','http://www.legalsearchinc.com','76153456','Chase','jvkvhe2'),(1018,'Mcrae, James L','8 S Haven St','Wildfong','562-719-7922','eden_jayson@yahoo.com','http://www.servicesupplycoinc.com','119450206','BoA','wa82jf'),(1019,'Tri M Inc','9 Front St','Galam','732-617-5310','lynelle_auber@gmail.com','http://www.sameshimadouglasjesq.com','162746955','BoA','ahd73jf'),(1020,'International flower Inc','1933 Packer Ave #2','Lipkin','973-491-8723','merissa.tomblin@gmail.com','http://www.thompsonjohnrandolphjr.com','604370567','WellsFargo','jflwsh39');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_review`
--

DROP TABLE IF EXISTS `supplier_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_review` (
  `supplier_review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(500) NOT NULL,
  `score` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_review_id`,`supplier_id`,`product_id`),
  UNIQUE KEY `supplier_review_id_UNIQUE` (`supplier_review_id`),
  KEY `fk_supplier_review_supplier_info1_idx` (`supplier_id`),
  KEY `fk_supplier_review_product_info1_idx` (`product_id`),
  CONSTRAINT `fk_supplier_review_product_info1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_supplier_review_supplier_info1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_review`
--

LOCK TABLES `supplier_review` WRITE;
/*!40000 ALTER TABLE `supplier_review` DISABLE KEYS */;
INSERT INTO `supplier_review` VALUES (1,'Horrible experience',3,1001,21),(2,'Payment in time',3,1002,21),(3,'Nice to do Business again',6,1003,21),(4,'Nice to do Business again',5,1004,21),(5,'Nice to do Business again',4,1005,22),(6,'Glad to work with your shop',7,1006,22),(7,'Glad to work with your shop',10,1007,23),(8,'Payment in time',10,1008,24),(9,'Nice to do Business again',10,1009,24),(10,'Payment in time',8,1010,24),(11,'Payment in time',3,1011,24),(12,'Payment in time',9,1012,24),(13,'Payment in time',9,1013,24),(14,'Payment in time',8,1014,24),(15,'Nice to do Business again',4,1015,25),(16,'As Usual',8,1016,26),(17,'Glad to work with your shop',10,1017,26),(18,'Glad to work with your shop',10,1018,27),(19,'Horrible experience',1,1019,27),(20,'Long term collaboration',9,1020,27),(21,'Payment in time',5,1001,27),(22,'Payment in time',4,1002,27),(23,'Horrible experience',1,1003,28),(24,'Payment in time',6,1004,28),(25,'Payment in time',6,1005,28),(26,'Long term collaboration',9,1006,29),(27,'As Usual',6,1007,29),(28,'Long term collaboration',7,1008,30),(29,'Glad to work with your shop',10,1009,30),(30,'Long term collaboration',8,1010,31),(31,'Payment in time',4,1011,31),(32,'Horrible experience',1,1012,32),(33,'Glad to work with your shop',10,1013,32),(34,'Long term collaboration',8,1014,32),(35,'Payment in time',6,1015,33),(36,'Payment in time',6,1016,33),(37,'Payment in time',3,1017,33),(38,'Horrible experience',2,1018,34),(39,'Glad to work with your shop',8,1019,34),(40,'Payment in time',2,1020,35),(41,'As Usual',8,1001,35),(42,'Payment in time',2,1002,36),(43,'Nice to do Business again',7,1003,36),(44,'As Usual',6,1004,37),(45,'Payment in time',4,1005,37);
/*!40000 ALTER TABLE `supplier_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehousing`
--

DROP TABLE IF EXISTS `warehousing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehousing` (
  `warehousing_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehousing_date` date DEFAULT NULL COMMENT 'Date the product is delivered from supplier, or a future date when it will be delivered.',
  `warehousing_amt` int(11) NOT NULL,
  `warehousing_price` decimal(10,2) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL COMMENT 'Boolean indicating whether the product is delivered. If false, it means supplier missed delivery date or it will be delivered in a future date.',
  `quality_check` varchar(45) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`warehousing_id`,`product_id`,`supplier_id`),
  UNIQUE KEY `inventory_id_UNIQUE` (`warehousing_id`),
  KEY `fk_inventory_info_product_info1_idx` (`product_id`),
  KEY `fk_inventory_info_supplier_info1_idx` (`supplier_id`),
  CONSTRAINT `fk_inventory_info_product_info1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_inventory_info_supplier_info1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehousing`
--

LOCK TABLES `warehousing` WRITE;
/*!40000 ALTER TABLE `warehousing` DISABLE KEYS */;
INSERT INTO `warehousing` VALUES (101,'0000-00-00',100,5.99,1,'8',21,1001),(102,'0000-00-00',200,4.99,1,'5',21,1002),(103,'0000-00-00',150,8.99,1,'9',21,1003),(104,'0000-00-00',40,5.75,1,'8',21,1004),(105,'0000-00-00',300,6.54,1,'9',22,1005),(106,'0000-00-00',50,3.87,1,'7',22,1006),(107,'0000-00-00',60,5.99,1,'5',23,1007),(108,'0000-00-00',90,2.50,1,'6',24,1008),(109,'0000-00-00',28,4.35,1,'9',24,1009),(110,'0000-00-00',28,3.75,1,'5',24,1010),(111,'0000-00-00',28,2.35,1,'6',24,1011),(112,'0000-00-00',28,3.26,1,'7',24,1012),(113,'0000-00-00',28,7.33,1,'8',24,1013),(114,'0000-00-00',28,2.45,1,'6',24,1014),(115,'0000-00-00',28,4.22,1,'5',25,1015),(116,'0000-00-00',28,1.99,1,'4',26,1016),(117,'0000-00-00',28,5.99,1,'7',26,1017),(118,'0000-00-00',28,5.99,1,'8',27,1018),(119,'0000-00-00',28,5.99,1,'7',27,1019),(120,'0000-00-00',28,3.75,1,'7',27,1020),(121,'0000-00-00',28,4.50,1,'8',27,1001),(122,'0000-00-00',28,4.00,1,'6',27,1002),(123,'0000-00-00',5,5.99,1,'8',28,1003),(124,'0000-00-00',8,4.99,1,'5',28,1004),(125,'0000-00-00',4,8.99,1,'9',28,1005),(126,'0000-00-00',2,5.75,1,'8',29,1006),(127,'0000-00-00',7,6.54,1,'9',29,1007),(128,'0000-00-00',5,3.87,1,'7',30,1008),(129,'0000-00-00',8,5.99,1,'5',30,1009),(130,'0000-00-00',3,2.50,1,'6',31,1010),(131,'0000-00-00',7,4.35,1,'9',31,1011),(132,'0000-00-00',9,3.75,1,'5',32,1012),(133,'0000-00-00',3,2.35,1,'6',32,1013),(134,'0000-00-00',5,3.26,1,'7',32,1014),(135,'0000-00-00',7,7.33,1,'8',33,1015),(136,'0000-00-00',5,2.45,1,'6',33,1016),(137,'0000-00-00',3,4.22,1,'5',33,1017),(138,'0000-00-00',5,1.99,1,'4',34,1018),(139,'0000-00-00',9,5.99,1,'7',34,1019),(140,'0000-00-00',5,5.99,1,'8',35,1020),(141,'0000-00-00',1,5.99,1,'7',35,1001),(142,'0000-00-00',5,3.75,1,'7',36,1002),(143,'0000-00-00',7,4.50,1,'8',36,1003),(144,'0000-00-00',5,4.00,1,'6',37,1004),(145,'0000-00-00',3,5.00,1,'9',37,1005);
/*!40000 ALTER TABLE `warehousing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-16 15:42:43
