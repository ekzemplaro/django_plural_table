-- MySQL dump 10.17  Distrib 10.3.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: django_plural_table
-- ------------------------------------------------------
-- Server version	10.3.12-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add author',1,'add_author'),(2,'Can change author',1,'change_author'),(3,'Can delete author',1,'delete_author'),(4,'Can view author',1,'view_author'),(5,'Can add work',2,'add_work'),(6,'Can change work',2,'change_work'),(7,'Can delete work',2,'delete_work'),(8,'Can view work',2,'view_work'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(1,'plural_table','author'),(2,'plural_table','work'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'plural_table','0001_initial','2019-02-09 04:49:20.924064'),(2,'contenttypes','0001_initial','2019-02-09 04:53:18.260822'),(3,'auth','0001_initial','2019-02-09 04:53:27.166737'),(4,'admin','0001_initial','2019-02-09 04:53:29.093181'),(5,'admin','0002_logentry_remove_auto_add','2019-02-09 04:53:29.143555'),(6,'admin','0003_logentry_add_action_flag_choices','2019-02-09 04:53:29.233214'),(7,'contenttypes','0002_remove_content_type_name','2019-02-09 04:53:30.319096'),(8,'auth','0002_alter_permission_name_max_length','2019-02-09 04:53:31.230799'),(9,'auth','0003_alter_user_email_max_length','2019-02-09 04:53:31.331726'),(10,'auth','0004_alter_user_username_opts','2019-02-09 04:53:31.392083'),(11,'auth','0005_alter_user_last_login_null','2019-02-09 04:53:31.888932'),(12,'auth','0006_require_contenttypes_0002','2019-02-09 04:53:31.943824'),(13,'auth','0007_alter_validators_add_error_messages','2019-02-09 04:53:31.987870'),(14,'auth','0008_alter_user_username_max_length','2019-02-09 04:53:32.779356'),(15,'auth','0009_alter_user_last_name_max_length','2019-02-09 04:53:33.591200'),(16,'sessions','0001_initial','2019-02-09 04:53:34.014881');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plural_table_author`
--

