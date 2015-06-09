-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2015 at 04:11 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `theblack_blacksoul`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE latin1_german1_ci DEFAULT NULL,
  `description` varchar(600) COLLATE latin1_german1_ci DEFAULT NULL,
  `display_picture` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_id_UNIQUE` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `description`, `display_picture`) VALUES
(1, 'Erick Dominguez', 'One of the founders of Black Soul, he is a hardware system engineer with a big passion for game design, Erick has been designing games for a while, he is in charge of modeling and texturing what you see in our games, has experience with some game engines and 3d software, if something is not perfect he is going to let us know.', '\\images\\team\\blacksoul_team_erick.jpg'),
(2, 'Raul Roman', 'esta debe ser una descripcion que hable de Raul Roman', '\\images\\team\\blacksoul_team_raul.jpg'),
(3, 'Carlos Contreras', 'esta debe ser una descripcion que hable de charly', '\\images\\team\\blacksoul_team_carlos.jpg'),
(4, 'Tony Ortega', 'esta debe ser una descripcion que hable de tony', '\\images\\team\\blacksoul_team_erick.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE IF NOT EXISTS `publications` (
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
  KEY `author_idx` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`publication_id`, `title`, `content`, `author_id`, `type`, `date`, `preview_image`, `review`) VALUES
(1, 'We are very happy to announce our first title called: Inside the Hell', '<article>\n    <figure class="featured-thumbnail thumbnail large"> <img src="images/firstpage/publication_1_0.png" style="display: inline-block;"> </figure>\n    <div>\n        <h3>Inside The Hell is comming</h3>\n        <p>Me and all the black soul''s team are very excited to share with all of you guys this news, the development of our first title is coming and will be called Inside The Hell (ITH) it will be a terror game, soon we will showing you updates about this title and its story<br>\n        With ITH we want to introduce our selves as a videogame development company and offer to our gamers high quality in our products, our team will be in contact with for any doubt through our site. </p>\n        <h3>What can we expect?</h3>\n        <p>You can expect a very good written story and psychological terror wherever you go, we are constantly looking for new ways to stress the player and play with his mind, you''ll find a careful and detailed environment because we have worried about the minimal details inside our scenarios, truly the black soul''s team know that this title will be of your pleasure, Gradually we are going to release more news.</p>\n    </div>\n</article>', 1, 'games', '2015-06-08', 'images/firstpage/publication_1_0.png', 5),
(2, 'Black Soul, the company', '<article>\r\n    <figure class="featured-thumbnail thumbnail large"> <img src="images/generics/blacksoul_team.jpg" style="display: inline-block;"> </figure>\r\n    <div >\r\n        <h3>Who are we?</h3>\r\n        <p>Black soul is a Mexican company located at Chihuahua Chihuahua Mexico, we are dedicated to the game design, our main goal is be recognized by deliver hig quality products, we want to be world famous and release to many games to our customers, inovate is something that we do, it is our goal, we strongly believed that the games need new challenges and fresh ideas.</p>\r\n    </div>\r\n</article>', 2, 'news', '2015-06-08', 'images\\generics\\blacksoul_team.jpg', 5),
(3, 'What can we expect from ITH', '<article>\r\n    <figure class="featured-thumbnail thumbnail large"> \r\n\r\n <h3>Inside The Hell news</h3>\r\n\r\n<img src="images/firstpage/ITH_news_01.png"> </figure>\r\n\r\n       \r\n        <p>One of the principal tasks that we are developing in order to release ITH is the psychological terror, we are working so hard in the bosses models of this game as well as on its scenarios, we are focused in create terror with simple stuff, where and when the scenes must be illuminated, we are creating events that the user won''t expect as well as a good ambiance and music, gradually we will provide you with more information about the story of ITH.</p>\r\n\r\n\r\n<img src="images/firstpage/ITH_news_1.png">\r\n\r\n<p>We want to share with all of you guys a little bit of the work that we are developing, so, what do you think? there are just a few captures of the game, we hope you enjoy them and as always all your comments and suggestions are very welcome.</p>\r\n\r\n\r\n</article>', 1, 'games', '2015-06-08', 'images/publications/ITH_news_01_preview.png', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
