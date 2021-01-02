-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: radninalog
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entrylog`
--

DROP TABLE IF EXISTS `entrylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrylog` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `entryDate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrylog`
--

LOCK TABLES `entrylog` WRITE;
/*!40000 ALTER TABLE `entrylog` DISABLE KEYS */;
INSERT INTO `entrylog` VALUES (1,'Unos novog radnog naloga.','2020-12-13 18:35:17'),(2,'Unos novog radnog naloga.','2020-12-13 18:35:17'),(3,'Unos novog radnog naloga.','2020-12-13 18:35:17'),(4,'Unos novog radnog naloga.','2020-12-13 18:35:17');
/*!40000 ALTER TABLE `entrylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radninalog`
--

DROP TABLE IF EXISTS `radninalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radninalog` (
  `stavkeRobaUsluga` int(11) NOT NULL,
  `stranka` int(11) NOT NULL,
  `datumZaprimanja` datetime DEFAULT current_timestamp(),
  `datumIzdavanja` datetime DEFAULT NULL,
  KEY `stavkeRobaUsluga` (`stavkeRobaUsluga`),
  KEY `stranka` (`stranka`),
  CONSTRAINT `radninalog_ibfk_1` FOREIGN KEY (`stavkeRobaUsluga`) REFERENCES `stavkerobausluga` (`sifra`),
  CONSTRAINT `radninalog_ibfk_2` FOREIGN KEY (`stranka`) REFERENCES `stranka` (`sifra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radninalog`
--

LOCK TABLES `radninalog` WRITE;
/*!40000 ALTER TABLE `radninalog` DISABLE KEYS */;
INSERT INTO `radninalog` VALUES (1,1,'2020-12-13 12:28:10','2020-12-13 18:35:26'),(2,1,'2020-12-13 12:28:10','2020-12-13 18:35:26'),(3,1,'2020-12-13 12:28:10','2020-12-13 18:35:26'),(1,1,'2020-12-13 18:35:17','2020-12-13 18:35:26'),(2,1,'2020-12-13 18:35:17','2020-12-13 18:35:26'),(3,1,'2020-12-13 18:35:17','2020-12-13 18:35:26'),(2,2,'2020-12-13 18:35:17',NULL);
/*!40000 ALTER TABLE `radninalog` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger new_radniNalog
BEFORE INSERT ON radniNalog FOR EACH ROW 
BEGIN
	INSERT INTO entryLog (subject) VALUES
	(concat('Unos novog radnog naloga.'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roba`
--

DROP TABLE IF EXISTS `roba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roba` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `cijena` int(11) NOT NULL,
  `količina` int(11) DEFAULT NULL,
  PRIMARY KEY (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roba`
--

LOCK TABLES `roba` WRITE;
/*!40000 ALTER TABLE `roba` DISABLE KEYS */;
INSERT INTO `roba` VALUES (1,'prozivod1',750,NULL),(2,'prozivod3',340,NULL),(3,'prozivod4',80,NULL),(4,'prozivod154',550,NULL),(5,'prozivod5',5875,NULL),(6,'prozivod6',444,NULL),(7,'prozivod17',50,NULL),(8,'prozivod030',12450,NULL);
/*!40000 ALTER TABLE `roba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stavkerobausluga`
--

DROP TABLE IF EXISTS `stavkerobausluga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stavkerobausluga` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `vozilo` int(11) NOT NULL,
  `uslugaservisa` int(11) NOT NULL,
  `roba` int(11) NOT NULL,
  PRIMARY KEY (`sifra`),
  KEY `vozilo` (`vozilo`),
  KEY `uslugaservisa` (`uslugaservisa`),
  KEY `roba` (`roba`),
  CONSTRAINT `stavkerobausluga_ibfk_1` FOREIGN KEY (`vozilo`) REFERENCES `vozilo` (`sifra`),
  CONSTRAINT `stavkerobausluga_ibfk_2` FOREIGN KEY (`uslugaservisa`) REFERENCES `uslugaservisa` (`sifra`),
  CONSTRAINT `stavkerobausluga_ibfk_3` FOREIGN KEY (`roba`) REFERENCES `roba` (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stavkerobausluga`
--

LOCK TABLES `stavkerobausluga` WRITE;
/*!40000 ALTER TABLE `stavkerobausluga` DISABLE KEYS */;
INSERT INTO `stavkerobausluga` VALUES (1,1,1,3),(2,1,4,5),(3,1,3,2);
/*!40000 ALTER TABLE `stavkerobausluga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stranka`
--

DROP TABLE IF EXISTS `stranka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stranka` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobitel` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stranka`
--

LOCK TABLES `stranka` WRITE;
/*!40000 ALTER TABLE `stranka` DISABLE KEYS */;
INSERT INTO `stranka` VALUES (1,'Ailsa','Bradshaw',NULL,'099123456'),(2,'Danial','Cuevas',NULL,'099123456'),(3,'Reef','Gomez',NULL,'099123456'),(4,'Khadija','Macdonald',NULL,'099123456'),(5,'Shanon','Koch',NULL,'099123456'),(6,'Marta','Flowers',NULL,'099123456'),(7,'Harri','Harmon',NULL,'099123456'),(8,'Stefania','Dunn',NULL,'099123456'),(9,'Charley','Parks',NULL,'099123456');
/*!40000 ALTER TABLE `stranka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uslugaservisa`
--

DROP TABLE IF EXISTS `uslugaservisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uslugaservisa` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  `cijena` int(11) NOT NULL,
  `količina` int(11) DEFAULT NULL,
  PRIMARY KEY (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uslugaservisa`
--

LOCK TABLES `uslugaservisa` WRITE;
/*!40000 ALTER TABLE `uslugaservisa` DISABLE KEYS */;
INSERT INTO `uslugaservisa` VALUES (1,'Geometrija kotača',250,NULL),(2,'Čišćenje DPF',400,NULL),(3,'Servis mjenjača',1500,NULL),(4,'Zamjena glavčine',250,NULL),(5,'Zamjena gume',50,NULL);
/*!40000 ALTER TABLE `uslugaservisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vozilo`
--

DROP TABLE IF EXISTS `vozilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vozilo` (
  `sifra` int(11) NOT NULL AUTO_INCREMENT,
  `stranka` int(11) NOT NULL,
  `proizvođač` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `godinaProizvodnje` char(4) DEFAULT NULL,
  `podGarancijom` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`sifra`),
  KEY `stranka` (`stranka`),
  CONSTRAINT `vozilo_ibfk_1` FOREIGN KEY (`stranka`) REFERENCES `stranka` (`sifra`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vozilo`
--

LOCK TABLES `vozilo` WRITE;
/*!40000 ALTER TABLE `vozilo` DISABLE KEYS */;
INSERT INTO `vozilo` VALUES (1,1,'vozilo1',NULL,NULL,1),(2,1,'vozilo2',NULL,NULL,0),(3,3,'vozilo3',NULL,NULL,0),(4,4,'vozilo5',NULL,NULL,1),(5,6,'vozilo11',NULL,NULL,0),(6,7,'vozilo22',NULL,NULL,0),(7,1,'vozilo1',NULL,NULL,1),(8,1,'vozilo2',NULL,NULL,0),(9,3,'vozilo3',NULL,NULL,0),(10,4,'vozilo5',NULL,NULL,1),(11,6,'vozilo11',NULL,NULL,0),(12,7,'vozilo22',NULL,NULL,0);
/*!40000 ALTER TABLE `vozilo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 20:56:18
