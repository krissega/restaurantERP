-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: puntoventa
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `combos`
--

DROP TABLE IF EXISTS `combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `combos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combos`
--

LOCK TABLES `combos` WRITE;
/*!40000 ALTER TABLE `combos` DISABLE KEYS */;
/*!40000 ALTER TABLE `combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupones`
--

DROP TABLE IF EXISTS `cupones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cupones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaExpiracion` date NOT NULL,
  `Utilizado` tinyint(1) NOT NULL,
  `Codigo` varchar(6) NOT NULL,
  `Porcentaje` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupones`
--

LOCK TABLES `cupones` WRITE;
/*!40000 ALTER TABLE `cupones` DISABLE KEYS */;
INSERT INTO `cupones` VALUES (1,'2019-12-26',0,'xYXG55',0),(2,'2019-12-28',0,'ksWwaK',0),(3,'2019-12-29',0,'HWQdWz',0),(4,'2019-12-30',0,'StyatM',0),(5,'2019-12-31',0,'e5FyOe',0),(6,'2020-01-01',0,'5qq3vE',0),(7,'2020-01-02',0,'P5Lv8E',0),(8,'2020-01-03',0,'i9zZWa',0),(9,'2020-01-04',0,'Nv6NGD',0),(10,'2020-01-05',0,'f7IGPu',0),(11,'2020-01-06',0,'9tc2o9',0),(12,'2020-01-07',0,'DbIGEY',0),(13,'2020-01-08',0,'C9qqGG',0),(14,'2020-01-09',0,'n6zdKK',0),(15,'2020-01-10',0,'mFPNOa',0),(16,'2020-01-11',0,'ttocrm',0),(17,'2020-01-12',0,'GEfQSV',0),(18,'2020-01-13',0,'37rBYA',0),(19,'2020-01-14',0,'4DUwOh',0),(20,'2020-01-15',0,'2qxrmL',0),(21,'2020-01-16',0,'5DFgsS',0),(22,'2020-01-17',0,'4K37eT',0),(23,'2020-01-18',0,'CVK6Bp',0),(24,'2020-01-19',0,'N3OlYD',0),(25,'2020-01-20',0,'O6o7bB',0),(26,'2020-01-21',0,'y6v6Yu',0),(27,'2020-01-22',0,'EjEQyI',0),(28,'2020-01-23',0,'l9mbGt',0),(29,'2020-01-24',0,'IqTvzv',0),(30,'2020-01-25',0,'AmFywR',0),(31,'2020-01-26',0,'IxVAGG',0),(32,'2020-01-27',0,'xzEthX',0),(33,'2020-01-28',0,'uQHVLX',0),(34,'2020-01-29',0,'VsaIfP',0),(35,'2020-01-30',0,'AOJHkI',0),(36,'2020-01-31',0,'cPtDpF',0),(37,'2020-02-01',0,'rEleXY',0),(38,'2020-02-02',0,'5uzDxY',0),(39,'2020-02-03',0,'68bwoN',0),(40,'2020-02-04',0,'nMm39o',0),(41,'2020-02-05',0,'K5FOZ8',0),(42,'2020-02-06',0,'UXlzEz',0),(43,'2020-02-07',0,'j29oeK',0),(44,'2020-02-08',0,'fpJfvf',0),(45,'2020-02-09',0,'XNKbPi',0),(46,'2020-02-10',0,'JB5LOM',0),(47,'2020-02-11',0,'vi7DfS',0),(48,'2020-02-12',0,'IWxxmW',0),(49,'2020-02-13',0,'ti6xOn',0);
/*!40000 ALTER TABLE `cupones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `direcciones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DireccionExacta` varchar(500) NOT NULL,
  `Canton` varchar(20) NOT NULL,
  `Distrito` varchar(20) NOT NULL,
  `Provincia` varchar(20) NOT NULL,
  `Distancia` int(11) NOT NULL,
  `UsuarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UsuarioId` (`UsuarioId`),
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'dir','dir','dir','dir',900,9),(2,'ko','ko','ko','ko',500,10),(3,'dir','dir','dir','di',200,12),(4,'dir','dir','dir','dir',30,13);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencontenido`
--

DROP TABLE IF EXISTS `ordencontenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ordencontenido` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TipoContenido` int(11) NOT NULL,
  `IdContenido` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ordencontenido_IdOrden_Id_fk_idx` (`IdOrden`),
  CONSTRAINT `ordencontenido_IdOrden_Id_fk` FOREIGN KEY (`IdOrden`) REFERENCES `ordenes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencontenido`
--

LOCK TABLES `ordencontenido` WRITE;
/*!40000 ALTER TABLE `ordencontenido` DISABLE KEYS */;
INSERT INTO `ordencontenido` VALUES (9,1,1,1),(11,2,2,1),(12,2,2,2),(15,1,0,4),(16,2,0,4),(17,3,0,4),(18,1,0,5),(19,2,0,5),(20,3,0,5),(21,4,0,5);
/*!40000 ALTER TABLE `ordencontenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ordenes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `TipoOrden` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `ordenes_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,13,13,1,'2019-12-27 03:36:44',2450.00),(2,13,13,1,'2019-12-27 03:41:35',5450.00),(3,13,13,1,'2019-12-27 03:44:50',5450.00),(4,13,13,1,'2019-12-27 04:01:14',2950.00),(5,13,13,1,'2019-12-27 04:11:07',5450.00);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillos`
--

DROP TABLE IF EXISTS `platillos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `platillos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillos`
--

LOCK TABLES `platillos` WRITE;
/*!40000 ALTER TABLE `platillos` DISABLE KEYS */;
INSERT INTO `platillos` VALUES (1,'papas',1200,'papas fritas'),(2,'hamburguesa',1250,'pan,carne,queso,lechuga,tomate,salsas'),(3,'coca cola ',500,'refresco con azucar '),(4,'pizza',2500,'masa de trigo, con queso, salsa, peperonni,salchicha italiana '),(5,'helado fresa',250,'helado artesanal de fresa ');
/*!40000 ALTER TABLE `platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillosxcombos`
--

DROP TABLE IF EXISTS `platillosxcombos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `platillosxcombos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PlatilloId` int(11) NOT NULL,
  `ComboId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `PlatilloId` (`PlatilloId`),
  KEY `ComboId` (`ComboId`),
  CONSTRAINT `platillosxcombos_ibfk_1` FOREIGN KEY (`PlatilloId`) REFERENCES `platillos` (`id`),
  CONSTRAINT `platillosxcombos_ibfk_2` FOREIGN KEY (`ComboId`) REFERENCES `combos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillosxcombos`
--

LOCK TABLES `platillosxcombos` WRITE;
/*!40000 ALTER TABLE `platillosxcombos` DISABLE KEYS */;
/*!40000 ALTER TABLE `platillosxcombos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `puestos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'gerente general ','administrador general de la empresa '),(2,'Gerente de Recursos humanos ','jefatura del departamento de RH'),(3,'desarrollador jr ','desarrollador con poca exp en errores y poca tolerancia a la depresion'),(4,'desarrollador mid','desarrollador con exp en errores, con menos anhos de exp que un senior ');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NombreUsuario` varchar(20) NOT NULL,
  `Clave` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `NombrePila` varchar(50) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `SegundoApellido` varchar(30) NOT NULL,
  `FechaNac` date NOT NULL,
  `Genero` char(1) NOT NULL,
  `identificacion` varchar(15) DEFAULT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Rol` int(11) NOT NULL,
  `NombrePuesto` varchar(50) DEFAULT NULL,
  `SalarioBase` decimal(10,2) DEFAULT NULL,
  `Bonificacion` decimal(10,2) DEFAULT NULL,
  `SalarioNeto` decimal(10,2) DEFAULT NULL,
  `FechaContrato` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'admin','2810','krisama21@gmail.com','kristel','segura','gamez ','1991-03-01','f','114620551','22500642',0,NULL,NULL,NULL,NULL,NULL),(3,'empleado','2810','correo01','emp','apellido','apellido dos','2000-03-02','f','02','22500642',1,'gerente',2000.00,150.00,2150.00,'2019-03-01'),(4,'emp','2810','empleado@correo.com','Kris','sega','sega','1996-04-05','f','01','22305698',1,'gerente',2000.00,150.00,2150.00,'2000-01-06'),(5,'cliente','2810','cliente@correo.com','kris','kris','kris','1991-01-03','f','03','22365478',0,NULL,NULL,NULL,NULL,NULL),(6,'cli01','2810','cliente11@correo.com','kris','kris','kris','1991-02-06','f','01','22369874',0,NULL,NULL,NULL,NULL,NULL),(7,'kris','2810','correo@correo.com','kris','kris','kris','1998-03-04','f','06','22658974',0,NULL,NULL,NULL,NULL,NULL),(8,'manuel','2810','correo@coorreito.com','manuel','yepez','yepez','1986-02-04','m','0005','22569874',0,NULL,NULL,NULL,NULL,NULL),(9,'Nulike','nucool','nulike@gmail.com','Manuel','Yepez','La Rosa','1983-04-27','M','186','60376953',0,NULL,NULL,NULL,NULL,NULL),(10,'bleh','nucool','manyepez@hotmail.com','Manuel','Yepez','La Rosa','1983-04-27','M','9000','60386953',0,NULL,NULL,NULL,NULL,NULL),(11,'Mkk','nucool','nulike@gmail.com','Manuel','Yepez','La Rosa','1983-04-27','M','144','60376953',1,'COO',5000.00,5000.00,10000.00,'2004-12-12'),(12,'krist','0000','kris','kris','kris','kris','1991-03-05','f','00','22500642',0,NULL,NULL,NULL,NULL,NULL),(13,'kriss','2810','correo','kris','kris','kris','1995-03-01','f','33','22305687',2,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-27 17:45:21
