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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,'We are very happy to announce our first game called: Inside the Hell','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/firstpage/publication_1_0.png\" style=\"display: inline-block;\"> </figure>\r\n    <div>\r\n        <h3>Inside The Hell is comming</h3>\r\n        <p>Yo y todo el equipo Black Soul estamos muy contentos de poder compartir con ustedes esta noticia, el desarrollo de nuestro primer video juego el cual lleva por titulo de Inside The Hell, ITH (Inside The Hell) sera un juego de terror, proximamente estaremos dando mas adelantos acerca de que va a tratar la historia de este titulo.<br>\r\n        Con ITH queremos darnos a conocer como una empresa dedicada a el desarrollo de videojuegos y ofrecer a los Gamers productos de calidad y muy bien cuidados, nuestro equipo estara al pendiente de sus dudas y comentarios a travez de nuestro sitio</p>\r\n        <h3>Que puedo esperar de este titulo?</h3>\r\n        <p>En ITH podras esperar una historia muy bien escrita y terror psicologico a donde quiera que vayas, estamos constantemente buscando nuevas maneras de estrezar y jugar con la mente de los usuarios, tambien encontraras una ambientacion muy cuidada y detallada ya que nos preocupamos por los mas minimos detalles en cada uno de nuestros scenarios, de verdad el equipo de Black Soul sabemos que este juego sera de su agrado, estaremos dando mas noticias poco a poco y desde luego pronto sabremos mas de Inside The Hell</p>\r\n    </div>\r\n</article>',1,'games','2015-06-04','images/firstpage/publication_1_0.png',5),(2,'Black Soul, the company','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/generics/blacksoul_team.jpg\" style=\"display: inline-block;\"> </figure>\r\n    <div >\r\n        <h3>The origins</h3>\r\n        <p>BlackSoul es una compania mexicana establecida en Chihuahua Chihuahua, somos una empresa dedicada al desarrollo de video juegos, nuestra meta es ser reconocidos por entregar productos de calidad siempre puliendo los mas minimos detalles, queremos ser mundialmente reconocida y lanzar una gran cantidad de videojuegos para nuestros clientes, inovar es nuestra meta, creemos que nuestros gamers necesitan nuevos retos e ideas frescas</p>\r\n    </div>\r\n</article>',2,'news','2015-06-04','images\\generics\\blacksoul_team.jpg',5),(10,'What can we expect from ITH','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> \r\n\r\n <h3>Inside The Hell news</h3>\r\n\r\n<img src=\"http://i1.cdnds.net/14/34/618x347/pt-hello.jpg\" style=\"display: inline-block;\"> </figure>\r\n\r\n       \r\n        <p>Una de las principales tareas que estamos desarrollando para lanzar ITH es el terror  psicologico, actualmente estamos trabajando en los modelos de los enemiogos del juego, nos estamos centrando en causar miedo con cosas simples, acciones que uno no espera que pan asi como una buena ambientacion y musica</p>\r\n\r\n\r\n<img src=\"http://im.ziffdavisinternational.com/t/ign_pt/screenshot/default/p-t-lisa-bathroom_63by.1920.jpg\">\r\n\r\n<p>queremos mostrarles un poco del trabajo que estamos desarrollando y saber que piensas ?</p>\r\n\r\n</article>',1,'games','2015-06-05','images/publications/pt-hello.jpg',0);
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

-- Dump completed on 2015-06-05 15:48:54
