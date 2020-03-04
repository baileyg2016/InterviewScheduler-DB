-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CareerFairCompanies`
--

DROP TABLE IF EXISTS `CareerFairCompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairCompanies` (
  `pkCareerFairCompanies` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkCareerFairCompanies`),
  UNIQUE KEY `CareerFairCompanies_pkCareerFairCompanies_uindex` (`pkCareerFairCompanies`),
  KEY `CareerFairCompanies_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  KEY `CareerFairCompanies_Companies_pkCompany_fk` (`CompanyID`),
  CONSTRAINT `CareerFairCompanies_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `CareerFairCompanies_Companies_pkCompany_fk` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`pkCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairCompanies`
--

LOCK TABLES `CareerFairCompanies` WRITE;
/*!40000 ALTER TABLE `CareerFairCompanies` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerFairCompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerFairs`
--

DROP TABLE IF EXISTS `CareerFairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairs` (
  `pkCareerFair` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(25) DEFAULT NULL,
  `Time` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`pkCareerFair`),
  UNIQUE KEY `CareerFairs_pkCareerFair_uindex` (`pkCareerFair`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairs`
--

LOCK TABLES `CareerFairs` WRITE;
/*!40000 ALTER TABLE `CareerFairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerFairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Companies` (
  `pkCompany` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkCompany`),
  UNIQUE KEY `Companies_pkCompany_uindex` (`pkCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interviews`
--

DROP TABLE IF EXISTS `Interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Interviews` (
  `pkInterview` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `CompanyID` int NOT NULL,
  `Time` varchar(50) DEFAULT NULL,
  `Position` varchar(25) DEFAULT NULL,
  `Notes` varchar(100) DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkInterview`),
  UNIQUE KEY `Interviews_pkInterview_uindex` (`pkInterview`),
  KEY `Interviews_Companies_pkCompany_fk` (`CompanyID`),
  KEY `Interviews_Students_pkStudent_fk` (`StudentID`),
  KEY `Interviews_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  CONSTRAINT `Interviews_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `Interviews_Companies_pkCompany_fk` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`pkCompany`),
  CONSTRAINT `Interviews_Students_pkStudent_fk` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`pkStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interviews`
--

LOCK TABLES `Interviews` WRITE;
/*!40000 ALTER TABLE `Interviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `Interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `pkStudent` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `AcademicYear` varchar(10) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkStudent`),
  UNIQUE KEY `Students_pkStudent_uindex` (`pkStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-04 21:23:12
root@393a609dd092:/# ls
Dockerfile  database.yaml		etc    media	   proc  sqldump.sql  usr
README.md   dev				home   mnt	   root  srv	      var
bin	    docker-entrypoint-initdb.d	lib    mysql.yaml  run	 sys
boot	    entrypoint.sh		lib64  opt	   sbin  tmp
root@393a609dd092:/# vim sqldump.sql 
bash: vim: command not found
root@393a609dd092:/# cat sqldump.sql 
-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CareerFairCompanies`
--

DROP TABLE IF EXISTS `CareerFairCompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairCompanies` (
  `pkCareerFairCompanies` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkCareerFairCompanies`),
  UNIQUE KEY `CareerFairCompanies_pkCareerFairCompanies_uindex` (`pkCareerFairCompanies`),
  KEY `CareerFairCompanies_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  KEY `CareerFairCompanies_Companies_pkCompany_fk` (`CompanyID`),
  CONSTRAINT `CareerFairCompanies_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `CareerFairCompanies_Companies_pkCompany_fk` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`pkCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairCompanies`
--

LOCK TABLES `CareerFairCompanies` WRITE;
/*!40000 ALTER TABLE `CareerFairCompanies` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerFairCompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerFairs`
--

DROP TABLE IF EXISTS `CareerFairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairs` (
  `pkCareerFair` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(25) DEFAULT NULL,
  `Time` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`pkCareerFair`),
  UNIQUE KEY `CareerFairs_pkCareerFair_uindex` (`pkCareerFair`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairs`
--

LOCK TABLES `CareerFairs` WRITE;
/*!40000 ALTER TABLE `CareerFairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerFairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Companies` (
  `pkCompany` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkCompany`),
  UNIQUE KEY `Companies_pkCompany_uindex` (`pkCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interviews`
--

DROP TABLE IF EXISTS `Interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Interviews` (
  `pkInterview` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `CompanyID` int NOT NULL,
  `Time` varchar(50) DEFAULT NULL,
  `Position` varchar(25) DEFAULT NULL,
  `Notes` varchar(100) DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkInterview`),
  UNIQUE KEY `Interviews_pkInterview_uindex` (`pkInterview`),
  KEY `Interviews_Companies_pkCompany_fk` (`CompanyID`),
  KEY `Interviews_Students_pkStudent_fk` (`StudentID`),
  KEY `Interviews_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  CONSTRAINT `Interviews_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `Interviews_Companies_pkCompany_fk` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`pkCompany`),
  CONSTRAINT `Interviews_Students_pkStudent_fk` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`pkStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interviews`
--

LOCK TABLES `Interviews` WRITE;
/*!40000 ALTER TABLE `Interviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `Interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `pkStudent` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `AcademicYear` varchar(10) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkStudent`),
  UNIQUE KEY `Students_pkStudent_uindex` (`pkStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-04 21:23:12
