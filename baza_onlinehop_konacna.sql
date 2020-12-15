CREATE DATABASE  IF NOT EXISTS `bazaoshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE bazaoshop;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `artikal`
--

DROP TABLE IF EXISTS `artikal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikal` (
  `artikal_id` int NOT NULL,
  `poslovnica_id` int DEFAULT NULL,
  `naziv` text,
  `kategorija` varchar(20) NOT NULL,
  `kolicina` int DEFAULT NULL,
  `cijena` text,
  `broj_mjeseci_garancije` int DEFAULT NULL,
  PRIMARY KEY (`artikal_id`),
  KEY `poslovnica_id` (`poslovnica_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikal`
--

LOCK TABLES `artikal` WRITE;
/*!40000 ALTER TABLE `artikal` DISABLE KEYS */;
INSERT INTO `artikal` VALUES 
(1,1,'Iphone 11','mobiteli',NULL,'1300',24),
(2,1,'Iphone 11 Pro','mobiteli',NULL,'1500',24),
(3,1,'Iphone 11 Pro Max','mobiteli',NULL,'2000',24),
(4,3,'Samsung Galaxy S20','mobiteli',NULL,'1300',12),
(5,1,'Samsung Galaxy S20+','mobiteli',NULL,'1500',12),
(6,1,'Samsung Galaxy Note 10','mobiteli',NULL,'1000',12),
(7,1,'Samsung Galaxy A51','mobiteli',NULL,'400',12),
(8,1,'Huawei Mate 40 Pro','mobiteli',NULL,'2000',12),
(9,1,'Huawei P30 Pro','mobiteli',NULL,'1200',12),
(10,2,'Xiaomi Mi 10 Lite 5G','mobiteli',NULL,'650',6),
(11,1,'Xiaomi Redmi 9C','mobiteli',NULL,'500',6),
(12,2,'Apple MacBook Air 13.3-ich','laptopi',NULL,'3050',24),
(13,2,'Apple MacBook Pro 15','laptopi',NULL,'5900',24),
(14,2,'Acer Aspire A315','laptopi',NULL,'839',12),
(15,3,'Dell Inspiron 3593','laptopi',NULL,'1300',24),
(16,1,'HP 250 G7','laptopi',NULL,'900',12),
(17,1,'ASUS ZenBook','laptopi',NULL,'2000',12),
(18,3,'Tesla (40T319SFS)','TV',NULL,'440',24),
(19,3,'Panasonic TV TX-40DS630E','TV',NULL,'1000',24),
(20,3,'Samsung TV QE65Q80TATXXH','TV',NULL,'3050',24),
(21,3,'Samsung TV UE65TU7172UXXH','TV',NULL,'1500',24),
(22,1,'TV PHILIPS 55','TV',NULL,'3050',24),
(23,2,'NIKON D5600 AF-S','fotoaparati',NULL,'1500',24),
(24,1,'Canon EOS M50 WH','fotoaparati',NULL,'2200',24),
(25,3,'Canon Powershot G7x Mark II','fotoaparati',NULL,'1000',24),
(26,3,'Panasonic Lumix DMC-GF5','fotoaparati',NULL,'600',24),
(27,1,'Nikon COOLPIX P1000','fotoaparati',NULL,'1900',24),
(28,1,'PlayStation 5','konzole',NULL,'1099',12),
(29,1,'PlayStation 4','konzole',NULL,'700',12),
(30,3,'Xbox Series X','konzole',NULL,'900',12),
(31,2,'Nintendo Wii U','konzole',NULL,'1000',12),
(32,2,'Gorenje frizider RF 4141 ANW','ostalo',NULL,'400',24),
(33,2,'Samsung frizider RS68N8240B1/EF','ostalo',NULL,'2000',24),
(34,3,'Elektricna pecnica Electrolux (EZF5C50Z)','ostalo',NULL,'500',24),
(35,2,'Samsung pecnica (NV75K5571RS/OL)','ostalo',NULL,'1200',12),
(36,1,'Ves masina Candy AQUA','ostalo',NULL,'500',12),
(37,1,'VOX WM 1275-YTQ masina za ves','ostalo',NULL,'550',12),
(38,3,'Mikrovalna Candy CMG 2071M','ostalo',NULL,'130',12),
(39,2,'Samsung mikrovalna pecnica MS23F301TAS','ostalo',NULL,'200',12),
(40,2,'TESLA mikrovalna MW2060MS','ostalo',NULL,'250',12);
commit;
/*!40000 ALTER TABLE `artikal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kupac`
--

DROP TABLE IF EXISTS `kupac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kupac` (
  `kupac_id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `telefon` int NOT NULL,
  `adresa` text NOT NULL,
  `grad` varchar(20) NOT NULL,
  `poštanski_broj` int NOT NULL,
  PRIMARY KEY (`kupac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `kupac` (`kupac_id`, `ime`, `prezime`, `telefon`, `adresa`, `grad`, `poštanski_broj`) VALUES
(1, 'Meho','Mehic', '387624879', 'Augusta Cesarca 16', 'Sarajevo', 71000),
(2, 'Suljo','Suljic','387624779', 'Brodska 1', 'Mostar', 88000),
(3, 'Muhamed','Fatic', '387124379', 'Drvarska 13', 'Visoko', 71300),
(4, 'Mujo','Mujic', '387611179', 'Grahovska 5', 'Kakanj', 72240),
(5, 'Ismet','Perenda', '387624932', 'Jelene Vitas 7', 'Banja Luka', 78000),
(6, 'Meris','Vila', '387624879', 'Kordunska  6', 'Banja Luka', 78000),
(7, 'Harun','Supic', '387624371', 'Kralja Tomislava 3', 'Travnik', 72290),
(8, 'Hamo','Hamic', '387624879', 'Maksima Gorkog 1', 'Tesanj', 74260),
(9, 'Ribo','Ribic', '387613322', 'Nemanjina 32', 'Jablanica', 88420),
(10, 'Ahmed','Dedic', '387604879', 'Omladinska 3', 'Mostar', 88000),
(11, 'Mustafa','Pasic', '387615689', 'Pionirska  21', 'Cazin', 77220),
(12, 'Haris','Golub', '387627779', 'Slobodana Principa Selje 22', 'Livno', 80101),
(13, 'Risto','Ristic', '387614680', 'Sutjeska 1', 'Cazin', 77220),
(14, 'Ali', 'Alic','387624578', 'Vase Miskina 43', 'Visoko', 71300),
(15, 'Halid','Dervic', '387614420', 'Franca Rozmana 26', 'Sarajevo', 71000),
(16, 'Eldin','Tutic', '387617770', 'Julija Vareska 7', 'Visegrad', 73240),
(17, 'Huso','Dedic','387614421', 'Koste Racina 1', 'Zenica', 72000),
(18, 'Nedim','Dervisevic', '387601420', 'Koste Racina 7', 'Kakanj', 72240),
(19, 'Abdulah','Drkic','387613333', 'Milanka Vitomira 43', 'Sarajevo', 71000),
(20, 'Mustafa','Sehic','387614890', 'Ozrenska 2', 'Tesanj', 74260);
commit;
--
-- Dumping data for table `kupac`
--

LOCK TABLES `kupac` WRITE;
/*!40000 ALTER TABLE `kupac` DISABLE KEYS */;
/*!40000 ALTER TABLE `kupac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narudžba`
--

DROP TABLE IF EXISTS `narudžba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narudžba` (
  `id_tranzakcije` int NOT NULL AUTO_INCREMENT,
  `kupac_id` int NOT NULL,
  `artikal_id` int NOT NULL,
  `datum` date NOT NULL,
  `kolicina_narucenog` int NOT NULL,
  `komentar` text,
  PRIMARY KEY (`id_tranzakcije`),
  KEY `artikal_id` (`artikal_id`),
  KEY `kupac_id` (`kupac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `narudžba` (`id_tranzakcije`, `kupac_id`, `artikal_id`, `datum`, `kolicina_narucenog`, `komentar`) VALUES
(1, 1, 2,'2020-10-25',2, 'Apsolutno svaka preporuka! Cista 10ka sve'),
(2, 2, 5,'2020-11-29',1,'Odlican prodavac ,sve preporuke za saradnju'),
(3, 3, 8,'2020-9-28',2, 'Sve brzo dogovoreno.. sve pohvale'),
(4, 4, 9,'2020-12-15',1, '10 za saradnju..sve pohvale'),
(5, 5, 24,'2020-11-11',1, 'Sve po dogovoru.'),
(6, 6, 37,'2020-12-15',1, 'Sve preporuke za daljnju saradnju...respect'),
(7, 7, 40,'2020-9-30',1, 'Vrhunska saradnja, vrlo lak dogovor 10/10'),
(8, 8, 5,'2020-11-25',2, 'Vrhunska saradnja 10/10'),
(9, 9, 8,'2020-12-11',1, 'Sve pohvale'),
(10, 10, 10,'2020-12-12',2, 'Sve najbolje!'),
(11, 11, 24,'2020-11-11',1, 'Brz dogovor, sve preporuke za saradnju'),
(12, 12, 19,'2020-9-28',1, 'Sve preporuke'),
(13, 13, 35,'2020-12-15',1, 'Zadovoljstvo je poslovati sa ovakvim osobama'),
(14, 14, 24,'2020-11-18',1,'Sve po dogovoru'),
(15, 15, 32,'2020-10-20',1, 'Sve uredno'),
(16, 16, 35,'2020-12-15',1, 'Odlicno, preporucujem svima'),
(17, 17, 17,'2020-10-8',1,'Sve po dogovoru, sve 10'),
(18, 18, 1,'2020-12-25',2, 'Sve po dogovoru preporuke!!'),
(19, 19, 24,'2020-11-30',1,'Preporucujem saradnju, sve lako i brzo se da dogovoriti'),
(20, 20, 16,'2020-9-25',1,'Sve za 10 , preporucujem svaku suradnju');
commit;
--
-- Dumping data for table `narudžba`
--

LOCK TABLES `narudžba` WRITE;
/*!40000 ALTER TABLE `narudžba` DISABLE KEYS */;
/*!40000 ALTER TABLE `narudžba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poslovnica`
--

DROP TABLE IF EXISTS `poslovnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poslovnica` (
  `poslovnica_id` int NOT NULL,
  `lokacija` text NOT NULL,
  PRIMARY KEY (`poslovnica_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poslovnica`
--

LOCK TABLES `poslovnica` WRITE;
/*!40000 ALTER TABLE `poslovnica` DISABLE KEYS */;
INSERT INTO `poslovnica` VALUES
(1,'Sarajevo'),
(2,'Tuzla'),
(3,'Mostar');
/*!40000 ALTER TABLE `poslovnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugovor`
--

DROP TABLE IF EXISTS `ugovor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ugovor` (
  `ugovor_id` int NOT NULL,
  `plata` int DEFAULT NULL,
  `datum_zaposlenja` date DEFAULT NULL,
  `broj_racuna` int DEFAULT NULL,
  PRIMARY KEY (`ugovor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugovor`
--

LOCK TABLES `ugovor` WRITE;
/*!40000 ALTER TABLE `ugovor` DISABLE KEYS */;
INSERT INTO `ugovor` VALUES 
(1,800,'2019-05-12',145224),
(2,900,'2018-04-11',448987),
(3,850,'2018-04-12',123444),
(4,920,'2018-02-24',125588),
(5,1000,'2017-01-23',778899);
commit;
/*!40000 ALTER TABLE `ugovor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaposlenici`
--

DROP TABLE IF EXISTS `zaposlenici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zaposlenici` (
  `zaposlenik_id` int NOT NULL,
  `ugovor_id` int DEFAULT NULL,
  `poslovnica_id` int DEFAULT NULL,
  `ime` varchar(45) DEFAULT NULL,
  `prezime` varchar(45) DEFAULT NULL,
  `jmbg` int DEFAULT NULL,
  `datum_rodjenja` date DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`zaposlenik_id`),
  KEY `ugovor_id` (`ugovor_id`),
  KEY `poslovnica_id` (`poslovnica_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenici`
--

LOCK TABLES `zaposlenici` WRITE;
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` VALUES 
(1,1,1,'Ajla ','Rukavina',210598719,'1987-05-21','062555888','ajla.rukavina@gmail.com'),
(2,2,2,'Haris','Peljto',180499945,'1999-04-18','061789444','haros.peljto@gmail.com'),
(3,3,3,'Sejla','Borovina',251099814,'1998-10-25','061333444','sejla.borovina@yahoo.com'),
(4,4,2,'Amela','Mehmedika',140800054,'2000-08-14','063322456','amela.mehmedika@eronet.ba'),
(5,5,1,'Alen','Dizdar',311299914,'1999-12-31','061126778','alen.dizdar@webshop.com.ba');
commit;
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 20:24:48
SELECT * 
FROM artikal;