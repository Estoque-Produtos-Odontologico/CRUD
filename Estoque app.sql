-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: estoque
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (3,'Higiene Bucal'),(5,'Instrumentos Usados'),(10,'Instrumentos Usados');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `categoria_id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `descrição` varchar(150) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco_unitário` decimal(10,2) NOT NULL,
  `produtos_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`produtos_id`),
  KEY `produtos_ibfk_` (`categoria_id`),
  CONSTRAINT `produtos_ibfk_` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (3,'P015','Irrigador Bucal',20,199.90,3),(3,'P024','Escova Dental Macia',100,11.90,4),(3,'P025','Fio Dental com Cera 25 m',80,8.70,5),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,6),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,7),(3,'P028','Espelho Bucal Inox',30,17.50,8),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,9),(3,'P024','Escova Dental Macia',100,11.90,10),(3,'P025','Fio Dental com Cera 25 m',80,8.70,11),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,12),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,13),(3,'P028','Espelho Bucal Inox',30,17.50,14),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,15),(3,'P024','Escova Dental Macia',100,11.90,16),(3,'P025','Fio Dental com Cera 25 m',80,8.70,17),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,18),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,19),(3,'P028','Espelho Bucal Inox',30,17.50,20),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,21),(3,'P024','Escova Dental Macia',100,11.90,22),(3,'P025','Fio Dental com Cera 25 m',80,8.70,23),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,24),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,25),(3,'P028','Espelho Bucal Inox',30,17.50,26),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,27),(3,'P024','Escova Dental Macia',100,11.90,28),(3,'P025','Fio Dental com Cera 25 m',80,8.70,29),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,30),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,31),(3,'P028','Espelho Bucal Inox',30,17.50,32),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,33),(3,'P024','Escova Dental Macia',100,11.90,34),(3,'P025','Fio Dental com Cera 25 m',80,8.70,35),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,36),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,37),(3,'P028','Espelho Bucal Inox',30,17.50,38),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,39),(3,'P024','Escova Dental Macia',100,11.90,40),(3,'P025','Fio Dental com Cera 25 m',80,8.70,41),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,42),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,43),(3,'P028','Espelho Bucal Inox',30,17.50,44),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,45),(3,'P024','Escova Dental Macia',100,11.90,46),(3,'P025','Fio Dental com Cera 25 m',80,8.70,47),(3,'P026','Enxaguante Bucal Sem Álcool 500 ml',60,22.40,48),(3,'P027','Brocas Odontológicas (c/5)',40,45.00,49),(3,'P028','Espelho Bucal Inox',30,17.50,50),(3,'P029','Lima Endodôntica 21 mm (c/6)',25,38.90,51);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_odontologicos`
--

DROP TABLE IF EXISTS `produtos_odontologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_odontologicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_odontologicos`
--

LOCK TABLES `produtos_odontologicos` WRITE;
/*!40000 ALTER TABLE `produtos_odontologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_odontologicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23 17:54:44
