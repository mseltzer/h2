CREATE DATABASE  IF NOT EXISTS `gs_sh_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `gs_sh_development`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: gs_sh_development
-- ------------------------------------------------------
-- Server version	5.0.90-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130130222851'),('20130131000716'),('20130131001229'),('20130131001349'),('20130131001614'),('20130131001735'),('20130131001943'),('20130131002337'),('20130131002441'),('20130131010459'),('20130131205826');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `firstName` varchar(255) collate utf8_unicode_ci default NULL,
  `lastName` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'mitch',NULL,NULL,'2013-01-31 01:55:33','2013-01-31 01:55:33'),(3,NULL,NULL,NULL,'2013-01-31 17:38:11','2013-01-31 17:38:11'),(4,'michael',NULL,NULL,'2013-01-31 20:32:53','2013-01-31 20:32:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_visits`
--

DROP TABLE IF EXISTS `school_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_visits` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `schoolId` int(11) default NULL,
  `lastVisit` datetime default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_visits`
--

LOCK TABLES `school_visits` WRITE;
/*!40000 ALTER TABLE `school_visits` DISABLE KEYS */;
INSERT INTO `school_visits` VALUES (1,2,1,NULL,'2013-01-31 20:31:48','2013-01-31 21:43:42'),(2,4,1,NULL,'2013-01-31 20:32:57','2013-01-31 20:50:44');
/*!40000 ALTER TABLE `school_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_templates`
--

DROP TABLE IF EXISTS `question_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_templates` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_templates`
--

