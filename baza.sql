-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: biuro_podrozy
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rezerwacje`
--

DROP TABLE IF EXISTS `rezerwacje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezerwacje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie_nazwisko` varchar(50) NOT NULL,
  `ulica_mieszkanie` text NOT NULL,
  `miejscowosc` text NOT NULL,
  `nr_tel` text NOT NULL,
  `mail` text NOT NULL,
  `uwagi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezerwacje`
--

LOCK TABLES `rezerwacje` WRITE;
/*!40000 ALTER TABLE `rezerwacje` DISABLE KEYS */;
INSERT INTO `rezerwacje` VALUES (11,'Jan Kowalski','Warszawska 5/454','34-341, Gdynia','3423423','jan@mail.com','Uwagi do rezerwacji'),(12,'Janina Nowak','Polna 5/454','34-341, Gdynia','3423423','nowak@mail.com','Uwagi do rezerwacji');
/*!40000 ALTER TABLE `rezerwacje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiadomosci`
--

DROP TABLE IF EXISTS `wiadomosci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `mail` text NOT NULL,
  `telefon` text NOT NULL,
  `wiadomosc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiadomosci`
--

LOCK TABLES `wiadomosci` WRITE;
/*!40000 ALTER TABLE `wiadomosci` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiadomosci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wycieczki`
--

DROP TABLE IF EXISTS `wycieczki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wycieczki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` text NOT NULL,
  `cel_podrozy` varchar(30) NOT NULL,
  `opis` text NOT NULL,
  `cena` float NOT NULL,
  `dni` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wycieczki`
--

LOCK TABLES `wycieczki` WRITE;
/*!40000 ALTER TABLE `wycieczki` DISABLE KEYS */;
INSERT INTO `wycieczki` VALUES (1,'foto_barcelona.JPG','Barcelona','Słoneczna Hiszpania wzywa swoim urokiem starszych i młodszych. Odwiedź serce Katalonii i poznaj jego urocze zakątki. Wycieczka obejmuje najważniejsze punkty, jak zwiedzanie słynnej świątyni Sagrada Familia, czy malowniczego Parku Güell, ale także mniej oczywiste miejsca - zamek na szczycie góry Montjuïc, położony niedaleko stadion olimpijski, czy wzgórze Tibidabo',1500,3),(2,'foto_lizbona.JPG','Lizbona, Porto','Znasz już dobrze Hiszpanię, ale Półwysep Iberyjski wciąż przyciąga cię swoim urokiem? A może masz ochotę na miejsca mniej zatłoczone, jednak mające podobny, urokliwy klimat, jak śródziemnomorskie kurorty? Portugalia stoi przed Tobą otworem. Zobacz dwa największe miasta tego położonego nad oceanem, klimatycznego państwa. Zobacz, skąd słynni odkrywcy wypływali w poszukiwaniu nowego lądu. Przejdź się romantyczną Ribeirą nad brzegiem rzeki Douro. Odwiedź majestatyczne, średniowieczne kościoły, przyciągające swym surowym, gotyckim klimatem. Zarezerwuj wymarzoną wycieczkę do ojczyzny Cristiano Ronaldo już dzisiaj!',2700,5),(3,'foto_transylwania.JPG','Transylwania','Nie jest ci obcy klimat rodem z powieści Brama Stokera? Uwielbiasz mroczne historie, a może fascynuje cię mrożący krew w żyłach życiorys księcia wołoskiego, na którym oparta jest postać hrabiego Draculi? To wszystko nierozerwalnie związane jest z Rumunią, i jej najsłynniejszą częścią - Transylwanią. Zobacz sam klimatyczne zamki w Branie, Rasnovie i Hunedoarze. Przekonaj się sam, jak piękny w rzeczywistości jest zamek Peles. Odwiedź Braszów i jego urokliwy rynek. Czas spędzony w Transylwanii na pewno nie będzie Ci się dłużył.',2000,4);
/*!40000 ALTER TABLE `wycieczki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 22:01:29
