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
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admins` (
  `pkAdmins` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkAdmins`),
  UNIQUE KEY `Admins_pkAdmins_uindex` (`pkAdmins`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1,'Julia','Costello','juliapc7','thisprojectrocks'),(2,'Rich','Charles','rich08','bestprojectteamever');
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairCompanies`
--

LOCK TABLES `CareerFairCompanies` WRITE;
/*!40000 ALTER TABLE `CareerFairCompanies` DISABLE KEYS */;
INSERT INTO `CareerFairCompanies` VALUES (1,1,3),(2,1,5),(3,2,5),(4,2,7),(5,2,8),(6,3,5),(7,3,7),(8,4,7),(9,4,7),(10,5,7),(11,5,7),(12,2,3),(13,2,3),(14,2,7),(15,3,7),(16,4,7),(17,5,3),(18,5,7);
/*!40000 ALTER TABLE `CareerFairCompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerFairStudents`
--

DROP TABLE IF EXISTS `CareerFairStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairStudents` (
  `pkCareerFairStudents` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkCareerFairStudents`),
  UNIQUE KEY `CareerFairStudents_pkCareerFairStudents_uindex` (`pkCareerFairStudents`),
  KEY `CareerFairStudents_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  KEY `CareerFairStudents_Students_pkStudent_fk` (`StudentID`),
  CONSTRAINT `CareerFairStudents_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `CareerFairStudents_Students_pkStudent_fk` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`pkStudent`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairStudents`
--

LOCK TABLES `CareerFairStudents` WRITE;
/*!40000 ALTER TABLE `CareerFairStudents` DISABLE KEYS */;
INSERT INTO `CareerFairStudents` VALUES (1,2,5),(2,3,5),(3,4,5),(4,5,5),(5,6,5),(6,6,7),(7,6,8);
/*!40000 ALTER TABLE `CareerFairStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerFairs`
--

DROP TABLE IF EXISTS `CareerFairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CareerFairs` (
  `pkCareerFair` int NOT NULL AUTO_INCREMENT,
  `Semester` varchar(15) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`pkCareerFair`),
  UNIQUE KEY `CareerFairs_pkCareerFair_uindex` (`pkCareerFair`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerFairs`
--

LOCK TABLES `CareerFairs` WRITE;
/*!40000 ALTER TABLE `CareerFairs` DISABLE KEYS */;
INSERT INTO `CareerFairs` VALUES (1,'Fall','2016'),(2,'Spring','2017'),(3,'Fall','2017'),(4,'Spring','2018'),(5,'Fall','2018'),(6,'Spring','2019'),(7,'Fall','2019'),(8,'Spring','2020');
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
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pkCompany`),
  UNIQUE KEY `Companies_pkCompany_uindex` (`pkCompany`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
INSERT INTO `Companies` VALUES (1,'Microsoft','badpassword123','example@microsoft.com'),(2,'Amazon','password12','example@amazon.com'),(3,'Bloomberg','okaypassword23','example@bloomberg.com'),(4,'Google','randompassword3','example@google.com'),(5,'Facebook','weirdpassword4','example@facebook.com');
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
  `Notes` varchar(10000) DEFAULT NULL,
  `CareerFairID` int DEFAULT NULL,
  PRIMARY KEY (`pkInterview`),
  UNIQUE KEY `Interviews_pkInterview_uindex` (`pkInterview`),
  KEY `Interviews_Companies_pkCompany_fk` (`CompanyID`),
  KEY `Interviews_Students_pkStudent_fk` (`StudentID`),
  KEY `Interviews_CareerFairs_pkCareerFair_fk` (`CareerFairID`),
  CONSTRAINT `Interviews_CareerFairs_pkCareerFair_fk` FOREIGN KEY (`CareerFairID`) REFERENCES `CareerFairs` (`pkCareerFair`),
  CONSTRAINT `Interviews_Companies_pkCompany_fk` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`pkCompany`),
  CONSTRAINT `Interviews_Students_pkStudent_fk` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`pkStudent`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interviews`
--