LOCK TABLES `question_templates` WRITE;
/*!40000 ALTER TABLE `question_templates` DISABLE KEYS */;
INSERT INTO `question_templates` VALUES (1,'Yes-No','2013-01-31 08:04:00','2013-01-31 08:04:00'),(2,'1 to 5 Scale','2013-01-31 08:04:00','2013-01-31 08:04:00');
/*!40000 ALTER TABLE `question_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment,
  `questionTypeId` int(11) default NULL,
  `areaId` int(11) default NULL,
  `question` varchar(255) collate utf8_unicode_ci default NULL,
  `order` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,2,1,'Are students engaged?',1,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(2,2,1,'How well are classrooms decorated?',2,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(3,1,2,'Is there enough adult supervision? ',1,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(4,2,2,'Is the equipment well maintained?',2,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(5,1,2,'Did you notice any bullying?',3,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(6,2,3,'How many days a week are French Fries served?',1,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(7,1,3,'Do vending machines have soda?',2,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(8,1,4,'Are the halls clear of obstacles?',1,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(9,2,4,'How do the bathrooms look?',2,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(10,2,5,'Does it feel safe on campus?',1,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(11,2,5,'Is the school easy to get to?',2,'2013-01-31 08:04:00','2013-01-31 08:04:00'),(12,1,NULL,'Would you recommend this school?',1,'2013-01-31 11:52:27','2013-01-31 11:52:27');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL auto_increment,
  `schoolName` varchar(255) collate utf8_unicode_ci default NULL,
  `lat` decimal(10,0) default NULL,
  `lon` decimal(10,0) default NULL,
  `population` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Minecraft Elementary School',NULL,NULL,365,'2013-01-30 17:27:01','2013-01-30 17:27:01'),(2,'Marisa Chow Elementary School',NULL,NULL,78,'2013-01-30 17:27:10','2013-01-30 17:27:10');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tips` (
  `id` int(11) NOT NULL auto_increment,
  `areaId` int(11) default NULL,
  `tip` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
INSERT INTO `tips` VALUES (1,1,'Ask for a writing sample.','2013-01-31 08:04:00','2013-01-31 08:04:00'),(2,1,'Check out a range of classes, like arts and science.','2013-01-31 08:04:00','2013-01-31 08:04:00'),(3,2,'Try to count how many activities students are doing.','2013-01-31 08:04:00','2013-01-31 08:04:00'),(4,3,'Ask how lunchtime is handled at the schoolÑdo students eat together, or separated by grades? Do they eat in their classrooms?','2013-01-31 08:04:00','2013-01-31 08:04:00'),(5,3,'Ask about supervision in the cafeteria.','2013-01-31 08:04:00','2013-01-31 08:04:00'),(6,4,'If student work is displayed, look for a range of abilities, not just the best.','2013-01-31 08:04:00','2013-01-31 08:04:00'),(7,5,'Take note of how you were greetedÑschools should show their best side to visitors!','2013-01-31 08:04:00','2013-01-31 08:04:00');
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL auto_increment,
  `areaName` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Classrooms','2013-01-31 08:04:00','2013-01-31 08:04:00','Pop your head into a classroom or two! What are they up to? Look at kids’ faces. Anyone falling asleep?'),(2,'Playground + Gym','2013-01-31 08:04:00','2013-01-31 08:04:00','Play nice! Watch out for scraped knees and distracted adults as you walk around the playground, sports fields, gym, etc.'),(3,'Cafeteria','2013-01-31 08:04:00','2013-01-31 08:04:00','Food fights ahead! Take a gander at the cafeteria, but don’t breathe in too hard. Ask yourself, “could my kid eat here?”. Don’t expect Michelin-star dining, but it shouldn’t be a pig sty.'),(4,'Hallways + Bathrooms','2013-01-31 08:04:00','2013-01-31 08:04:00','As you’re walking around, take note of the halls. Don’t trip on any banana peels! Be sure to take a look in the bathrooms, too. That’s right, high expectations for everyone, including the janitors.'),(5,'Offices + General','2013-01-31 08:04:00','2013-01-31 08:04:00','What’s your general feeling about the school? about the tour?');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_responses`
--

DROP TABLE IF EXISTS `user_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_responses` (
  `id` int(11) NOT NULL auto_increment,
  `schoolId` int(11) default NULL,
  `userId` int(11) default NULL,
  `questionId` int(11) default NULL,
  `responseId` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_responses`
--

LOCK TABLES `user_responses` WRITE;
/*!40000 ALTER TABLE `user_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `id` int(11) NOT NULL auto_increment,
  `questionId` int(11) default NULL,
  `responseID` int(11) default NULL,
  `response` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,1,1,'bored','2013-01-31 08:04:00','2013-01-31 08:04:00'),(2,1,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(3,1,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(4,1,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(5,1,5,'riveted','2013-01-31 08:04:00','2013-01-31 08:04:00'),(6,2,1,'not at all','2013-01-31 08:04:00','2013-01-31 08:04:00'),(7,2,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(8,2,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(9,2,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(10,2,5,'very','2013-01-31 08:04:00','2013-01-31 08:04:00'),(11,4,1,'not at all','2013-01-31 08:04:00','2013-01-31 08:04:00'),(12,4,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(13,4,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(14,4,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(15,4,5,'very','2013-01-31 08:04:00','2013-01-31 08:04:00'),(16,6,1,'healthy','2013-01-31 08:04:00','2013-01-31 08:04:00'),(17,6,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(18,6,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(19,6,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(20,6,5,'greasy','2013-01-31 08:04:00','2013-01-31 08:04:00'),(21,9,1,'yuck','2013-01-31 08:04:00','2013-01-31 08:04:00'),(22,9,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(23,9,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(24,9,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(25,9,5,'wow','2013-01-31 08:04:00','2013-01-31 08:04:00'),(26,10,1,'danger','2013-01-31 08:04:00','2013-01-31 08:04:00'),(27,10,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(28,10,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(29,10,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(30,10,5,'safe','2013-01-31 08:04:00','2013-01-31 08:04:00'),(31,11,1,'tough','2013-01-31 08:04:00','2013-01-31 08:04:00'),(32,11,2,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(33,11,3,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(34,11,4,'','2013-01-31 08:04:00','2013-01-31 08:04:00'),(35,11,5,'cinch','2013-01-31 08:04:00','2013-01-31 08:04:00');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-31 14:12:49
