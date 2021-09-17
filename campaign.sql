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
INSERT INTO `campaign_action_request_tbl` VALUES ('416d534b-2471-4dd4-b797-69f7d3486555',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL),('59d5f422-0c61-44a3-a57c-5290f46b0edc',NULL,'{}','{\"sourceType\":\"CAMPAIGN\",\"sourceName\":\"1\",\"user\":\"\",\"channel\":\"WEB\",\"application\":\"SYSTEM\",\"data\":null}',NULL,4,'{\"id\":\"c1338376-51df-45e2-b712-e2fa602d1d7d\",\"name\":\"Notify User\",\"script\":\"Hello {user_name},\\nPlease charge INR 80 and get 80G data.\",\"options\":{},\"executor\":{\"id\":4,\"name\":\"Email Notification\"},\"variables\":[\"user_name\"],\"description\":\"Send notification\",\"isPrePaymentAction\":false}'),('6d90457a-fbbd-4418-ad57-f84e381625be',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL),('72fc8b7f-0953-4969-a87e-290008fa0cd8',2,'{}','{\"total\":11000,\"bank\":\"INDLTD\",\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,3,'{\"id\":\"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\",\"tnc\":\"Offer Terms and Conditions\\n\\nThis offer (\\\"Offer\\\") is provided by IndusInd Bank Limited (\\\"Bank\\\") facilitated by Amazon Pay (India) Private Limited, and made available on www.airtel.in\",\"name\":\"Bank Offer\",\"options\":{\"discount\":\"10\"},\"executor\":{\"id\":3,\"name\":\"InstantDiscount\"},\"description\":\"10% Instant Discount on Indusind Bank Cards  on a minimum purchase of Rs 10000\",\"isPrePaymentAction\":true}'),('9da78d5e-033b-4191-9ad8-e59d91fadefe',2,'{}','{\"sourceType\":\"REQUEST\",\"sourceName\":\"API\",\"user\":\"1\",\"channel\":\"web\",\"application\":\"safo\",\"data\":{\"total\":5500,\"bank\":\"sbi\"}}',NULL,3,'{\"id\":\"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\",\"tnc\":\"The offer is valid from 5th August 2021 to 30th August 2021 (\\\"Offer Period\\\"), unless revoked or extended by Amazon in its sole discretion, without any prior notice and without liability.\",\"name\":\"10% Discount\",\"options\":{\"max\":\"1250\",\"discount\":\"10\",\"amount.field\":\"cart_value\"},\"executor\":{\"id\":3,\"name\":\"InstantDiscount\"},\"variables\":[\"cart_value\"],\"actionType\":\"price-reduction\",\"description\":\"10% Instant Discount on SBI card  on a minimum purchase of Rs 5000\",\"isPrePaymentAction\":true}'),('9e386aea-e7e7-4010-8c4e-7d5372d199e1',2,'{}','{\"total\":11000,\"bank\":\"INDLTD\",\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,3,'{\"id\":\"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\",\"tnc\":\"Offer Terms and Conditions\\n\\nThis offer (\\\"Offer\\\") is provided by IndusInd Bank Limited (\\\"Bank\\\") facilitated by Amazon Pay (India) Private Limited, and made available on www.airtel.in\",\"name\":\"Bank Offer\",\"options\":{\"discount\":\"10\"},\"executor\":{\"id\":3,\"name\":\"InstantDiscount\"},\"actionType\":\"price-reduction\",\"description\":\"10% Instant Discount on Indusind Bank Cards  on a minimum purchase of Rs 10000\",\"isPrePaymentAction\":true}'),('b15f0930-78b0-4dd2-a33d-265c91ffb006',NULL,'{}','{\"sourceType\":\"CAMPAIGN\",\"sourceName\":\"1\",\"user\":\"\",\"channel\":\"WEB\",\"application\":\"SYSTEM\",\"data\":null}',NULL,4,'{\"id\":\"c1338376-51df-45e2-b712-e2fa602d1d7d\",\"name\":\"Notify User\",\"script\":\"Hello {user_name},\\nPlease charge INR 80 and get 80G data.\",\"options\":{},\"executor\":{\"id\":4,\"name\":\"Email Notification\"},\"variables\":[\"user_name\"],\"description\":\"Send notification\",\"isPrePaymentAction\":false}'),('c81c3714-383a-4324-a04b-5cd994ffa8e3',NULL,'{}','{\"sourceType\":\"CAMPAIGN\",\"sourceName\":\"1\",\"user\":\"\",\"channel\":\"WEB\",\"application\":\"SYSTEM\",\"data\":null}',NULL,4,'{\"id\":\"c1338376-51df-45e2-b712-e2fa602d1d7d\",\"name\":\"Notify User\",\"script\":\"Hello {user_name},\\nPlease charge INR 80 and get 80G data.\",\"options\":{},\"executor\":{\"id\":4,\"name\":\"Email Notification\"},\"variables\":[\"user_name\"],\"description\":\"Send notification\",\"isPrePaymentAction\":false}'),('f3c55ae1-3ca8-4bec-9c90-e8528594f53e',1,'{}','{\"request\":{\"attribute\":{\"id\":\"1\"}}}',NULL,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_action_tbl`
--

LOCK TABLES `campaign_action_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_action_tbl` DISABLE KEYS */;
INSERT INTO `campaign_action_tbl` VALUES (2,'Shopping Coupon','{\"uri\":\"smtps://smtp.gmail.com?username=airtel.campaign.com@gmail.com&password=Abc@1234\"}','com.airtel.closure.app.actions.plugins.CouponPlugin','GRATIFICATION'),(3,'Instant Discount','{\"amountPath\":\"/total\"}','com.airtel.closure.app.actions.plugins.BankInstantDiscountPlugin','PRICE_REDUCTION'),(4,'Email Notification','{\"uri\":\"smtps://smtp.gmail.com?username=airtel.campaign.com@gmail.com&password=Abc@1234\"}','com.airtel.closure.app.actions.plugins.EmailNotificationPlugin','COMMUNICATION');
/*!40000 ALTER TABLE `campaign_action_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_campaign_tbl`
--

DROP TABLE IF EXISTS `campaign_campaign_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_campaign_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actions` json DEFAULT NULL,
  `criteria` json DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_campaign_tbl`
--

LOCK TABLES `campaign_campaign_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_campaign_tbl` DISABLE KEYS */;
INSERT INTO `campaign_campaign_tbl` VALUES (1,'[{\"id\": \"c1338376-51df-45e2-b712-e2fa602d1d7d\", \"name\": \"Notify User\", \"script\": \"Hello {user_name},\\nOn  four recharges of amount min 200 with in 10 days  you will get MYNTRA coupon free!\", \"options\": {\"subject\": \"Promotions\", \"to.field\": \"email\"}, \"executor\": {\"id\": 4, \"name\": \"Email Notification\"}, \"variables\": [\"user_name\", \"email\"], \"description\": \"Send notification\", \"isPrePaymentAction\": false}]','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"3c2e9312-be0e-4876-91c8-8248cb05b798\", \"gate\": \"OR\", \"field\": \"seg_place\", \"operand\": \"delhi\", \"operator\": \"EQ\"}]}]}','DELHI OFFER','Send message to delhi circle'),(2,'[]','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": []}]}','test','sss');
/*!40000 ALTER TABLE `campaign_campaign_tbl` ENABLE KEYS */;
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
INSERT INTO `campaign_customer_three_sixty_tbl` VALUES (1,'{\"place\":\"delhi\",\"age\":\"34\",\"email\":\"abhishek.manocha@airtel.com\",\"name\":\"subhanshu\",\"point\":\"0\"}','shubhanshu'),(2,'{\"place\":\"haryana\",\"age\":\"40\",\"email\":\"abhishek.manocha@airtel.com\",\"name\":\"abhishek\"}','Abhishek');
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
  `default_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_dictionary_tbl`
--

LOCK TABLES `campaign_dictionary_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_dictionary_tbl` DISABLE KEYS */;
INSERT INTO `campaign_dictionary_tbl` VALUES ('bank_id','[\"EQ\"]','{\"request\":\"/bank\"}','2','REQUEST','STRING',NULL),('cart_value','[\"GEQ\",\"LEQ\",\"GT\",\"EQ\",\"LT\"]','{\"request\":\"/total\"}','2','REQUEST','NUMBER','0'),('email','[\"EQ\"]','{\"attribute\":\"email\"}','1','LOCAL','STRING',NULL),('recharge_amount','[\"EQ\",\"GT\",\"LEQ\",\"GEQ\",\"LT\"]','{\"event:1\":\"/amount\"}','2','REQUEST','NUMBER',NULL),('seg_age','[\"LT\",\"EQ\",\"GT\"]','{}',NULL,'SEGMENT','NUMBER',NULL),('seg_place','[\"EQ\"]','{}','2','SEGMENT','STRING','nil'),('total_recharge_10dgt200','[\"GEQ\",\"LEQ\",\"GT\",\"EQ\",\"LT\"]','{\"key\":\"{user}_TOT_RCHRGE_GE_200_10D\"}','4','LOCAL','STRING','0'),('user_age','[\"GT\",\"LT\"]','{\"attribute\":\"age\"}','1','LOCAL','NUMBER','0'),('user_name','[\"EQ\"]','{\"attribute\":\"name\"}','1','LOCAL','STRING',NULL),('user_place','[\"EQ\"]','{\"attribute\":\"place\"}','1','LOCAL','STRING','nil');
/*!40000 ALTER TABLE `campaign_dictionary_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_event_tbl`
--

DROP TABLE IF EXISTS `campaign_event_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_event_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `source_uri` varchar(255) DEFAULT NULL,
  `listener` bigint(20) DEFAULT NULL,
  `script` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `UK_onmywgh0yrmixutkeavanxhw7` (`source_uri`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_event_tbl`
--

LOCK TABLES `campaign_event_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_event_tbl` DISABLE KEYS */;
INSERT INTO `campaign_event_tbl` VALUES (1,'Parse recharge event','Recharge Event','{}',NULL,2,'body=exchange.getIn().getBody();\nevent.setName(\"recharge\");\nevent.setType(\"prepaid\");\nevent.setApplication(json.getText(body,\"/application\"));\nevent.setChannel(json.getText(body,\"/channel\"));\nevent.setUser(json.getText(body,\"/user\"));\nevent.setData(json.get(body,\"/data\"));'),(2,'HappyHour','HappyHour','{}',NULL,3,'event.setName(\"happyhour\");\nevent.setType(\"scheduled\");\nevent.setApplication(\"any\");\nevent.setChannel(\"any\");\nevent.setUser(\"\");\nevent.setData(\"\");');
/*!40000 ALTER TABLE `campaign_event_tbl` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_field_resolver_tbl`
--

LOCK TABLES `campaign_field_resolver_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_field_resolver_tbl` DISABLE KEYS */;
INSERT INTO `campaign_field_resolver_tbl` VALUES (1,'MysqlFieldResolver','{\"user\":\"root\",\"password\":\"root\",\"url\":\"jdbc:mysql://localhost:3306/campaign?useUnicode=true&characterEncoding=UTF-8&verifyServerCertificate=false&useSSL=false&noAccessToProcedureBodies=true\",\"driver\":\"com.mysql.jdbc.Driver\"}','com.airtel.closure.app.resolver.plugins.JdbcFieldResolver','select  JSON_UNQUOTE(JSON_EXTRACT(options,\'$.{attribute}\')) from campaign_customer_three_sixty_tbl where id={user}'),(2,'Frontend Field Resolver','{}','com.airtel.closure.app.resolver.plugins.RequestFieldResolver','{}'),(4,'Store Field Resolver','{}','com.airtel.closure.app.resolver.plugins.StoreFieldResolver','NA');
/*!40000 ALTER TABLE `campaign_field_resolver_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_function_tbl`
--

DROP TABLE IF EXISTS `campaign_function_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_function_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) DEFAULT NULL,
  `listener` bigint(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `script` text,
  `event` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_function_tbl`
--

LOCK TABLES `campaign_function_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_function_tbl` DISABLE KEYS */;
INSERT INTO `campaign_function_tbl` VALUES (1,'Aggregate last rechage 10 days amount > 200',2,'Recharge Aggreation','{}','if (event.data.get(\"amount\").asLong() >=200)\n{  \n  r=   store.increment(event.user+\"_TOT_RCHRGE_GE_200_10D\" , 1) ;\n if (r==1)\n {\n     store.expire(event.user+\"_TOT_RCHRGE_GE_200_10D\" , 10*24*3600) ;\n }\n}',1);
/*!40000 ALTER TABLE `campaign_function_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_listener_tbl`
--

DROP TABLE IF EXISTS `campaign_listener_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_listener_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `source_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `UK_tjruu0vhkdwa32qlkwmtyyg0b` (`source_uri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_listener_tbl`
--

LOCK TABLES `campaign_listener_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_listener_tbl` DISABLE KEYS */;
INSERT INTO `campaign_listener_tbl` VALUES (2,'Listen even from HTTP API PUSH','HTTP API Listener','{}','servlet:///recharge');
/*!40000 ALTER TABLE `campaign_listener_tbl` ENABLE KEYS */;
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
  `offer_type` varchar(255) DEFAULT NULL,
  `discovery` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `UK_mvfu0uoafmwuc6av00i226hy` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_offer_tbl`
--

LOCK TABLES `campaign_offer_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_offer_tbl` DISABLE KEYS */;
INSERT INTO `campaign_offer_tbl` VALUES (2,'SBI10','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"00042127-94e0-4a33-a96e-754a3bd7816e\", \"gate\": \"AND\", \"field\": \"bank_id\", \"operand\": \"SBI\", \"operator\": \"EQ\"}]}]}',10,'SBI CREDIT CARD',1,'[]','2021-08-31 23:59:59.000000','2021-08-01 00:00:00.000000','[{\"id\": \"6e595a72-f0f7-4a8b-a202-8379ec2ffd4d\", \"tnc\": \"The offer is valid from 5th August 2021 to 30th August 2021 (\\\"Offer Period\\\"), unless revoked or extended by Amazon in its sole discretion, without any prior notice and without liability.\", \"name\": \"10% Discount\", \"options\": {\"max\": \"1250\", \"discount\": \"10\", \"amount.field\": \"cart_value\"}, \"executor\": {\"id\": 3, \"name\": \"InstantDiscount\"}, \"variables\": [\"cart_value\"], \"actionType\": \"price-reduction\", \"description\": \"10% Instant Discount on SBI card  on a minimum purchase of Rs 5000\", \"isPrePaymentAction\": true}]',1,'[\"safo\"]','[\"web\"]','SIMPLE','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"96dfafce-6797-4db4-818c-ac8d13498bdb\", \"gate\": \"OR\", \"field\": \"cart_value\", \"operand\": \"5000\", \"operator\": \"GEQ\"}]}]}'),(3,'NA','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"a3c365e6-d02c-44f8-9fde-f0252f986e40\", \"gate\": \"OR\", \"field\": \"recharge_amount\", \"operand\": \"149\", \"operator\": \"EQ\"}]}]}',10,'1GB Data On Recharge',10,'[1]','2021-08-31 23:59:59.000000','2021-08-01 00:00:00.000000','[{\"id\": \"e9c61ba7-c844-408d-beb6-904ac39bc5c6\", \"name\": \"Notify To User\", \"script\": \"Dear {user_name},\\nIn case you need additional 1GB data please do a recharge of amount 16 and get additional 1GB data.\", \"options\": {\"subject\": \"Additional Data\", \"to.field\": \"email\"}, \"executor\": {\"id\": 4, \"name\": \"Email Notification\"}, \"variables\": [\"email\", \"user_name\"], \"description\": \"Send email to user\", \"isPrePaymentAction\": false}]',4,'[\"safo\"]','[\"web\"]','TRIGGERED','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": []}]}'),(5,'FOUR-PE','{\"groups\": [{\"name\": \"CG\", \"label\": \"CG\", \"criterias\": [{\"id\": \"ca25c374-feb4-4438-867d-8e67023c6b14\", \"gate\": \"AND\", \"field\": \"total_recharge_10dgt200\", \"operand\": \"4\", \"operator\": \"EQ\"}, {\"id\": \"da0b5722-ef7f-4076-a490-ca31ded28291\", \"gate\": \"AND\", \"field\": \"user_place\", \"operand\": \"delhi\", \"operator\": \"EQ\"}]}]}',10,'4 Pay Coupon',1,'[1]','2021-08-31 23:59:59.000000','2021-08-01 00:00:00.000000','[{\"id\": \"da1279d0-f452-4fa7-97a2-beed36a9d85d\", \"tnc\": \"MYNTA Coupon\", \"name\": \"Coupon\", \"script\": null, \"options\": {\"body\": \"Dear {user_name}  here is your coupon {coupon}\", \"subject\": \"You Voucher For 4-PAY-COUPON\", \"to.field\": \"email\"}, \"executor\": {\"id\": 2, \"name\": \"Shopping Coupon\"}, \"variables\": [\"email\", \"user_name\"], \"description\": \"MYNTA Coupon\", \"isPrePaymentAction\": false}]',2,'[\"safo\"]','[\"web\"]','TRIGGERED','{\"groups\": []}');
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
-- Table structure for table `campaign_segment_connector_tbl`
--

DROP TABLE IF EXISTS `campaign_segment_connector_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_segment_connector_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `options` text,
  `plugin` varchar(100) DEFAULT NULL,
  `script` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_segment_connector_tbl`
--

LOCK TABLES `campaign_segment_connector_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_segment_connector_tbl` DISABLE KEYS */;
INSERT INTO `campaign_segment_connector_tbl` VALUES (1,'JDBC SEGMENT CONNECTOR','{\"user\":\"root\",\"password\":\"root\",\"url\":\" jdbc:mysql://localhost:3306/campaign?useUnicode=true&characterEncoding=UTF-8&verifyServerCertificate=false&useSSL=false&noAccessToProcedureBodies=true \",\"driver\":\"com.mysql.jdbc.Driver \"}','com.airtel.closure.app.segment.plugin.JdbcSegmentConnectorPlugin','d');
/*!40000 ALTER TABLE `campaign_segment_connector_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_segment_tbl`
--

DROP TABLE IF EXISTS `campaign_segment_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_segment_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `connector` bigint(20) DEFAULT NULL,
  `fields` text,
  `description` text,
  `name` text,
  `query` text,
  `options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_segment_tbl`
--

LOCK TABLES `campaign_segment_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_segment_tbl` DISABLE KEYS */;
INSERT INTO `campaign_segment_tbl` VALUES (4,1,'{\"seg_place\":\"delhi\"}','Delhi Segment','Delhi Segment','select id from campaign_customer_three_sixty_tbl where json_extract(options, \'$.place\')=\'delhi\';','{\"userKey\":\"id\"}');
/*!40000 ALTER TABLE `campaign_segment_tbl` ENABLE KEYS */;
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

-- Dump completed on 2021-09-17 12:24:17
