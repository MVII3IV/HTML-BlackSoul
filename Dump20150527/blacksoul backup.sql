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
-- Table structure for table `authors_english`
--

DROP TABLE IF EXISTS `authors_english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_english` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE latin1_german1_ci DEFAULT NULL,
  `description` varchar(600) COLLATE latin1_german1_ci DEFAULT NULL,
  `display_picture` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id_UNIQUE` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_english`
--

LOCK TABLES `authors_english` WRITE;
/*!40000 ALTER TABLE `authors_english` DISABLE KEYS */;
INSERT INTO `authors_english` VALUES (1,'Erick Dominguez','One of the founders of Black Soul, he is a hardware system engineer with a big passion for game design, Erick has been designing games for a while, he is in charge of modeling and texturing what you see in our games, has experience with some game engines and 3d software, if something is not perfect he is going to let us know.','\\images\\team\\blacksoul_team_erick.jpg'),(2,'Raul Roman','He is our CTO 3D Artist and Designer, Raul has big passion for game designing','\\images\\team\\blacksoul_team_raul.jpg'),(3,'Carlos Contreras','esta debe ser una descripcion que hable de charly','\\images\\team\\blacksoul_team_carlos.jpg'),(4,'Tony Ortega','esta debe ser una descripcion que hable de tony','\\images\\team\\blacksoul_team_erick.jpg');
/*!40000 ALTER TABLE `authors_english` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_portuguese`
--

DROP TABLE IF EXISTS `authors_portuguese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_portuguese` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE latin1_german1_ci DEFAULT NULL,
  `description` varchar(600) COLLATE latin1_german1_ci DEFAULT NULL,
  `display_picture` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id_UNIQUE` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_portuguese`
--

LOCK TABLES `authors_portuguese` WRITE;
/*!40000 ALTER TABLE `authors_portuguese` DISABLE KEYS */;
INSERT INTO `authors_portuguese` VALUES (1,'Erick Dominguez','Um dos fundadores do Black Soul, ele é um engenheiro de sistema de hardware com uma grande paixão pelo design do jogo, Erick foi projetar jogos por um tempo, ele é responsável pela modelagem e texturização o que você vê em nossos jogos, tem experiência com alguns motores de jogo e software 3D, se algo não é perfeito ele vai deixar-nos saber.','\\images\\team\\blacksoul_team_erick.jpg'),(2,'Raul Roman','estou falando portuges Raul','\\images\\team\\blacksoul_team_raul.jpg'),(3,'Carlos Contreras','estou falando portuges Carlos','\\images\\team\\blacksoul_team_carlos.jpg'),(4,'Tony Ortega','estou falando portuges Tony','\\images\\team\\blacksoul_team_erick.jpg');
/*!40000 ALTER TABLE `authors_portuguese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_spanish`
--

DROP TABLE IF EXISTS `authors_spanish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_spanish` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE latin1_german1_ci DEFAULT NULL,
  `description` varchar(600) COLLATE latin1_german1_ci DEFAULT NULL,
  `display_picture` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id_UNIQUE` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_spanish`
--

LOCK TABLES `authors_spanish` WRITE;
/*!40000 ALTER TABLE `authors_spanish` DISABLE KEYS */;
INSERT INTO `authors_spanish` VALUES (1,'Erick Dominguez','Uno de los fundadores de Negro Alma, que es un ingeniero de sistemas de hardware con una gran pasión por el diseño del juego, Erick ha sido el diseño de juegos por un tiempo, él está a cargo de modelado y texturizado lo que se ve en nuestros juegos, tiene experiencia con algunos motores de juegos y software 3d, si algo no es perfecto que va a dejarnos saber.','\\images\\team\\blacksoul_team_erick.jpg'),(2,'Raul Roman','esta descripcion esta en espanol raul','\\images\\team\\blacksoul_team_raul.jpg'),(3,'Carlos Contreras','esta descripcion esta en espanol carlos','\\images\\team\\blacksoul_team_carlos.jpg'),(4,'Tony Ortega','esta descripcion esta en espanol tony','\\images\\team\\blacksoul_team_erick.jpg');
/*!40000 ALTER TABLE `authors_spanish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_english`
--

DROP TABLE IF EXISTS `publications_english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_english` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `preview_image` varchar(100) DEFAULT NULL,
  `review` int(11) DEFAULT '0',
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `publication_id_UNIQUE` (`publication_id`),
  KEY `author_idx` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_english`
--

LOCK TABLES `publications_english` WRITE;
/*!40000 ALTER TABLE `publications_english` DISABLE KEYS */;
INSERT INTO `publications_english` VALUES (1,'We are very happy to announce our first title called: Inside the Hell','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/firstpage/publication_1_0.png\" style=\"display: inline-block;\"> </figure>\r\n    <div>\r\n        <h3>Inside The Hell is comming</h3>\r\n        <p>Me and all the team of Black Soul are very excited to share with all of you guys this news, the development of our first title is coming and will be called Inside The Hell (ITH) which is currently being developed for PC, with Mac and Linux , soon we will showing you updates about this title and its story<br>\r\n        With ITH we want to introduce us as a company focused on video game development and offer to our gamers high quality in our products, our team will be in touch with you for any doubt through our site. </p>\r\n        <h3>What can we expect?</h3>\r\n        <p>You can expect a very good written story and psychological terror wherever you go, we are constantly looking for new ways to stress the player and play with his mind, you\'ll find a careful and detailed environment because we have worried about the minimal details inside our scenarios, truly the black soul\'s team know that this title will be of your pleasure, Gradually we are going to release more news.</p>\r\n    </div>\r\n</article>',1,'games','2015-06-09','images/firstpage/publication_1_0.png',5),(2,'Black Soul, the company','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/generics/blacksoul_team.jpg\" style=\"display: inline-block;\"> </figure>\r\n    <div >\r\n        <h3>Who are we?</h3>\r\n        <p>Black soul is a Mexican company located at Chihuahua Chihuahua Mexico, we are dedicated to the game design, our main goal is be recognized by deliver hig quality products, we want to be world famous and release to many games to our customers, inovate is something that we do, it is our goal, we strongly believed that the games need new challenges and fresh ideas.</p>\r\n    </div>\r\n</article>',2,'news','2015-06-08','images\\generics\\blacksoul_team.jpg',5),(3,'What can we expect from ITH','<article>\r\n    <figure class=\"featured-thumbnail thumbnail large\"> \r\n\r\n <h3>Inside The Hell news</h3>\r\n\r\n<img src=\"images/firstpage/ITH_news_01.png\"> </figure>\r\n\r\n       <p>As we said previously Inside The Hell will be availble to PC, Mac and Linux, we are focusing right now in these platforms but we don\'t discard mobile platforms although this is not our main goal for the moment.</p><br>\r\n        <p>One of the principal tasks that we are developing in order to release ITH is the psychological terror, we are working so hard in the bosses models of this game as well as on its scenarios, we are focused in create terror with simple stuff, where and when the scenes must be illuminated, we are creating events that the user won\'t expect as well as a good ambiance and music, gradually we will provide you with more information about the story of ITH.</p>\r\n\r\n\r\n<img src=\"images/firstpage/ITH_news_1.png\">\r\n\r\n<p>We want to share with all of you guys a little bit of the work that we are developing, so, what do you think? there are just a few captures of the game, we hope you enjoy them and as always all your comments and suggestions are very welcome.</p>\r\n\r\n\r\n</article>',1,'games','2015-06-09','images/publications/ITH_news_01_preview.png',0);
/*!40000 ALTER TABLE `publications_english` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_portuguese`
--

DROP TABLE IF EXISTS `publications_portuguese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_portuguese` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `preview_image` varchar(100) DEFAULT NULL,
  `review` int(11) DEFAULT '0',
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `publication_id_UNIQUE` (`publication_id`),
  KEY `author_idx` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_portuguese`
--

LOCK TABLES `publications_portuguese` WRITE;
/*!40000 ALTER TABLE `publications_portuguese` DISABLE KEYS */;
INSERT INTO `publications_portuguese` VALUES (1,'Estamos muito felizes em anunciar o nosso jogo','<article>\n     <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/firstpage/publication_1_0.png\" style=\"display: inline-block;\"> </figure>\n     <div>\n<h3> Dentro O inferno está chegando </h3>\n         <p> Eu e toda a equipe de Black Soul são muito animado para compartilhar com todos vocês esta notícia, o desenvolvimento do nosso primeiro título está chegando e será chamado Inside The Hell (ITH), que está actualmente a ser desenvolvido para PC, com Mac e Linux, em breve vamos mostrar-lhe actualizações sobre este título e sua história <br>\n         Com ITH queremos nos apresentar como uma empresa focada no desenvolvimento de jogos de vídeo e oferecer aos nossos jogadores de alta qualidade em nossos produtos, nossa equipe entrará em contato com você para qualquer dúvida através do nosso site. </p>\n         <h3> O que podemos esperar? </h3>\n         <p> Você pode esperar uma história escrita muito boa e terror psicológico onde quer que vá, estamos constantemente à procura de novas maneiras para enfatizar o jogador e jogar com sua mente, você vai encontrar um ambiente cuidadoso e detalhado porque nós têm se preocupado com o mínimos detalhes dentro de nossos cenários, realmente equipe da alma negra saber que este título vai ser de seu prazer, Gradualmente, vamos liberar mais notícias. </p>\n     </div>\n </article>',1,'games','2015-06-09','images/firstpage/publication_1_0.png',5),(2,'Black Soul, a empresa','<article>\n     <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/generics/blacksoul_team.jpg\" style=\"display: inline-block;\"> </figure>\n     <div >\n         <h3>Quem somos nós?</h3>\n         <p>Black Soul é uma empresa Mexicana, localizado na Chihuahua Chihuahua, estamos dedicados ao design do jogo, nosso principal objetivo é ser reconhecida por oferecer produtos de qualidade hig, queremos ser mundialmente famoso e solte para muitos jogos para os nossos clientes, inovar é algo o que fazemos, é o nosso objetivo, nós acreditamos fortemente que os jogos precisam de novos desafios e novas idéias.</p>\n     </div>\n </article>',2,'news','2015-06-08','images\\generics\\blacksoul_team.jpg',5),(3,'O que podemos esperar de ITH','<article>\n     <figure class=\"featured-thumbnail thumbnail large\"> \n  <h3>Inside The Hell noticias</h3>\n <img src=\"images/firstpage/ITH_news_01.png\"> </figure>\n        <p>Como dissemos anteriormente Dentro O inferno estará disponível para PC, Mac e Linux, estamos nos concentrando agora nessas plataformas, mas não descartar plataformas móveis, embora este não é o nosso principal objetivo para o momento. </ P> <br >\n          <p> Uma das principais tarefas que estamos a desenvolver, a fim de liberar ITH é o terror psicológico, estamos trabalhando tão duro nos modelos chefes deste jogo, bem como sobre os seus cenários, estamos focados em criar terror com coisas simples , onde e quando as cenas devem ser iluminado, estamos criando eventos que o usuário não pode esperar, bem como um bom ambiente e música, gradualmente iremos fornecer-lhe com mais informações sobre a história de ITH.</p>\n <img src=\"images/firstpage/ITH_news_1.png\">\n <p>Nós queremos compartilhar com todos vocês um pouco do trabalho que estamos desenvolvendo, então, o que você acha? há apenas algumas capturas do jogo, esperamos que você goste deles e como sempre todos os seus comentários e sugestões são muito bem-vindos.</p>\n </article>',1,'games','2015-06-09','images/publications/ITH_news_01_preview.png',0);
/*!40000 ALTER TABLE `publications_portuguese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_spanish`
--

DROP TABLE IF EXISTS `publications_spanish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_spanish` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `preview_image` varchar(100) DEFAULT NULL,
  `review` int(11) DEFAULT '0',
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `publication_id_UNIQUE` (`publication_id`),
  KEY `author_idx` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_spanish`
--

LOCK TABLES `publications_spanish` WRITE;
/*!40000 ALTER TABLE `publications_spanish` DISABLE KEYS */;
INSERT INTO `publications_spanish` VALUES (1,'Estamos muy contentos de anunciar nuestro primer título llamado: Inside The Hell','<article>\n<figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/firstpage/publication_1_0.png\" style=\"display: inline-block;\"> </figure>\n<div>\n<h3>Inside The Hell ya viene</h3>\n<p>Yo y todo el equipo Black Soul estamos muy contentos de poder compartir con ustedes esta noticia, el desarrollo de nuestro primer lanzamiento el cual lleva por nombre de Inside The Hell, ITH (Inside The Hell) sera un titulo de terror, proximamente estaremos dando mas adelantos acerca de que va a tratar la historia de este titulo.<br>\nCon ITH queremos darnos a conocer como una empresa dedicada a el desarrollo de entretenimiento multimedia y ofrecer a los Gamers productos de calidad y muy bien cuidados, nuestro equipo estara al pendiente de sus dudas y comentarios a travez de nuestro sitio</p>\n<h3>Que podemos esperar?</h3>\n<p>En ITH podrás esperar una historia muy bien escrita y terror psicológico a donde quiera que vayas, estamos constantemente buscando nuevas maneras de estresar y jugar con la mente de los usuarios, también encontraras una ambientación muy cuidada y detallada ya que nos preocupamos por los más mínimos detalles en cada uno de nuestros scenarios, de verdad el equipo de Black Soul sabemos que este titulo sera de su agrado, estaremos dando mas noticias poco a poco y desde luego pronto sabremos mas de Inside The Hell.</p>\n</div>\n</article>',1,'juegos','2015-06-09','images/firstpage/publication_1_0.png',5),(2,'Black Soul, la empresa','<article>\r <figure class=\"featured-thumbnail thumbnail large\"> <img src=\"images/generics/blacksoul_team.jpg\" style=\"display: inline-block;\"> </figure>\r <div >\r <h3>Quienes somos?</h3>\r <p>BlackSoul es una compania mexicana establecida en Chihuahua Chihuahua, somos una empresa dedicada al desarrollo de video juegos, nuestra meta es ser reconocidos por entregar productos de calidad siempre puliendo los mas minimos detalles, queremos ser mundialmente reconocida y lanzar una gran cantidad de videojuegos para nuestros clientes, inovar es nuestra meta, creemos que nuestros gamers necesitan nuevos retos e ideas frescas</p>\r </div>\r </article>',2,'noticias','2015-06-08','images\\generics\\blacksoul_team.jpg',5),(3,'Que se puede esperar de Inside the Hell','<article>\n<figure class=\"featured-thumbnail thumbnail large\"> \n<h3>Inside The Hell news</h3>\n<img src=\"images/firstpage/ITH_news_01.png\"> </figure>\n<p>Como ya hemos mencionado anteriormente Inside The Hell estara disponible para PC, Mac y Linux. nos estamos centrando en estas plataformas por el momento pero no descartamos la posibilidad de lanzar ITH en mobiles aun que por el momento no es nuestro objetivo.</p><br>\n<p>Una de las principales tareas que estamos desarrollando con el fin de lanzar ITH es el terror psicologico, estamos trabajando muy duro en ello asi como en los personajes de los enemigos y sus escenarios, queremos causas miedo con cosas simples, como y donde iluminar lugares, que tipo de eventos causaran una mejor reaccion asi como tambien un analisis de la musica que sera usada en el juego, proximamente estaremos dando mas avances de ITH.</p>\n<img src=\"images/firstpage/ITH_news_1.png\">\n<p>Queriamos compartir con ustedes solo algunas capturas de el juego y saber que piensan? gradualmente les informaremos d elos avances y desde luego sus comentarios y sugerencias son bien recibidos.</p>\n</article>',1,'juegos','2015-06-09','images/publications/ITH_news_01_preview.png',0);
/*!40000 ALTER TABLE `publications_spanish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-09 16:20:38
