CREATE DATABASE  IF NOT EXISTS `curso_mysql3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `curso_mysql3`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: curso_mysql3
-- ------------------------------------------------------
-- Server version	8.0.21

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
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimentos'),(2,'Eletrodomésticos'),(3,'Eletrônicos'),(4,'Limpeza');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'São Paulo'),(2,'Campinas'),(3,'Poços de Caldas'),(4,'Andradas'),(5,'Rio de Janeiro');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `idEstado` int NOT NULL,
  `idCidade` int NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `Cliente_FKIndex1` (`idCidade`),
  KEY `Cliente_FKIndex2` (`idEstado`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`idCidade`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Camila Fernandes','camilaf@gmail.com','222.258.658.99','1985-12-16',1,1),(2,'João Rodrigues','rodrigues@hotmaill.com','221.546.652.89','1990-01-25',1,2),(3,'José Carlos','josec@hotmaill.com','758.564.254.89','1991-03-15',2,3),(4,'Marina Ferreira','marinaf@outlookl.com','451.578.965.21','1989-06-20',3,5),(5,'Luis Paulo','luispaulo@outlook.com','216.052.358.69','1980-07-10',1,1),(6,'Rui Biaco','ruibiaco@outlook.com','458.789.654.12','1983-03-30',1,2),(7,'Claudemir Silva','claudemir@gmail.com','124.564.458.99','1985-11-25',3,2),(8,'José da Silva','josesilva@outlook.com','025.658.458-89','1978-05-11',2,4),(9,'Jonas Firmino','jonasf@outlook.com','335.658.963.55','1979-02-15',3,5),(10,'Carolina Ferraz','carolferraz@outlook.com','124.254.458-12','1987-06-12',1,2),(11,'Marcio Gomes','marciogomez@gmail.com','137.258.784-25','1991-01-30',3,5),(12,'Fernando Henrique','fhenr@hotmail.com','555.666.888.99','1985-09-30',2,4),(13,'João','jose@jose','123','2000-11-26',1,1),(24,'Felipe','felipe.vieira29@etec.sp.gov.br',NULL,NULL,1,1),(25,'Felipe','felipe.vieira29@etec.sp.gov.br',NULL,NULL,1,1),(26,'Zé da manga','zedamanga@hotmail.com','12345678900','2000-08-08',1,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `idEstado` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'SP'),(2,'MG'),(3,'RJ'),(4,'ES'),(5,'MS');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_pedido`
--

