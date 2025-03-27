-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dish` (
  `dish_id` int NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (1,'Pizza',15),(2,'Burger',10),(3,'Pasta',12),(4,'Salad',8),(5,'Steak',25),(6,'Sandwich',9),(7,'Sushi',20),(8,'Tacos',14),(9,'Burrito',13),(10,'Lasagna',18),(11,'Chicken Wings',11),(12,'Fish & Chips',16),(13,'Ramen',14),(14,'Curry',17),(15,'Dumplings',12);
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `dish_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT '0',
  `dish_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_dish` (`dish_id`),
  CONSTRAINT `fk_dish` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,'Sandwich',3,9,NULL),(2,2,'Pizza',2,15,NULL),(3,2,'Ramen',1,14,NULL),(4,2,'Sushi',4,20,NULL),(5,3,'Burger',4,10,NULL),(6,3,'Tacos',2,14,NULL),(7,4,'Lasagna',1,18,NULL),(8,5,'Salad',2,8,NULL),(9,5,'Dumplings',2,12,NULL),(10,6,'Chicken Wings',1,11,NULL),(11,6,'Fish & Chips',2,16,NULL),(12,6,'SteaK',3,25,NULL),(13,7,'Pizza',4,15,NULL),(14,7,'Tacos',2,14,NULL),(15,7,'Sushi',2,20,NULL),(16,7,'Curry',1,17,NULL),(17,8,'Sushi',6,20,NULL),(18,9,'Burger',2,10,NULL),(19,9,'Tacos',5,14,NULL),(20,9,'Burrito',1,13,NULL),(21,10,'Ramen',2,14,NULL),(22,10,'Lasagna',1,18,NULL),(23,10,'Fish & Chips',2,16,NULL),(24,11,'Chicken Wings',1,11,NULL),(25,11,'Curry',4,17,NULL),(26,11,'Steak',3,25,NULL),(27,12,'Pasta',3,12,NULL),(28,12,'Burger',2,10,NULL),(29,13,'Pasta',3,12,NULL),(30,13,'Burger',2,10,NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `waiter_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `waiter_id` (`waiter_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`waiter_id`) REFERENCES `waiters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,5),(2,5),(8,6),(7,9),(3,10),(11,11),(4,12),(5,12),(6,12),(9,13),(10,13),(12,16),(13,16);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tablenumber` int NOT NULL,
  `Capacity` int NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,1,4,0),(2,2,6,0),(3,3,2,0),(4,4,8,1),(5,5,4,1),(6,6,6,1),(7,7,2,1),(8,8,10,1),(9,9,4,1),(10,10,2,1),(11,11,6,1),(12,12,8,1),(13,13,4,1),(14,14,10,0),(15,15,2,0);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiters`
--

DROP TABLE IF EXISTS `waiters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiters`
--

LOCK TABLES `waiters` WRITE;
/*!40000 ALTER TABLE `waiters` DISABLE KEYS */;
INSERT INTO `waiters` VALUES (1,'john_doe','john@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(2,'jane_smith','jane@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(3,'alex_jones','alex@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(4,'maria_garcia','maria@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(5,'robert_brown','robert@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(6,'lisa_martin','lisa@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(7,'james_taylor','james@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(8,'sophia_wilson','sophia@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(9,'david_white','david@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(10,'olivia_moore','olivia@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(11,'chris_hall','chris@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(12,'emma_wright','emma@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(13,'daniel_adams','daniel@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(14,'grace_jackson','grace@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(15,'michael_clark','michael@example.com','1234','2025-03-27 12:52:33','2025-03-27 12:52:33'),(16,'rakesh','rakesh@gmail.com','123','2025-03-27 13:27:02','2025-03-27 13:57:23'),(17,'test','test@gmail.com','1234','2025-03-27 13:51:27','2025-03-27 13:51:27');
/*!40000 ALTER TABLE `waiters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 16:45:23
