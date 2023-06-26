-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: commerces
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code_postal` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `creat_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'koffitsejeromea@gmail.com','[]','$2y$13$2jiJ7ajkiZsT7kI02462keHjkIZIlzKfAOudjwp0kdtVb2X99dpeW','AKLIGO','jerome','LOME','qwe23','Lome','2023-05-29 16:19:27'),(2,'akoffitsejeromea@gmail.com','[]','$2y$13$rvFrRabejBwh7hfcHLOybeUTjJHOmBQplqEl9M5MqmoGrFi912SZC','AKLIGO','koffitse','Keve','qwe23','Azahoun','2023-05-29 16:25:53'),(3,'edoire@gmail.com','[]','$2y$13$ryIg7nmvmn6mX4lta.xY5.An/cih10hSYm21Qcsb744ZGzTk3UIL6','AKLIGO','edoire','Keve','23000','Azahoun','2023-05-29 16:46:28'),(4,'APPOH@gmail.com','[]','$2y$13$SgxxLyuUDhjkmTkDscW5oueLI2f5AE7bSYkFVvdtmAQA3keuHpJ8q','APPOH','KOSSI','Lome','234567','Be','2023-05-29 17:04:04'),(5,'Ahoumey@gmail.com','[]','$2y$13$FTyHjlg0bQFY47un4St8TuUuwJ5QRel4HmlECTTsTmnHOzsDoqC0i','Armel','AHOOMEY','djidjoli','12qw3','Lome','2023-05-30 07:06:19'),(6,'akligo@gmail.com','[]','$2y$13$FC8QFIme8CTxYvvKZLMJ5Oxgck.pt9uMrNrlAXaCSNLzWjoVesCCe','Martin','AKLIGO','DZOLO','1Q2W','DZOLO','2023-06-05 22:02:22'),(7,'BARRIGAH@gmail.com','[]','$2y$13$OIjrHD6GeDVU54wZiR9lzeYyx5FXjN1/KqIw5KhzsyxFK1lKVOCPC','Ariel','Sidoine','Legbassito','1234qw','Lome','2023-06-26 14:01:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26 14:19:09
