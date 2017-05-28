CREATE DATABASE  IF NOT EXISTS `project18` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project18`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 192.168.1.4    Database: project18
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `butikkers`
--

DROP TABLE IF EXISTS `butikkers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `butikkers` (
  `But_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` int(11) NOT NULL,
  `Navn` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Kontakt` varchar(255) NOT NULL,
  `Apenstider` varchar(255) NOT NULL,
  `Blide` text NOT NULL,
  `Beskrivelse` text NOT NULL,
  PRIMARY KEY (`But_ID`),
  KEY `Type_ref` (`Type_ref`),
  CONSTRAINT `butikkers_ibfk_1` FOREIGN KEY (`Type_ref`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butikkers`
--

LOCK TABLES `butikkers` WRITE;
/*!40000 ALTER TABLE `butikkers` DISABLE KEYS */;
INSERT INTO `butikkers` VALUES (1,5,'Rema 1000','Maridalsveien 15','TLF: 2260 8908\n\n','Hverdager 07:00-23:00\r\nLørdager 08:00-21:00','images/butikker/rema1000.png','Vanlig dagligvarebutikk ofte med billigkrok som er beleilig for studenter. '),(2,5,'TORSO Vulkan AS','Vulkan 38, 0178 Oslo','tlf: 21 38 80 70','man-lør 10-17\r\nsøndag Stengt','images/butikker/torso.png','Hos oss finner du alt du trenger til prosjektet ditt, enten du er student, hobbymaler eller utøvende kunstner. Vi gir rabatt til studenter, lærere, kursholdere og medlemmer av NBK og Grafill. Skulle vi ikke ha akkurat det du er ute etter i butikken, så si ifra til oss; vi kan skaffe det aller meste med korte leveringstider. Velkommen til Vulkan!'),(3,5,'Vitus Apotek','Vulkan Depot\r\nMaridalsveien 21\r\n0178 Oslo','Tlf: 22 46 00 47\n','Man-fre: 10-18\r\nLør: 10-15','images/butikker/vitus.png','Vitusapotek er en landsdekkende apotekkjede med snart 220 apotek og 1500 medarbeidere. Vi er glad i mennesker og liker å hjelpe, enten det dreier seg om å bli frisk, forebygge helseproblemer eller øke personlig velvære. Det betyr at hver arbeidsdag byr på varierte og spennende utfordringer, både faglig og menneskelig.');
/*!40000 ALTER TABLE `butikkers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` text NOT NULL,
  `blide` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'eat','images/interests/eat.jpg'),(2,'meet','images/interests/meet.jpg'),(3,'music','images/interests/music.jpg');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoris`
--

DROP TABLE IF EXISTS `kategoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoris` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Navn` tinytext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoris`
--

LOCK TABLES `kategoris` WRITE;
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` VALUES (1,'Kulturliv'),(2,'Nærmiljø');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samlings`
--

DROP TABLE IF EXISTS `samlings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samlings` (
  `interest_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  KEY `interest_id` (`interest_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `samlings_ibfk_1` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`ID`),
  CONSTRAINT `samlings_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samlings`
--

LOCK TABLES `samlings` WRITE;
/*!40000 ALTER TABLE `samlings` DISABLE KEYS */;
INSERT INTO `samlings` VALUES (1,7),(1,5);
/*!40000 ALTER TABLE `samlings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spisesteders`
--

DROP TABLE IF EXISTS `spisesteders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spisesteders` (
  `Sp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Ref` int(11) NOT NULL,
  `Navn` varchar(300) NOT NULL,
  `Adress` text NOT NULL,
  `Kontakt` varchar(250) NOT NULL,
  `Apenstider` tinytext NOT NULL,
  `Blide` text NOT NULL,
  `Beskrivelse` text NOT NULL,
  PRIMARY KEY (`Sp_ID`),
  KEY `Type_Ref` (`Type_Ref`),
  CONSTRAINT `spisesteders_ibfk_1` FOREIGN KEY (`Type_Ref`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spisesteders`
--

LOCK TABLES `spisesteders` WRITE;
/*!40000 ALTER TABLE `spisesteders` DISABLE KEYS */;
INSERT INTO `spisesteders` VALUES (1,7,'La Crepè','Vulkan 28, 0178 Oslo','Telefonnummer:46229262\n\n','mandag-søndag 11:00-21:00','images/kulturliv/lacrepe.jpg','Autentiske Crepes som selges som enten frokost, brunch, lunch eller middag. Bredt meny med alt fra tunfisk til noe mer søtt som nutella og banan. Sjarmerende lokal med rolig cafe-atmosfære.'),(2,7,'Mathallen','Vulkan 5, 0178 Oslo','Telefonnummer:\n4000 1209\n\n\n','Mandag-fredag: 10:00-22:00\r\nlørdag: 10:00-16:00\r\nSøndag : stengt','images/kulturliv/mathallen.jpg','Her finner du over 30 spesialbutikker, kafeer og spisesteder. I tillegg byr Mathallen også på en rekke matrelaterte aktiviteter som konferanser, kurs, messer og konkurranser'),(3,7,'Restaurant Kontrast',' Vulkan 5, 0178 Oslo','Kontakt: 21 60 01 01','Tirdag -Lørdag: 18:00 - 01:00\r\nLørdag og Søndag: Stengt ','images/kulturliv/kontrast.jpg','Kontrast er en moderne skandinavisk restaurant med fokus på kortreiste råvarer i sesong. Hovedfokuset er å levere norske produkter i verdensklasse. Så langt det er mulig benyttes økologiske råvarer.\r\nVårt mål er å løfte frem produkter fra bønder som dyrker sin mark med tanke og omsorg.\r\nVi er opptatt av dyrevelferd og benytter oss av leverandører med samme fokus. Vi benytter oss av dyr som har fått leve fritt og vilt.\r\nGlade dyr er gode dyr.\r\nRestaurant Kontrast fikk i 2016 sin første Michelin stjerne.');
/*!40000 ALTER TABLE `spisesteders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tjenesters`
--

DROP TABLE IF EXISTS `tjenesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tjenesters` (
  `Tjn_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` int(11) NOT NULL,
  `Navn` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Kontakt` varchar(255) NOT NULL,
  `Apenstider` varchar(255) NOT NULL,
  `Blide` text NOT NULL,
  `Beskrivelse` text NOT NULL,
  PRIMARY KEY (`Tjn_ID`),
  KEY `Type_ref` (`Type_ref`),
  CONSTRAINT `tjenesters_ibfk_1` FOREIGN KEY (`Type_ref`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tjenesters`
--

LOCK TABLES `tjenesters` WRITE;
/*!40000 ALTER TABLE `tjenesters` DISABLE KEYS */;
INSERT INTO `tjenesters` VALUES (1,9,'IO Frisør','Vulkan Depot\r\nMaridalsveien 21\r\n0178 Oslo','Tlf: 23 62 31 30\n','Man-fre: 10-18\r\nLørdag: 10-16\r\nSøndag: Stengt\r\n','images/narmiljo/io_frisor.png','Vi tilbyr alt innen hår og styling: klipp, farge, keratin-kur, makeup, styling, extension, napping og farging av bryn og vipper. Vi tilbyr også alt av neglepleie.'),(2,9,'Skarpe Kniver','Vulkan 24, 0178 Oslo','Tlf: 45 44 66 66\n','Man-fre: 11-17:30\r\nLørdag: 10:30-16:30\r\nSøndag: Stengt','images/narmiljo/skarpe_kniver.png','Norges største nettbutikk for kjøkkenkniver har endelig åpnet butikk. Du finner oss perfekt plassert på Vulkanområdet ved Mathallen.\r\n\r\nVi har Nordens største utvalg av kjøkkenkniver i vår butikk, her finner du garantert det du trenger. Vi fører merker som Masahiro, Tojiro, Takamura, Kai Shun og Kasumi.\r\n\r\nØnsker du å slipe knivene dine? Vi sliper alle kjøkkenkniver.\r\n'),(3,9,'Railway','Vulkan Depot\r\nMaridalsveien 15\r\n0178 Oslo','Tlf: 95 40 12 08\n','','images/narmiljo/railway.png','Railway er et design- og utviklingsbyå med fokus på unike konsepter og merkevarebyggende aktiviteter.\r\n\r\nVårt produkt er sammensetningen av kreative mennesker, deres evner og et miljø som tilrettelegger for spennende problemløsning.\r\n\r\nVår filosofi er at mennesker er det viktigste i alle produkter og prosesser. Alt vi lager, lager vi for menneskene som skal motta, oppleve eller bruke produktet. Vi kaller dette empatisk design.\r\n');
/*!40000 ALTER TABLE `tjenesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treningsenters`
--

DROP TABLE IF EXISTS `treningsenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treningsenters` (
  `Tren_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` int(11) NOT NULL,
  `Navn` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Pris_range` varchar(255) NOT NULL,
  `Kontakt` varchar(255) NOT NULL,
  `Blide` text NOT NULL,
  `Beskrivelse` text NOT NULL,
  PRIMARY KEY (`Tren_ID`),
  KEY `Type_ref` (`Type_ref`),
  CONSTRAINT `treningsenters_ibfk_1` FOREIGN KEY (`Type_ref`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treningsenters`
--

LOCK TABLES `treningsenters` WRITE;
/*!40000 ALTER TABLE `treningsenters` DISABLE KEYS */;
INSERT INTO `treningsenters` VALUES (1,6,'SiO Athletica Vulkan','Vulkan 15, 0178 Oslo','kr650 pr semester','Telefonummer:\n2259 6950\n\n','images/kulturliv/athletica.jpg','Athletica Vulkan tilbyr kondisjons-, gruppe- og styrketrening, og ligger sentralt plassert med gode apparater og flinke personlig trenere'),(2,6,'Vulkan Squash AS','Maridalsveien 17, \r\n0175 Oslo\r\n','500kr pr semester','Telefonnummer:\n2235 5511\n','images/kulturliv/vulkan-squash.jpg','Tilbyr squashtrening til medlemmer og fastetimer, ingen drop-in!\r\nTilbyr også racketstrenging med 6 forskjellige strenger til ulike formål.\r\n'),(3,6,'Vulkan \r\nKlatresenter\r\n','Vulkan 13, 0178 Oslo','700kr pr semester','Telefonnummer\n2211 2890\n\n','images/kulturliv/vulkan_klatre.jpg','Drives av Kolsås Klatreklubb som er en av landets største klatreklubber. Senteret har 3 ulike vegger,26 toppankere med to til tre klatreruter per linje.');
/*!40000 ALTER TABLE `treningsenters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(100) NOT NULL,
  `Kategori_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`Type_ID`),
  KEY `Kategori_ref` (`Kategori_ref`),
  CONSTRAINT `types_ibfk_1` FOREIGN KEY (`Kategori_ref`) REFERENCES `kategoris` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (5,'Buitkker',2),(6,'Treingssenter',1),(7,'Spisesteder',1),(8,'Utesteder',1),(9,'Tjenester',2);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utesteders`
--

DROP TABLE IF EXISTS `utesteders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utesteders` (
  `Ut_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` int(11) NOT NULL,
  `Navn` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Apenstider` varchar(255) NOT NULL,
  `Pris` varchar(255) NOT NULL,
  `Aldergrense` varchar(255) NOT NULL,
  `Blide` text NOT NULL,
  `Beskrivelse` text NOT NULL,
  PRIMARY KEY (`Ut_ID`),
  KEY `Type_ref` (`Type_ref`),
  CONSTRAINT `utesteders_ibfk_1` FOREIGN KEY (`Type_ref`) REFERENCES `types` (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utesteders`
--

LOCK TABLES `utesteders` WRITE;
/*!40000 ALTER TABLE `utesteders` DISABLE KEYS */;
INSERT INTO `utesteders` VALUES (1,8,'Rockefeller','Badstugata 2\r\n0183 Oslo\r\n','Kl.20.00  frem til 03.30, men enkelte arrangementer kan stenge før.','150kr for inngang','Aldergrense\n 18','images/kulturliv/rockefeller.png','Konsertlokale som er mest kjent for å ha et stort antall konserter, ofte med populær- og rockemusikk og kulturarrangement med norske og internasjonale artister.'),(2,8,'SYNG','Nedre gate 7,\r\n0551 Oslo\r\n','hver dag fra 14:00-01:00','100','Aldergrense\n 18','images/kulturliv/syng.png','Karokebar som byr på musikk og sang både for barn og voksne. Byr på masse drikke og billigere mat hos de nærmeste restaurantene \r\n\r\n\r\n'),(3,8,'Pokalen Sportspub','Vulkan 26, 0178 Oslo','Tirs-tors: 18-01\r\n Fredag: 17-03\r\n Lørdag: 13-03\r\n Søndag: 13-00\r\n Mandag: stengt','gratis inngang','Aldergrense\n 18','images/kulturliv/pokalen_sportspub.png','Jovial sportspub og møtested for sportsentusiaster og ølhun\n\nKun det beste innen sport på fjernsyn, musikk og godt drikke. Pokalen viser det aller meste av kamper fra Premier League og Champions League. Utvalgte godbiter fra NFL, hockey, skiskyting, hopprenn, Sundby vs Northug, og annen idrett. 10 skjermer som henger høyt nok til at alle ser, tre soner, bra lyd, digge sofaer og et herlig utvalg av godt drikke. Både flaske og tapp.\n\n');
/*!40000 ALTER TABLE `utesteders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-28 10:45:07
