
USE azulapp;
--
-- Table structure for table `airportoperator`
--

DROP TABLE IF EXISTS `airportoperator`;
CREATE TABLE `airportoperator` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;


--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Country` varchar(100) DEFAULT NULL,
  `ProvinceOrState` varchar(100) DEFAULT NULL,
  `Longitude` decimal(11,7) DEFAULT NULL,
  `Latitude` decimal(11,7) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;


--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `AirportOperatorId` int DEFAULT NULL,
  `AirportCode` varchar(30) DEFAULT NULL,
  `LocationId` int DEFAULT NULL,
  `PriorityOrder` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_airportoperator_idx` (`AirportOperatorId`),
  KEY `fk_location_idx` (`LocationId`),
  CONSTRAINT `fk_airportoperator` FOREIGN KEY (`AirportOperatorId`) REFERENCES `airportoperator` (`Id`),
  CONSTRAINT `fk_location` FOREIGN KEY (`LocationId`) REFERENCES `location` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

