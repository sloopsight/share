-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: campaign
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `campaign_action_request_tbl`
--

DROP TABLE IF EXISTS `campaign_action_request_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_action_request_tbl` (
  `id` varchar(100) NOT NULL,
  `offer_id` bigint(20) DEFAULT NULL,
  `options` text,
  `request` text,
  `request_date` datetime(6) DEFAULT NULL,
  `action_id` bigint(20) DEFAULT NULL,
  `offer_action` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_action_request_tbl`
--

LOCK TABLES `campaign_action_request_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_action_request_tbl` DISABLE KEYS */;
INSERT INTO `campaign_action_request_tbl` VALUES ('416d534b-2471-4dd4-b797-69f7d3486555',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL),('6d90457a-fbbd-4418-ad57-f84e381625be',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL),('72fc8b7f-0953-4969-a87e-290008fa0cd8',2,'{}','{\"total\":11000,\"bank\":\"INDLTD\",\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,3,'{\"id\":\"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\",\"tnc\":\"Offer Terms and Conditions\\n\\nThis offer (\\\"Offer\\\") is provided by IndusInd Bank Limited (\\\"Bank\\\") facilitated by Amazon Pay (India) Private Limited, and made available on www.airtel.in\",\"name\":\"Bank Offer\",\"options\":{\"discount\":\"10\"},\"executor\":{\"id\":3,\"name\":\"InstantDiscount\"},\"description\":\"10% Instant Discount on Indusind Bank Cards  on a minimum purchase of Rs 10000\",\"isPrePaymentAction\":true}'),('9e386aea-e7e7-4010-8c4e-7d5372d199e1',2,'{}','{\"total\":11000,\"bank\":\"INDLTD\",\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,3,'{\"id\":\"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\",\"tnc\":\"Offer Terms and Conditions\\n\\nThis offer (\\\"Offer\\\") is provided by IndusInd Bank Limited (\\\"Bank\\\") facilitated by Amazon Pay (India) Private Limited, and made available on www.airtel.in\",\"name\":\"Bank Offer\",\"options\":{\"discount\":\"10\"},\"executor\":{\"id\":3,\"name\":\"InstantDiscount\"},\"actionType\":\"price-reduction\",\"description\":\"10% Instant Discount on Indusind Bank Cards  on a minimum purchase of Rs 10000\",\"isPrePaymentAction\":true}'),('f3c55ae1-3ca8-4bec-9c90-e8528594f53e',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL);
/*!40000 ALTER TABLE `campaign_action_request_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_action_tbl`
--

DROP TABLE IF EXISTS `campaign_action_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_action_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `options` text,
  `plugin` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_action_tbl`
--

LOCK TABLES `campaign_action_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_action_tbl` DISABLE KEYS */;
INSERT INTO `campaign_action_tbl` VALUES (2,'COUPON_PLUGIN','{\"servicer\":\"http://dummy\"}','com.airtel.closure.app.actions.plugins.SimpleActionPlugin','GRATIFICATION'),(3,'InstantDiscount','{\"amountPath\":\"/total\"}','com.airtel.closure.app.actions.plugins.BankInstantDiscount','GRATIFICATION');
/*!40000 ALTER TABLE `campaign_action_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_customer_three_sixty_tbl`
--

DROP TABLE IF EXISTS `campaign_customer_three_sixty_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_customer_three_sixty_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `options` text,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_customer_three_sixty_tbl`
--

LOCK TABLES `campaign_customer_three_sixty_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_customer_three_sixty_tbl` DISABLE KEYS */;
INSERT INTO `campaign_customer_three_sixty_tbl` VALUES (1,'{\"place\":\"delhi\",\"age\":\"34\",\"LAST_MONTH_SHOPING_AMOUNT\":\"10000\"}','shubhanshu'),(2,'{\"place\":\"haryana\",\"age\":\"40\"}','Abhishek');
/*!40000 ALTER TABLE `campaign_customer_three_sixty_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_decision_flow_history_tbl`
--

DROP TABLE IF EXISTS `campaign_decision_flow_history_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_decision_flow_history_tbl` (
  `decisionflow_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `backup` text,
  PRIMARY KEY (`decisionflow_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_decision_flow_history_tbl`
--

LOCK TABLES `campaign_decision_flow_history_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_decision_flow_history_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_decision_flow_history_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_decision_flow_tbl`
--

DROP TABLE IF EXISTS `campaign_decision_flow_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_decision_flow_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flow_context` text,
  `flow_meta` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_decision_flow_tbl`
--

LOCK TABLES `campaign_decision_flow_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_decision_flow_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_decision_flow_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_dictionary_tbl`
--

DROP TABLE IF EXISTS `campaign_dictionary_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_dictionary_tbl` (
  `name` varchar(50) NOT NULL,
  `operators` text,
  `options` text,
  `resolver` varchar(50) DEFAULT NULL,
  `scope` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_dictionary_tbl`
--

LOCK TABLES `campaign_dictionary_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_dictionary_tbl` DISABLE KEYS */;
INSERT INTO `campaign_dictionary_tbl` VALUES ('bank_id','[\"EQ\"]','{\"jq:string:field\":\"/bank\"}','2','LOCAL','STRING'),('cart_value','[\"GT\",\"EQ\",\"LEQ\",\"LT\",\"GEQ\"]','{\"jq:long:field\":\"/total\"}','2','LOCAL','NUMBER'),('user_age','[\"GT\",\"LT\"]','{\"jq:long:id\":\"/attribute/id\",\"attribute\":\"$.age\"}','1','LOCAL','NUMBER'),('user_place','[\"EQ\"]','{\"jq:long:id\":\"/attribute/id\",\"attribute\":\"$.place\"}','1','LOCAL','STRING');
/*!40000 ALTER TABLE `campaign_dictionary_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_field_resolver_tbl`
--

DROP TABLE IF EXISTS `campaign_field_resolver_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_field_resolver_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `options` text,
  `plugin` varchar(100) DEFAULT NULL,
  `script` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_field_resolver_tbl`
--

LOCK TABLES `campaign_field_resolver_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_field_resolver_tbl` DISABLE KEYS */;
INSERT INTO `campaign_field_resolver_tbl` VALUES (1,'MysqlFieldResolver','{\"user\":\"root\",\"password\":\"root\",\"url\":\"jdbc:mysql://localhost:3306/campaign?useUnicode=true&characterEncoding=UTF-8&verifyServerCertificate=false&useSSL=false&noAccessToProcedureBodies=true\",\"driver\":\"com.mysql.jdbc.Driver\"}','com.airtel.closure.app.resolver.plugins.JdbcFieldResolver','select  JSON_UNQUOTE(JSON_EXTRACT(options,\'{attribute}\')) from campaign_customer_three_sixty_tbl where id=:id'),(2,'Frontend Field Resolver','{\"user\":\"root\",\"password\":\"root\",\"url\":\"jdbc:mysql://localhost:3306/campaign?useUnicode=true&characterEncoding=UTF-8&verifyServerCertificate=false&useSSL=false&noAccessToProcedureBodies=true \\t\",\"driver\":\"com.mysql.jdbc.Driver\"}','com.airtel.closure.app.resolver.plugins.JdbcFieldResolver ','select \'{field}\''),(3,'RechargePromotion','{\"day\":\"10\"}','com.airtel.rechargepromo.plugin','Dear  {name} recharge is expiring on {date}. Recharge today of amount {amount} and get {day} days validity extra.');
/*!40000 ALTER TABLE `campaign_field_resolver_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_offer_tbl`
--

DROP TABLE IF EXISTS `campaign_offer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_offer_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `criteria` json DEFAULT NULL,
  `maximum` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_events` json DEFAULT NULL,
  `validity_end` datetime(6) DEFAULT NULL,
  `validity_start` datetime(6) DEFAULT NULL,
  `actions` json DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `applications` json DEFAULT NULL,
  `channels` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `UK_mvfu0uoafmwuc6av00i226hy` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_offer_tbl`
--

LOCK TABLES `campaign_offer_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_offer_tbl` DISABLE KEYS */;
INSERT INTO `campaign_offer_tbl` VALUES (2,'INDUS10','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"c04704ba-76cf-4a92-afc6-0631ca9ec149\", \"gate\": \"AND\", \"field\": \"cart_value\", \"operand\": \"10000\", \"operator\": \"GEQ\"}, {\"id\": \"00042127-94e0-4a33-a96e-754a3bd7816e\", \"gate\": \"AND\", \"field\": \"bank_id\", \"operand\": \"INDLTD\", \"operator\": \"EQ\"}]}]}',10,'INDUS BANK OFFER',1,'[]','2021-07-31 23:59:59.000000','2021-07-01 00:00:00.000000','[{\"id\": \"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\", \"tnc\": \"Offer Terms and Conditions\\n\\nThis offer (\\\"Offer\\\") is provided by IndusInd Bank Limited (\\\"Bank\\\") facilitated by Amazon Pay (India) Private Limited, and made available on www.airtel.in\", \"name\": \"Bank Offer\", \"options\": {\"discount\": \"10\"}, \"executor\": {\"id\": 3, \"name\": \"InstantDiscount\"}, \"actionType\": \"price-reduction\", \"description\": \"10% Instant Discount on Indusind Bank Cards  on a minimum purchase of Rs 10000\", \"isPrePaymentAction\": true}]',4,'[\"safo\"]','[\"web\"]');
/*!40000 ALTER TABLE `campaign_offer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_organization_membership_tbl`
--

DROP TABLE IF EXISTS `campaign_organization_membership_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_organization_membership_tbl` (
  `organization_id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `permissions` text,
  PRIMARY KEY (`organization_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_organization_membership_tbl`
--

LOCK TABLES `campaign_organization_membership_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_organization_membership_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_organization_membership_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_organization_tbl`
--

DROP TABLE IF EXISTS `campaign_organization_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_organization_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_organization_tbl`
--

LOCK TABLES `campaign_organization_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_organization_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_organization_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_principal_tbl`
--

DROP TABLE IF EXISTS `campaign_principal_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_principal_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `last_login_at` datetime(6) DEFAULT NULL,
  `last_phrases` text,
  `phrase` varchar(255) DEFAULT NULL,
  `validity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_principal_tbl`
--

LOCK TABLES `campaign_principal_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_principal_tbl` DISABLE KEYS */;
INSERT INTO `campaign_principal_tbl` VALUES (1,'2021-05-05 17:20:06.000000',_binary '\0','2021-05-05 17:20:06.000000','[]','{SHA256}8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',365);
/*!40000 ALTER TABLE `campaign_principal_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_security_group_tbl`
--

DROP TABLE IF EXISTS `campaign_security_group_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_security_group_tbl` (
  `name` varchar(25) NOT NULL,
  `allowed_expression` varchar(200) DEFAULT NULL,
  `authorties` text,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_security_group_tbl`
--

LOCK TABLES `campaign_security_group_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_security_group_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_security_group_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_user_tbl`
--

DROP TABLE IF EXISTS `campaign_user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_user_tbl` (
  `username` varchar(25) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `options` text,
  `principal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`username`),
  UNIQUE KEY `principal_id` (`principal_id`),
  UNIQUE KEY `UK_1andnwhl0ptq52yw1my989n4n` (`email`),
  CONSTRAINT `FKgn424s8lyoykhtohbbqa47bfd` FOREIGN KEY (`principal_id`) REFERENCES `campaign_principal_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_user_tbl`
--

LOCK TABLES `campaign_user_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_user_tbl` DISABLE KEYS */;
INSERT INTO `campaign_user_tbl` VALUES ('admin',1,'admin@closure.com','admin','admin','{\"default_org\":\"20\"}',1);
/*!40000 ALTER TABLE `campaign_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_360`
--

DROP TABLE IF EXISTS `customer_360`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_360` (
  `msisdn` bigint(20) NOT NULL,
  `attributes` json DEFAULT NULL,
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_360`
--

LOCK TABLES `customer_360` WRITE;
/*!40000 ALTER TABLE `customer_360` DISABLE KEYS */;
INSERT INTO `customer_360` VALUES (8800049513,'{\"age\": \"35\", \"place\": \"delhi\"}'),(9911260992,'{\"age\": \"35\", \"place\": \"bangalore\"}');
/*!40000 ALTER TABLE `customer_360` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-21 19:41:09
