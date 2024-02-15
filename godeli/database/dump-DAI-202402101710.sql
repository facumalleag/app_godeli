-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: DAI
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.4-MariaDB

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
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_receta` bigint(20) unsigned NOT NULL,
  `id_usuario_califica` bigint(20) unsigned NOT NULL,
  `comentario` text DEFAULT NULL,
  `calificacion` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calificacion_FK` (`id_receta`),
  KEY `calificacion_FK_1` (`id_usuario_califica`),
  CONSTRAINT `calificacion_FK` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  CONSTRAINT `calificacion_FK_1` FOREIGN KEY (`id_usuario_califica`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,1,1,NULL,1,'2024-02-10 14:45:00',NULL),(2,1,1,NULL,2,'2024-02-10 14:45:00',NULL),(3,1,1,NULL,4,'2024-02-10 14:45:00',NULL),(4,1,1,NULL,5,'2024-02-10 14:45:00',NULL),(5,2,1,NULL,5,'2024-02-10 14:45:00',NULL),(6,2,1,NULL,4,'2024-02-10 14:45:00',NULL),(7,2,1,NULL,3,'2024-02-10 14:45:00',NULL);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=494 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Aceite de oliva',NULL,'2024-02-09 20:42:30',NULL),(2,'Ajo',NULL,'2024-02-09 20:42:30',NULL),(3,'Cebolla',NULL,'2024-02-09 20:42:30',NULL),(4,'Pimienta negra',NULL,'2024-02-09 20:42:30',NULL),(5,'Pimiento rojo',NULL,'2024-02-09 20:42:30',NULL),(6,'Tomate',NULL,'2024-02-09 20:42:30',NULL),(7,'Limón',NULL,'2024-02-09 20:42:30',NULL),(8,'Vinagre de vino',NULL,'2024-02-09 20:42:30',NULL),(9,'Perejil',NULL,'2024-02-09 20:42:30',NULL),(10,'Cilantro',NULL,'2024-02-09 20:42:30',NULL),(11,'Cebolla morada',NULL,'2024-02-09 20:42:30',NULL),(12,'Jengibre',NULL,'2024-02-09 20:42:30',NULL),(13,'Orégano',NULL,'2024-02-09 20:42:30',NULL),(14,'Comino',NULL,'2024-02-09 20:42:30',NULL),(15,'Pimiento verde',NULL,'2024-02-09 20:42:30',NULL),(16,'Zanahoria',NULL,'2024-02-09 20:42:30',NULL),(17,'Pimiento amarillo',NULL,'2024-02-09 20:42:30',NULL),(18,'Laurel',NULL,'2024-02-09 20:42:30',NULL),(19,'Pimentón dulce',NULL,'2024-02-09 20:42:30',NULL),(20,'Pimiento jalapeño',NULL,'2024-02-09 20:42:30',NULL),(21,'Apio',NULL,'2024-02-09 20:42:30',NULL),(22,'Canela',NULL,'2024-02-09 20:42:30',NULL),(23,'Miel',NULL,'2024-02-09 20:42:30',NULL),(24,'Azúcar',NULL,'2024-02-09 20:42:30',NULL),(25,'Aceite vegetal',NULL,'2024-02-09 20:42:30',NULL),(26,'Chile en polvo',NULL,'2024-02-09 20:42:30',NULL),(27,'Nuez moscada',NULL,'2024-02-09 20:42:30',NULL),(28,'Clavo de olor',NULL,'2024-02-09 20:42:30',NULL),(29,'Albahaca',NULL,'2024-02-09 20:42:30',NULL),(30,'Tomillo',NULL,'2024-02-09 20:42:30',NULL),(31,'Mantequilla',NULL,'2024-02-09 20:42:30',NULL),(32,'Vino blanco',NULL,'2024-02-09 20:42:30',NULL),(33,'Vino tinto',NULL,'2024-02-09 20:42:30',NULL),(34,'Romero',NULL,'2024-02-09 20:42:30',NULL),(35,'Tomate en lata',NULL,'2024-02-09 20:42:30',NULL),(36,'Salsa de soja',NULL,'2024-02-09 20:42:30',NULL),(37,'Mostaza',NULL,'2024-02-09 20:42:30',NULL),(38,'Salsa de tomate',NULL,'2024-02-09 20:42:30',NULL),(39,'Harina',NULL,'2024-02-09 20:42:30',NULL),(40,'Leche',NULL,'2024-02-09 20:42:30',NULL),(41,'Cebolla verde',NULL,'2024-02-09 20:42:30',NULL),(42,'Cebolla blanca',NULL,'2024-02-09 20:42:30',NULL),(43,'Champiñones',NULL,'2024-02-09 20:42:30',NULL),(44,'Cilantro fresco',NULL,'2024-02-09 20:42:30',NULL),(45,'Queso parmesano',NULL,'2024-02-09 20:42:30',NULL),(46,'Queso mozzarella',NULL,'2024-02-09 20:42:30',NULL),(47,'Queso cheddar',NULL,'2024-02-09 20:42:30',NULL),(48,'Queso feta',NULL,'2024-02-09 20:42:30',NULL),(49,'Pasta',NULL,'2024-02-09 20:42:30',NULL),(50,'Arroz',NULL,'2024-02-09 20:42:30',NULL),(51,'Patata',NULL,'2024-02-09 20:42:30',NULL),(52,'Espárragos',NULL,'2024-02-09 20:42:30',NULL),(53,'Brócoli',NULL,'2024-02-09 20:42:30',NULL),(54,'Coliflor',NULL,'2024-02-09 20:42:30',NULL),(55,'Espinacas',NULL,'2024-02-09 20:42:30',NULL),(56,'Calabacín',NULL,'2024-02-09 20:42:30',NULL),(57,'Aguacate',NULL,'2024-02-09 20:42:30',NULL),(58,'Lechuga',NULL,'2024-02-09 20:42:30',NULL),(59,'Pepino',NULL,'2024-02-09 20:42:30',NULL),(60,'Albahaca fresca',NULL,'2024-02-09 20:42:30',NULL),(61,'Perejil fresco',NULL,'2024-02-09 20:42:30',NULL),(62,'Rúcula',NULL,'2024-02-09 20:42:30',NULL),(63,'Berros',NULL,'2024-02-09 20:42:30',NULL),(64,'Albahaca seca',NULL,'2024-02-09 20:42:30',NULL),(65,'Cebollino',NULL,'2024-02-09 20:42:30',NULL),(66,'Anchoas',NULL,'2024-02-09 20:42:30',NULL),(67,'Atún en lata',NULL,'2024-02-09 20:42:30',NULL),(68,'Salmón',NULL,'2024-02-09 20:42:30',NULL),(69,'Merluza',NULL,'2024-02-09 20:42:30',NULL),(70,'Calamar',NULL,'2024-02-09 20:42:30',NULL),(71,'Gambas',NULL,'2024-02-09 20:42:30',NULL),(72,'Pollo',NULL,'2024-02-09 20:42:30',NULL),(73,'Carne de res',NULL,'2024-02-09 20:42:30',NULL),(74,'Cerdo',NULL,'2024-02-09 20:42:30',NULL),(75,'Tofu',NULL,'2024-02-09 20:42:30',NULL),(76,'Lentejas',NULL,'2024-02-09 20:42:30',NULL),(77,'Garbanzos',NULL,'2024-02-09 20:42:30',NULL),(78,'Judías blancas',NULL,'2024-02-09 20:42:30',NULL),(79,'Arvejas',NULL,'2024-02-09 20:42:30',NULL),(80,'Maíz',NULL,'2024-02-09 20:42:30',NULL),(81,'Fideos de arroz',NULL,'2024-02-09 20:42:30',NULL),(82,'Quinoa',NULL,'2024-02-09 20:42:30',NULL),(83,'Avena',NULL,'2024-02-09 20:42:30',NULL),(84,'Huevo',NULL,'2024-02-09 20:42:30',NULL),(85,'Miel de maple',NULL,'2024-02-09 20:42:30',NULL),(86,'Salsa Worcestershire',NULL,'2024-02-09 20:42:30',NULL),(87,'Salsa barbacoa',NULL,'2024-02-09 20:42:30',NULL),(88,'Salsa de chile dulce',NULL,'2024-02-09 20:42:30',NULL),(89,'Salsa picante',NULL,'2024-02-09 20:42:30',NULL),(90,'Crema agria',NULL,'2024-02-09 20:42:30',NULL),(91,'Yogur',NULL,'2024-02-09 20:42:30',NULL),(92,'Nata',NULL,'2024-02-09 20:42:30',NULL),(93,'Chocolate negro',NULL,'2024-02-09 20:42:30',NULL),(94,'Chocolate con leche',NULL,'2024-02-09 20:42:30',NULL),(95,'Chocolate blanco',NULL,'2024-02-09 20:42:30',NULL),(96,'Nueces',NULL,'2024-02-09 20:42:30',NULL),(97,'Almendras',NULL,'2024-02-09 20:42:30',NULL),(98,'Pistachos',NULL,'2024-02-09 20:42:30',NULL),(99,'Cacahuetes',NULL,'2024-02-09 20:42:30',NULL),(100,'Avellanas',NULL,'2024-02-09 20:42:30',NULL),(101,'Polvo de hornear',NULL,'2024-02-09 20:42:30',NULL),(102,'Bicarbonato de sodio',NULL,'2024-02-09 20:42:30',NULL),(103,'Levadura',NULL,'2024-02-09 20:42:30',NULL),(104,'Vainilla',NULL,'2024-02-09 20:42:30',NULL),(105,'Cacao en polvo',NULL,'2024-02-09 20:42:30',NULL),(106,'Leche condensada',NULL,'2024-02-09 20:42:30',NULL),(107,'Leche evaporada',NULL,'2024-02-09 20:42:30',NULL),(108,'Coco rallado',NULL,'2024-02-09 20:42:30',NULL),(109,'Gelatina',NULL,'2024-02-09 20:42:30',NULL),(110,'Agar agar',NULL,'2024-02-09 20:42:30',NULL),(111,'Azúcar glas',NULL,'2024-02-09 20:42:30',NULL),(112,'Azúcar moreno',NULL,'2024-02-09 20:42:30',NULL),(113,'Mantequilla de cacahuete',NULL,'2024-02-09 20:42:30',NULL),(114,'Mermelada',NULL,'2024-02-09 20:42:30',NULL),(115,'Nutella',NULL,'2024-02-09 20:42:30',NULL),(116,'Salsa de chocolate',NULL,'2024-02-09 20:42:30',NULL),(117,'Salsa de caramelo',NULL,'2024-02-09 20:42:30',NULL),(118,'Sirope de arce',NULL,'2024-02-09 20:42:30',NULL),(119,'Sirope de chocolate',NULL,'2024-02-09 20:42:30',NULL),(120,'Sirope de fresa',NULL,'2024-02-09 20:42:30',NULL),(121,'Sirope de vainilla',NULL,'2024-02-09 20:42:30',NULL),(122,'Melaza',NULL,'2024-02-09 20:42:30',NULL),(123,'Aceitunas',NULL,'2024-02-09 20:42:30',NULL),(124,'Aceitunas negras',NULL,'2024-02-09 20:42:30',NULL),(125,'Aceitunas verdes',NULL,'2024-02-09 20:42:30',NULL),(126,'Anacardos',NULL,'2024-02-09 20:42:30',NULL),(127,'Alcaparras',NULL,'2024-02-09 20:42:30',NULL),(128,'Alcachofas',NULL,'2024-02-09 20:42:30',NULL),(129,'Almejas',NULL,'2024-02-09 20:42:30',NULL),(130,'Almejas en lata',NULL,'2024-02-09 20:42:30',NULL),(131,'Amaranto',NULL,'2024-02-09 20:42:30',NULL),(132,'Amaretto',NULL,'2024-02-09 20:42:30',NULL),(133,'Anís',NULL,'2024-02-09 20:42:30',NULL),(134,'Anís estrellado',NULL,'2024-02-09 20:42:30',NULL),(135,'Arándanos',NULL,'2024-02-09 20:42:30',NULL),(136,'Arándanos secos',NULL,'2024-02-09 20:42:30',NULL),(137,'Arroz integral',NULL,'2024-02-09 20:42:30',NULL),(138,'Arroz salvaje',NULL,'2024-02-09 20:42:30',NULL),(139,'Arroz basmati',NULL,'2024-02-09 20:42:30',NULL),(140,'Arroz arborio',NULL,'2024-02-09 20:42:30',NULL),(141,'Atún fresco',NULL,'2024-02-09 20:42:30',NULL),(142,'Bacalao',NULL,'2024-02-09 20:42:30',NULL),(143,'Berenjena',NULL,'2024-02-09 20:42:30',NULL),(144,'Betabel',NULL,'2024-02-09 20:42:30',NULL),(145,'Boquerones',NULL,'2024-02-09 20:42:30',NULL),(146,'Bourbon',NULL,'2024-02-09 20:42:30',NULL),(147,'Brochetas de madera',NULL,'2024-02-09 20:42:30',NULL),(148,'Brócoli congelado',NULL,'2024-02-09 20:42:30',NULL),(149,'Bulgur',NULL,'2024-02-09 20:42:30',NULL),(150,'Cacahuetes salados',NULL,'2024-02-09 20:42:30',NULL),(151,'Café',NULL,'2024-02-09 20:42:30',NULL),(152,'Café instantáneo',NULL,'2024-02-09 20:42:30',NULL),(153,'Café molido',NULL,'2024-02-09 20:42:30',NULL),(154,'Cáscara de limón',NULL,'2024-02-09 20:42:30',NULL),(155,'Cáscara de naranja',NULL,'2024-02-09 20:42:30',NULL),(156,'Cerveza',NULL,'2024-02-09 20:42:30',NULL),(157,'Champiñones en lata',NULL,'2024-02-09 20:42:30',NULL),(158,'Champiñones portobello',NULL,'2024-02-09 20:42:30',NULL),(159,'Chía',NULL,'2024-02-09 20:42:30',NULL),(160,'Chile en rajas',NULL,'2024-02-09 20:42:30',NULL),(161,'Chiles chipotle',NULL,'2024-02-09 20:42:30',NULL),(162,'Chiles en adobo',NULL,'2024-02-09 20:42:30',NULL),(163,'Chiles verdes',NULL,'2024-02-09 20:42:30',NULL),(164,'Cilantro seco',NULL,'2024-02-09 20:42:30',NULL),(165,'Ciruelas pasas',NULL,'2024-02-09 20:42:30',NULL),(166,'Claras de huevo',NULL,'2024-02-09 20:42:30',NULL),(167,'Coñac',NULL,'2024-02-09 20:42:30',NULL),(168,'Crema batida',NULL,'2024-02-09 20:42:30',NULL),(169,'Crema de cacahuate',NULL,'2024-02-09 20:42:30',NULL),(170,'Crema de coco',NULL,'2024-02-09 20:42:30',NULL),(171,'Crema de leche',NULL,'2024-02-09 20:42:30',NULL),(172,'Crema de menta',NULL,'2024-02-09 20:42:30',NULL),(173,'Crema de trigo',NULL,'2024-02-09 20:42:30',NULL),(174,'Crema de zanahoria',NULL,'2024-02-09 20:42:30',NULL),(175,'Crema dulce',NULL,'2024-02-09 20:42:30',NULL),(176,'Crema ligera',NULL,'2024-02-09 20:42:30',NULL),(177,'Crema para batir',NULL,'2024-02-09 20:42:30',NULL),(178,'Crema para café',NULL,'2024-02-09 20:42:30',NULL),(179,'Cúrcuma',NULL,'2024-02-09 20:42:30',NULL),(180,'Dátiles',NULL,'2024-02-09 20:42:30',NULL),(181,'Diente de león',NULL,'2024-02-09 20:42:30',NULL),(182,'Edamame',NULL,'2024-02-09 20:42:30',NULL),(183,'Eneldo',NULL,'2024-02-09 20:42:30',NULL),(184,'Eneldo seco',NULL,'2024-02-09 20:42:30',NULL),(185,'Ensalada de col',NULL,'2024-02-09 20:42:30',NULL),(186,'Ensalada de frutas',NULL,'2024-02-09 20:42:30',NULL),(187,'Espinacas congeladas',NULL,'2024-02-09 20:42:30',NULL),(188,'Espinacas frescas',NULL,'2024-02-09 20:42:30',NULL),(189,'Espinacas en lata',NULL,'2024-02-09 20:42:30',NULL),(190,'Estofado de carne',NULL,'2024-02-09 20:42:30',NULL),(191,'Estofado de pollo',NULL,'2024-02-09 20:42:30',NULL),(192,'Fideos de huevo',NULL,'2024-02-09 20:42:30',NULL),(193,'Fideos de trigo',NULL,'2024-02-09 20:42:30',NULL),(194,'Flan',NULL,'2024-02-09 20:42:30',NULL),(195,'Frambuesas',NULL,'2024-02-09 20:42:30',NULL),(196,'Frangelico',NULL,'2024-02-09 20:42:30',NULL),(197,'Frutas confitadas',NULL,'2024-02-09 20:42:30',NULL),(198,'Frutas deshidratadas',NULL,'2024-02-09 20:42:30',NULL),(199,'Frutas en almíbar',NULL,'2024-02-09 20:42:30',NULL),(200,'Frutas enlatadas',NULL,'2024-02-09 20:42:30',NULL),(201,'Galletas',NULL,'2024-02-09 20:42:30',NULL),(202,'Galletas de avena',NULL,'2024-02-09 20:42:30',NULL),(203,'Galletas de chocolate',NULL,'2024-02-09 20:42:30',NULL),(204,'Galletas maría',NULL,'2024-02-09 20:42:30',NULL),(205,'Gelatina en polvo',NULL,'2024-02-09 20:42:30',NULL),(206,'Gelatina sin sabor',NULL,'2024-02-09 20:42:30',NULL),(207,'Germinados',NULL,'2024-02-09 20:42:30',NULL),(208,'Ginebra',NULL,'2024-02-09 20:42:30',NULL),(209,'Glucosa',NULL,'2024-02-09 20:42:30',NULL),(210,'Goma xantana',NULL,'2024-02-09 20:42:30',NULL),(211,'Gorgonzola',NULL,'2024-02-09 20:42:30',NULL),(212,'Granola',NULL,'2024-02-09 20:42:30',NULL),(213,'Grasa de cerdo',NULL,'2024-02-09 20:42:30',NULL),(214,'Grasa vegetal',NULL,'2024-02-09 20:42:30',NULL),(215,'Guacamole',NULL,'2024-02-09 20:42:30',NULL),(216,'Guindas',NULL,'2024-02-09 20:42:30',NULL),(217,'Harina de almendra',NULL,'2024-02-09 20:42:30',NULL),(218,'Harina de arroz',NULL,'2024-02-09 20:42:30',NULL),(219,'Harina de avena',NULL,'2024-02-09 20:42:30',NULL),(220,'Harina de garbanzo',NULL,'2024-02-09 20:42:30',NULL),(221,'Harina de maíz',NULL,'2024-02-09 20:42:30',NULL),(222,'Harina de trigo',NULL,'2024-02-09 20:42:30',NULL),(223,'Harina integral',NULL,'2024-02-09 20:42:30',NULL),(224,'Harina leudante',NULL,'2024-02-09 20:42:30',NULL),(225,'Harina para hot cakes',NULL,'2024-02-09 20:42:30',NULL),(226,'Helado',NULL,'2024-02-09 20:42:30',NULL),(227,'Hielo',NULL,'2024-02-09 20:42:30',NULL),(228,'Higos',NULL,'2024-02-09 20:42:30',NULL),(229,'Hinojo',NULL,'2024-02-09 20:42:30',NULL),(230,'Jerez',NULL,'2024-02-09 20:42:30',NULL),(231,'Jícama',NULL,'2024-02-09 20:42:30',NULL),(232,'Ketchup',NULL,'2024-02-09 20:42:30',NULL),(233,'Kiwis',NULL,'2024-02-09 20:42:30',NULL),(234,'Lasaña',NULL,'2024-02-09 20:42:30',NULL),(235,'Látex de pescado',NULL,'2024-02-09 20:42:30',NULL),(236,'Lechuga iceberg',NULL,'2024-02-09 20:42:30',NULL),(237,'Lechuga romana',NULL,'2024-02-09 20:42:30',NULL),(238,'Levadura fresca',NULL,'2024-02-09 20:42:30',NULL),(239,'Licor de café',NULL,'2024-02-09 20:42:30',NULL),(240,'Licor de cereza',NULL,'2024-02-09 20:42:30',NULL),(241,'Licor de menta',NULL,'2024-02-09 20:42:30',NULL),(242,'Licor de naranja',NULL,'2024-02-09 20:42:30',NULL),(243,'Licor de plátano',NULL,'2024-02-09 20:42:30',NULL),(244,'Licor de vainilla',NULL,'2024-02-09 20:42:30',NULL),(245,'Lima',NULL,'2024-02-09 20:42:30',NULL),(246,'Lima en lata',NULL,'2024-02-09 20:42:30',NULL),(247,'Lima seca',NULL,'2024-02-09 20:42:30',NULL),(248,'Limoncello',NULL,'2024-02-09 20:42:30',NULL),(249,'Macedonia de frutas',NULL,'2024-02-09 20:42:30',NULL),(250,'Macis',NULL,'2024-02-09 20:42:30',NULL),(251,'Mandarinas',NULL,'2024-02-09 20:42:30',NULL),(252,'Mango',NULL,'2024-02-09 20:42:30',NULL),(253,'Manzanas',NULL,'2024-02-09 20:42:30',NULL),(254,'Manzanas en lata',NULL,'2024-02-09 20:42:30',NULL),(255,'Mantequilla de almendra',NULL,'2024-02-09 20:42:30',NULL),(256,'Mantequilla de cacao',NULL,'2024-02-09 20:42:30',NULL),(257,'Mantequilla de coco',NULL,'2024-02-09 20:42:30',NULL),(258,'Mantequilla de maní',NULL,'2024-02-09 20:42:30',NULL),(259,'Mantequilla de soya',NULL,'2024-02-09 20:42:30',NULL),(260,'Masa de hojaldre',NULL,'2024-02-09 20:42:30',NULL),(261,'Masa de pizza',NULL,'2024-02-09 20:42:30',NULL),(262,'Mayonesa',NULL,'2024-02-09 20:42:30',NULL),(263,'Melocotones',NULL,'2024-02-09 20:42:30',NULL),(264,'Melón',NULL,'2024-02-09 20:42:30',NULL),(265,'Membrillo',NULL,'2024-02-09 20:42:30',NULL),(266,'Menta',NULL,'2024-02-09 20:42:30',NULL),(267,'Miel de abeja',NULL,'2024-02-09 20:42:30',NULL),(268,'Nata líquida',NULL,'2024-02-09 20:42:30',NULL),(269,'Nueces de Brasil',NULL,'2024-02-09 20:42:30',NULL),(270,'Nueces de macadamia',NULL,'2024-02-09 20:42:30',NULL),(271,'Nuez de la India',NULL,'2024-02-09 20:42:30',NULL),(272,'Nuez pecana',NULL,'2024-02-09 20:42:30',NULL),(273,'Pan',NULL,'2024-02-09 20:42:30',NULL),(274,'Pan de centeno',NULL,'2024-02-09 20:42:30',NULL),(275,'Pan de molde',NULL,'2024-02-09 20:42:30',NULL),(276,'Pan de trigo integral',NULL,'2024-02-09 20:42:30',NULL),(277,'Pan integral',NULL,'2024-02-09 20:42:30',NULL),(278,'Pan pita',NULL,'2024-02-09 20:42:30',NULL),(279,'Panceta',NULL,'2024-02-09 20:42:30',NULL),(280,'Papaya',NULL,'2024-02-09 20:42:30',NULL),(281,'Paprika',NULL,'2024-02-09 20:42:30',NULL),(282,'Paprika ahumada',NULL,'2024-02-09 20:42:30',NULL),(283,'Pasas',NULL,'2024-02-09 20:42:30',NULL),(284,'Pasta de almendra',NULL,'2024-02-09 20:42:30',NULL),(285,'Pasta de anchoas',NULL,'2024-02-09 20:42:30',NULL),(286,'Pasta de curry',NULL,'2024-02-09 20:42:30',NULL),(287,'Pasta de dientes',NULL,'2024-02-09 20:42:30',NULL),(288,'Pasta de miso',NULL,'2024-02-09 20:42:30',NULL),(289,'Pasta de tomate',NULL,'2024-02-09 20:42:30',NULL),(290,'Pastel de frutas',NULL,'2024-02-09 20:42:30',NULL),(293,'Pato',NULL,'2024-02-09 20:42:30',NULL),(294,'Pepinillos',NULL,'2024-02-09 20:42:30',NULL),(295,'Pepino en vinagre',NULL,'2024-02-09 20:42:30',NULL),(296,'Pera',NULL,'2024-02-09 20:42:30',NULL),(297,'Peras en lata',NULL,'2024-02-09 20:42:30',NULL),(298,'Perejil seco',NULL,'2024-02-09 20:42:30',NULL),(299,'Pimientos en lata',NULL,'2024-02-09 20:42:30',NULL),(300,'Pimientos morrones',NULL,'2024-02-09 20:42:30',NULL),(301,'Pimientos rojos asados',NULL,'2024-02-09 20:42:30',NULL),(302,'Pimientos verdes asados',NULL,'2024-02-09 20:42:30',NULL),(303,'Pimienta blanca',NULL,'2024-02-09 20:42:30',NULL),(304,'Pimienta cayena',NULL,'2024-02-09 20:42:30',NULL),(305,'Pimienta de Jamaica',NULL,'2024-02-09 20:42:30',NULL),(306,'Pimienta rosa',NULL,'2024-02-09 20:42:30',NULL),(307,'Piña',NULL,'2024-02-09 20:42:30',NULL),(308,'Piña en lata',NULL,'2024-02-09 20:42:30',NULL),(309,'Piñones',NULL,'2024-02-09 20:42:30',NULL),(310,'Pistachos salados',NULL,'2024-02-09 20:42:30',NULL),(311,'Plátanos',NULL,'2024-02-09 20:42:30',NULL),(312,'Pollo en lata',NULL,'2024-02-09 20:42:30',NULL),(313,'Pulpo',NULL,'2024-02-09 20:42:30',NULL),(314,'Queso azul',NULL,'2024-02-09 20:42:30',NULL),(315,'Queso brie',NULL,'2024-02-09 20:42:30',NULL),(316,'Queso camembert',NULL,'2024-02-09 20:42:30',NULL),(317,'Queso cottage',NULL,'2024-02-09 20:42:30',NULL),(318,'Queso crema',NULL,'2024-02-09 20:42:30',NULL),(319,'Queso de cabra',NULL,'2024-02-09 20:42:30',NULL),(320,'Queso de oveja',NULL,'2024-02-09 20:42:30',NULL),(321,'Queso feta en lata',NULL,'2024-02-09 20:42:30',NULL),(322,'Queso fresco',NULL,'2024-02-09 20:42:30',NULL),(323,'Queso Gouda',NULL,'2024-02-09 20:42:30',NULL),(324,'Queso gruyere',NULL,'2024-02-09 20:42:30',NULL),(325,'Queso havarti',NULL,'2024-02-09 20:42:30',NULL),(326,'Queso manchego',NULL,'2024-02-09 20:42:30',NULL),(327,'Queso mascarpone',NULL,'2024-02-09 20:42:30',NULL),(328,'Queso parmesano en lata',NULL,'2024-02-09 20:42:30',NULL),(329,'Queso ricotta',NULL,'2024-02-09 20:42:30',NULL),(330,'Queso roquefort',NULL,'2024-02-09 20:42:30',NULL),(331,'Quiche',NULL,'2024-02-09 20:42:30',NULL),(332,'Rabanitos',NULL,'2024-02-09 20:42:30',NULL),(333,'Ralladura de limón',NULL,'2024-02-09 20:42:30',NULL),(334,'Ralladura de naranja',NULL,'2024-02-09 20:42:30',NULL),(335,'Ramen',NULL,'2024-02-09 20:42:30',NULL),(336,'Ratatouille',NULL,'2024-02-09 20:42:30',NULL),(337,'Ravioli',NULL,'2024-02-09 20:42:30',NULL),(338,'Remolacha',NULL,'2024-02-09 20:42:30',NULL),(339,'Requesón',NULL,'2024-02-09 20:42:30',NULL),(340,'Ricota',NULL,'2024-02-09 20:42:30',NULL),(341,'Romero seco',NULL,'2024-02-09 20:42:30',NULL),(342,'Ropa vieja',NULL,'2024-02-09 20:42:30',NULL),(343,'Rúcula fresca',NULL,'2024-02-09 20:42:30',NULL),(344,'Salsa agridulce',NULL,'2024-02-09 20:42:30',NULL),(345,'Salsa alfredo',NULL,'2024-02-09 20:42:30',NULL),(346,'Salsa bechamel',NULL,'2024-02-09 20:42:30',NULL),(347,'Salsa boloñesa',NULL,'2024-02-09 20:42:30',NULL),(348,'Salsa carbonara',NULL,'2024-02-09 20:42:30',NULL),(349,'Salsa chipotle',NULL,'2024-02-09 20:42:30',NULL),(350,'Salsa de albahaca',NULL,'2024-02-09 20:42:30',NULL),(351,'Salsa de alcaparras',NULL,'2024-02-09 20:42:30',NULL),(352,'Salsa de ajo',NULL,'2024-02-09 20:42:30',NULL),(353,'Salsa de arándanos',NULL,'2024-02-09 20:42:30',NULL),(354,'Salsa de avellanas',NULL,'2024-02-09 20:42:30',NULL),(355,'Salsa de barbacoa',NULL,'2024-02-09 20:42:30',NULL),(356,'Salsa de caramelo',NULL,'2024-02-09 20:42:30',NULL),(357,'Salsa de cebolla',NULL,'2024-02-09 20:42:30',NULL),(358,'Salsa de cerezas',NULL,'2024-02-09 20:42:30',NULL),(359,'Salsa de ciruelas',NULL,'2024-02-09 20:42:30',NULL),(360,'Salsa de coco',NULL,'2024-02-09 20:42:30',NULL),(361,'Salsa de crema',NULL,'2024-02-09 20:42:30',NULL),(362,'Salsa de curry',NULL,'2024-02-09 20:42:30',NULL),(363,'Salsa de fresa',NULL,'2024-02-09 20:42:30',NULL),(364,'Salsa de frutas',NULL,'2024-02-09 20:42:30',NULL),(365,'Salsa de granada',NULL,'2024-02-09 20:42:30',NULL),(366,'Salsa de guindillas',NULL,'2024-02-09 20:42:30',NULL),(367,'Salsa de hongos',NULL,'2024-02-09 20:42:30',NULL),(368,'Salsa de mango',NULL,'2024-02-09 20:42:30',NULL),(369,'Salsa de manzana',NULL,'2024-02-09 20:42:30',NULL),(370,'Salsa de maracuyá',NULL,'2024-02-09 20:42:30',NULL),(371,'Salsa de naranja',NULL,'2024-02-09 20:42:30',NULL),(372,'Salsa de nueces',NULL,'2024-02-09 20:42:30',NULL),(373,'Salsa de pimienta',NULL,'2024-02-09 20:42:30',NULL),(374,'Salsa de rábano',NULL,'2024-02-09 20:42:30',NULL),(375,'Salsa de soya',NULL,'2024-02-09 20:42:30',NULL),(376,'Salsa de tomate en lata',NULL,'2024-02-09 20:42:30',NULL),(377,'Salsa de trufas',NULL,'2024-02-09 20:42:30',NULL),(378,'Salsa de uvas',NULL,'2024-02-09 20:42:30',NULL),(379,'Salsa de yogur',NULL,'2024-02-09 20:42:30',NULL),(380,'Salsa inglesa',NULL,'2024-02-09 20:42:30',NULL),(381,'Salsa marinara',NULL,'2024-02-09 20:42:30',NULL),(382,'Salsa mayonesa',NULL,'2024-02-09 20:42:30',NULL),(383,'Salsa mexicana',NULL,'2024-02-09 20:42:30',NULL),(384,'Salsa para pizza',NULL,'2024-02-09 20:42:30',NULL),(385,'Salsa ranchera',NULL,'2024-02-09 20:42:30',NULL),(386,'Salsa rosa',NULL,'2024-02-09 20:42:30',NULL),(387,'Salsa tártara',NULL,'2024-02-09 20:42:30',NULL),(388,'Salsa teriyaki',NULL,'2024-02-09 20:42:30',NULL),(389,'Salsa Worcestershire en lata',NULL,'2024-02-09 20:42:30',NULL),(390,'Salsa Worcestershire seca',NULL,'2024-02-09 20:42:30',NULL),(391,'Salvado de avena',NULL,'2024-02-09 20:42:30',NULL),(392,'Salvado de trigo',NULL,'2024-02-09 20:42:30',NULL),(393,'Sandía',NULL,'2024-02-09 20:42:30',NULL),(394,'Sardinas en lata',NULL,'2024-02-09 20:42:30',NULL),(395,'Semillas de amapola',NULL,'2024-02-09 20:42:30',NULL),(396,'Semillas de anís',NULL,'2024-02-09 20:42:30',NULL),(397,'Semillas de calabaza',NULL,'2024-02-09 20:42:30',NULL),(398,'Semillas de cáñamo',NULL,'2024-02-09 20:42:30',NULL),(399,'Semillas de chía',NULL,'2024-02-09 20:42:30',NULL),(400,'Semillas de girasol',NULL,'2024-02-09 20:42:30',NULL),(401,'Semillas de hinojo',NULL,'2024-02-09 20:42:30',NULL),(402,'Semillas de lino',NULL,'2024-02-09 20:42:30',NULL),(403,'Semillas de mostaza',NULL,'2024-02-09 20:42:30',NULL),(404,'Semillas de sésamo',NULL,'2024-02-09 20:42:30',NULL),(405,'Semillas de zapallo',NULL,'2024-02-09 20:42:30',NULL),(406,'Setas',NULL,'2024-02-09 20:42:30',NULL),(407,'Setas en lata',NULL,'2024-02-09 20:42:30',NULL),(408,'Sherry',NULL,'2024-02-09 20:42:30',NULL),(409,'Sidra',NULL,'2024-02-09 20:42:30',NULL),(410,'Sidra de manzana',NULL,'2024-02-09 20:42:30',NULL),(411,'Sirope de agave',NULL,'2024-02-09 20:42:30',NULL),(412,'Sirope de arce en lata',NULL,'2024-02-09 20:42:30',NULL),(413,'Sirope de frutas',NULL,'2024-02-09 20:42:30',NULL),(414,'Sirope de mango',NULL,'2024-02-09 20:42:30',NULL),(415,'Sirope de menta',NULL,'2024-02-09 20:42:30',NULL),(416,'Sirope de mora',NULL,'2024-02-09 20:42:30',NULL),(417,'Sirope de piña',NULL,'2024-02-09 20:42:30',NULL),(418,'Sirope de rosa',NULL,'2024-02-09 20:42:30',NULL),(419,'Sirope de rosas',NULL,'2024-02-09 20:42:30',NULL),(420,'Sirope de zarzamora',NULL,'2024-02-09 20:42:30',NULL),(421,'Sorbete',NULL,'2024-02-09 20:42:30',NULL),(422,'Spaghetti',NULL,'2024-02-09 20:42:30',NULL),(423,'Sushi',NULL,'2024-02-09 20:42:30',NULL),(424,'Tamarindo',NULL,'2024-02-09 20:42:30',NULL),(425,'Tapioca',NULL,'2024-02-09 20:42:30',NULL),(426,'Té',NULL,'2024-02-09 20:42:30',NULL),(427,'Té chai',NULL,'2024-02-09 20:42:30',NULL),(428,'Té de menta',NULL,'2024-02-09 20:42:30',NULL),(429,'Té de rooibos',NULL,'2024-02-09 20:42:30',NULL),(430,'Té de manzanilla',NULL,'2024-02-09 20:42:30',NULL),(431,'Té negro',NULL,'2024-02-09 20:42:30',NULL),(432,'Té verde',NULL,'2024-02-09 20:42:30',NULL),(433,'Tequila',NULL,'2024-02-09 20:42:30',NULL),(434,'Ternera',NULL,'2024-02-09 20:42:30',NULL),(435,'Tofu en lata',NULL,'2024-02-09 20:42:30',NULL),(436,'Tomate cherry',NULL,'2024-02-09 20:42:30',NULL),(437,'Tomate deshidratado',NULL,'2024-02-09 20:42:30',NULL),(438,'Tomate en puré',NULL,'2024-02-09 20:42:30',NULL),(439,'Tomate seco',NULL,'2024-02-09 20:42:30',NULL),(440,'Tortillas de maíz',NULL,'2024-02-09 20:42:30',NULL),(441,'Tortillas de trigo',NULL,'2024-02-09 20:42:30',NULL),(442,'Trigo',NULL,'2024-02-09 20:42:30',NULL),(443,'Trigo sarraceno',NULL,'2024-02-09 20:42:30',NULL),(444,'Trucha',NULL,'2024-02-09 20:42:30',NULL),(445,'Turrón',NULL,'2024-02-09 20:42:30',NULL),(446,'Uvas',NULL,'2024-02-09 20:42:30',NULL),(447,'Uvas pasas',NULL,'2024-02-09 20:42:30',NULL),(448,'Uvas verdes',NULL,'2024-02-09 20:42:30',NULL),(449,'Vainas de vainilla',NULL,'2024-02-09 20:42:30',NULL),(450,'Vermut',NULL,'2024-02-09 20:42:30',NULL),(451,'Vino de jerez',NULL,'2024-02-09 20:42:30',NULL),(452,'Vino de madeira',NULL,'2024-02-09 20:42:30',NULL),(453,'Vino de Oporto',NULL,'2024-02-09 20:42:30',NULL),(454,'Vino de Rioja',NULL,'2024-02-09 20:42:30',NULL),(455,'Vino de rosas',NULL,'2024-02-09 20:42:30',NULL),(456,'Vino de Sauternes',NULL,'2024-02-09 20:42:30',NULL),(457,'Vino de uvas pasas',NULL,'2024-02-09 20:42:30',NULL),(458,'Vino de Xérès',NULL,'2024-02-09 20:42:30',NULL),(459,'Vino espumoso',NULL,'2024-02-09 20:42:30',NULL),(460,'Vino fino',NULL,'2024-02-09 20:42:30',NULL),(461,'Vino Marsala',NULL,'2024-02-09 20:42:30',NULL),(462,'Vino Moscatel',NULL,'2024-02-09 20:42:30',NULL),(463,'Vino tinto joven',NULL,'2024-02-09 20:42:30',NULL),(464,'Vino tinto reserva',NULL,'2024-02-09 20:42:30',NULL),(465,'Vino tinto roble',NULL,'2024-02-09 20:42:30',NULL),(466,'Vino tinto seco',NULL,'2024-02-09 20:42:30',NULL),(467,'Vino tinto semiseco',NULL,'2024-02-09 20:42:30',NULL),(468,'Vino verde',NULL,'2024-02-09 20:42:30',NULL),(469,'Vodka',NULL,'2024-02-09 20:42:30',NULL),(470,'Whisky',NULL,'2024-02-09 20:42:30',NULL),(471,'Yogur de coco',NULL,'2024-02-09 20:42:30',NULL),(472,'Yogur de fresa',NULL,'2024-02-09 20:42:30',NULL),(473,'Yogur de limón',NULL,'2024-02-09 20:42:30',NULL),(474,'Yogur de vainilla',NULL,'2024-02-09 20:42:30',NULL),(475,'Yogur natural',NULL,'2024-02-09 20:42:30',NULL),(476,'Yuca',NULL,'2024-02-09 20:42:30',NULL),(477,'Zanahoria en lata',NULL,'2024-02-09 20:42:30',NULL),(478,'Zanahoria rallada',NULL,'2024-02-09 20:42:30',NULL),(479,'Zumo de arándanos',NULL,'2024-02-09 20:42:30',NULL),(480,'Zumo de ciruela',NULL,'2024-02-09 20:42:30',NULL),(481,'Zumo de frutas',NULL,'2024-02-09 20:42:30',NULL),(482,'Zumo de granada',NULL,'2024-02-09 20:42:30',NULL),(483,'Zumo de lima',NULL,'2024-02-09 20:42:30',NULL),(484,'Zumo de limón',NULL,'2024-02-09 20:42:30',NULL),(485,'Zumo de mandarina',NULL,'2024-02-09 20:42:30',NULL),(486,'Zumo de manzana',NULL,'2024-02-09 20:42:30',NULL),(487,'Zumo de naranja',NULL,'2024-02-09 20:42:30',NULL),(488,'Zumo de pera',NULL,'2024-02-09 20:42:30',NULL),(489,'Zumo de piña',NULL,'2024-02-09 20:42:30',NULL),(490,'Zumo de tomate',NULL,'2024-02-09 20:42:30',NULL),(491,'Zumo de uva',NULL,'2024-02-09 20:42:30',NULL),(492,'Zumo de zanahoria',NULL,'2024-02-09 20:42:30',NULL);
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `preparacion` text DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `tiempo_preparacion` int(10) unsigned NOT NULL DEFAULT 0,
  `rendimiento` int(10) unsigned NOT NULL DEFAULT 0,
  `calorias` int(10) unsigned NOT NULL DEFAULT 0,
  `proteinas` int(10) unsigned NOT NULL DEFAULT 0,
  `grasas` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receta_FK` (`id_usuario`),
  CONSTRAINT `receta_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,2,'Arroz con pollo','El arroz con pollo es la receta más importante de este sitio porque realmente es la primera que aprendí a hacer con 15 años, por eso te voy a dar la receta de arroz con pollo más rica del mundo.','1.- Comenzamos pochando las verduras a fuego lento en una sartén con un poco de aceite de oliva virgen extra. Las tendremos unos 15 minutos a fuego suave.\r\n\r\n2.- Pasado el tiempo añadimos el pollo troceado, yo en este caso he usado pechuga de pollo. La salpimentamos y la doramos con las verduras.\r\n\r\n3.- Seguidamente añadimos el pimiento choricero y el tomate junto con el arroz. Subimos el fuego para anacarar el arroz.\r\n\r\n4.- Añadimos el vaso de vino blanco y dejamos que se evapore por completo. Ahora es momento de cubrir con caldo, ponemos 3 veces la cantidad de arroz, añadimos colorante o azafrán y dejamos cocinar 4 minutos a fuego fuerte y luego 15 minutos más a fuego lento.\r\n\r\n5.- Cuando este cocinado el arroz, dejamos reposar unos minutos y a disfrutar un receta de arroz con pollo perfecta.',NULL,30,5,2000,50,100,'2024-02-10 14:28:08',NULL),(2,2,'Risotto de setas','Si viajamos a Italia, hay 3 cosas que probar lógicamente, una buena pizza, una deliciosa pasta y un cremoso risotto. Hoy vamos a preparar un risotto de setas, una de las recetas top de la gastronomía italiana.','1.- Comenzamos pochando a fuego suave la cebolla y el ajo. Picados finamente hasta que se hagan.\r\n\r\n2.- Pasados unos 15 minutos agregamos las setas cortadas. Yo lo que hago es cortar una parte en trozos pequeños y otra en tiras, simplemente para que quede más vistoso.\r\n\r\n3.- Cuando tengamos hechas las setas, agregamos el arroz para anacararlos y que absorba todos los sabores.\r\n\r\n4.- Incorporamos la copa de vino blanco y dejamos que se evapore el alcohol.\r\n\r\n5.- Ahora llega el momento clave, ponemos el caldo de pollo o verduras en un cazo a calentar, también podemos usar agua caliente pero prefiero mil veces caldo.',NULL,50,3,1500,45,50,'2024-02-10 14:32:31',NULL),(3,1,'Caldo de Navidad','El caldo de Navidad es uno de los clásicos comienzos de muchas familias y en la mía lo es, hoy vamos a aprender a preparar un caldo navideño para comenzar una cena perfecta.','3.- Por otra parte en una olla grande, pochamos las verduras en un poco de aceite de oliva a fuego fuerte. Queremos que cojan un tono dorado y si se quema un poco no os preocupéis porque con eso conseguimos que tenga un sabor tostado el caldo.',NULL,20,2,400,100,45,'2024-02-10 16:28:16',NULL);
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_favorita`
--

DROP TABLE IF EXISTS `receta_favorita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_favorita` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_receta` bigint(20) unsigned NOT NULL,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receta_favorita_FK` (`id_receta`),
  KEY `receta_favorita_FK_1` (`id_usuario`),
  CONSTRAINT `receta_favorita_FK` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  CONSTRAINT `receta_favorita_FK_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_favorita`
--

LOCK TABLES `receta_favorita` WRITE;
/*!40000 ALTER TABLE `receta_favorita` DISABLE KEYS */;
INSERT INTO `receta_favorita` VALUES (2,1,1,'2024-02-10 14:28:58',NULL),(3,2,1,'2024-02-10 14:32:45',NULL);
/*!40000 ALTER TABLE `receta_favorita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_imagen`
--

DROP TABLE IF EXISTS `receta_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_imagen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_receta` bigint(20) unsigned NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receta_imagen_FK` (`id_receta`),
  CONSTRAINT `receta_imagen_FK` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_imagen`
--

LOCK TABLES `receta_imagen` WRITE;
/*!40000 ALTER TABLE `receta_imagen` DISABLE KEYS */;
INSERT INTO `receta_imagen` VALUES (1,2,'https://recetasdecocina.elmundo.es/wp-content/uploads/2021/11/Setas-para-risotto.jpg','2024-02-10 15:24:42',NULL),(2,2,'https://recetasdecocina.elmundo.es/wp-content/uploads/2021/11/arroz-arborio.jpg','2024-02-10 15:24:42',NULL);
/*!40000 ALTER TABLE `receta_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_ingrediente`
--

DROP TABLE IF EXISTS `receta_ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_ingrediente` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_receta` bigint(20) unsigned NOT NULL,
  `id_ingrediente` bigint(20) unsigned DEFAULT NULL,
  `cantidad` int(10) unsigned DEFAULT NULL,
  `id_unidad` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receta_ingrediete_FK` (`id_receta`),
  KEY `receta_ingrediete_FK_1` (`id_unidad`),
  KEY `receta_ingrediente_FK` (`id_ingrediente`),
  CONSTRAINT `receta_ingrediente_FK` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes` (`id`),
  CONSTRAINT `receta_ingrediete_FK` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  CONSTRAINT `receta_ingrediete_FK_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_ingrediente`