DROP TABLE IF EXISTS `itens_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_pedido` (
  `idItens` int NOT NULL AUTO_INCREMENT,
  `idPedido` int NOT NULL,
  `idProduto` int NOT NULL,
  `qtde` int DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idItens`),
  KEY `itens_pedido_FKIndex1` (`idProduto`),
  KEY `itens_pedido_FKIndex2` (`idPedido`),
  CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_pedido`
--

LOCK TABLES `itens_pedido` WRITE;
/*!40000 ALTER TABLE `itens_pedido` DISABLE KEYS */;
INSERT INTO `itens_pedido` VALUES (1,1,2,3,55.50),(2,1,21,10,30.00),(3,1,25,4,38.00),(4,1,1,5,57.50),(5,10,6,1,2.30),(6,10,10,1,2700.00),(7,10,9,2,900.00),(8,10,4,5,7.50),(9,10,18,1,3550.00),(10,10,15,1,350.00),(11,9,25,4,38.00),(12,9,21,5,15.00),(13,9,3,3,55.50),(14,9,1,10,115.00),(15,9,1,10,115.00),(16,8,18,1,3550.00),(17,8,15,1,350.00),(18,7,19,1,1550.00),(19,7,11,1,1350.00),(20,6,6,1,2.30),(21,6,10,1,2700.00),(22,6,9,2,900.00),(23,6,4,5,7.50),(24,5,8,1,3700.00),(25,5,5,4,14.00),(26,5,4,10,15.00),(27,4,22,2,22.00),(28,4,24,10,85.00),(29,4,7,10,99.00),(30,4,1,10,115.00),(31,3,14,1,1260.00),(32,3,13,1,1430.00),(33,2,17,1,650.00),(34,2,12,1,2100.00),(35,1,1,2,23.00),(36,1,6,2,4.60),(38,12,1,1,11.50),(39,12,3,1,18.50),(40,13,3,1,18.50),(41,13,5,2,7.00),(42,1,1,1,11.50),(43,1,2,2,23.00),(44,1,1,2,23.00),(45,1,1,3,34.50),(46,1,1,30,14.50),(47,1,1,10,115.00),(48,1,3,2,37.00),(49,1,3,2,37.00),(50,5,8,1,3700.00),(53,14,5,10,35.00),(54,14,8,1,3700.00),(55,14,5,10,35.00),(56,19,1,3,34.50),(57,16,1,4,46.00),(58,19,16,4,1000.00);
/*!40000 ALTER TABLE `itens_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `datalog` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idcliente` int DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (9,'Felipe foi cadastrado','2023-10-31 11:25:56',20,'root@localhost'),(10,'Felipe foi excluido','2023-10-31 11:26:33',20,'root@localhost'),(11,'Felipe foi cadastrado','2023-10-31 11:32:37',21,'felipe@localhost'),(12,'Felipe foi cadastrado','2023-10-31 11:45:06',22,'felipe@localhost'),(13,'Felipe foi cadastrado','2023-10-31 11:46:11',23,'felipe@localhost'),(14,'Felipe foi excluido','2023-10-31 11:47:27',21,'felipe@localhost'),(15,'Felipe foi excluido','2023-10-31 11:47:27',22,'felipe@localhost'),(16,'Felipe foi excluido','2023-10-31 11:47:27',23,'felipe@localhost'),(17,'Felipe foi cadastrado','2023-10-31 11:48:34',24,'felipe@localhost'),(18,'Felipe foi cadastrado','2023-10-31 11:48:35',25,'felipe@localhost'),(19,'Zé da manga foi cadastrado','2024-08-08 15:07:22',26,'root@localhost');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Samsung'),(2,'LG'),(3,'Sony'),(4,'Brastemp'),(5,'Tio João'),(6,'Come Tudo'),(7,'Omo'),(8,'Electrolux'),(9,'BomBril'),(10,'Camil'),(11,'Fugini');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `data_pedido` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idVendedor` int NOT NULL,
  `idCliente` int NOT NULL,
  `valorpedido` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`idPedido`),
  KEY `pedido_FKIndex1` (`idVendedor`),
  KEY `pedido_FKIndex2` (`idCliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idVendedor`) REFERENCES `vendedor` (`idVendedor`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2016-08-08 03:00:00',1,1,261.50),(2,'2016-08-07 03:00:00',2,1,45.00),(3,'2016-07-31 03:00:00',2,4,379.00),(4,'2016-08-08 03:00:00',3,5,48.90),(5,'2016-07-09 03:00:00',4,8,3723.90),(6,'2016-08-04 03:00:00',7,10,11.90),(7,'2016-08-03 03:00:00',6,11,57.90),(8,'2016-08-02 03:00:00',7,8,99.70),(9,'2016-08-05 03:00:00',6,9,109.00),(10,'2016-07-28 03:00:00',2,5,9.90),(11,'2016-07-29 03:00:00',1,10,12.50),(12,'2021-09-16 03:00:00',1,1,30.00),(13,'2021-09-16 03:00:00',1,1,25.50),(14,'2023-08-22 03:00:00',1,1,3770.00),(15,'2024-08-08 03:00:00',1,1,400.00),(16,'2024-08-08 15:17:03',1,1,900.00),(17,'2024-08-13 15:03:37',1,1,4999.99),(18,'2024-08-13 15:05:16',2,1,0.00),(19,'2024-08-20 14:37:59',2,4,0.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `idCategoria` int NOT NULL,
  `idMarca` int NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `produto_FKIndex1` (`idCategoria`),
  KEY `produto_FKIndex2` (`idMarca`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,5,'Arroz',11.50,-2),(2,1,5,'Arroz',11.50,7),(3,1,6,'Feijão',18.50,-1),(4,1,11,'Molho de Tomate',1.50,3),(5,1,11,'Maionese',3.50,-10),(6,1,11,'Ervilha',2.30,13),(7,1,10,'Arroz',9.90,22),(8,2,1,'Geladeira',3700.00,31),(9,2,1,'Microondas',450.00,4),(10,2,1,'Smart TV 48 4k',2700.00,7),(11,2,2,'Ar Condicionado 12.000 BTU',1350.00,2),(12,2,4,'Geladeira BRM58',2100.00,3),(13,2,4,'Máquina de Lavar 12KG',1430.00,1),(14,2,4,'Forno de Embutir 55 Litros',1260.00,6),(15,2,8,'Aspirador de Pó',350.00,11),(16,2,8,'Liquidificador',250.00,18),(17,2,8,'Batedeira',650.00,20),(18,3,1,'Samsung Galaxy S7',3550.00,40),(19,3,2,'Tablet LG 10.1',1550.00,3),(20,3,3,'Notebook Sony',3550.00,1),(21,4,9,'Pinho Brll',3.00,59),(22,4,9,'Lysoform 1 Lt',11.00,33),(23,4,9,'Limpol',8.00,99),(24,4,7,'Sabão em Pó',8.50,78),(25,4,7,'Sabão em Pó Líquido',9.50,56),(26,1,1,'Feijão',14.50,30),(28,2,3,'Celular',1590.00,3);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste`
--

DROP TABLE IF EXISTS `teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `datapedido` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `valor` decimal(10,2) DEFAULT '0.00',
  `cidade` varchar(30) DEFAULT 'Tatuí',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste`
--

LOCK TABLES `teste` WRITE;
/*!40000 ALTER TABLE `teste` DISABLE KEYS */;
INSERT INTO `teste` VALUES (1,'2024-08-13 15:09:55',0.00,'Tatuí'),(2,'2024-08-13 15:12:26',0.00,'Tatuí'),(3,'2024-08-13 15:12:26',0.00,'Tatuí'),(4,'2024-08-13 15:12:26',0.00,'Tatuí'),(5,'2024-08-13 15:12:27',0.00,'Tatuí'),(6,'2024-08-13 15:12:27',0.00,'Tatuí'),(7,'2024-08-13 15:12:27',0.00,'Tatuí'),(8,'2024-08-13 15:12:27',0.00,'Tatuí'),(9,'2024-08-13 15:12:28',0.00,'Tatuí'),(10,'2024-08-13 15:12:28',0.00,'Tatuí'),(11,'2024-08-13 15:12:28',0.00,'Tatuí'),(12,'2024-08-13 15:12:28',0.00,'Tatuí'),(13,'2024-08-13 15:12:29',0.00,'Tatuí'),(14,'2024-08-13 15:12:29',0.00,'Tatuí'),(15,'2024-08-13 15:12:29',0.00,'Tatuí'),(16,'2024-08-13 15:12:29',0.00,'Tatuí'),(17,'2024-08-13 15:12:29',0.00,'Tatuí'),(18,'2024-08-13 15:12:30',0.00,'Tatuí'),(19,'2024-08-13 15:12:30',0.00,'Tatuí'),(20,'2024-08-13 15:12:30',0.00,'Tatuí'),(21,'2024-08-13 15:12:30',0.00,'Tatuí'),(22,'2024-08-13 15:12:30',0.00,'Tatuí'),(23,'2024-08-13 15:12:31',0.00,'Tatuí'),(24,'2024-08-13 15:12:31',0.00,'Tatuí'),(25,'2024-08-13 15:12:31',0.00,'Tatuí'),(26,'2024-08-13 15:12:31',0.00,'Tatuí'),(27,'2024-08-13 15:12:31',0.00,'Tatuí'),(28,'2024-08-13 15:12:32',0.00,'Tatuí'),(29,'2024-08-13 15:12:32',0.00,'Tatuí'),(30,'2024-08-13 15:12:32',0.00,'Tatuí'),(31,'2024-08-13 15:12:32',0.00,'Tatuí'),(32,'2024-08-13 15:12:32',0.00,'Tatuí'),(33,'2024-08-13 15:12:33',0.00,'Tatuí'),(34,'2024-08-13 15:12:33',0.00,'Tatuí'),(35,'2024-08-13 15:12:33',0.00,'Tatuí'),(36,'2024-08-13 15:12:45',0.00,'Boituva'),(37,'2024-08-13 15:12:45',0.00,'Boituva'),(38,'2024-08-13 15:12:46',0.00,'Boituva'),(39,'2024-08-13 15:12:46',0.00,'Boituva'),(40,'2024-08-13 15:12:46',0.00,'Boituva'),(41,'2024-08-13 15:12:46',0.00,'Boituva'),(42,'2024-08-13 15:12:46',0.00,'Boituva'),(43,'2024-08-13 15:12:46',0.00,'Boituva'),(44,'2024-08-13 15:12:47',0.00,'Boituva'),(45,'2024-08-13 15:12:51',0.00,''),(46,'2024-08-13 15:12:51',0.00,''),(47,'2024-08-13 15:12:51',0.00,''),(48,'2024-08-13 15:12:52',0.00,''),(49,'2024-08-13 15:12:52',0.00,''),(50,'2024-08-13 15:13:40',0.00,NULL),(51,'2024-08-13 15:13:40',0.00,NULL),(52,'2024-08-13 15:13:40',0.00,NULL),(53,'2024-08-13 15:13:40',0.00,NULL),(54,'2024-08-13 15:13:41',0.00,NULL),(55,'2024-08-13 15:15:21',0.00,'Tatuí'),(56,'2024-08-13 15:15:21',0.00,'Tatuí');
/*!40000 ALTER TABLE `teste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `idVendedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `idCidade` int NOT NULL,
  `idEstado` int NOT NULL,
  PRIMARY KEY (`idVendedor`),
  KEY `vendedor_FKIndex1` (`idCidade`),
  KEY `vendedor_FKIndex2` (`idEstado`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`idCidade`),
  CONSTRAINT `vendedor_ibfk_2` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Fábio','fabio@gmail.com','358.256.259-95',1,1),(2,'João','joao@gmail.com','127.128.589.79',1,1),(3,'Henrique','henrique@gmail.com','852.123.145-13',2,1),(4,'Roberto','roberto@gmail.com','659.521.456.87',2,1),(5,'Marcos','marcos@outlook.com','589.654.851.25',3,2),(6,'Rafael','rafael@outlook.com','184.547.963.37',4,2),(7,'Marcelo','marcelo@outlook.com','332.653.421-15',5,3);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'curso_mysql3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20 11:45:08
