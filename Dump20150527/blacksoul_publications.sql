-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blacksoul
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `content` varchar(20000) NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `preview_image` varchar(100) DEFAULT NULL,
  `review` int(11) DEFAULT '0',
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `publication_id_UNIQUE` (`publication_id`),
  KEY `author_idx` (`author_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,'We are very happy to announce our first game called : Inside the Hell','<article>\r   <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/firstpage/publication_1_0.png\" style=\"display: inline-block;\"> </figure>\r   <div>\r   <h3>Inside The Hell is comming</h3>\r   <p>Yo y todo el equipo Black Soul estamos muy contentos de poder compartir con ustedes esta noticia, el desarrollo de nuestro primer video juego y el cual lleva el titulo de Inside The Hell, el cual, sera un juego de terror, con este titulo queremos darnos a conocer como una empresa dedicada a el desarrollo de videojuegos y ofrecer a los jugadores productos de calidad y bien cuidados</p>\r   <h3>Que puedes esperar de este nuevo titulo?</h3>\r   <p>En Inside de Hell podras esperar una historia muy bien escrita y terror a donde quiera que veas, una ambientacion muy cuidada y detallada ya que nos preocupamos por los mas minimos detalles en cada uno de nuestros juegos, de verdad el equipo de black soul estamos esperando que este juego sea de su agrada, estaremos dando mas noticias poco a poco y desde luego pronto sabremos mas de esta historia</p>\r   </div>\r   </article>',1,'games','2015-05-26','images/firstpage/publication_1_0.png',5),(2,'Black Soul, the company','<article>\n    <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/generics/blacksoul_team.jpg\" style=\"display: inline-block;\"> </figure>\n    <div >\n        <h3>The origins</h3>\n        <p>BlackSoul es una compania mexicana establecida en Chihuahua Chihuahua, somos una empresa dedicada al desarrollo de video juegos, nuestra meta es ser reconocidos por entregar productos de calidad siempre puliendo los mas minimos detalles, queremos ser una empresa mundialmente reconocida y lanzar una gran cantidad de videojuegos para nuestros clientes, inovar es nuestra meta, creemos que nuestros gamers necesitan nuevos retos e ideas frescas</p>\n    </div>\n</article>',2,'news','2015-05-27','images\\generics\\blacksoul_team.jpg',5),(3,'Inside the hell is comming','comentario viejo',1,'games','2015-05-28','images/firstpage/ITH_news_1.png',4),(4,'noticia vieja 4','comentario viejo',1,'news','2015-07-25','images\\previews\\publication_2_0_preview.png',2),(5,'noticia vieja 5','comentario viejo',1,'games','2015-07-25','images\\previews\\publication_2_0_preview.png',4),(6,'noticia vieja 6','comentario viejo',1,'news','2015-05-26','images\\previews\\publication_2_0_preview.png',0);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-27 16:28:14