--

LOCK TABLES `receta_ingrediente` WRITE;
/*!40000 ALTER TABLE `receta_ingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta_ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_tag`
--

DROP TABLE IF EXISTS `receta_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_receta` bigint(20) unsigned DEFAULT NULL,
  `id_tag` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receta_tag_FK` (`id_receta`),
  KEY `receta_tag_FK_1` (`id_tag`),
  CONSTRAINT `receta_tag_FK` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`),
  CONSTRAINT `receta_tag_FK_1` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_tag`
--

LOCK TABLES `receta_tag` WRITE;
/*!40000 ALTER TABLE `receta_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Rápida preparación ( t <15’)','2024-02-08 14:42:13',NULL),(2,'Vegetarianas','2024-02-08 14:42:13',NULL),(3,'Veganas','2024-02-08 14:42:13',NULL),(4,'Aptas celiacos','2024-02-08 14:42:13',NULL),(5,'Estimula el sistema inmune','2024-02-08 14:42:13',NULL),(6,'Promueve la flora intestinal\r','2024-02-08 14:42:13',NULL),(7,'Antiinflamatoria','2024-02-08 14:42:13',NULL),(8,'Baja en sodio','2024-02-08 14:42:13',NULL),(9,'Baja carbohidratos','2024-02-08 14:42:13',NULL);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `abreviatura` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES (1,'Unidades','Unid.','2024-02-10 14:17:35',NULL),(2,'Gramos','Gr.','2024-02-10 14:17:36',NULL),(3,'Kilogramos','Kg.','2024-02-10 14:17:36',NULL);
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `id_google` varchar(255) DEFAULT NULL,
  `url_imagen_perfil` text DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT current_timestamp(),
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Gustavo Veliz','test@test.com.ar','111111111111111111','efefef','2024-02-09 16:23:22',NULL,'PPbWAVwuKzNS005HvqyIjqzEs2KAsNTW'),(2,'Usuario Prueba','test@test.com','22222222222222222222','','2024-02-10 14:24:36',NULL,'pyDirXk2po51AZc6XGJxlD2y87etV2LG');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'DAI'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 17:10:20
