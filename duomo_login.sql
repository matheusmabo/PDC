-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: duomo
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idLogin` int(11) NOT NULL,
  `Nome` varchar(150) DEFAULT NULL,
  `TelefoneCelular` varchar(30) DEFAULT NULL,
  `Senha` varchar(500) NOT NULL,
  `EmpresaAtual` varchar(150) DEFAULT NULL,
  `TempoTrabalho` int(11) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Gabriel Novaski','9','arroz','brasil',2,NULL),(2,'d','1','e','e',2,'r'),(3,'g','3','w','w',2,'f'),(4,'Teste1','(22)22222-2222','e1671797c52e15f763380b45e841ec32','teste1',1,'teste1@gmail.com'),(5,'teste2','(41)11111-1111','38851536d87701d2191990e24a7f8d4e','teste2',1,'teste2@gmail.com'),(6,'Gabriel','41111111111','$2y$10$1dV.EFjyuQqT/yxwkI.xxuZ1P9E1ygOEBQFhZ68pFlAj/c6ewBU2y','br',66,'gabriel.novaski@prules.com.br'),(7,'Gab','33333333333','$2y$10$66ebLRvQttT0yymNVDF1OOfrMcC2MuS.NFwcP.fKktqGpyTaxDBOe','Brainin - Websites e Marketing Digital',33,'gabriel.novaski@prules.com.br'),(8,'Gab','33333333333','$2y$10$2ABdSman6eyDiqz8P0jIL.YI7loASDB9tNxzOsU0xlJtsZYwD.81u','Brainin - Websites e Marketing Digital',33,'gabriel.novaski@prules.com.br'),(9,'Teste4','41988930100','$2y$10$QbTjm3WDIreRSzZ8noqZw.KqqOA0gNenOg78AqEg2QF0Voo5DGoz6','brasil',5,'teste@gmail.com'),(10,'Teste4','41988930100','$2y$10$LUgA5wzJk72fM9GtFMaxZuuRMVa407SfqJnhb8RgVi2Zs3GhGswhK','brasil',5,'teste@gmail.com'),(11,'Teste4','41988930100','$2y$10$bCwLyMHCucTeLhXivrAy7ua3Ti3xPve2X5MmPACDsurOYTHAvR0c2','brasil',5,'teste@gmail.com'),(12,'Teste4','41988930100','$2y$10$MQ/Nj1dqqj1NmGuXCk7TtOGuHAw3cG5d657s9Tup7iD5MmtD1sfDm','brasil',5,'teste@gmail.com'),(13,'GABRIEL LUIZ NOVASKI','4188930100','06964dce9addb1c5cb5d6e3d9838f733','brasil',3,'novaski93@gmail.com'),(14,'GABRIEL LUIZ NOVASKI','4133568039','182be0c5cdcd5072bb1864cdee4d3d6e','e',3,'novaski935@gmail.com'),(15,'Matheus','41988930100','a80984ce25a6e1e9b11512e55ea519f7','duomo',3,'matheus@duomo.com.br');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-27 13:54:21