LOCK TABLES `Interviews` WRITE;
/*!40000 ALTER TABLE `Interviews` DISABLE KEYS */;
INSERT INTO `Interviews` VALUES (1,2,1,'2:00 pm','Software Engineer','N/A',3),(2,5,1,'11:00 am','Software Engineer','N/A',3),(3,3,3,'12:00 pm','Software Engineer','N/A',7),(4,4,2,'10:00 am','Software Engineer','N/A',7),(5,6,2,'4:00 pm','Software Engineer','N/A',8),(6,2,1,'2:30 pm','Software Engineer Intern','N/A',5),(7,5,1,'11:30 am','Software Engineer Intern','N/A',5),(8,3,3,'12:40 pm','Software Engineer Intern','N/A',5),(9,4,2,'10:30 am','Software Engineer Intern','N/A',5),(10,6,2,'3:30 pm','Software Engineer Intern','N/A',5),(11,2,4,'1:30 pm','Software Engineer','Rockstar',7),(12,5,5,'10:30 am','Software Engineer','Power Thirsty',7),(13,3,4,'2:30 pm','Software Engineer','Beast',7),(14,4,5,'1:30 pm','Software Engineer','Snappa',7),(15,6,3,'3:00 pm','Software Engineer','Yerba Matté',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (2,'Bailey','Spell','bspell20@vt.edu','Senior','Computer Science'),(3,'Jesse','Terrazas','jesse98@vt.edu','Senior','Computer Science'),(4,'Adam','Tapp','adamt@vt.edu','Senior','Computer Science'),(5,'Danya','Shere','danya98@vt.edu','Senior','Computer Science'),(6,'Grayson','Stone','stoneg@vt.edu','Senior','Computer Science'),(7,'Billy','Joe','bj123@vt.edu','Sophomore','Biology');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!50003 DROP PROCEDURE IF EXISTS `addCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `addCareerFair`(IN Semester varchar(25),
	Year varchar(4))
BEGIN

	INSERT INTO
		CareerFairs (Semester, Year)
	VALUES
		(Semester, Year);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addInterviewToSchedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `addInterviewToSchedule`(IN Company varchar(25),
	pEmail varchar(25),
	Time varchar(50),
	Position varchar(25),
	Notes varchar(10000),
	pSemester varchar(50),
	pYear varchar(4))
BEGIN

	DECLARE sKey int DEFAULT 0;
	DECLARE cKey int DEFAULT 0;
	DECLARE cfKey int DEFAULT 0;

	SELECT
		pkCompany
	INTO cKey
	FROM
		Companies
	WHERE
		Name=Company;

	SELECT
		pkStudent
	INTO sKey
	FROM
		Students
	WHERE
		Email=pEmail;

	SELECT
		pkCareerFair
	INTO cfKey
	FROM
		CareerFairs
	WHERE
		Semester=pSemester and Year=pYear;


	INSERT INTO
		Interviews (StudentID, CompanyID, Time, Position, Notes,
		CareerFairID)
	VALUES
		(sKey, cKey, Time, Position, Notes, cfKey);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCompanyFromCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `deleteCompanyFromCareerFair`(IN Company varchar(25),
	pSemester varchar(25),
	pYear varchar(4))
BEGIN
	DECLARE cfKey int DEFAULT 0;
	DECLARE cKey int DEFAULT 0;

	SELECT
		pkCompany
	INTO cKey
	FROM
		Companies
	WHERE
		Name=Company;

	SELECT
		pkCareerFair
	INTO cfKey
	FROM
		CareerFairs
	WHERE
		Semester=pSemester and Year=pYear;


	DELETE FROM
		CareerFairCompanies
	WHERE
		CareerFairID=cfKey and CompanyID=cKey;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insertAdmin`(IN First varchar(25),
    Last varchar(25), User varchar(25), Pass varchar(50),
    OUT resp varchar(15))
BEGIN
    DECLARE u varchar(25) DEFAULT '';

    SELECT
        Username
    INTO u
    FROM
        Admins
    WHERE Username=User;

    IF u='' THEN
        INSERT INTO Admins (FirstName, LastName, Username, Password)
        VALUES (First, Last, User, Pass);
        SET resp='Success';
    ELSE
        SET resp = 'Username taken';
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCompanyToCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insertCompanyToCareerFair`(IN Company varchar(25),
	pSemester varchar(25),
	pYear varchar(4))
BEGIN

	DECLARE cfKey int DEFAULT 0;
	DECLARE cKey int DEFAULT 0;

	SELECT
		pkCompany
	INTO cKey
	FROM
		Companies
	WHERE
		Name=Company;

	SELECT
		pkCareerFair
	INTO cfKey
	FROM
		CareerFairs
	WHERE
		Semester=pSemester and Year=pYear;


	INSERT INTO
		CareerFairCompanies (CompanyID, CareerFairID)
	VALUES
		(cKey, cfKey);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insertStudent`(IN FirstName varchar(25), LastName varchar(25), Email varchar(25),
	AcademicYear varchar(25), Major varchar(25))
BEGIN
	INSERT INTO Students (FirstName, LastName, Email, AcademicYear, Major)
	VALUES (FirstName, LastName, Email, AcademicYear, Major);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryAdminInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryAdminInfo`(IN Username varchar(50))
BEGIN
	SELECT
		Password
	FROM Admins
	WHERE 
		Username=Username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryAdminsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryAdminsTable`()
BEGIN

    SELECT * FROM Admins;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCareerFairCompaniesTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCareerFairCompaniesTable`()
BEGIN

    SELECT * FROM CareerFairCompanies;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCareerFairsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCareerFairsTable`()
BEGIN

    SELECT * FROM CareerFairs;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCareerFairStudentsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCareerFairStudentsTable`()
BEGIN

    SELECT * FROM CareerFairStudents;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCompaniesAtCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCompaniesAtCareerFair`(IN Semester varchar(25),
	Year varchar(4))
BEGIN
	DECLARE cfKey INT DEFAULT 0;

	SELECT
		c.Name
	FROM CareerFairCompanies cfc
	INNER JOIN CareerFairs cf on cfc.CareerFairID=cf.pkCareerFair
	INNER JOIN Companies c on cfc.CompanyID=c.pkCompany
	WHERE
		cf.Semester=Semester and cf.Year=Year;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCompaniesTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCompaniesTable`()
BEGIN

    SELECT * FROM Companies;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCompanyEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCompanyEmail`(IN Company varchar(25))
BEGIN

    SELECT Email From Companies WHERE Name=Company;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCompanyInterviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCompanyInterviews`(IN Company varchar(25))
BEGIN
	DECLARE cKey INT DEFAULT 0;

	SELECT
		pkCompany=cKey
	FROM Companies
	WHERE
		Name=Company;

	SELECT
		s.FirstName,
		s.LastName,
		s.Email,
		s.AcademicYear,
		s.Major,
		i.Time,
		i.Position,
		i.Notes
	FROM Interviews i
	INNER JOIN
		Students s on i.StudentId=s.pkStudent
	INNER JOIN
		Companies c on i.CompanyID=cKey;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryCompanyPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryCompanyPassword`(IN Company varchar(25))
BEGIN
	SELECT
		Password
	FROM Companies
	WHERE
		Name=Company;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryInterviewsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryInterviewsTable`()
BEGIN

    SELECT * FROM Interviews;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryStudentInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryStudentInfo`(IN Email varchar(25),
	Company varchar(25),
	CareerFairSemester varchar(25),
 	CareerFairYear varchar(25))
BEGIN
	DECLARE cKey INT DEFAULT 0;
	DECLARE cfKey INT DEFAULT 0;

	SELECT
		pkCompany
	INTO cKey
	From Companies
	WHERE
		Name=Company;

	SELECT
		pkCareerFair=cfKey
	From CareerFairs
	WHERE
		Semester=CareerFairSemester and Year=CareerFairYear;

	SELECT
		s.FirstName,
		s.LastName,
		s.Email,
		s.AcademicYear,
		s.Major,
		i.Time,
		i.Position,
		i.Notes
	FROM Students s
	INNER JOIN Interviews i on s.pkStudent = i.StudentID
	INNER JOIN Companies c on i.CompanyID = cKey
	INNER JOIN CareerFairs cf on i.CareerFairID = cfKey
	WHERE s.Email=Email;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryStudentsFromCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryStudentsFromCareerFair`(IN CareerFairSemester varchar(25),
 	CareerFairYear varchar(25))
BEGIN
   	DECLARE cfKey int DEFAULT 0;

	SELECT
		pkCareerFair
	INTO cfKey
	FROM CareerFairs
	WHERE
		Semester=CareerFairSemester and Year=CareerFairYear;


	SELECT
		s.FirstName,
		s.LastName,
		s.Email,
		s.AcademicYear,
		s.Major
	FROM CareerFairStudents cfs
	INNER JOIN Students s on cfs.StudentID=s.pkStudent
	INNER JOIN CareerFairs cf on cfs.CareerFairID=cf.pkCareerFair
	WHERE
		cf.Semester=Semester and cf.Year=Year;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `queryStudentsTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `queryStudentsTable`()
BEGIN

    SELECT * FROM Students;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS deleteAdmin */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `removeAdmin`(IN User varchar(25))
BEGIN

    DELETE FROM Admins
        WHERE Username=User;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCareerFair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateCareerFair`(IN Semester varchar(25),
	Year varchar(4),
	UpdatedSemester varchar(25),
	UpdatedYear varchar(4))
BEGIN

	Update
		CareerFairs
	SET
		Semester=UpdatedSemester, Year=UpdatedYear
	WHERE
		Semester=Semester and Year=Year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCompanyEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateCompanyEmail`(IN Company varchar(25),
    NewEmail varchar(50))
BEGIN

    UPDATE Companies
    SET
        Email=NewEmail
    WHERE
          Name=Company;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCompanyPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateCompanyPassword`(IN Company varchar(25),
    NewPassword varchar(50))
BEGIN

    UPDATE Companies
    SET
        Password=NewPassword
    WHERE
          Name=Company;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateInterviewInSchedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateInterviewInSchedule`(IN Company varchar(25),
	Email varchar(25),
	NewTime varchar(50),
	NewPosition varchar(25),
	NewNotes varchar(10000),
	pSemester varchar(50),
	pYear varchar(4))
BEGIN

	DECLARE sKey int DEFAULT 0;
	DECLARE cKey int DEFAULT 0;
	DECLARE cfKey int DEFAULT 0;

	SELECT
		pkCompany
	INTO cKey
	FROM
		Companies
	WHERE
		Name=Company;

	SELECT
		pkStudent
	INTO sKey
	FROM
		Students
	WHERE
		Email=Email;

	SELECT
		pkCareerFair
	INTO cfKey
	FROM
		CareerFairs
	WHERE
		Semester=pSemester and Year=pYear;


	Update Interviews
	SET
		Time=NewTime, Position=NewPosition, Notes=NewNotes, CareerFairID=cfKey
	WHERE
		StudentID=sKey and CompanyID=cKey;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateStudent`(IN First varchar(25),
	Last varchar(25),
	CurrEmail varchar(25),
	NewEmail varchar(25),
	NewAcademicYear varchar(25),
	NewMajor varchar(25))
BEGIN
	DECLARE sKey INT DEFAULT 0;

	SELECT
		pkStudent
	INTO sKey
	FROM Students
	WHERE
		Email=CurrEmail;

	UPDATE Students
	SET FirstName = First,
	    LastName = Last,
	    Email = NewEmail,
	    AcademicYear = NewAcademicYear,
	    Major = NewMajor
	WHERE pkStudent=sKey;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateStudentNotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `updateStudentNotes`(IN pEmail varchar(25),
	pCompany varchar(25),
	NewNotes varchar(400),
	pSemester varchar(25),
	pYear varchar(4))
BEGIN

	UPDATE
		Interviews i
	INNER JOIN
		Students s on i.StudentID=s.pkStudent
	INNER JOIN
		Companies c on i.CompanyID=c.pkCompany
	INNER JOIN
		CareerFairs cf on i.CareerFairID=cf.pkCareerFair
	SET
		Notes=NewNotes
	WHERE
		s.Email=pEmail and c.Name=pCompany and
		cf.Semester=pSemester and cf.Year=pYear;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06 21:28:20