DROP TABLE IF EXISTS `plural_table_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plural_table_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_author` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_jp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `date_death` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plural_table_author`
--

LOCK TABLES `plural_table_author` WRITE;
/*!40000 ALTER TABLE `plural_table_author` DISABLE KEYS */;
INSERT INTO `plural_table_author` VALUES (1,'a11001','芥川龍之介','Akutagawa Ryunosuke','1892-03-01','1927-07-24'),(2,'a12001','岩野 泡鳴','Iwano Houmei','1873-01-20','1920-05-09'),(3,'a14001','江見 水蔭','Emi Suiin','1869-09-17','1934-11-03'),(4,'a14002','江戸川 乱歩','Edogawa Ranpo','1894-10-21','1965-07-28'),(5,'a15001','岡本 綺堂','Okamoto Kidou','1872-11-15','1939-03-01'),(6,'a15002','小川 未明','Ogawa Mimei','1882-04-07','1961-05-11'),(7,'a21001','梶井 基次郎','Kajii Motojiro','1950-01-01','2000-10-08'),(8,'a22001','菊池 寛','Kikuchi Kan','1950-01-01','2000-10-08'),(9,'a23001','国木田 独歩','Kunikida Doppo','1950-01-01','2000-10-08'),(10,'a23002','久保田 万太郎','Kubota Mantaro','1950-01-01','2000-10-08'),(11,'a31001','佐藤春夫','Satoh Haruo','1950-01-01','2000-10-08'),(12,'a41001','高浜虚子','Takahama Kyoshi','1950-01-01','2000-10-08'),(13,'a41002','太宰 治','Dazai Osamu','1950-01-01','2000-10-08'),(14,'a45001','豊島 与志雄','Toyoshima Yoshio','1950-01-01','2000-10-08'),(15,'a51001','中島 敦','Nakajima Atsushi','1950-01-01','2000-10-08'),(16,'a51002','夏目 漱石','Natsume Souseki','1950-01-01','2000-10-08'),(17,'a52001','新美 南吉','Niimi Nankichi','1950-01-01','2000-10-08'),(18,'a61001','林 芙美子','Hayashi Fumiko','1950-01-01','2000-10-08'),(19,'a65001','堀　辰夫','Hori Tatsuo','1950-01-01','2000-10-08'),(20,'a71001','牧野 信一','Makino Shinichi','1950-01-01','2000-10-08'),(21,'a72001','水上 滝太郎','Minakami Takitarou','1950-01-01','2000-10-08'),(22,'a72002','宮沢 賢治','Miyazawa Kenji','1950-01-01','2000-10-08'),(23,'a85001','吉川 英治','Yoshikawa Eiji','1950-01-01','2000-10-08');
/*!40000 ALTER TABLE `plural_table_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plural_table_work`
--

DROP TABLE IF EXISTS `plural_table_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plural_table_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_work` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_author` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plural_table_work`
--

LOCK TABLES `plural_table_work` WRITE;
/*!40000 ALTER TABLE `plural_table_work` DISABLE KEYS */;
INSERT INTO `plural_table_work` VALUES (1,'w00001','思い出','Omoide','a41002'),(2,'w00002','グスコーブドリの伝記','Gusukoubudori no denki','a72002'),(3,'w00003','最後の胡弓弾き','Saigo no Kokyuuhiki','a52001'),(4,'w00004','ヴィヨンの妻','Villon no tsuma','a41002'),(5,'w00005','北守将軍と三人兄弟の医者','Hokusyusyogun to sannin kyoudai no isya','a72002'),(6,'w00006','牛をつないだ椿の木','Ushi wo tsunaida tsubaki no ki','a52001'),(7,'w00007','おさん','Osan','a41002'),(8,'w00008','オツベルと象','Otsuberu to zou','a72002'),(9,'w00009','花のき村と盗人たち','Hananokimura to Nusubitotachi','a52001'),(10,'w00010','夢十夜','Yumejyuya','a51002'),(11,'w00011','弟子','Teishi','a51001'),(12,'w00012','ある心の風景','Arukokoronofuukei','a21001'),(13,'w00013','僕らの結婚','Bokura no Kekkon','a31001'),(14,'w00014','魚服記','Gyofukuki','a41002'),(15,'w00015','ふるさとびと','Furusatobito','a65001'),(16,'w00016','ひかりの素足','Hikari no suashi','a72002'),(17,'w00017','風琴と魚の町','Fukin to Sakana no Machi','a61001'),(18,'w00018','郊外','Kougai','a23001'),(19,'w00019','春の雁','Haru no Kari','a85001'),(20,'w00020','東京駅にて感想','Tokyo eki nite Kansou','a71001'),(21,'w00021','斑鳩物語','Ikaruga Monogatari','a41001'),(22,'w00022','炭焼の煙','Sumiyaki no Kemuri','a14001'),(23,'w00023','九月一日','Kugatsu Tsuitachi','a72001'),(24,'w00024','和太郎さんと牛','Watarosan to Ushi','a52001'),(25,'w00025','秋','Aki','a11001'),(26,'w00026','一日一筆','Ichinichi Ippitsu','a15001'),(27,'w00027','庭','Niwa','a11001'),(28,'w00028','思い出草','Omoidegusa','a15001'),(29,'w00029','赤い船','Akai Fune','a15002'),(30,'w00030','手品師','Tejinashi','a45001'),(31,'w00031','巡査の居る風景','Junsa no iru Fuukei','a51001'),(32,'w00032','蘭学事始','Rangaku Kotohajime','a22001'),(33,'w00033','三の酉','San no Tori','a23002'),(34,'w00034','猫八','Nekohachi','a12001'),(35,'w00035','二階から','Nikai kara','a15001'),(36,'w00036','馬乃文章','Uma no Bunsyo','a61001'),(37,'w00037','陰火','Inka','a41002'),(38,'w00038','お文の魂','Ofumi no Tamashii','a15001'),(39,'w00039','白','Shiro','a11001'),(40,'w00040','石灯籠','Ishidourou','a15001'),(41,'w00041','勘平の死','Kanpei no Shi','a15001'),(42,'w00042','湯屋の二階','Yuuya no Nikai','a15001'),(43,'w00043','お化け師匠','Obake Shisyou','a15001'),(44,'w00044','半鐘の怪','Hansyou no Kai','a15001'),(45,'w00045','奥女中','Okujochuu','a15001'),(46,'w00046','帯取りの池','Obitori no Ike','a15001'),(47,'w00047','春の雪解','Haru no Yukidoke','a15001'),(48,'w00048','広重と川獺','Hiroshige to Kawauso','a15001'),(49,'w00049','屋根裏の散歩者','Yaneura no Sanposya','a14002'),(50,'w00050','手紙','Tegami','a51002');
/*!40000 ALTER TABLE `plural_table_work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-09 14:09:39
