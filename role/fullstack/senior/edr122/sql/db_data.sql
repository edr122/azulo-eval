--
-- Dumping data for table `airportoperator`
--

LOCK TABLES `airportoperator` WRITE;
INSERT INTO `airportoperator` VALUES (1,'Aeropuertos Andinos del Perú'),(2,'Aeropuertos del Perú'),(3,'Corporación Peruana de Aeropuertos y Aviación'),(4,'Lima Airport Partners'),(5,'Grupo Aeroportuario Centro Norte'),(6,'Grupo Aeroportuario de Chiapas'),(7,'Grupo Aeroportuario del Pacífico'),(8,'Grupo Aeroportuario del Sureste'),(9,'Operadora Estatal de Aeropuertos'),(10,'Sistema Metropolitano de Aeropuertos');
UNLOCK TABLES;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Perú','Arequipa',-71.5362610,-16.4065290),(2,'Perú','Juliaca',-70.1235090,-15.4874700),(3,'Perú','Puerto Maldonado',-69.1946570,-12.5872070),(4,'Perú','Tacna',-70.2386290,-18.0208680),(5,'Perú','Ayacucho',-74.2188290,-13.1673820),(6,'Perú','Cajamarca',-78.5080230,-7.1582970),(7,'Perú','Chiclayo',-79.8548790,-6.7770860),(8,'Perú','Huaraz',-77.5264630,-9.5153880),(9,'Perú','Chimbote',-78.5694600,-9.0739310),(10,'Perú','Cuzco',-71.9646850,-13.5260830);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'Aeropuerto Internacional Rodríguez Ballón',1,'C0001',1,11),(2,'Aeropuerto Internacional Inca Manco Cápac',1,'C0002',2,23),(3,'Aeropuerto Internacional de Puerto Maldonado',1,'C0003',3,3),(4,'Aeropuerto Internacional Coronel FAP Carlos Ciriani Santa Rosa',1,'C0004',4,4),(5,'Aeropuerto Coronel FAP Alfredo Mendivil Duarte',1,'C0005',5,5),(6,'Aeropuerto Mayor General FAP Armando Revoredo Iglesias',2,'C0006',6,6),(7,'Aeropuerto Internacional Capitán FAP José A. Quiñones',2,'C0007',7,7),(8,'Aeropuerto Comandante FAP Germán Arias Graziani',2,'C0008',8,8),(9,'Aeropuerto Teniente FAP Jaime Montreuil Morales',3,'C0009',9,9),(10,'Aeropuerto Internacional Alejandro Velasco Astete',3,'C0010',10,10);
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
