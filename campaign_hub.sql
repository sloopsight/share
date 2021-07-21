-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: campaign_hub
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
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` varchar(2550) DEFAULT NULL,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
INSERT INTO `ASSOCIATED_POLICY` VALUES ('3917034a-21a8-4eb2-9c7a-f0104821e0f6','2cd90fee-e84a-4e83-8430-18d29011233f');
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('00356fcf-9d30-4ab8-b73d-89fbca37f0ed',NULL,'identity-provider-redirector','master','49bf1eb1-292e-42d5-b17e-a3c3ff6ab962',2,25,_binary '\0',NULL,NULL),('00801ff7-6305-4f60-ba1e-4709dbcbad71',NULL,NULL,'campaign_answer','01e7e185-f448-467d-a1e5-f26dec1c4e31',1,30,_binary '','9e722393-a4ac-4aa0-aecf-a2c1826532b2',NULL),('01d62d7f-4a92-4f00-a799-b112b3995a3a',NULL,NULL,'master','cdc92550-0595-4b9e-b9e6-ff0ec0cc46d8',1,20,_binary '','9b1a3d8f-ffba-45b7-95fc-6686f6f03b64',NULL),('0b0d89be-b5bb-45dd-a67e-74507c26cc68',NULL,'no-cookie-redirect','master','b8b225e4-7afc-4b53-a3bd-184c675ea861',0,10,_binary '\0',NULL,NULL),('0f8ea7e1-0bd2-4812-b075-ab2ddee66ce0',NULL,'registration-profile-action','campaign_answer','4a88e480-70f1-41b8-ba3b-f9cb055d2e82',0,40,_binary '\0',NULL,NULL),('0f8fa50d-f9b9-4111-9645-1c972d7a1bad',NULL,'auth-spnego','campaign_answer','39b46010-f25c-432e-8aff-1f31a9bff5b8',3,40,_binary '\0',NULL,NULL),('10fb8e05-8136-43b8-9c4f-7a763f0c6af0',NULL,NULL,'campaign_answer','3a76c9cf-c0bf-4f94-bf8c-e6bd41b53374',2,20,_binary '','ba6f14ad-caa9-4ec9-9dec-d45809ca7a55',NULL),('116eb879-3e8d-4b95-b7bd-292784a4cf92',NULL,'registration-recaptcha-action','master','49f933bc-f544-4303-9b53-28d0b5fc2697',3,60,_binary '\0',NULL,NULL),('14ef74a1-7189-4923-bbf4-c94a7ca81c3d',NULL,'client-x509','master','475c48aa-fc6b-4041-b54d-e077361b9056',2,40,_binary '\0',NULL,NULL),('1ba0dcb8-56fc-4265-b604-adc340a39d38',NULL,'conditional-user-configured','campaign_answer','4c7d50f3-b0c8-41bd-b15c-f80c90d7ea2c',0,10,_binary '\0',NULL,NULL),('1d883ffa-2ee4-4954-961b-6c27cead42ac',NULL,'client-secret-jwt','master','475c48aa-fc6b-4041-b54d-e077361b9056',2,30,_binary '\0',NULL,NULL),('21fad2f5-c0b2-4a2a-9a8c-1f62691606ad',NULL,'conditional-user-configured','campaign_answer','9e722393-a4ac-4aa0-aecf-a2c1826532b2',0,10,_binary '\0',NULL,NULL),('29467901-47fe-424d-b8f8-8835e195dd00',NULL,'idp-email-verification','campaign_answer','1a56bce5-2c19-43c6-b6ca-4888104d5d0d',2,10,_binary '\0',NULL,NULL),('2a1fd093-8a0f-4bee-9af7-f3e0145f1b64',NULL,'client-secret','master','475c48aa-fc6b-4041-b54d-e077361b9056',2,10,_binary '\0',NULL,NULL),('2b282e44-293b-4b31-b789-34a17c2bb69f',NULL,'auth-otp-form','campaign_answer','84b37d9d-0674-4064-861a-e427ae6df1cf',0,20,_binary '\0',NULL,NULL),('2c54b4d1-b6ee-48a0-a0df-67c024557478',NULL,'direct-grant-validate-otp','campaign_answer','9e722393-a4ac-4aa0-aecf-a2c1826532b2',0,20,_binary '\0',NULL,NULL),('3371c58b-228a-4397-bb0c-4c6b6cf3f80b',NULL,NULL,'master','04b4e51e-9164-42f2-8494-d7914538abcd',1,40,_binary '','1329edf4-1354-4e6b-bbe3-b967e1148ac1',NULL),('353b4d08-15a3-417a-a082-20b22b4f4a61',NULL,NULL,'master','4162a3ac-5182-4966-9e54-dea13be544af',0,20,_binary '','bee320c4-d236-44ad-b37e-ae5241a87000',NULL),('3652975e-0e7a-4f7c-bb7d-50eca54e1cfb',NULL,'reset-credentials-choose-user','master','04b4e51e-9164-42f2-8494-d7914538abcd',0,10,_binary '\0',NULL,NULL),('40964a49-82b0-40a8-ad92-a326d4fcab15',NULL,'identity-provider-redirector','campaign_answer','ef04e473-4b05-4db9-90df-7d29ec423551',2,25,_binary '\0',NULL,NULL),('461b0e3b-e8c2-459a-b989-dc067a7eaedc',NULL,'auth-spnego','master','d74b6f96-8768-4bfd-8137-3795f3341e41',3,30,_binary '\0',NULL,NULL),('462ba1b6-8c38-4674-8867-9d68950188ef',NULL,NULL,'master','a8447885-dc21-42e8-8b1e-76d959462f39',1,20,_binary '','07b4c252-cfd1-4132-8af5-0509ec53c2a7',NULL),('4a20fff4-cd69-425a-b255-d4c288681c08',NULL,'idp-review-profile','campaign_answer','91bd3675-b681-4ce7-97b5-a9ab0cd707e1',0,10,_binary '\0',NULL,'0b291259-65ad-4ada-a82b-eaa2bb5bf1c7'),('4c9a9024-1fb8-4ada-961b-4dd011539b33',NULL,'direct-grant-validate-password','campaign_answer','01e7e185-f448-467d-a1e5-f26dec1c4e31',0,20,_binary '\0',NULL,NULL),('4d35a261-6d20-437e-a9db-f7d22edaa7a5',NULL,'idp-review-profile','master','4162a3ac-5182-4966-9e54-dea13be544af',0,10,_binary '\0',NULL,'4a8156b3-3899-434c-8ed8-1ff995cd3e4a'),('4e91260c-d68e-4672-b17d-a17a676afe9c',NULL,NULL,'master','49bf1eb1-292e-42d5-b17e-a3c3ff6ab962',2,30,_binary '','cdc92550-0595-4b9e-b9e6-ff0ec0cc46d8',NULL),('506c352b-07fb-430c-87ec-95aca0b5a6bf',NULL,'client-secret','campaign_answer','bce0ceb0-646b-4715-9d2c-059755b49dcd',2,10,_binary '\0',NULL,NULL),('52274d9e-86b5-4010-b07e-c75b97ea7f32',NULL,'direct-grant-validate-username','master','9e420df9-2d26-4955-b7de-46540a6a8b5a',0,10,_binary '\0',NULL,NULL),('54a093a9-ef02-4c7a-93ac-0a72dabf8c89',NULL,'reset-otp','master','1329edf4-1354-4e6b-bbe3-b967e1148ac1',0,20,_binary '\0',NULL,NULL),('5566a189-9ccc-478a-8287-d1d04637e63e',NULL,'auth-username-password-form','campaign_answer','8de55ca0-b30e-4a22-a7bf-f4ebbed0d816',0,10,_binary '\0',NULL,NULL),('5935a063-63d9-4e7f-a820-89d60bebc7d9',NULL,'registration-page-form','master','615f355d-4be7-4eac-8a1a-43f848fe39ab',0,10,_binary '','49f933bc-f544-4303-9b53-28d0b5fc2697',NULL),('5ac01169-20a7-44e3-8522-35635eec6a0d',NULL,NULL,'campaign_answer','c84d7c44-e7f0-41dc-8d47-0e5c66929aa7',1,20,_binary '','14b99b11-fb44-4915-bfda-5635e2bdde30',NULL),('5af0f93b-fa59-4fbe-ab63-f1efbad9f2e8',NULL,'basic-auth','master','d74b6f96-8768-4bfd-8137-3795f3341e41',0,10,_binary '\0',NULL,NULL),('5db5d5bf-d5f1-47e3-b73c-356172bde811',NULL,'auth-otp-form','campaign_answer','14b99b11-fb44-4915-bfda-5635e2bdde30',0,20,_binary '\0',NULL,NULL),('5ec0a729-01bd-4419-a136-efb1e9bad0ec',NULL,'auth-otp-form','master','07b4c252-cfd1-4132-8af5-0509ec53c2a7',0,20,_binary '\0',NULL,NULL),('676072b0-8d39-4c9b-98c9-c5ed15bdef4d',NULL,'conditional-user-configured','campaign_answer','84b37d9d-0674-4064-861a-e427ae6df1cf',0,10,_binary '\0',NULL,NULL),('68de0f17-7faf-48b9-aeb4-205c634f1a11',NULL,'idp-email-verification','master','14bc38a8-fbf0-4da7-8cd8-b3b06e461522',2,10,_binary '\0',NULL,NULL),('6b9292f7-c85c-414b-9fec-c6163a8608c6',NULL,'idp-username-password-form','campaign_answer','c84d7c44-e7f0-41dc-8d47-0e5c66929aa7',0,10,_binary '\0',NULL,NULL),('6f1b4764-db9c-4409-9b20-0cc87d3ac8df',NULL,'registration-password-action','campaign_answer','4a88e480-70f1-41b8-ba3b-f9cb055d2e82',0,50,_binary '\0',NULL,NULL),('70ee5cd6-316c-4a33-a949-db0f5b6823fb',NULL,NULL,'master','14bc38a8-fbf0-4da7-8cd8-b3b06e461522',2,20,_binary '','a8447885-dc21-42e8-8b1e-76d959462f39',NULL),('7263271d-777e-4145-9ee5-007b0b921385',NULL,'auth-spnego','master','49bf1eb1-292e-42d5-b17e-a3c3ff6ab962',3,20,_binary '\0',NULL,NULL),('79232aa6-2af5-4995-b329-07f7d38f1fdf',NULL,'reset-password','campaign_answer','8abaabc2-f71a-4946-8ffb-938b050696b3',0,30,_binary '\0',NULL,NULL),('79cb6e0f-9629-4cbf-b1e0-6c8998dcbf80',NULL,'direct-grant-validate-password','master','9e420df9-2d26-4955-b7de-46540a6a8b5a',0,20,_binary '\0',NULL,NULL),('79d60302-6141-4e7c-8b16-d297d5522fee',NULL,NULL,'campaign_answer','91bd3675-b681-4ce7-97b5-a9ab0cd707e1',0,20,_binary '','3a76c9cf-c0bf-4f94-bf8c-e6bd41b53374',NULL),('7a8eb4c0-1a6f-4f74-92e6-2c376c0db2f8',NULL,NULL,'campaign_answer','8de55ca0-b30e-4a22-a7bf-f4ebbed0d816',1,20,_binary '','84b37d9d-0674-4064-861a-e427ae6df1cf',NULL),('7e67f7b0-4609-4f33-8edc-2ca7af536b07',NULL,'registration-profile-action','master','49f933bc-f544-4303-9b53-28d0b5fc2697',0,40,_binary '\0',NULL,NULL),('8199b75b-bd38-4c42-83cf-d79dfbdb5c3f',NULL,'registration-user-creation','campaign_answer','4a88e480-70f1-41b8-ba3b-f9cb055d2e82',0,20,_binary '\0',NULL,NULL),('83f2ec27-8d65-4faa-bcd0-07d3568c2b1e',NULL,'direct-grant-validate-otp','master','c1cd4de5-4aa4-4c2d-b911-c65ea8ddd389',0,20,_binary '\0',NULL,NULL),('8401771c-2119-4f52-8390-262bf9aad73a',NULL,'auth-cookie','campaign_answer','ef04e473-4b05-4db9-90df-7d29ec423551',2,10,_binary '\0',NULL,NULL),('8481705e-bd00-4c20-a92e-3db490154a23',NULL,'reset-password','master','04b4e51e-9164-42f2-8494-d7914538abcd',0,30,_binary '\0',NULL,NULL),('89314efd-7b18-4bb8-8f6c-71b50b0488b3',NULL,'client-secret-jwt','campaign_answer','bce0ceb0-646b-4715-9d2c-059755b49dcd',2,30,_binary '\0',NULL,NULL),('895a22af-a1df-4484-beae-6083096e423e',NULL,'registration-recaptcha-action','campaign_answer','4a88e480-70f1-41b8-ba3b-f9cb055d2e82',3,60,_binary '\0',NULL,NULL),('89895d80-f32f-465e-8d48-bd038aee7c74',NULL,'conditional-user-configured','master','07b4c252-cfd1-4132-8af5-0509ec53c2a7',0,10,_binary '\0',NULL,NULL),('8f01d038-7f78-4544-8e07-61fdfdf77428',NULL,NULL,'master','17397f83-dca7-46f7-8889-2c4d22467365',0,20,_binary '','14bc38a8-fbf0-4da7-8cd8-b3b06e461522',NULL),('91b4de30-efde-4387-910d-424b22326982',NULL,'basic-auth-otp','campaign_answer','39b46010-f25c-432e-8aff-1f31a9bff5b8',3,30,_binary '\0',NULL,NULL),('92684e0e-5152-43e6-aa56-de476df41296',NULL,'conditional-user-configured','master','c1cd4de5-4aa4-4c2d-b911-c65ea8ddd389',0,10,_binary '\0',NULL,NULL),('9983cf7f-44df-433c-8d74-ad0ddc939483',NULL,'client-jwt','master','475c48aa-fc6b-4041-b54d-e077361b9056',2,20,_binary '\0',NULL,NULL),('99d2f6fc-211f-4b02-9f49-675a35479ce6',NULL,'idp-confirm-link','master','17397f83-dca7-46f7-8889-2c4d22467365',0,10,_binary '\0',NULL,NULL),('9bae70dc-f66a-4706-81cd-1fc52aef8108',NULL,NULL,'campaign_answer','8abaabc2-f71a-4946-8ffb-938b050696b3',1,40,_binary '','4c7d50f3-b0c8-41bd-b15c-f80c90d7ea2c',NULL),('9e5c3929-8372-4a5e-bbc4-1ea0990c36e1',NULL,'registration-password-action','master','49f933bc-f544-4303-9b53-28d0b5fc2697',0,50,_binary '\0',NULL,NULL),('9f6e6468-fb57-4268-87c3-859025cbf436',NULL,NULL,'master','9e420df9-2d26-4955-b7de-46540a6a8b5a',1,30,_binary '','c1cd4de5-4aa4-4c2d-b911-c65ea8ddd389',NULL),('a1bc8b37-120d-4943-ae99-00b36c60a657',NULL,'conditional-user-configured','master','1329edf4-1354-4e6b-bbe3-b967e1148ac1',0,10,_binary '\0',NULL,NULL),('a5d73c8f-608f-459c-ba32-9de6864b28aa',NULL,'idp-username-password-form','master','a8447885-dc21-42e8-8b1e-76d959462f39',0,10,_binary '\0',NULL,NULL),('a669bb68-15b4-49d4-84b3-a35a812811ab',NULL,'auth-cookie','master','49bf1eb1-292e-42d5-b17e-a3c3ff6ab962',2,10,_binary '\0',NULL,NULL),('a70e08dc-fc7a-4bc1-a037-4ed7c0a8c2c6',NULL,'reset-credentials-choose-user','campaign_answer','8abaabc2-f71a-4946-8ffb-938b050696b3',0,10,_binary '\0',NULL,NULL),('a9440366-c93a-401e-913e-4d63b475dd54',NULL,NULL,'master','bee320c4-d236-44ad-b37e-ae5241a87000',2,20,_binary '','17397f83-dca7-46f7-8889-2c4d22467365',NULL),('ac4e2e4b-18fa-4a2f-b0ff-4bf84d84f2ea',NULL,'docker-http-basic-authenticator','campaign_answer','b36495e2-c131-429c-aa95-4e36be83f922',0,10,_binary '\0',NULL,NULL),('b015a114-eb16-4f05-99d2-54e492d0746d',NULL,'basic-auth','campaign_answer','39b46010-f25c-432e-8aff-1f31a9bff5b8',0,20,_binary '\0',NULL,NULL),('b26406ae-3126-464f-b125-932580677089',NULL,'idp-create-user-if-unique','campaign_answer','3a76c9cf-c0bf-4f94-bf8c-e6bd41b53374',2,10,_binary '\0',NULL,'3c1aa183-15a9-41c4-ae17-7d2f304d3b51'),('b7463e8e-2225-48b4-8b63-b0939320c23b',NULL,'no-cookie-redirect','campaign_answer','39b46010-f25c-432e-8aff-1f31a9bff5b8',0,10,_binary '\0',NULL,NULL),('b9011963-e129-48b3-99f2-540ec1999132',NULL,'client-jwt','campaign_answer','bce0ceb0-646b-4715-9d2c-059755b49dcd',2,20,_binary '\0',NULL,NULL),('be147736-cfdf-4f3b-8c0f-6fd239e0781e',NULL,'registration-page-form','campaign_answer','e070b3f6-6b15-49da-a5fe-7bcf4bb71c63',0,10,_binary '','4a88e480-70f1-41b8-ba3b-f9cb055d2e82',NULL),('c0584a82-fa5d-4df0-8c36-1147ead4333a',NULL,NULL,'campaign_answer','ba6f14ad-caa9-4ec9-9dec-d45809ca7a55',0,20,_binary '','1a56bce5-2c19-43c6-b6ca-4888104d5d0d',NULL),('c0af0e61-a7a7-4fdc-ac0d-d879023c74c8',NULL,'conditional-user-configured','master','9b1a3d8f-ffba-45b7-95fc-6686f6f03b64',0,10,_binary '\0',NULL,NULL),('c29925b8-0b69-4202-b455-c745102efe8b',NULL,'basic-auth-otp','master','d74b6f96-8768-4bfd-8137-3795f3341e41',3,20,_binary '\0',NULL,NULL),('c6a13205-7de2-4ae1-b8db-9e2d197d6f44',NULL,NULL,'campaign_answer','1a56bce5-2c19-43c6-b6ca-4888104d5d0d',2,20,_binary '','c84d7c44-e7f0-41dc-8d47-0e5c66929aa7',NULL),('c719ea20-b1ea-4dd0-9bc5-0dad57ec8720',NULL,'idp-create-user-if-unique','master','bee320c4-d236-44ad-b37e-ae5241a87000',2,10,_binary '\0',NULL,'cc1f401b-6538-4c7f-b1f4-111500a5818e'),('ce0cc1f5-e671-46d7-b0f8-74f8287ffad4',NULL,'auth-otp-form','master','9b1a3d8f-ffba-45b7-95fc-6686f6f03b64',0,20,_binary '\0',NULL,NULL),('d3913ada-71ba-42c8-bec5-52ed9c0aeb22',NULL,'reset-credential-email','campaign_answer','8abaabc2-f71a-4946-8ffb-938b050696b3',0,20,_binary '\0',NULL,NULL),('d4a7a62e-698e-4258-905b-6cf77271ec11',NULL,'conditional-user-configured','campaign_answer','14b99b11-fb44-4915-bfda-5635e2bdde30',0,10,_binary '\0',NULL,NULL),('dbaf74aa-8de4-48c9-a395-9ca0c5bf951e',NULL,NULL,'campaign_answer','ef04e473-4b05-4db9-90df-7d29ec423551',2,30,_binary '','8de55ca0-b30e-4a22-a7bf-f4ebbed0d816',NULL),('dc9f12df-0894-4e61-8317-417017e044f7',NULL,'direct-grant-validate-username','campaign_answer','01e7e185-f448-467d-a1e5-f26dec1c4e31',0,10,_binary '\0',NULL,NULL),('df73bdc5-193c-4cdd-8366-d974a6f81660',NULL,'http-basic-authenticator','master','1fedf08e-7b41-492e-85b3-dc91065bbb80',0,10,_binary '\0',NULL,NULL),('e49d9682-8f2a-4b3c-b96d-0677781f90bd',NULL,'idp-confirm-link','campaign_answer','ba6f14ad-caa9-4ec9-9dec-d45809ca7a55',0,10,_binary '\0',NULL,NULL),('e9fc802d-25ab-4cd4-94c5-0fcad968ca0e',NULL,'http-basic-authenticator','campaign_answer','ea507176-0036-4214-8cf9-90847c67d7bd',0,10,_binary '\0',NULL,NULL),('ea102ced-24e3-4039-aa00-4626deda196d',NULL,'auth-spnego','campaign_answer','ef04e473-4b05-4db9-90df-7d29ec423551',3,20,_binary '\0',NULL,NULL),('edbda47a-aa28-4528-a7c4-0b06c24bd052',NULL,'client-x509','campaign_answer','bce0ceb0-646b-4715-9d2c-059755b49dcd',2,40,_binary '\0',NULL,NULL),('f2ed4985-52f6-4644-b9c5-64a62112bf2c',NULL,'docker-http-basic-authenticator','master','1b27a2ed-1cb7-47be-a0cd-93bcb46d26d2',0,10,_binary '\0',NULL,NULL),('f79df99a-e511-45bb-bb0e-0f9189c4511c',NULL,'reset-otp','campaign_answer','4c7d50f3-b0c8-41bd-b15c-f80c90d7ea2c',0,20,_binary '\0',NULL,NULL),('f8dd2ed1-fa74-4499-a577-f86310c47ff3',NULL,'registration-user-creation','master','49f933bc-f544-4303-9b53-28d0b5fc2697',0,20,_binary '\0',NULL,NULL),('f9b83a23-dcb8-4eab-a208-ec156dbbf223',NULL,NULL,'master','b8b225e4-7afc-4b53-a3bd-184c675ea861',0,20,_binary '','d74b6f96-8768-4bfd-8137-3795f3341e41',NULL),('fee3df47-970d-4e56-bcce-e224363ac6f6',NULL,'auth-username-password-form','master','cdc92550-0595-4b9e-b9e6-ff0ec0cc46d8',0,10,_binary '\0',NULL,NULL),('ff1ff4ef-1212-43ee-af13-61020f9520d6',NULL,'reset-credential-email','master','04b4e51e-9164-42f2-8494-d7914538abcd',0,20,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('01e7e185-f448-467d-a1e5-f26dec1c4e31','direct grant','OpenID Connect Resource Owner Grant','campaign_answer','basic-flow',_binary '',_binary ''),('04b4e51e-9164-42f2-8494-d7914538abcd','reset credentials','Reset credentials for a user if they forgot their password or something','master','basic-flow',_binary '',_binary ''),('07b4c252-cfd1-4132-8af5-0509ec53c2a7','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('1329edf4-1354-4e6b-bbe3-b967e1148ac1','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','master','basic-flow',_binary '\0',_binary ''),('14b99b11-fb44-4915-bfda-5635e2bdde30','Verify Existing Account by Re-authentication - auth-otp-form - Conditional','Flow to determine if the auth-otp-form authenticator should be used or not.','campaign_answer','basic-flow',_binary '\0',_binary ''),('14bc38a8-fbf0-4da7-8cd8-b3b06e461522','Account verification options','Method with which to verity the existing account','master','basic-flow',_binary '\0',_binary ''),('17397f83-dca7-46f7-8889-2c4d22467365','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','master','basic-flow',_binary '\0',_binary ''),('1a56bce5-2c19-43c6-b6ca-4888104d5d0d','Handle Existing Account - Alternatives - 0','Subflow of Handle Existing Account with alternative executions','campaign_answer','basic-flow',_binary '\0',_binary ''),('1b27a2ed-1cb7-47be-a0cd-93bcb46d26d2','docker auth','Used by Docker clients to authenticate against the IDP','master','basic-flow',_binary '',_binary ''),('1fedf08e-7b41-492e-85b3-dc91065bbb80','saml ecp','SAML ECP Profile Authentication Flow','master','basic-flow',_binary '',_binary ''),('39b46010-f25c-432e-8aff-1f31a9bff5b8','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','campaign_answer','basic-flow',_binary '',_binary ''),('3a76c9cf-c0bf-4f94-bf8c-e6bd41b53374','first broker login - Alternatives - 0','Subflow of first broker login with alternative executions','campaign_answer','basic-flow',_binary '\0',_binary ''),('4162a3ac-5182-4966-9e54-dea13be544af','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','master','basic-flow',_binary '',_binary ''),('475c48aa-fc6b-4041-b54d-e077361b9056','clients','Base authentication for clients','master','client-flow',_binary '',_binary ''),('49bf1eb1-292e-42d5-b17e-a3c3ff6ab962','browser','browser based authentication','master','basic-flow',_binary '',_binary ''),('49f933bc-f544-4303-9b53-28d0b5fc2697','registration form','registration form','master','form-flow',_binary '\0',_binary ''),('4a88e480-70f1-41b8-ba3b-f9cb055d2e82','registration form','registration form','campaign_answer','form-flow',_binary '\0',_binary ''),('4c7d50f3-b0c8-41bd-b15c-f80c90d7ea2c','reset credentials - reset-otp - Conditional','Flow to determine if the reset-otp authenticator should be used or not.','campaign_answer','basic-flow',_binary '\0',_binary ''),('615f355d-4be7-4eac-8a1a-43f848fe39ab','registration','registration flow','master','basic-flow',_binary '',_binary ''),('84b37d9d-0674-4064-861a-e427ae6df1cf','forms - auth-otp-form - Conditional','Flow to determine if the auth-otp-form authenticator should be used or not.','campaign_answer','basic-flow',_binary '\0',_binary ''),('8abaabc2-f71a-4946-8ffb-938b050696b3','reset credentials','Reset credentials for a user if they forgot their password or something','campaign_answer','basic-flow',_binary '',_binary ''),('8de55ca0-b30e-4a22-a7bf-f4ebbed0d816','forms','Username, password, otp and other auth forms.','campaign_answer','basic-flow',_binary '\0',_binary ''),('91bd3675-b681-4ce7-97b5-a9ab0cd707e1','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','campaign_answer','basic-flow',_binary '',_binary ''),('9b1a3d8f-ffba-45b7-95fc-6686f6f03b64','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('9e420df9-2d26-4955-b7de-46540a6a8b5a','direct grant','OpenID Connect Resource Owner Grant','master','basic-flow',_binary '',_binary ''),('9e722393-a4ac-4aa0-aecf-a2c1826532b2','direct grant - direct-grant-validate-otp - Conditional','Flow to determine if the direct-grant-validate-otp authenticator should be used or not.','campaign_answer','basic-flow',_binary '\0',_binary ''),('a8447885-dc21-42e8-8b1e-76d959462f39','Verify Existing Account by Re-authentication','Reauthentication of existing account','master','basic-flow',_binary '\0',_binary ''),('b36495e2-c131-429c-aa95-4e36be83f922','docker auth','Used by Docker clients to authenticate against the IDP','campaign_answer','basic-flow',_binary '',_binary ''),('b8b225e4-7afc-4b53-a3bd-184c675ea861','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','master','basic-flow',_binary '',_binary ''),('ba6f14ad-caa9-4ec9-9dec-d45809ca7a55','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','campaign_answer','basic-flow',_binary '\0',_binary ''),('bce0ceb0-646b-4715-9d2c-059755b49dcd','clients','Base authentication for clients','campaign_answer','client-flow',_binary '',_binary ''),('bee320c4-d236-44ad-b37e-ae5241a87000','User creation or linking','Flow for the existing/non-existing user alternatives','master','basic-flow',_binary '\0',_binary ''),('c1cd4de5-4aa4-4c2d-b911-c65ea8ddd389','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('c84d7c44-e7f0-41dc-8d47-0e5c66929aa7','Verify Existing Account by Re-authentication','Reauthentication of existing account','campaign_answer','basic-flow',_binary '\0',_binary ''),('cdc92550-0595-4b9e-b9e6-ff0ec0cc46d8','forms','Username, password, otp and other auth forms.','master','basic-flow',_binary '\0',_binary ''),('d74b6f96-8768-4bfd-8137-3795f3341e41','Authentication Options','Authentication options.','master','basic-flow',_binary '\0',_binary ''),('e070b3f6-6b15-49da-a5fe-7bcf4bb71c63','registration','registration flow','campaign_answer','basic-flow',_binary '',_binary ''),('ea507176-0036-4214-8cf9-90847c67d7bd','saml ecp','SAML ECP Profile Authentication Flow','campaign_answer','basic-flow',_binary '',_binary ''),('ef04e473-4b05-4db9-90df-7d29ec423551','browser','browser based authentication','campaign_answer','basic-flow',_binary '',_binary '');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('0b291259-65ad-4ada-a82b-eaa2bb5bf1c7','review profile config','campaign_answer'),('3c1aa183-15a9-41c4-ae17-7d2f304d3b51','create unique user config','campaign_answer'),('4a8156b3-3899-434c-8ed8-1ff995cd3e4a','review profile config','master'),('cc1f401b-6538-4c7f-b1f4-111500a5818e','create unique user config','master');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('0b291259-65ad-4ada-a82b-eaa2bb5bf1c7','missing','update.profile.on.first.login'),('3c1aa183-15a9-41c4-ae17-7d2f304d3b51','false','require.password.update.after.registration'),('4a8156b3-3899-434c-8ed8-1ff995cd3e4a','missing','update.profile.on.first.login'),('cc1f401b-6538-4c7f-b1f4-111500a5818e','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT '0',
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`),
  CONSTRAINT `FK_P56CTINXXB9GSK57FO49F9TAC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('10638de7-6a20-4ba3-988d-8b34a3e5aabd',_binary '',_binary '\0','account-console',0,_binary '','3136be8f-a869-4dab-88b3-7efbc9d17e2b','/realms/master/account/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '',_binary '\0','account',0,_binary '\0','**********','/realms/campaign_answer/account/',_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('13d76feb-d762-4409-bb84-7a75bc395a61',_binary '',_binary '\0','admin-cli',0,_binary '','**********',NULL,_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '',_binary '','master-realm',0,_binary '\0','7132cbc5-ffeb-43d1-8c5f-c5682407a596',NULL,_binary '',NULL,_binary '\0','master',NULL,0,_binary '\0',_binary '\0','master Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('32f4846c-581a-4fce-b144-0086f6d2b82d',_binary '',_binary '\0','admin-cli',0,_binary '','b3a838dd-ad71-4829-86bc-dd56c6231016',NULL,_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('4b9609f0-48d1-4e71-9381-2ecec08616f9',_binary '',_binary '\0','broker',0,_binary '\0','**********',NULL,_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa',_binary '',_binary '\0','broker',0,_binary '\0','a2a70b9a-1346-440b-89ac-ea45bc340cec',NULL,_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('6a4bfbd0-576d-4778-af56-56f876647355',_binary '',_binary '\0','realm-management',0,_binary '\0','**********',NULL,_binary '',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '',_binary '','campaign_answer-realm',0,_binary '\0','7ed037d9-d0cb-4636-8ac4-23a445729ef6',NULL,_binary '',NULL,_binary '\0','master',NULL,0,_binary '\0',_binary '\0','campaign_answer Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('8e358d2f-b085-4243-8e6e-c175431e5eeb',_binary '',_binary '\0','security-admin-console',0,_binary '','**********','/admin/campaign_answer/console/',_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '',_binary '\0','account',0,_binary '\0','6cd4e968-a373-4859-8bb7-b626c6680987','/realms/master/account/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07',_binary '',_binary '\0','security-admin-console',0,_binary '','692e09f1-7153-4e2f-9c74-12f33edceaec','/admin/master/console/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed',_binary '',_binary '\0','account-console',0,_binary '','c158b0ba-2f54-4ece-aa07-862faef2c88a','/realms/campaign_answer/account/',_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32',_binary '',_binary '','newClient',0,_binary '\0','newClientSecret',NULL,_binary '\0',NULL,_binary '\0','campaign_answer','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '',_binary '',_binary '\0'),('f4d2b23d-17e3-4479-8582-4e44896f030a',_binary '',_binary '','campaign-client',0,_binary '\0','e5328cf2-ed12-4885-9b1c-da84a86abc9a','http://localhost:7771',_binary '\0','http://localhost:7771',_binary '\0','campaign_answer','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret','http://localhost:7771',NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('10638de7-6a20-4ba3-988d-8b34a3e5aabd','S256','pkce.code.challenge.method'),('8e358d2f-b085-4243-8e6e-c175431e5eeb','S256','pkce.code.challenge.method'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','S256','pkce.code.challenge.method'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','S256','pkce.code.challenge.method'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','display.on.consent.screen'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','exclude.session.state.from.auth.response'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.assertion.signature'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.authnstatement'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.client.signature'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.encrypt'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.force.post.binding'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.multivalued.roles'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.onetimeuse.condition'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.server.signature'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml.server.signature.keyinfo.ext'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','saml_force_name_id_format'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','false','tls.client.certificate.bound.access.tokens'),('f4d2b23d-17e3-4479-8582-4e44896f030a','3600','access.token.lifespan'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','backchannel.logout.revoke.offline.tokens'),('f4d2b23d-17e3-4479-8582-4e44896f030a','true','backchannel.logout.session.required'),('f4d2b23d-17e3-4479-8582-4e44896f030a','3600','client.session.idle.timeout'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','client_credentials.use_refresh_token'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','display.on.consent.screen'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','exclude.session.state.from.auth.response'),('f4d2b23d-17e3-4479-8582-4e44896f030a',NULL,'request.uris'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.assertion.signature'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.authnstatement'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.client.signature'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.encrypt'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.force.post.binding'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.multivalued.roles'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.onetimeuse.condition'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.server.signature'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml.server.signature.keyinfo.ext'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','saml_force_name_id_format'),('f4d2b23d-17e3-4479-8582-4e44896f030a','false','tls.client.certificate.bound.access.tokens');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_DEFAULT_ROLES`
--

DROP TABLE IF EXISTS `CLIENT_DEFAULT_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_DEFAULT_ROLES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  UNIQUE KEY `UK_8AELWNIBJI49AVXSRTUF6XJOW` (`ROLE_ID`),
  KEY `IDX_CLIENT_DEF_ROLES_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_NUILTS7KLWQW2H8M2B5JOYTKY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_DEFAULT_ROLES`
--

LOCK TABLES `CLIENT_DEFAULT_ROLES` WRITE;
/*!40000 ALTER TABLE `CLIENT_DEFAULT_ROLES` DISABLE KEYS */;
INSERT INTO `CLIENT_DEFAULT_ROLES` VALUES ('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','8daa8096-d14e-4d1c-ad1f-83f822016aa1'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','aed18201-2433-4998-8fa3-0979b0b31c10'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','b50188df-81bc-4fde-b9f1-c47d082442da'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','c08688cf-ac66-4027-82d0-b81f6bf98ff2');
/*!40000 ALTER TABLE `CLIENT_DEFAULT_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`),
  CONSTRAINT `FK_REALM_CLI_SCOPE` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('111ed87a-5fd3-4cee-96df-8dbfb88cfdc0','roles','campaign_answer','OpenID Connect scope for add user roles to the access token','openid-connect'),('18e141bf-dabe-4858-879c-dbc439cdead4','role_list','campaign_answer','SAML role list','saml'),('44804d1e-5554-4d14-bc8e-cf9f86f3c0ae','phone','master','OpenID Connect built-in scope: phone','openid-connect'),('51d49314-b511-43e0-9258-bfb873758a78','web-origins','campaign_answer','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('52294b51-a394-4142-a21a-6bcce020adfa','offline_access','master','OpenID Connect built-in scope: offline_access','openid-connect'),('569b3d44-4ecd-4768-a58c-70ff38f4b4fe','offline_access','campaign_answer','OpenID Connect built-in scope: offline_access','openid-connect'),('591bb26a-daf5-4fed-91f4-888894897a54','roles','master','OpenID Connect scope for add user roles to the access token','openid-connect'),('59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74','profile','master','OpenID Connect built-in scope: profile','openid-connect'),('59ed14b1-1edd-424b-aa88-3838d902e558','web-origins','master','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('77c7e29d-1a22-4419-bbfb-4a62bb033449','address','campaign_answer','OpenID Connect built-in scope: address','openid-connect'),('a3e7b19d-df6c-437e-9eea-06fec1becb2f','phone','campaign_answer','OpenID Connect built-in scope: phone','openid-connect'),('b3526ac1-10e2-4344-8621-9c5a0853e97a','email','campaign_answer','OpenID Connect built-in scope: email','openid-connect'),('ba8c9950-fd0b-4434-8be6-b58456d7b6d4','profile','campaign_answer','OpenID Connect built-in scope: profile','openid-connect'),('c1a2eb23-25c6-4be7-a791-bbdca99c83f7','read','campaign_answer',NULL,'openid-connect'),('c3e253fb-7361-47cf-9d4a-86245686fdf1','write','campaign_answer',NULL,'openid-connect'),('c658ae14-e96a-4745-b21b-2ed5c4c63f5f','microprofile-jwt','campaign_answer','Microprofile - JWT built-in scope','openid-connect'),('c65e7252-d0aa-4a1d-b053-8de2e74de612','microprofile-jwt','master','Microprofile - JWT built-in scope','openid-connect'),('e10496d1-1abf-4abd-bbdf-bb13d4b73cf9','email','master','OpenID Connect built-in scope: email','openid-connect'),('f0a62b0d-70c7-494d-ad7f-8342032c5d53','address','master','OpenID Connect built-in scope: address','openid-connect'),('f7e54aba-9cb5-4b44-b49b-c820fe3de9a3','role_list','master','SAML role list','saml');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('111ed87a-5fd3-4cee-96df-8dbfb88cfdc0','${rolesScopeConsentText}','consent.screen.text'),('111ed87a-5fd3-4cee-96df-8dbfb88cfdc0','true','display.on.consent.screen'),('111ed87a-5fd3-4cee-96df-8dbfb88cfdc0','false','include.in.token.scope'),('18e141bf-dabe-4858-879c-dbc439cdead4','${samlRoleListScopeConsentText}','consent.screen.text'),('18e141bf-dabe-4858-879c-dbc439cdead4','true','display.on.consent.screen'),('44804d1e-5554-4d14-bc8e-cf9f86f3c0ae','${phoneScopeConsentText}','consent.screen.text'),('44804d1e-5554-4d14-bc8e-cf9f86f3c0ae','true','display.on.consent.screen'),('44804d1e-5554-4d14-bc8e-cf9f86f3c0ae','true','include.in.token.scope'),('51d49314-b511-43e0-9258-bfb873758a78','','consent.screen.text'),('51d49314-b511-43e0-9258-bfb873758a78','false','display.on.consent.screen'),('51d49314-b511-43e0-9258-bfb873758a78','false','include.in.token.scope'),('52294b51-a394-4142-a21a-6bcce020adfa','${offlineAccessScopeConsentText}','consent.screen.text'),('52294b51-a394-4142-a21a-6bcce020adfa','true','display.on.consent.screen'),('569b3d44-4ecd-4768-a58c-70ff38f4b4fe','${offlineAccessScopeConsentText}','consent.screen.text'),('569b3d44-4ecd-4768-a58c-70ff38f4b4fe','true','display.on.consent.screen'),('591bb26a-daf5-4fed-91f4-888894897a54','${rolesScopeConsentText}','consent.screen.text'),('591bb26a-daf5-4fed-91f4-888894897a54','true','display.on.consent.screen'),('591bb26a-daf5-4fed-91f4-888894897a54','false','include.in.token.scope'),('59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74','${profileScopeConsentText}','consent.screen.text'),('59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74','true','display.on.consent.screen'),('59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74','true','include.in.token.scope'),('59ed14b1-1edd-424b-aa88-3838d902e558','','consent.screen.text'),('59ed14b1-1edd-424b-aa88-3838d902e558','false','display.on.consent.screen'),('59ed14b1-1edd-424b-aa88-3838d902e558','false','include.in.token.scope'),('77c7e29d-1a22-4419-bbfb-4a62bb033449','${addressScopeConsentText}','consent.screen.text'),('77c7e29d-1a22-4419-bbfb-4a62bb033449','true','display.on.consent.screen'),('77c7e29d-1a22-4419-bbfb-4a62bb033449','true','include.in.token.scope'),('a3e7b19d-df6c-437e-9eea-06fec1becb2f','${phoneScopeConsentText}','consent.screen.text'),('a3e7b19d-df6c-437e-9eea-06fec1becb2f','true','display.on.consent.screen'),('a3e7b19d-df6c-437e-9eea-06fec1becb2f','true','include.in.token.scope'),('b3526ac1-10e2-4344-8621-9c5a0853e97a','${emailScopeConsentText}','consent.screen.text'),('b3526ac1-10e2-4344-8621-9c5a0853e97a','true','display.on.consent.screen'),('b3526ac1-10e2-4344-8621-9c5a0853e97a','true','include.in.token.scope'),('ba8c9950-fd0b-4434-8be6-b58456d7b6d4','${profileScopeConsentText}','consent.screen.text'),('ba8c9950-fd0b-4434-8be6-b58456d7b6d4','true','display.on.consent.screen'),('ba8c9950-fd0b-4434-8be6-b58456d7b6d4','true','include.in.token.scope'),('c1a2eb23-25c6-4be7-a791-bbdca99c83f7','true','display.on.consent.screen'),('c1a2eb23-25c6-4be7-a791-bbdca99c83f7','true','include.in.token.scope'),('c3e253fb-7361-47cf-9d4a-86245686fdf1','true','display.on.consent.screen'),('c3e253fb-7361-47cf-9d4a-86245686fdf1','true','include.in.token.scope'),('c658ae14-e96a-4745-b21b-2ed5c4c63f5f','false','display.on.consent.screen'),('c658ae14-e96a-4745-b21b-2ed5c4c63f5f','true','include.in.token.scope'),('c65e7252-d0aa-4a1d-b053-8de2e74de612','false','display.on.consent.screen'),('c65e7252-d0aa-4a1d-b053-8de2e74de612','true','include.in.token.scope'),('e10496d1-1abf-4abd-bbdf-bb13d4b73cf9','${emailScopeConsentText}','consent.screen.text'),('e10496d1-1abf-4abd-bbdf-bb13d4b73cf9','true','display.on.consent.screen'),('e10496d1-1abf-4abd-bbdf-bb13d4b73cf9','true','include.in.token.scope'),('f0a62b0d-70c7-494d-ad7f-8342032c5d53','${addressScopeConsentText}','consent.screen.text'),('f0a62b0d-70c7-494d-ad7f-8342032c5d53','true','display.on.consent.screen'),('f0a62b0d-70c7-494d-ad7f-8342032c5d53','true','include.in.token.scope'),('f7e54aba-9cb5-4b44-b49b-c820fe3de9a3','${samlRoleListScopeConsentText}','consent.screen.text'),('f7e54aba-9cb5-4b44-b49b-c820fe3de9a3','true','display.on.consent.screen');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_C_CLI_SCOPE_CLIENT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`),
  CONSTRAINT `FK_C_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('10638de7-6a20-4ba3-988d-8b34a3e5aabd','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('13d76feb-d762-4409-bb84-7a75bc395a61','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('13d76feb-d762-4409-bb84-7a75bc395a61','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('13d76feb-d762-4409-bb84-7a75bc395a61','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('13d76feb-d762-4409-bb84-7a75bc395a61','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('13d76feb-d762-4409-bb84-7a75bc395a61','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('13d76feb-d762-4409-bb84-7a75bc395a61','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('13d76feb-d762-4409-bb84-7a75bc395a61','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('13d76feb-d762-4409-bb84-7a75bc395a61','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('13d76feb-d762-4409-bb84-7a75bc395a61','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('2f27068c-f452-4ef9-8c59-93d0ff59b149','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('2f27068c-f452-4ef9-8c59-93d0ff59b149','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('2f27068c-f452-4ef9-8c59-93d0ff59b149','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('2f27068c-f452-4ef9-8c59-93d0ff59b149','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('2f27068c-f452-4ef9-8c59-93d0ff59b149','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('32f4846c-581a-4fce-b144-0086f6d2b82d','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('32f4846c-581a-4fce-b144-0086f6d2b82d','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('32f4846c-581a-4fce-b144-0086f6d2b82d','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('32f4846c-581a-4fce-b144-0086f6d2b82d','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('32f4846c-581a-4fce-b144-0086f6d2b82d','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('32f4846c-581a-4fce-b144-0086f6d2b82d','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('32f4846c-581a-4fce-b144-0086f6d2b82d','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('32f4846c-581a-4fce-b144-0086f6d2b82d','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('32f4846c-581a-4fce-b144-0086f6d2b82d','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('4b9609f0-48d1-4e71-9381-2ecec08616f9','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('4b9609f0-48d1-4e71-9381-2ecec08616f9','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('4b9609f0-48d1-4e71-9381-2ecec08616f9','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('4b9609f0-48d1-4e71-9381-2ecec08616f9','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('6a4bfbd0-576d-4778-af56-56f876647355','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('6a4bfbd0-576d-4778-af56-56f876647355','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('6a4bfbd0-576d-4778-af56-56f876647355','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('6a4bfbd0-576d-4778-af56-56f876647355','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('6d45fcbd-60c6-406c-b79f-acc766485bc6','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('6d45fcbd-60c6-406c-b79f-acc766485bc6','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('6d45fcbd-60c6-406c-b79f-acc766485bc6','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('6d45fcbd-60c6-406c-b79f-acc766485bc6','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('6d45fcbd-60c6-406c-b79f-acc766485bc6','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('8e358d2f-b085-4243-8e6e-c175431e5eeb','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('8e358d2f-b085-4243-8e6e-c175431e5eeb','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('8e358d2f-b085-4243-8e6e-c175431e5eeb','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('8e358d2f-b085-4243-8e6e-c175431e5eeb','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','51d49314-b511-43e0-9258-bfb873758a78',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','c1a2eb23-25c6-4be7-a791-bbdca99c83f7',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','c3e253fb-7361-47cf-9d4a-86245686fdf1',_binary '\0'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('f4d2b23d-17e3-4479-8582-4e44896f030a','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('f4d2b23d-17e3-4479-8582-4e44896f030a','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('f4d2b23d-17e3-4479-8582-4e44896f030a','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('f4d2b23d-17e3-4479-8582-4e44896f030a','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('f4d2b23d-17e3-4479-8582-4e44896f030a','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('f4d2b23d-17e3-4479-8582-4e44896f030a','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('f4d2b23d-17e3-4479-8582-4e44896f030a','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('f4d2b23d-17e3-4479-8582-4e44896f030a','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('f4d2b23d-17e3-4479-8582-4e44896f030a','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('52294b51-a394-4142-a21a-6bcce020adfa','dc6d8013-0fc1-4789-b175-393a47752294'),('569b3d44-4ecd-4768-a58c-70ff38f4b4fe','3b6109f5-6e5a-4578-83c3-791ec3e2bf9e');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`),
  CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_AUTH_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`),
  CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_PROT_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`),
  CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`),
  CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('1f94a106-b778-4ef5-aaef-c148e3847786','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('289b5c0d-6eb8-42b2-ae3a-5d5a8582b135','Max Clients Limit','master','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('29c1f7fc-e390-4d9a-80f6-0cdec7637ecb','Consent Required','master','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('2f2f89be-53fb-4091-9796-586a70bb6d40','Full Scope Disabled','master','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('365b2899-befe-4417-b89b-562650ec4446','Full Scope Disabled','campaign_answer','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('3caaf57a-9cd7-48c1-b709-b40b887414f7','Allowed Protocol Mapper Types','campaign_answer','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('41ffde1b-72a2-416f-87a7-94989e940dc0','Allowed Protocol Mapper Types','campaign_answer','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','authenticated'),('48d40de3-6234-42e8-9449-f68f56abb54b','aes-generated','campaign_answer','aes-generated','org.keycloak.keys.KeyProvider','campaign_answer',NULL),('4fcf761f-62a9-4e95-8a71-7d8367f77c2d','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('52ea1c5d-2a30-459f-b66a-249f298b32f8','hmac-generated','campaign_answer','hmac-generated','org.keycloak.keys.KeyProvider','campaign_answer',NULL),('7006892e-363b-4701-8137-78352c4746ad','fallback-HS256','master','hmac-generated','org.keycloak.keys.KeyProvider','master',NULL),('76075388-2782-4656-a986-313493239a9f','Consent Required','campaign_answer','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('81c32244-7921-43e9-9356-a3469259b78c','Trusted Hosts','campaign_answer','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('84305f42-4b6d-4b0a-ac7c-53e406e3ac63','Allowed Client Scopes','campaign_answer','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','authenticated'),('8c8efe07-420f-425e-83fb-394d7e319214','remote','campaign_answer','remote','org.keycloak.storage.UserStorageProvider','campaign_answer',NULL),('99375f16-513a-43af-9c09-b8792f0eb9a2','fallback-RS256','master','rsa-generated','org.keycloak.keys.KeyProvider','master',NULL),('9f0d7727-18f9-405d-85a0-d76317b346de','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('bacfdcbe-d18c-4820-9ce9-7f8d02154482','Trusted Hosts','master','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('c7c38a95-744f-4558-a403-9cf692fe1944','Allowed Client Scopes','campaign_answer','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('ca9725b9-9288-43cb-8abe-36af1d8116f4','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('d09b2147-afea-4f7f-a49c-0aec7eee10de','Max Clients Limit','campaign_answer','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','campaign_answer','anonymous'),('d67a940a-52e4-44a5-9f69-6ffdd67a188f','rsa-generated','campaign_answer','rsa-generated','org.keycloak.keys.KeyProvider','campaign_answer',NULL);
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0153afa2-2c59-403f-896f-667a422a5d4e','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('03020ac5-fb9a-4bca-b6b3-dcb9d0d48f13','52ea1c5d-2a30-459f-b66a-249f298b32f8','algorithm','HS256'),('03baaf45-cdd2-4023-99b7-9ec21c7b8f3b','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','saml-role-list-mapper'),('0421ca7c-d936-4d3e-b30a-1280e74036e3','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','saml-user-property-mapper'),('044aace1-7214-464b-b9ed-542730e7001c','9f0d7727-18f9-405d-85a0-d76317b346de','allow-default-scopes','true'),('06d68181-16d4-4d5c-a549-eba1690a381f','289b5c0d-6eb8-42b2-ae3a-5d5a8582b135','max-clients','200'),('182b361b-6187-4169-bf60-18ab417d0923','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('1f6379a3-043c-4d4b-8819-f9d382a53982','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','saml-role-list-mapper'),('22101586-fdab-405f-abea-7ff89df8bc9d','d67a940a-52e4-44a5-9f69-6ffdd67a188f','priority','100'),('22b4bd8b-6063-490d-8e4d-6e5cc30d57d1','c7c38a95-744f-4558-a403-9cf692fe1944','allow-default-scopes','true'),('24121ac8-b59f-47e4-b61f-5242513d7ce8','99375f16-513a-43af-9c09-b8792f0eb9a2','certificate','MIICmzCCAYMCBgF6PlnEATANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjEwNjI0MTQwNjQ4WhcNMzEwNjI0MTQwODI4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCU86T7g5b04w08UJetRIXs+R/GP8V9C4DZm/XQRGk9hrsRKFlW7xINSWog6taRgPDwTWhSpuMKQXy9WJHzGpwHsEMzwhRQYet5NKRmLmVZyPa4Hm2YPME8/RPWjekMD9ZoH4fFy3HGzQcxpSgePq/Z355rOIA/ez1Yvu4FE3pHqRcP3CmlTJr4HuMNkjbKeujwzKaOxax5itKdpQJrb0j9hnqvKQNQwD/pP2dSaPDTRlmPV9lc+p+6HU+99t/3lImMhQGuMIL4AXeOL1Dg2732y7VYX2NQDCGNUgp0o8aQsfBZeaxwMf/7wohLYODYa8URY/ofauhLAlMC104KWrHdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAH6zfS5nLOWvSHwAopOd0p7CNbxZVUZApAvwmdkOucQkNACpgO4ZRRJeeiWRNYNDeuWpD03Nc/i/9oAB7dFVY5sceeapAGX5U8ofDoxnFkuSJjiM42mdQh4JF0IYXBTJsrjuQdiBfCKsJ67zNtFv0sMt/XmOxMEwLX/pMvKm8BsuaOhQJxbrXi0pQTa1uQXjZXOKpvOvuLdxmX0xAy4Ue6qHQqwZJOOxo7ie7iqdNyUglr7aapRz8kc6Ggf4GoI5e9Vxq+tD3TBP/MtRZ0kZd1OhFa6yjUic3nM++w8oldrwBMJlVof0nnbKAg2hUT0VPVQxiyBA9xubcueVaG9YHTo='),('25bc83e1-2ef6-4a17-b1e4-e6fea50f2d37','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('26f40474-0de9-4fef-b83f-efbefa4c9153','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','oidc-full-name-mapper'),('27f866bf-51c9-4183-a0a2-e6dfc4cb686b','52ea1c5d-2a30-459f-b66a-249f298b32f8','kid','0d90cbd7-7164-42cc-88e2-d215e79ae8ea'),('2c274762-5254-4084-aac1-6bdd2a9d47c2','7006892e-363b-4701-8137-78352c4746ad','algorithm','HS256'),('2fc8d17d-9f83-4234-b621-b933ef60f04c','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('31b91993-ac7c-4c30-9916-e736a18a00b4','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','oidc-address-mapper'),('33121c18-99eb-4a11-bcbc-1f460d280207','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','saml-user-property-mapper'),('334c8f30-f25d-4b3e-82a4-7c79aba80824','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('38343626-c00f-4b3e-a0c3-ded94cafbac5','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4000aaa8-3cf9-49a3-8b17-db31ae0b1b4d','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4d8b487d-f032-4f59-b42f-cd70ec206f2c','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('4e166a71-bf06-454c-a5c4-591bb9579702','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('59005f15-7be3-4051-b0bf-92296e4c03f4','48d40de3-6234-42e8-9449-f68f56abb54b','secret','KH8ObwyJF_YZ6pJ5v9YPuA'),('597f74ea-e128-483e-b107-779e8479e0ed','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','oidc-address-mapper'),('5e1290bb-df41-44a3-a0c2-892c99c19765','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5e4a7dd9-5be5-4638-9b1a-b6f5c770af97','84305f42-4b6d-4b0a-ac7c-53e406e3ac63','allow-default-scopes','true'),('62d51dc0-ba6f-4863-a1bf-621b87044e89','7006892e-363b-4701-8137-78352c4746ad','priority','-100'),('6772fa7d-6463-4479-9184-0e5bff5dcc3c','ca9725b9-9288-43cb-8abe-36af1d8116f4','allow-default-scopes','true'),('68b72cf8-5cd0-4eda-b52e-3b309ac01946','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('6b444fdc-eca2-42c8-a8c9-d787f60002d3','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6dc09981-1a01-4638-8d18-d052d81656ff','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','oidc-address-mapper'),('73ce23b4-9bf1-4e17-9348-b65871b41ae8','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('74e8dc40-d9e1-42d4-86c2-299d830fbfed','48d40de3-6234-42e8-9449-f68f56abb54b','kid','a1643e07-7de0-4265-a42b-21152b16f2a5'),('762d898f-76e8-45f2-872c-a958a363d059','99375f16-513a-43af-9c09-b8792f0eb9a2','algorithm','RS256'),('79cb61c5-6cb7-48df-be0c-f21165671783','8c8efe07-420f-425e-83fb-394d7e319214','userServiceUri','http://localhost:7771/api'),('80eea64b-f2ce-48e3-9d08-4b5a4a18acd5','52ea1c5d-2a30-459f-b66a-249f298b32f8','secret','AFOsLJGAelu021azV_tqcT4qhune3A0xfvGZiqfdTCBcC2UAAErphg1Q3FC4eET83w8uDyi3CMtD1v-6lXqhqw'),('9b5e383a-760d-4e7f-b7fb-d112640fa5c2','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','saml-user-property-mapper'),('9f12c6cd-e10b-40a4-acfb-bfa33a816542','81c32244-7921-43e9-9356-a3469259b78c','client-uris-must-match','true'),('9f1cfe5e-0b3d-4dec-a747-b4aa355b0ba8','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','oidc-full-name-mapper'),('a2ac33f0-964f-4c00-a8e3-d028c4537a22','99375f16-513a-43af-9c09-b8792f0eb9a2','privateKey','MIIEowIBAAKCAQEAlPOk+4OW9OMNPFCXrUSF7Pkfxj/FfQuA2Zv10ERpPYa7EShZVu8SDUlqIOrWkYDw8E1oUqbjCkF8vViR8xqcB7BDM8IUUGHreTSkZi5lWcj2uB5tmDzBPP0T1o3pDA/WaB+Hxctxxs0HMaUoHj6v2d+eaziAP3s9WL7uBRN6R6kXD9wppUya+B7jDZI2ynro8MymjsWseYrSnaUCa29I/YZ6rykDUMA/6T9nUmjw00ZZj1fZXPqfuh1Pvfbf95SJjIUBrjCC+AF3ji9Q4Nu99su1WF9jUAwhjVIKdKPGkLHwWXmscDH/+8KIS2Dg2GvFEWP6H2roSwJTAtdOClqx3QIDAQABAoIBACYvY+86p9t1zbHVs1yvAWpj31pyhM1uwoSG7/iJYTVtsc1PO8AGn+kaFgQEUCeTF7FzFriBohjB+xmLeDcLbk6mSEQfkBefUr+K2E59vGvNEjrXSh9KC/v3oTtSvBjkgoHE+4ighDWD4EFA5s0CIxDGvBUesfoUPQDgSaKxgJqX/u7pyv65boEQ42ixg8bQIEzVMP2TeC0LPhSJTu59xw/2lTV4QalJ+Y/Vd0Le9Rd6KPYuzVa85agP7YCpPfmkpXtRox9NuxRY7GZGNLT19nrTXqXxYC/TiPPkQE4OikAKoBTB4Gz/P1uR4tjsCr2m/7FKqhQF+VA96A1lnGftm8ECgYEA9JXKumk2XsX3EIeEPmkVkAhhjfaQDooKJd2Da3Sor065iNwX1UNYaBPpZvODas03eFKqpdq5CxqbYxRQcr0iU97oCXKHKJBCtxttS3bqd/6ejCDVtMUM4/lvXITwaQ/KRtJ96/21k1w4xFOe/y3LtBt1uc7uI1q7SdwK2+JHU1ECgYEAm+dDEDz6tpqZunSMVx7LrbQWGxEIiKv+2iFWqz9qd8TO9/LzknEfk0ykiE/O9TPrENUwbmCIXdStKLQXanzDnr021+Kp0dVJBJIbV4Jfao6hdZDTzwpx8w+zIuw6mxk/jGc26jrA3UZGZUGhATo1kXtfXdF/9saxHNFx7L8q2s0CgYEAy1H6RRxRZleLGuKMvJT+p81Py4O8HVoDNZb/OMSxtYnsEilkZpSlWV+0FzE3fgE6q3uNAHLigKiNo7+vYLJ5Zt9WZQQf90h1LWJPaPxhzX6MrlBdVvi3zov8Vxzr/Wpy7IzuwM8XsnhneE1LTzXysLZjFyM+M4WpS6zwGfnw8QECgYB8ohyS1qz3XhCXZqTq4MujSdyCNtPDrvxGFXDb5g6PQN7UiXz/DUBY2WSPNH4WuDKrekMFelaJ7IOhjpdJogQg2tMFM0bfYMrGxKbnBmqRHQUmn2k0kv0Veu+Sc5dGdqC+9aSJC/8y5gNQ325/NLGuZBqRPfI2rhDZIPcadJkl4QKBgEHZSZwMITriwAbK9PNnabX86Dbj90bCZbQA4YRjg79iMiPXtYQOAXIPbhLpwIg3rfFTEmvS4bZOpgR+HKF/Wmkwgv24WfqJ6AatvG0gYvVPjFCs4/ugkji8QYf+6LYcaNi0p0QbyLzCkkkHDOImQQdooTKBqHjpJXazEBgm12rR'),('a31c68a1-10c4-4d05-b5bb-666480a3e360','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a6d4a8bf-2bdb-44e0-bb50-6f1e809545c1','bacfdcbe-d18c-4820-9ce9-7f8d02154482','host-sending-registration-request-must-match','true'),('aa1eb2ed-6ff5-4b5d-b6ef-a1c90ccfee75','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b20f071b-1e68-4e6f-8141-0d279b22ea06','d09b2147-afea-4f7f-a49c-0aec7eee10de','max-clients','200'),('b59565bc-4007-4c7f-8432-46685f44996d','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','oidc-address-mapper'),('b5b64b19-3fe2-4ffc-aa4b-496ea5b8432c','48d40de3-6234-42e8-9449-f68f56abb54b','priority','100'),('cc3cace1-315e-496e-ad87-3a84c0c18d1f','bacfdcbe-d18c-4820-9ce9-7f8d02154482','client-uris-must-match','true'),('d0853110-3fe0-4179-a4fc-1b5332487a13','7006892e-363b-4701-8137-78352c4746ad','kid','a4a922e2-4697-43a2-b03a-686289bcaec3'),('d42eb6df-c84d-4752-9b9a-6869ef194a12','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','saml-role-list-mapper'),('d6a7f24d-9429-47af-8782-6d955fd02202','1f94a106-b778-4ef5-aaef-c148e3847786','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d779a074-71eb-4194-bdf8-309e1f3bdb02','52ea1c5d-2a30-459f-b66a-249f298b32f8','priority','100'),('d861e995-c5d6-474b-bca6-07e84da041d5','41ffde1b-72a2-416f-87a7-94989e940dc0','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e52f6e99-732e-4154-9845-db7cb95b7d5f','8c8efe07-420f-425e-83fb-394d7e319214','enabled','true'),('e5fb2c1b-3c7d-4bfc-b541-e7175d2c7931','99375f16-513a-43af-9c09-b8792f0eb9a2','priority','-100'),('ef9525c3-12fd-4ba6-9ec8-a43151d255b5','81c32244-7921-43e9-9356-a3469259b78c','host-sending-registration-request-must-match','true'),('f015cac7-d6bf-458a-ba28-c035d00f3b56','7006892e-363b-4701-8137-78352c4746ad','secret','-iJdyIez6GWAHYF6wIFQF272BToiDDdmo-4aWY9OJNwxmuz2rpQPg4VPcCYF-VtBNLSkyTWRcdfwDHl1xqUiQA'),('f025e79c-7b97-4d27-ab6e-1e6d700b99b3','3caaf57a-9cd7-48c1-b709-b40b887414f7','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f3a276e6-def3-40a5-9b28-577f7a1a7bcd','d67a940a-52e4-44a5-9f69-6ffdd67a188f','privateKey','MIIEpQIBAAKCAQEAsw+lmV2HbpgXllKS+ccyCerlWDir32Y3yFvXF3CbzYRKVg/4FddA8itMCPpPjVOAo26bi/0WImHHYPyGxSH3QQIQaSdS5AFUNarpFc9M/W4Bu7k5h8sKb+vzZA3hMLFyvmQ2JtY8Zuqi1BBB33OAlkOHprJFTrrt1xa4a6KJjKXlDp5o5hOFgvZbsW+k/fBU0CLCbL3PlXQLhqHgEncpL9L9FF/xDbPIGftxjEWcBPFG/SuyygT35xRFMxB7ifR+wJZwVnoC4RhbhgJdL2EiUVT7wq5MTsxr2j4nAAJYatK/7OTecs6y/7bGNAGEoqh4Q3X3D95YFex0scmHgY1hWwIDAQABAoIBAQCAesmnsaRrhlXmVnl/H56X3yOQmZk5Qm7kJIHBH9urKzDrb6niggDnwolcJ77M+Q1kNwkE+SPYp7AXtxo8eJKg4opD6SNg1lNF7swwCf6EGVrFB7Jv7RAgHn0VXaAnACwE0ILKew38Cn+rCb86RfYN24aJ5YA1bYsaugK5uHZZo7kLnv5PUwOwu4PqhAKLPyQt2P1gN3rzf0TGmL5Ylqoxx6X6QBKTwOqAzsWPshMxOB+GzIDDegvzQ6UIV/FzsxIZFLVAPtAWxa77TgT8LeBxDz/UF3H5cWEP5LJ3108ZUOa/EyPiIAaMsLtgVycf7gtsOEsQ4q/OqqJrL4NdNUaBAoGBAPVeguDaUwZIMOYGH2sjYaShaddMFsR2u93dj/GI/T8A4/iXz2yxfHl0LEmxQpZkzyVFpYkYO54w59zLdhzpFOkuGOMT+1j4FnMEjSnzQhZzLVxwuQ9cX0VhYRf+gpwhUOrmbPZB3tYWIiDGm823c6J4QCi0kG5R7pPb/nowpIulAoGBALrRr6RdL/lqrt/REtVW2KSdL6r38sN12vmgjBzIQFLWQFSzDxjaPLeZY87uIhpAWAuZJW+NZ7WfF85WuKDwSbuoZ1ln1yj3FkJkYZmdOid8VpEam2Z9sCncvbAq/pvhgSKMYZeXQ2+dPM0N1HiDb9SEuPIbS3hvcYwNAcLyWqj/AoGBAOfAmMVf8MMiNG1OoyZCiNtCSgG8MFToAJGRz39G8EstwCTw3k2/Zd4hSCNidY4vMSf3HF7csJK9hoIY+jpcPA/yJjd0jBaAXFPOnLZeuLEToGiLX3+Os72IOHi9PwfQv+jeM1R06tAyn5FthYNMHr/57D+GLFTGthyZ0UX/46qxAoGAJ7ENRDqYSsGjzeG5wqHk/XR4ADcV2PldQNQfcK4LHI5wtI4mkv0rEUcBsaFelX0+N5ieH4lHk4rtn+VE7MygncI10wUA7a8xh4GUSvLgvCrqqYGhqrDhkMNZeehol+3dZd21jmOQ7FHX7SkXD1O9msVoFeg+rKPg2ASbbzPWlzkCgYEAgVQKaTCgh3E2z3E9OhzeMIq7qyJuSKsP5FHsTT17U46/rPk+XBhLB/VBkY0Hn29NW4CWTmvEaJrJiejKJaPap8DBjMpJ7KnMidEeHaRykCuPmi9VUT2Q+FE5lQaPi8fYIlHI7BsIY+wTVlKRezkKpuFezocyP5YR34XDkM0BhRI='),('f7219a9f-8944-4d4d-9821-b2706d63ae98','d67a940a-52e4-44a5-9f69-6ffdd67a188f','certificate','MIICnzCCAYcCBgFuhB77/jANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAhiYWVsZHVuZzAeFw0xOTExMTkxNDQyMzNaFw0yOTExMTkxNDQ0MTNaMBMxETAPBgNVBAMMCGJhZWxkdW5nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsw+lmV2HbpgXllKS+ccyCerlWDir32Y3yFvXF3CbzYRKVg/4FddA8itMCPpPjVOAo26bi/0WImHHYPyGxSH3QQIQaSdS5AFUNarpFc9M/W4Bu7k5h8sKb+vzZA3hMLFyvmQ2JtY8Zuqi1BBB33OAlkOHprJFTrrt1xa4a6KJjKXlDp5o5hOFgvZbsW+k/fBU0CLCbL3PlXQLhqHgEncpL9L9FF/xDbPIGftxjEWcBPFG/SuyygT35xRFMxB7ifR+wJZwVnoC4RhbhgJdL2EiUVT7wq5MTsxr2j4nAAJYatK/7OTecs6y/7bGNAGEoqh4Q3X3D95YFex0scmHgY1hWwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCLf01IsqWCKF2vw5y/NPCgKFEP4vtlXvr1XusMr9sAMSgbAVKLm5wZg4Ue8Q7iUq1LJzZ7EOeaXfIHxk33vjf0RlJQAaVn2K/kZJ4rFXuU6g+mpoRgiFsCPNexXXMdG294osyJ60g5OWCt5KrdocFjkKbF9EYm2CBj20G5MxCf+VDGDIcNvgzp478CZODiFVb6JgQqRrE3CGzQKdKiHG9cbXAledMJuWw3h0dzAqM46nl7GRkNK2cmVJO+cDD7xMrD83Q84PoG1ixMsQ/Tv5CqfREC4Dp9/j4XaoEOJ5S7oBaiRqTMzxk/lPjmbUrdyLM0Kokrrwc2yF74m9NuwHh2'),('f9f7e28b-4f4c-47b7-bbe0-babba64daaff','8c8efe07-420f-425e-83fb-394d7e319214','cachePolicy','NO_CACHE'),('fa495ff3-2cd6-4fca-af64-fd9161c231ed','8c8efe07-420f-425e-83fb-394d7e319214','priority','0'),('fb4fd223-f350-4d97-8ea2-4bec123bf96f','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','saml-user-property-mapper'),('fdc66135-c74b-479d-b93f-72e15a8824a7','4fcf761f-62a9-4e95-8a71-7d8367f77c2d','allowed-protocol-mapper-types','saml-role-list-mapper');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('07af327f-b921-405c-bf53-beda61475a7f','6c08c6fd-2558-4df1-8355-8869d6ff2b2d'),('07af327f-b921-405c-bf53-beda61475a7f','f418c8fc-925d-4cfe-a07a-5c97529931d9'),('38f5123f-d2e6-4ad4-b2f9-9b77cea82db2','abf13a93-0214-421a-a565-d0741f55161e'),('427c27d4-521a-464b-a0df-16d7f537e8d5','0332e99b-3dfc-4193-9e13-5728f8f3e6d6'),('427c27d4-521a-464b-a0df-16d7f537e8d5','0f8e5ee8-b014-4b7c-9b69-50f46abcba5f'),('427c27d4-521a-464b-a0df-16d7f537e8d5','387418b1-4f80-4b00-b9dd-805ca041f805'),('427c27d4-521a-464b-a0df-16d7f537e8d5','3ea43b64-316f-4693-8346-9ee78b24adaf'),('427c27d4-521a-464b-a0df-16d7f537e8d5','49735614-96ec-49b2-98fe-3af9bcd1a33a'),('427c27d4-521a-464b-a0df-16d7f537e8d5','5d00243f-ceec-4b0c-995e-d86d5b8a0ae6'),('427c27d4-521a-464b-a0df-16d7f537e8d5','5d48274c-bd6b-4c26-ad54-f1a2254beac0'),('427c27d4-521a-464b-a0df-16d7f537e8d5','5ea9810d-63cc-4277-9b32-ba8a3d3c6091'),('427c27d4-521a-464b-a0df-16d7f537e8d5','6eedf2b7-50ef-4495-a89b-54aef751b7fa'),('427c27d4-521a-464b-a0df-16d7f537e8d5','8b7b0dd8-350b-473e-b8cd-8acad34f1358'),('427c27d4-521a-464b-a0df-16d7f537e8d5','911b1489-9383-4734-b134-bf49bf992ce9'),('427c27d4-521a-464b-a0df-16d7f537e8d5','941612de-bd85-47a5-8dfa-37c270dde28c'),('427c27d4-521a-464b-a0df-16d7f537e8d5','a574cf01-03e4-4573-ab9e-276d13a1ce8d'),('427c27d4-521a-464b-a0df-16d7f537e8d5','aac3def5-f193-4a6c-9065-1667a0746a8a'),('427c27d4-521a-464b-a0df-16d7f537e8d5','b690cb9c-0f4a-4be5-ade0-b40443d8149d'),('427c27d4-521a-464b-a0df-16d7f537e8d5','c3a253a8-a1b6-4d38-9677-f728f32482ad'),('427c27d4-521a-464b-a0df-16d7f537e8d5','e8f8c3cc-0ff1-4f72-a271-db6821a3cdb6'),('427c27d4-521a-464b-a0df-16d7f537e8d5','f3cb93da-273e-419a-b2f4-93f09896abcf'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','0151737c-faef-4590-ab02-932a01225229'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','041367ef-157e-4d1c-91e6-e8f719f714f6'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','04be6056-8ede-4364-b6ea-2dee17607165'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','07af327f-b921-405c-bf53-beda61475a7f'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','0a07b67b-ffed-448b-916f-537582da10c9'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','101afb63-6f84-4bff-a3a1-bf4574eab712'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','146288ec-e306-4fcd-89dd-195de20457ba'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','1c57556e-2580-4929-815c-ef1da756ff4c'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','1c692e53-9333-42b7-9114-420e7ab7e573'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','1dcc13b4-9814-4245-8aeb-39aecf9f6862'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','2214e385-326f-417e-afad-c7fc79dc1bf1'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','2efcff42-3325-40cd-8d32-2e43a8810f25'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','34c5c0c9-f1ec-4608-a151-0b332883adf6'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','4b768e7d-706c-48d8-91ef-0e6a888abd09'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','4b778cea-496a-4e8b-ac32-604acbeccb68'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','560fc928-dcb4-4c5f-8391-78dc566004c9'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','608e2f5b-7586-40c6-a1e4-006b9d646e3e'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','6964be5f-dcc1-4c36-af40-9abc2a440d49'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','6c012c5f-d812-4acd-b275-9ed6c3cadcb5'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','6c08c6fd-2558-4df1-8355-8869d6ff2b2d'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','6dea28a9-48f8-4964-a6de-2f7be6f4095b'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','82da368b-cc5c-44d0-bee4-62241b97cbb4'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','878814fe-7915-4be8-ad41-b35bb3509f5d'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','8feece3b-937f-47a9-82ce-af1468a6c87a'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','a46a3928-8116-4899-a6cf-fb17fceef846'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','b7cc1915-2c67-4ad9-a28c-e70c2d43e910'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','bf3adcd7-fba7-4c53-93f5-a372aa7a18dd'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','c3b72953-7a44-48ca-9725-ed80fb0e4902'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','c9bbd5f1-ccb7-4456-a6b7-e5a260c99edc'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','cea534e8-01b3-4bae-b39d-273f52a46627'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','d29ff838-fe2f-4936-836a-3b14a2e81c9e'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','eab166fe-f0a0-4119-a6bb-9401d2e3e1e1'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','f1a2d814-a30e-43a2-9268-5ea56bfa2d41'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','f418c8fc-925d-4cfe-a07a-5c97529931d9'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','f602e5fc-47b2-421e-9f92-0f0d81467137'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','fa2dc2a7-3f14-4714-b96a-0abb1f4428da'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','fb66e844-dcb2-4f97-bc28-1dc8e49e4432'),('5d00243f-ceec-4b0c-995e-d86d5b8a0ae6','8b7b0dd8-350b-473e-b8cd-8acad34f1358'),('878814fe-7915-4be8-ad41-b35bb3509f5d','041367ef-157e-4d1c-91e6-e8f719f714f6'),('878814fe-7915-4be8-ad41-b35bb3509f5d','a46a3928-8116-4899-a6cf-fb17fceef846'),('8daa8096-d14e-4d1c-ad1f-83f822016aa1','948269c7-a69c-4c82-a7f3-88868713dfd9'),('8feece3b-937f-47a9-82ce-af1468a6c87a','6c012c5f-d812-4acd-b275-9ed6c3cadcb5'),('b50188df-81bc-4fde-b9f1-c47d082442da','548cc0c8-772c-4d0a-9b18-1bd0ee504dea'),('f3cb93da-273e-419a-b2f4-93f09896abcf','0f8e5ee8-b014-4b7c-9b69-50f46abcba5f'),('f3cb93da-273e-419a-b2f4-93f09896abcf','a574cf01-03e4-4573-ab9e-276d13a1ce8d'),('fa2dc2a7-3f14-4714-b96a-0abb1f4428da','146288ec-e306-4fcd-89dd-195de20457ba'),('fc557545-7903-4064-9559-76f249978a5a','c07f4114-aa87-4d6f-bb75-5c78c5e07de6');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('024b62f1-3af0-49fc-a15f-e843b72e00df',NULL,'password','a5461470-33eb-4b2d-82d4-b0484e96ad7f',1574174719522,NULL,'{\"value\":\"tfHk9estQfa27osLCY2QelpkL6Sm6rPS+iQ33ytPSD4p10Fk7ophI7ChERAnzDjVSmvdsZAttsg2Yr+8F4Gzfw==\",\"salt\":\"goh99WgI7T1ZuGdrKzNAeQ==\"}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\"}',10),('73c8d1ca-d548-4e1a-a82d-2c1d0d3ee017',NULL,'password','22a4d9fe-194c-4c6e-841a-8a55b402459f',1580237291489,NULL,'{\"value\":\"fea4QiAzqmOctQGtJrKvoPRIUKLdQ5UKFIEPEQ7PYjTjxvucDZVk8yzXNfsDHvgpZ2rWiwsACgvsymdHnmru9w==\",\"salt\":\"nu5yJh98jz8cGLnLx36uvg==\"}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\"}',10),('8cd85761-e7b3-40e8-87ea-2aeece74388c',NULL,'password','cb267733-bb50-41e7-b42b-e7d74959126a',1624543620218,NULL,'{\"value\":\"doluR2VUfnc/DAxN8cLJ2PTE9AfoB1Yn9flAxheaIDBW7rIVyx/XfODdC4HQWO3Ko8Iy5UfTmPhSwE3UzQuqpA==\",\"salt\":\"AY3FrwNX3sIVp2iAF+6cFw==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2021-06-24 19:30:17',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2021-06-24 19:30:17',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2021-06-24 19:30:18',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2021-06-24 19:30:18',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2021-06-24 19:30:20',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2021-06-24 19:30:20',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2021-06-24 19:30:22',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2021-06-24 19:30:22',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2021-06-24 19:30:22',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2021-06-24 19:30:24',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2021-06-24 19:30:24',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2021-06-24 19:30:24',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2021-06-24 19:30:25',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2021-06-24 19:30:25',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2021-06-24 19:30:25',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2021-06-24 19:30:25',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2021-06-24 19:30:25',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2021-06-24 19:30:26',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2021-06-24 19:30:27',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2021-06-24 19:30:27',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2021-06-24 19:30:27',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2021-06-24 19:30:27',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2021-06-24 19:30:27',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2021-06-24 19:30:27',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2021-06-24 19:30:27',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2021-06-24 19:30:28',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2021-06-24 19:30:30',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2021-06-24 19:30:30',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2021-06-24 19:30:31',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2021-06-24 19:30:31',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2021-06-24 19:30:31',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2021-06-24 19:30:31',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2021-06-24 19:30:31',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2021-06-24 19:30:31',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2021-06-24 19:30:33',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2021-06-24 19:30:33',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2021-06-24 19:30:33',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.10.3',NULL,NULL,'4543213340'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2021-06-24 19:30:33',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2021-06-24 19:30:33',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2021-06-24 19:30:33',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2021-06-24 19:30:33',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2021-06-24 19:30:33',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2021-06-24 19:30:35',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2021-06-24 19:30:35',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2021-06-24 19:30:35',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2021-06-24 19:30:35',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2021-06-24 19:30:35',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2021-06-24 19:30:36',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2021-06-24 19:30:36',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2021-06-24 19:30:37',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2021-06-24 19:30:38',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2021-06-24 19:30:38',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2021-06-24 19:30:38',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2021-06-24 19:30:38',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2021-06-24 19:30:38',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2021-06-24 19:30:38',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2021-06-24 19:30:38',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2021-06-24 19:30:41',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2021-06-24 19:30:42',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2021-06-24 19:30:42',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2021-06-24 19:30:42',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2021-06-24 19:30:42',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2021-06-24 19:30:42',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2021-06-24 19:30:42',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2021-06-24 19:30:42',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2021-06-24 19:30:42',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2021-06-24 19:30:42',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2021-06-24 19:30:42',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2021-06-24 19:30:42',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2021-06-24 19:30:43',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'3.10.3',NULL,NULL,'4543213340'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2021-06-24 19:30:43',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'3.10.3',NULL,NULL,'4543213340'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2021-06-24 19:30:43',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('8.0.0-updating-credential-data-not-oracle','keycloak','META-INF/jpa-changelog-8.0.0.xml','2021-06-24 19:30:43',73,'EXECUTED','8:aa47e66c23e04356194fe287169e9c35','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('8.0.0-updating-credential-data-oracle','keycloak','META-INF/jpa-changelog-8.0.0.xml','2021-06-24 19:30:43',74,'MARK_RAN','8:aa8d0292cba5b0ca2749f792784db4ce','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2021-06-24 19:30:44',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2021-06-24 19:30:44',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2021-06-24 19:30:44',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2021-06-24 19:30:44',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2021-06-24 19:30:44',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2021-06-24 19:30:44',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2021-06-24 19:30:44',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2021-06-24 19:30:44',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2021-06-24 19:30:44',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2021-06-24 19:30:44',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.10.3',NULL,NULL,'4543213340'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2021-06-24 19:30:44',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'3.10.3',NULL,NULL,'4543213340'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2021-06-24 19:30:44',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'3.10.3',NULL,NULL,'4543213340'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2021-06-24 19:30:44',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'3.10.3',NULL,NULL,'4543213340'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2021-06-24 19:30:44',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'3.10.3',NULL,NULL,'4543213340');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL),(1000,_binary '\0',NULL,NULL),(1001,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('campaign_answer','111ed87a-5fd3-4cee-96df-8dbfb88cfdc0',_binary ''),('campaign_answer','18e141bf-dabe-4858-879c-dbc439cdead4',_binary ''),('campaign_answer','51d49314-b511-43e0-9258-bfb873758a78',_binary ''),('campaign_answer','569b3d44-4ecd-4768-a58c-70ff38f4b4fe',_binary '\0'),('campaign_answer','77c7e29d-1a22-4419-bbfb-4a62bb033449',_binary '\0'),('campaign_answer','a3e7b19d-df6c-437e-9eea-06fec1becb2f',_binary '\0'),('campaign_answer','b3526ac1-10e2-4344-8621-9c5a0853e97a',_binary ''),('campaign_answer','ba8c9950-fd0b-4434-8be6-b58456d7b6d4',_binary ''),('campaign_answer','c658ae14-e96a-4745-b21b-2ed5c4c63f5f',_binary '\0'),('master','44804d1e-5554-4d14-bc8e-cf9f86f3c0ae',_binary '\0'),('master','52294b51-a394-4142-a21a-6bcce020adfa',_binary '\0'),('master','591bb26a-daf5-4fed-91f4-888894897a54',_binary ''),('master','59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74',_binary ''),('master','59ed14b1-1edd-424b-aa88-3838d902e558',_binary ''),('master','c65e7252-d0aa-4a1d-b053-8de2e74de612',_binary '\0'),('master','e10496d1-1abf-4abd-bbdf-bb13d4b73cf9',_binary ''),('master','f0a62b0d-70c7-494d-ad7f-8342032c5d53',_binary '\0'),('master','f7e54aba-9cb5-4b44-b49b-c820fe3de9a3',_binary '');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` varchar(2550) DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` varchar(2024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`),
  CONSTRAINT `FK_GROUP_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0151737c-faef-4590-ab02-932a01225229','master',_binary '\0','${role_create-realm}','create-realm','master',NULL,'master'),('0332e99b-3dfc-4193-9e13-5728f8f3e6d6','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_impersonation}','impersonation','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('041367ef-157e-4d1c-91e6-e8f719f714f6','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_query-users}','query-users','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('04be6056-8ede-4364-b6ea-2dee17607165','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-authorization}','view-authorization','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('07af327f-b921-405c-bf53-beda61475a7f','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-users}','view-users','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('0a07b67b-ffed-448b-916f-537582da10c9','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-events}','view-events','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('0dd6a8c7-d669-4941-9ea1-521980e9c53f','campaign_answer',_binary '\0','${role_uma_authorization}','uma_authorization','campaign_answer',NULL,'campaign_answer'),('0f8e5ee8-b014-4b7c-9b69-50f46abcba5f','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_query-groups}','query-groups','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('101afb63-6f84-4bff-a3a1-bf4574eab712','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_query-realms}','query-realms','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('146288ec-e306-4fcd-89dd-195de20457ba','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_query-clients}','query-clients','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('1c57556e-2580-4929-815c-ef1da756ff4c','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-realm}','view-realm','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('1c692e53-9333-42b7-9114-420e7ab7e573','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_impersonation}','impersonation','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('1dcc13b4-9814-4245-8aeb-39aecf9f6862','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_impersonation}','impersonation','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('2214e385-326f-417e-afad-c7fc79dc1bf1','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-events}','manage-events','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('2477e069-54c5-488a-99af-0a298f3ef3ee','campaign_answer',_binary '\0',NULL,'admin','campaign_answer',NULL,'campaign_answer'),('2efcff42-3325-40cd-8d32-2e43a8810f25','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_create-client}','create-client','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('34c5c0c9-f1ec-4608-a151-0b332883adf6','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-authorization}','manage-authorization','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('387418b1-4f80-4b00-b9dd-805ca041f805','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-identity-providers}','view-identity-providers','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('38f5123f-d2e6-4ad4-b2f9-9b77cea82db2','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_manage-consent}','manage-consent','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('397b5703-4c81-48fd-a24c-a7e8177ef657','4b9609f0-48d1-4e71-9381-2ecec08616f9',_binary '','${role_read-token}','read-token','campaign_answer','4b9609f0-48d1-4e71-9381-2ecec08616f9',NULL),('3b6109f5-6e5a-4578-83c3-791ec3e2bf9e','campaign_answer',_binary '\0','${role_offline-access}','offline_access','campaign_answer',NULL,'campaign_answer'),('3ea43b64-316f-4693-8346-9ee78b24adaf','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-identity-providers}','manage-identity-providers','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('427c27d4-521a-464b-a0df-16d7f537e8d5','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_realm-admin}','realm-admin','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('4465ab3c-0aa5-40e6-9715-39edea0e116e','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_delete-account}','delete-account','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('4942e19b-2acf-4188-94f8-6170e31c70d1','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_delete-account}','delete-account','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('49735614-96ec-49b2-98fe-3af9bcd1a33a','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_create-client}','create-client','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('4b768e7d-706c-48d8-91ef-0e6a888abd09','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-users}','manage-users','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('4b778cea-496a-4e8b-ac32-604acbeccb68','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-clients}','manage-clients','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','master',_binary '\0','${role_admin}','admin','master',NULL,'master'),('548cc0c8-772c-4d0a-9b18-1bd0ee504dea','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_manage-account-links}','manage-account-links','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('560fc928-dcb4-4c5f-8391-78dc566004c9','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-clients}','manage-clients','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('5d00243f-ceec-4b0c-995e-d86d5b8a0ae6','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-clients}','view-clients','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('5d48274c-bd6b-4c26-ad54-f1a2254beac0','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-realm}','view-realm','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('5ea9810d-63cc-4277-9b32-ba8a3d3c6091','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-realm}','manage-realm','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('608e2f5b-7586-40c6-a1e4-006b9d646e3e','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-authorization}','manage-authorization','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('60d88bed-b131-455d-b591-5753a2b9e48a','5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa',_binary '','${role_read-token}','read-token','master','5bcfbc9e-99d7-4d4b-b34e-416f1ba8f8aa',NULL),('6964be5f-dcc1-4c36-af40-9abc2a440d49','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-identity-providers}','view-identity-providers','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('6c012c5f-d812-4acd-b275-9ed6c3cadcb5','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_query-clients}','query-clients','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('6c08c6fd-2558-4df1-8355-8869d6ff2b2d','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_query-users}','query-users','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('6dea28a9-48f8-4964-a6de-2f7be6f4095b','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-identity-providers}','manage-identity-providers','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('6eedf2b7-50ef-4495-a89b-54aef751b7fa','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-authorization}','manage-authorization','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('82da368b-cc5c-44d0-bee4-62241b97cbb4','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-events}','view-events','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('878814fe-7915-4be8-ad41-b35bb3509f5d','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-users}','view-users','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('8b7b0dd8-350b-473e-b8cd-8acad34f1358','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_query-clients}','query-clients','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('8daa8096-d14e-4d1c-ad1f-83f822016aa1','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_manage-account}','manage-account','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('8feece3b-937f-47a9-82ce-af1468a6c87a','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-clients}','view-clients','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('911b1489-9383-4734-b134-bf49bf992ce9','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-clients}','manage-clients','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('941612de-bd85-47a5-8dfa-37c270dde28c','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-authorization}','view-authorization','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('948269c7-a69c-4c82-a7f3-88868713dfd9','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_manage-account-links}','manage-account-links','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('a46a3928-8116-4899-a6cf-fb17fceef846','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_query-groups}','query-groups','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('a574cf01-03e4-4573-ab9e-276d13a1ce8d','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_query-users}','query-users','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('aac3def5-f193-4a6c-9065-1667a0746a8a','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-events}','manage-events','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('abf13a93-0214-421a-a565-d0741f55161e','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_view-consent}','view-consent','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('aed18201-2433-4998-8fa3-0979b0b31c10','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_view-profile}','view-profile','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('b50188df-81bc-4fde-b9f1-c47d082442da','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_manage-account}','manage-account','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('b690cb9c-0f4a-4be5-ade0-b40443d8149d','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-events}','view-events','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('b7cc1915-2c67-4ad9-a28c-e70c2d43e910','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-realm}','manage-realm','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('bf3adcd7-fba7-4c53-93f5-a372aa7a18dd','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-events}','manage-events','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('c07f4114-aa87-4d6f-bb75-5c78c5e07de6','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_view-consent}','view-consent','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('c08688cf-ac66-4027-82d0-b81f6bf98ff2','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_view-profile}','view-profile','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('c3a253a8-a1b6-4d38-9677-f728f32482ad','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_query-realms}','query-realms','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('c3b72953-7a44-48ca-9725-ed80fb0e4902','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-realm}','view-realm','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('c9bbd5f1-ccb7-4456-a6b7-e5a260c99edc','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-authorization}','view-authorization','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('ca962095-7f9b-49e2-a190-e391a0d4b704','campaign_answer',_binary '\0',NULL,'user','campaign_answer',NULL,'campaign_answer'),('cea534e8-01b3-4bae-b39d-273f52a46627','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_create-client}','create-client','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('d29ff838-fe2f-4936-836a-3b14a2e81c9e','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-realm}','manage-realm','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('dc6d8013-0fc1-4789-b175-393a47752294','master',_binary '\0','${role_offline-access}','offline_access','master',NULL,'master'),('e2a53067-08f8-4181-b76e-a0a6ce66669f','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',_binary '','${role_view-applications}','view-applications','master','9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9',NULL),('e8f8c3cc-0ff1-4f72-a271-db6821a3cdb6','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_manage-users}','manage-users','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('eab166fe-f0a0-4119-a6bb-9401d2e3e1e1','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_query-realms}','query-realms','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('f1a2d814-a30e-43a2-9268-5ea56bfa2d41','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_manage-users}','manage-users','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('f3cb93da-273e-419a-b2f4-93f09896abcf','6a4bfbd0-576d-4778-af56-56f876647355',_binary '','${role_view-users}','view-users','campaign_answer','6a4bfbd0-576d-4778-af56-56f876647355',NULL),('f418c8fc-925d-4cfe-a07a-5c97529931d9','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_query-groups}','query-groups','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('f5000d61-2889-4046-a494-723f58055ce8','master',_binary '\0','${role_uma_authorization}','uma_authorization','master',NULL,'master'),('f602e5fc-47b2-421e-9f92-0f0d81467137','2f27068c-f452-4ef9-8c59-93d0ff59b149',_binary '','${role_view-identity-providers}','view-identity-providers','master','2f27068c-f452-4ef9-8c59-93d0ff59b149',NULL),('f6416cdf-d4c0-4f02-b60d-754c62486495','f4d2b23d-17e3-4479-8582-4e44896f030a',_binary '',NULL,'uma_protection','campaign_answer','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL),('fa2dc2a7-3f14-4714-b96a-0abb1f4428da','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_view-clients}','view-clients','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('fa6668e6-ce1d-450f-bc46-387a5dbce787','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_view-applications}','view-applications','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL),('fb66e844-dcb2-4f97-bc28-1dc8e49e4432','6d45fcbd-60c6-406c-b79f-acc766485bc6',_binary '','${role_manage-identity-providers}','manage-identity-providers','master','6d45fcbd-60c6-406c-b79f-acc766485bc6',NULL),('fc557545-7903-4064-9559-76f249978a5a','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',_binary '','${role_manage-consent}','manage-consent','campaign_answer','12eebf0b-a3eb-49f8-9ecf-173cf8a00145',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('bk44s','12.0.4',1624543246);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
INSERT INTO `POLICY_CONFIG` VALUES ('2cd90fee-e84a-4e83-8430-18d29011233f','code','// by default, grants any permission associated with this policy\n$evaluation.grant();\n'),('3917034a-21a8-4eb2-9c7a-f0104821e0f6','defaultResourceType','urn:campain-client:resources:default');
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('07b8550c-b298-4cce-9ffb-900182575b76','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c658ae14-e96a-4745-b21b-2ed5c4c63f5f'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('10cbe37f-0198-4d65-bc8a-bfe5ad8145d1','role list','saml','saml-role-list-mapper',NULL,'18e141bf-dabe-4858-879c-dbc439cdead4'),('146d59ed-799e-4639-9714-568fad5f2672','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('24924d8d-6071-4a93-b40f-326176cb335e','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'111ed87a-5fd3-4cee-96df-8dbfb88cfdc0'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3e7b19d-df6c-437e-9eea-06fec1becb2f'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c65e7252-d0aa-4a1d-b053-8de2e74de612'),('2b384cd0-9e85-4a87-8eeb-2b480b0587b7','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'51d49314-b511-43e0-9258-bfb873758a78'),('2f6a9bdf-3758-484c-996d-e4f93555559f','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'111ed87a-5fd3-4cee-96df-8dbfb88cfdc0'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'591bb26a-daf5-4fed-91f4-888894897a54'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('3e5be9e0-aed6-47d8-8734-1ca6dfc42309','role list','saml','saml-role-list-mapper',NULL,'f7e54aba-9cb5-4b44-b49b-c820fe3de9a3'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','locale','openid-connect','oidc-usermodel-attribute-mapper','a3d7c2fd-44a6-46ea-9d07-835116db1b07',NULL),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('53eb9006-4b81-474a-8b60-80f775d54b63','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('54f8ab94-844c-4dc9-b232-28705ab1e747','email','openid-connect','oidc-usermodel-property-mapper',NULL,'e10496d1-1abf-4abd-bbdf-bb13d4b73cf9'),('57823168-124d-4c2d-a233-b68b5f08a681','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'44804d1e-5554-4d14-bc8e-cf9f86f3c0ae'),('5e5c690c-93cf-489d-a054-b109eab8911b','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','username','openid-connect','oidc-usermodel-property-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('71c206e8-bd33-4112-a260-330116794ff0','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3e7b19d-df6c-437e-9eea-06fec1becb2f'),('73cba925-8c31-443f-9601-b1514e6396c1','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'111ed87a-5fd3-4cee-96df-8dbfb88cfdc0'),('86897507-de50-4e89-bb7c-97870dc3e700','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('8717f264-295a-44d8-bb6a-cabb6e82937b','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'59ed14b1-1edd-424b-aa88-3838d902e558'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'44804d1e-5554-4d14-bc8e-cf9f86f3c0ae'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','address','openid-connect','oidc-address-mapper',NULL,'77c7e29d-1a22-4419-bbfb-4a62bb033449'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'c658ae14-e96a-4745-b21b-2ed5c4c63f5f'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('9c5930d4-776f-43dc-a645-25ff39054498','address','openid-connect','oidc-address-mapper',NULL,'f0a62b0d-70c7-494d-ad7f-8342032c5d53'),('9cfca9ee-493d-4b5e-8170-2d364149de59','locale','openid-connect','oidc-usermodel-attribute-mapper','8e358d2f-b085-4243-8e6e-c175431e5eeb',NULL),('ab096ed1-5f42-48d2-b24a-363cd1be825a','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL),('ae836386-b3fd-47d5-bc4d-32a19e26fb4d','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'591bb26a-daf5-4fed-91f4-888894897a54'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'c65e7252-d0aa-4a1d-b053-8de2e74de612'),('b6cbfd36-55b1-48cb-a16d-3bda9bb68916','full name','openid-connect','oidc-full-name-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL),('c569cb78-65fb-4ade-8563-cb41f85ae30b','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e10496d1-1abf-4abd-bbdf-bb13d4b73cf9'),('c98c063d-eee4-41a0-9130-595afd709d1f','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b3526ac1-10e2-4344-8621-9c5a0853e97a'),('d3b25485-4042-419d-afff-cfd63a76e229','full name','openid-connect','oidc-full-name-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('d60b4551-e875-4da8-b730-ca340abefed9','audience resolve','openid-connect','oidc-audience-resolve-mapper','b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed',NULL),('d6280093-7c06-42f4-8c2a-f6161382d9c9','username','openid-connect','oidc-usermodel-property-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('e58f2369-bcc9-4004-9a0b-93324f52543d','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'59768e0e-4bb8-4e0c-9d9b-e23b72ab2c74'),('f3c282af-9284-4fa4-b05f-727b249a3b22','audience resolve','openid-connect','oidc-audience-resolve-mapper','10638de7-6a20-4ba3-988d-8b34a3e5aabd',NULL),('f420cb78-2860-41d0-aa12-1740d341739a','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL),('f5b1684d-e479-4134-8578-457fa64717da','email','openid-connect','oidc-usermodel-property-mapper',NULL,'b3526ac1-10e2-4344-8621-9c5a0853e97a'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ba8c9950-fd0b-4434-8be6-b58456d7b6d4'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'591bb26a-daf5-4fed-91f4-888894897a54');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('07b8550c-b298-4cce-9ffb-900182575b76','true','access.token.claim'),('07b8550c-b298-4cce-9ffb-900182575b76','groups','claim.name'),('07b8550c-b298-4cce-9ffb-900182575b76','true','id.token.claim'),('07b8550c-b298-4cce-9ffb-900182575b76','String','jsonType.label'),('07b8550c-b298-4cce-9ffb-900182575b76','true','multivalued'),('07b8550c-b298-4cce-9ffb-900182575b76','foo','user.attribute'),('07b8550c-b298-4cce-9ffb-900182575b76','true','userinfo.token.claim'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','true','access.token.claim'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','profile','claim.name'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','true','id.token.claim'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','String','jsonType.label'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','profile','user.attribute'),('0a9ddd71-309c-40f0-8ea6-a0791070c6ed','true','userinfo.token.claim'),('10cbe37f-0198-4d65-bc8a-bfe5ad8145d1','Role','attribute.name'),('10cbe37f-0198-4d65-bc8a-bfe5ad8145d1','Basic','attribute.nameformat'),('10cbe37f-0198-4d65-bc8a-bfe5ad8145d1','false','single'),('146d59ed-799e-4639-9714-568fad5f2672','true','access.token.claim'),('146d59ed-799e-4639-9714-568fad5f2672','zoneinfo','claim.name'),('146d59ed-799e-4639-9714-568fad5f2672','true','id.token.claim'),('146d59ed-799e-4639-9714-568fad5f2672','String','jsonType.label'),('146d59ed-799e-4639-9714-568fad5f2672','zoneinfo','user.attribute'),('146d59ed-799e-4639-9714-568fad5f2672','true','userinfo.token.claim'),('24924d8d-6071-4a93-b40f-326176cb335e','true','access.token.claim'),('24924d8d-6071-4a93-b40f-326176cb335e','realm_access.roles','claim.name'),('24924d8d-6071-4a93-b40f-326176cb335e','String','jsonType.label'),('24924d8d-6071-4a93-b40f-326176cb335e','true','multivalued'),('24924d8d-6071-4a93-b40f-326176cb335e','foo','user.attribute'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','true','access.token.claim'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','phone_number','claim.name'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','true','id.token.claim'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','String','jsonType.label'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','phoneNumber','user.attribute'),('24b42c6d-a93c-4aa1-9a03-2a2b55954c13','true','userinfo.token.claim'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','true','access.token.claim'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','given_name','claim.name'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','true','id.token.claim'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','String','jsonType.label'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','firstName','user.attribute'),('253a8e01-703e-4ec6-9e8c-7777a62ee07d','true','userinfo.token.claim'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','true','access.token.claim'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','profile','claim.name'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','true','id.token.claim'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','String','jsonType.label'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','profile','user.attribute'),('255eaf5a-7fc1-4662-8ebc-80bad19d548b','true','userinfo.token.claim'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','true','access.token.claim'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','groups','claim.name'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','true','id.token.claim'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','String','jsonType.label'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','true','multivalued'),('2603e19e-0080-4c09-82e7-3e1e0b96b9b3','foo','user.attribute'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','true','access.token.claim'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','resource_access.${client_id}.roles','claim.name'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','String','jsonType.label'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','true','multivalued'),('3891b7e3-4c9c-44b1-8381-836bf8eeff32','foo','user.attribute'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','true','access.token.claim'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','birthdate','claim.name'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','true','id.token.claim'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','String','jsonType.label'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','birthdate','user.attribute'),('3b985202-af8a-42f1-ac5f-0966a404f5d7','true','userinfo.token.claim'),('3e5be9e0-aed6-47d8-8734-1ca6dfc42309','Role','attribute.name'),('3e5be9e0-aed6-47d8-8734-1ca6dfc42309','Basic','attribute.nameformat'),('3e5be9e0-aed6-47d8-8734-1ca6dfc42309','false','single'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','true','access.token.claim'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','website','claim.name'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','true','id.token.claim'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','String','jsonType.label'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','website','user.attribute'),('3f2863c1-d98d-45b5-b08f-af9c4d9c10f8','true','userinfo.token.claim'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','true','access.token.claim'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','given_name','claim.name'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','true','id.token.claim'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','String','jsonType.label'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','firstName','user.attribute'),('422cfa5a-f2f4-4f36-82df-91b47ae1ea50','true','userinfo.token.claim'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','true','access.token.claim'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','gender','claim.name'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','true','id.token.claim'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','String','jsonType.label'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','gender','user.attribute'),('423be2cd-42c0-462e-9030-18f9b28ff2d3','true','userinfo.token.claim'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','true','access.token.claim'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','locale','claim.name'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','true','id.token.claim'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','String','jsonType.label'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','locale','user.attribute'),('42c2ee62-7ab0-420d-97bf-b87f77cc4f5a','true','userinfo.token.claim'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','true','access.token.claim'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','locale','claim.name'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','true','id.token.claim'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','String','jsonType.label'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','locale','user.attribute'),('4d8bc82a-eaeb-499e-8eb2-0f1dcbe91699','true','userinfo.token.claim'),('53eb9006-4b81-474a-8b60-80f775d54b63','true','access.token.claim'),('53eb9006-4b81-474a-8b60-80f775d54b63','picture','claim.name'),('53eb9006-4b81-474a-8b60-80f775d54b63','true','id.token.claim'),('53eb9006-4b81-474a-8b60-80f775d54b63','String','jsonType.label'),('53eb9006-4b81-474a-8b60-80f775d54b63','picture','user.attribute'),('53eb9006-4b81-474a-8b60-80f775d54b63','true','userinfo.token.claim'),('54f8ab94-844c-4dc9-b232-28705ab1e747','true','access.token.claim'),('54f8ab94-844c-4dc9-b232-28705ab1e747','email','claim.name'),('54f8ab94-844c-4dc9-b232-28705ab1e747','true','id.token.claim'),('54f8ab94-844c-4dc9-b232-28705ab1e747','String','jsonType.label'),('54f8ab94-844c-4dc9-b232-28705ab1e747','email','user.attribute'),('54f8ab94-844c-4dc9-b232-28705ab1e747','true','userinfo.token.claim'),('57823168-124d-4c2d-a233-b68b5f08a681','true','access.token.claim'),('57823168-124d-4c2d-a233-b68b5f08a681','website','claim.name'),('57823168-124d-4c2d-a233-b68b5f08a681','true','id.token.claim'),('57823168-124d-4c2d-a233-b68b5f08a681','String','jsonType.label'),('57823168-124d-4c2d-a233-b68b5f08a681','website','user.attribute'),('57823168-124d-4c2d-a233-b68b5f08a681','true','userinfo.token.claim'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','true','access.token.claim'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','phone_number','claim.name'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','true','id.token.claim'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','String','jsonType.label'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','phoneNumber','user.attribute'),('58dbf7f6-73e3-42cf-b34c-a2cb40bfce56','true','userinfo.token.claim'),('5e5c690c-93cf-489d-a054-b109eab8911b','true','access.token.claim'),('5e5c690c-93cf-489d-a054-b109eab8911b','updated_at','claim.name'),('5e5c690c-93cf-489d-a054-b109eab8911b','true','id.token.claim'),('5e5c690c-93cf-489d-a054-b109eab8911b','String','jsonType.label'),('5e5c690c-93cf-489d-a054-b109eab8911b','updatedAt','user.attribute'),('5e5c690c-93cf-489d-a054-b109eab8911b','true','userinfo.token.claim'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','true','access.token.claim'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','preferred_username','claim.name'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','true','id.token.claim'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','String','jsonType.label'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','username','user.attribute'),('6eafd1b3-7121-4919-ad1e-039fa58acc32','true','userinfo.token.claim'),('71c206e8-bd33-4112-a260-330116794ff0','true','access.token.claim'),('71c206e8-bd33-4112-a260-330116794ff0','picture','claim.name'),('71c206e8-bd33-4112-a260-330116794ff0','true','id.token.claim'),('71c206e8-bd33-4112-a260-330116794ff0','String','jsonType.label'),('71c206e8-bd33-4112-a260-330116794ff0','picture','user.attribute'),('71c206e8-bd33-4112-a260-330116794ff0','true','userinfo.token.claim'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','true','access.token.claim'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','updated_at','claim.name'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','true','id.token.claim'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','String','jsonType.label'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','updatedAt','user.attribute'),('7264d61e-77a3-4e74-9eb0-92e6003f15f7','true','userinfo.token.claim'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','true','access.token.claim'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','phone_number_verified','claim.name'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','true','id.token.claim'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','boolean','jsonType.label'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','phoneNumberVerified','user.attribute'),('72a070f7-4363-4c88-8153-6fd2d12b9b04','true','userinfo.token.claim'),('73cba925-8c31-443f-9601-b1514e6396c1','true','access.token.claim'),('73cba925-8c31-443f-9601-b1514e6396c1','zoneinfo','claim.name'),('73cba925-8c31-443f-9601-b1514e6396c1','true','id.token.claim'),('73cba925-8c31-443f-9601-b1514e6396c1','String','jsonType.label'),('73cba925-8c31-443f-9601-b1514e6396c1','zoneinfo','user.attribute'),('73cba925-8c31-443f-9601-b1514e6396c1','true','userinfo.token.claim'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','true','access.token.claim'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','resource_access.${client_id}.roles','claim.name'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','String','jsonType.label'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','true','multivalued'),('804d4798-d9a3-4fd3-8b28-d12142e8cb3d','foo','user.attribute'),('86897507-de50-4e89-bb7c-97870dc3e700','true','access.token.claim'),('86897507-de50-4e89-bb7c-97870dc3e700','locale','claim.name'),('86897507-de50-4e89-bb7c-97870dc3e700','true','id.token.claim'),('86897507-de50-4e89-bb7c-97870dc3e700','String','jsonType.label'),('86897507-de50-4e89-bb7c-97870dc3e700','locale','user.attribute'),('86897507-de50-4e89-bb7c-97870dc3e700','true','userinfo.token.claim'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','true','access.token.claim'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','phone_number_verified','claim.name'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','true','id.token.claim'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','boolean','jsonType.label'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','phoneNumberVerified','user.attribute'),('87ab3fc6-faf1-4a99-9df0-adbbdee5bb82','true','userinfo.token.claim'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','true','access.token.claim'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','family_name','claim.name'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','true','id.token.claim'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','String','jsonType.label'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','lastName','user.attribute'),('8dbed80a-d672-4185-8dda-4bba2a56ec83','true','userinfo.token.claim'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','true','access.token.claim'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','gender','claim.name'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','true','id.token.claim'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','String','jsonType.label'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','gender','user.attribute'),('935f0d50-b539-4c1f-b6fb-0bae5d06493d','true','userinfo.token.claim'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','true','access.token.claim'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','true','id.token.claim'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','country','user.attribute.country'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','formatted','user.attribute.formatted'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','locality','user.attribute.locality'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','postal_code','user.attribute.postal_code'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','region','user.attribute.region'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','street','user.attribute.street'),('94e1879d-b49e-4178-96e0-bf8d7f32c160','true','userinfo.token.claim'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','true','access.token.claim'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','upn','claim.name'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','true','id.token.claim'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','String','jsonType.label'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','username','user.attribute'),('959521bc-5ffd-465b-95f2-5b0c20d1909c','true','userinfo.token.claim'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','true','access.token.claim'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','family_name','claim.name'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','true','id.token.claim'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','String','jsonType.label'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','lastName','user.attribute'),('9a6b7caf-8320-435f-8026-d0024c9c26bd','true','userinfo.token.claim'),('9c5930d4-776f-43dc-a645-25ff39054498','true','access.token.claim'),('9c5930d4-776f-43dc-a645-25ff39054498','true','id.token.claim'),('9c5930d4-776f-43dc-a645-25ff39054498','country','user.attribute.country'),('9c5930d4-776f-43dc-a645-25ff39054498','formatted','user.attribute.formatted'),('9c5930d4-776f-43dc-a645-25ff39054498','locality','user.attribute.locality'),('9c5930d4-776f-43dc-a645-25ff39054498','postal_code','user.attribute.postal_code'),('9c5930d4-776f-43dc-a645-25ff39054498','region','user.attribute.region'),('9c5930d4-776f-43dc-a645-25ff39054498','street','user.attribute.street'),('9c5930d4-776f-43dc-a645-25ff39054498','true','userinfo.token.claim'),('9cfca9ee-493d-4b5e-8170-2d364149de59','true','access.token.claim'),('9cfca9ee-493d-4b5e-8170-2d364149de59','locale','claim.name'),('9cfca9ee-493d-4b5e-8170-2d364149de59','true','id.token.claim'),('9cfca9ee-493d-4b5e-8170-2d364149de59','String','jsonType.label'),('9cfca9ee-493d-4b5e-8170-2d364149de59','locale','user.attribute'),('9cfca9ee-493d-4b5e-8170-2d364149de59','true','userinfo.token.claim'),('ab096ed1-5f42-48d2-b24a-363cd1be825a','true','access.token.claim'),('ab096ed1-5f42-48d2-b24a-363cd1be825a','clientAddress','claim.name'),('ab096ed1-5f42-48d2-b24a-363cd1be825a','true','id.token.claim'),('ab096ed1-5f42-48d2-b24a-363cd1be825a','String','jsonType.label'),('ab096ed1-5f42-48d2-b24a-363cd1be825a','clientAddress','user.session.note'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','true','access.token.claim'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','upn','claim.name'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','true','id.token.claim'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','String','jsonType.label'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','username','user.attribute'),('b616fc5b-8ccb-4249-a2eb-fa1fb34c2be7','true','userinfo.token.claim'),('b6cbfd36-55b1-48cb-a16d-3bda9bb68916','true','access.token.claim'),('b6cbfd36-55b1-48cb-a16d-3bda9bb68916','true','id.token.claim'),('b6cbfd36-55b1-48cb-a16d-3bda9bb68916','true','userinfo.token.claim'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','true','access.token.claim'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','clientHost','claim.name'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','true','id.token.claim'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','String','jsonType.label'),('b8e3f8e5-2d40-44df-9d05-faeb5346829b','clientHost','user.session.note'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','true','access.token.claim'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','email_verified','claim.name'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','true','id.token.claim'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','boolean','jsonType.label'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','emailVerified','user.attribute'),('c569cb78-65fb-4ade-8563-cb41f85ae30b','true','userinfo.token.claim'),('c98c063d-eee4-41a0-9130-595afd709d1f','true','access.token.claim'),('c98c063d-eee4-41a0-9130-595afd709d1f','middle_name','claim.name'),('c98c063d-eee4-41a0-9130-595afd709d1f','true','id.token.claim'),('c98c063d-eee4-41a0-9130-595afd709d1f','String','jsonType.label'),('c98c063d-eee4-41a0-9130-595afd709d1f','middleName','user.attribute'),('c98c063d-eee4-41a0-9130-595afd709d1f','true','userinfo.token.claim'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','true','access.token.claim'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','nickname','claim.name'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','true','id.token.claim'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','String','jsonType.label'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','nickname','user.attribute'),('cce1bc4d-3cd9-4d87-95ac-fbb70e8417b2','true','userinfo.token.claim'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','true','access.token.claim'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','email_verified','claim.name'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','true','id.token.claim'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','boolean','jsonType.label'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','emailVerified','user.attribute'),('d30270dc-baa6-455a-8ff6-ddccf8a78d86','true','userinfo.token.claim'),('d3b25485-4042-419d-afff-cfd63a76e229','true','access.token.claim'),('d3b25485-4042-419d-afff-cfd63a76e229','true','id.token.claim'),('d3b25485-4042-419d-afff-cfd63a76e229','true','userinfo.token.claim'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','true','access.token.claim'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','preferred_username','claim.name'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','true','id.token.claim'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','String','jsonType.label'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','username','user.attribute'),('d6280093-7c06-42f4-8c2a-f6161382d9c9','true','userinfo.token.claim'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','true','access.token.claim'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','middle_name','claim.name'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','true','id.token.claim'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','String','jsonType.label'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','middleName','user.attribute'),('debbd9a3-f755-4b06-a055-02f7103f4e2e','true','userinfo.token.claim'),('e58f2369-bcc9-4004-9a0b-93324f52543d','true','access.token.claim'),('e58f2369-bcc9-4004-9a0b-93324f52543d','birthdate','claim.name'),('e58f2369-bcc9-4004-9a0b-93324f52543d','true','id.token.claim'),('e58f2369-bcc9-4004-9a0b-93324f52543d','String','jsonType.label'),('e58f2369-bcc9-4004-9a0b-93324f52543d','birthdate','user.attribute'),('e58f2369-bcc9-4004-9a0b-93324f52543d','true','userinfo.token.claim'),('f420cb78-2860-41d0-aa12-1740d341739a','true','access.token.claim'),('f420cb78-2860-41d0-aa12-1740d341739a','clientId','claim.name'),('f420cb78-2860-41d0-aa12-1740d341739a','true','id.token.claim'),('f420cb78-2860-41d0-aa12-1740d341739a','String','jsonType.label'),('f420cb78-2860-41d0-aa12-1740d341739a','clientId','user.session.note'),('f5b1684d-e479-4134-8578-457fa64717da','true','access.token.claim'),('f5b1684d-e479-4134-8578-457fa64717da','email','claim.name'),('f5b1684d-e479-4134-8578-457fa64717da','true','id.token.claim'),('f5b1684d-e479-4134-8578-457fa64717da','String','jsonType.label'),('f5b1684d-e479-4134-8578-457fa64717da','email','user.attribute'),('f5b1684d-e479-4134-8578-457fa64717da','true','userinfo.token.claim'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','true','access.token.claim'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','nickname','claim.name'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','true','id.token.claim'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','String','jsonType.label'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','nickname','user.attribute'),('fbf53bbd-1ad0-4bf8-8030-50f81696d8ee','true','userinfo.token.claim'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','true','access.token.claim'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','realm_access.roles','claim.name'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','String','jsonType.label'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','true','multivalued'),('ff99aadf-5bbe-4568-8c60-f1c9060a5cbb','foo','user.attribute');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` varchar(2550) DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT '0',
  `OTP_POLICY_WINDOW` int(11) DEFAULT '1',
  `OTP_POLICY_PERIOD` int(11) DEFAULT '30',
  `OTP_POLICY_DIGITS` int(11) DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('campaign_answer',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'campaign_answer',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','6d45fcbd-60c6-406c-b79f-acc766485bc6',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','ef04e473-4b05-4db9-90df-7d29ec423551','e070b3f6-6b15-49da-a5fe-7bcf4bb71c63','01e7e185-f448-467d-a1e5-f26dec1c4e31','8abaabc2-f71a-4946-8ffb-938b050696b3','bce0ceb0-646b-4715-9d2c-059755b49dcd',2592000,_binary '\0',900,_binary '',_binary '\0','b36495e2-c131-429c-aa95-4e36be83f922',0,_binary '\0',0,0),('master',60,300,60,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'master',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','2f27068c-f452-4ef9-8c59-93d0ff59b149',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','49bf1eb1-292e-42d5-b17e-a3c3ff6ab962','615f355d-4be7-4eac-8a1a-43f848fe39ab','9e420df9-2d26-4955-b7de-46540a6a8b5a','04b4e51e-9164-42f2-8494-d7914538abcd','475c48aa-fc6b-4041-b54d-e077361b9056',2592000,_binary '\0',900,_binary '',_binary '\0','1b27a2ed-1cb7-47be-a0cd-93bcb46d26d2',0,_binary '\0',0,0);
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','43200','campaign_answer'),('actionTokenGeneratedByUserLifespan','300','campaign_answer'),('bruteForceProtected','false','campaign_answer'),('bruteForceProtected','false','master'),('displayName','Keycloak','master'),('displayNameHtml','<div class=\"kc-logo-text\"><span>Keycloak</span></div>','master'),('failureFactor','30','campaign_answer'),('failureFactor','30','master'),('maxDeltaTimeSeconds','43200','campaign_answer'),('maxDeltaTimeSeconds','43200','master'),('maxFailureWaitSeconds','900','campaign_answer'),('maxFailureWaitSeconds','900','master'),('minimumQuickLoginWaitSeconds','60','campaign_answer'),('minimumQuickLoginWaitSeconds','60','master'),('offlineSessionMaxLifespan','5184000','campaign_answer'),('offlineSessionMaxLifespan','5184000','master'),('offlineSessionMaxLifespanEnabled','false','campaign_answer'),('offlineSessionMaxLifespanEnabled','false','master'),('permanentLockout','false','campaign_answer'),('permanentLockout','false','master'),('quickLoginCheckMilliSeconds','1000','campaign_answer'),('quickLoginCheckMilliSeconds','1000','master'),('waitIncrementSeconds','60','campaign_answer'),('waitIncrementSeconds','60','master'),('webAuthnPolicyAttestationConveyancePreference','not specified','campaign_answer'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','not specified','campaign_answer'),('webAuthnPolicyAuthenticatorAttachment','not specified','campaign_answer'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','not specified','campaign_answer'),('webAuthnPolicyAvoidSameAuthenticatorRegister','false','campaign_answer'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','false','campaign_answer'),('webAuthnPolicyCreateTimeout','0','campaign_answer'),('webAuthnPolicyCreateTimeoutPasswordless','0','campaign_answer'),('webAuthnPolicyRequireResidentKey','not specified','campaign_answer'),('webAuthnPolicyRequireResidentKeyPasswordless','not specified','campaign_answer'),('webAuthnPolicyRpEntityName','keycloak','campaign_answer'),('webAuthnPolicyRpEntityNamePasswordless','keycloak','campaign_answer'),('webAuthnPolicyRpId','','campaign_answer'),('webAuthnPolicyRpIdPasswordless','','campaign_answer'),('webAuthnPolicySignatureAlgorithms','ES256','campaign_answer'),('webAuthnPolicySignatureAlgorithmsPasswordless','ES256','campaign_answer'),('webAuthnPolicyUserVerificationRequirement','not specified','campaign_answer'),('webAuthnPolicyUserVerificationRequirementPasswordless','not specified','campaign_answer'),('_browser_header.contentSecurityPolicy','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';','campaign_answer'),('_browser_header.contentSecurityPolicy','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';','master'),('_browser_header.contentSecurityPolicyReportOnly','','campaign_answer'),('_browser_header.contentSecurityPolicyReportOnly','','master'),('_browser_header.strictTransportSecurity','max-age=31536000; includeSubDomains','campaign_answer'),('_browser_header.strictTransportSecurity','max-age=31536000; includeSubDomains','master'),('_browser_header.xContentTypeOptions','nosniff','campaign_answer'),('_browser_header.xContentTypeOptions','nosniff','master'),('_browser_header.xFrameOptions','SAMEORIGIN','campaign_answer'),('_browser_header.xFrameOptions','SAMEORIGIN','master'),('_browser_header.xRobotsTag','none','campaign_answer'),('_browser_header.xRobotsTag','none','master'),('_browser_header.xXSSProtection','1; mode=block','campaign_answer'),('_browser_header.xXSSProtection','1; mode=block','master');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_ROLES`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_ROLES` (
  `REALM_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`ROLE_ID`),
  UNIQUE KEY `UK_H4WPD7W4HSOOLNI3H0SW7BTJE` (`ROLE_ID`),
  KEY `IDX_REALM_DEF_ROLES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_EVUDB1PPW84OXFAX2DRS03ICC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_ROLES`
--

LOCK TABLES `REALM_DEFAULT_ROLES` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_ROLES` DISABLE KEYS */;
INSERT INTO `REALM_DEFAULT_ROLES` VALUES ('campaign_answer','0dd6a8c7-d669-4941-9ea1-521980e9c53f'),('campaign_answer','3b6109f5-6e5a-4578-83c3-791ec3e2bf9e'),('master','dc6d8013-0fc1-4789-b175-393a47752294'),('master','f5000d61-2889-4046-a494-723f58055ce8');
/*!40000 ALTER TABLE `REALM_DEFAULT_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('campaign_answer','jboss-logging'),('master','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',_binary '',_binary '','campaign_answer'),('password','password',_binary '',_binary '','master');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('10638de7-6a20-4ba3-988d-8b34a3e5aabd','/realms/master/account/*'),('12eebf0b-a3eb-49f8-9ecf-173cf8a00145','/realms/campaign_answer/account/*'),('8e358d2f-b085-4243-8e6e-c175431e5eeb','/admin/campaign_answer/console/*'),('9d8aa6cc-5afe-4fb2-bf12-8a10ca5632b9','/realms/master/account/*'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','/admin/master/console/*'),('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','/realms/campaign_answer/account/*'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','http://localhost:8082/new-client/login/oauth2/code/custom'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','http://localhost:8089/'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','http://localhost:8089/auth/redirect/'),('f4d2b23d-17e3-4479-8582-4e44896f030a','http://localhost:7771/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('21fa6a78-511d-45c2-b2fe-b024060e8fa3','delete_account','Delete Account','master',_binary '\0',_binary '\0','delete_account',60),('2b363fce-8190-444c-a3d9-aece3a7f1b31','UPDATE_PASSWORD','Update Password','master',_binary '',_binary '\0','UPDATE_PASSWORD',30),('30be178e-5904-4f6d-995e-a2eeac514ee0','CONFIGURE_TOTP','Configure OTP','master',_binary '',_binary '\0','CONFIGURE_TOTP',10),('3d0ebd9c-8106-41a4-8621-8a4a40c81ea7','terms_and_conditions','Terms and Conditions','master',_binary '\0',_binary '\0','terms_and_conditions',20),('4f9de3e7-f4a0-4b10-b404-0c749f80a1d5','UPDATE_PASSWORD','Update Password','campaign_answer',_binary '',_binary '\0','UPDATE_PASSWORD',30),('53537fd1-e3c9-4616-93cc-32a5732cd7a7','UPDATE_PROFILE','Update Profile','master',_binary '',_binary '\0','UPDATE_PROFILE',40),('674c775c-6d0d-48d8-b9d5-889e5e43cc5e','update_user_locale','Update User Locale','campaign_answer',_binary '',_binary '\0','update_user_locale',1000),('6ace4c32-9115-4290-a579-a012acfc3c16','terms_and_conditions','Terms and Conditions','campaign_answer',_binary '\0',_binary '\0','terms_and_conditions',20),('6fd6901f-895c-4e90-b92a-beff992137e7','CONFIGURE_TOTP','Configure OTP','campaign_answer',_binary '',_binary '\0','CONFIGURE_TOTP',10),('aae80258-ae43-4c4e-b3f0-0ecbc1f08b8b','UPDATE_PROFILE','Update Profile','campaign_answer',_binary '',_binary '\0','UPDATE_PROFILE',40),('b0dfcb53-12bd-4d69-8364-fdf2cf1be5b0','VERIFY_EMAIL','Verify Email','master',_binary '',_binary '\0','VERIFY_EMAIL',50),('b7f96b86-5e6e-47fc-bcff-8739cca9fe23','update_user_locale','Update User Locale','master',_binary '',_binary '\0','update_user_locale',1000),('bd7b4bc5-1bd0-4b0a-bfb0-b773771b9665','VERIFY_EMAIL','Verify Email','campaign_answer',_binary '',_binary '\0','VERIFY_EMAIL',50),('c53496d9-37cd-4089-a5cf-a2815bf519d0','delete_account','Delete Account','campaign_answer',_binary '\0',_binary '\0','delete_account',60);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER` VALUES ('f4d2b23d-17e3-4479-8582-4e44896f030a',_binary '','0',1);
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_POLICY` VALUES ('2cd90fee-e84a-4e83-8430-18d29011233f','Default Policy','A policy that grants access only for users within this realm','js','0','0','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL),('3917034a-21a8-4eb2-9c7a-f0104821e0f6','Default Permission','A permission that applies to the default resource type','resource','1','0','f4d2b23d-17e3-4479-8582-4e44896f030a',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_RESOURCE` VALUES ('a2a8358a-4819-4403-9ff1-981cdfede9e5','Default Resource','urn:campain-client:resources:default',NULL,'f4d2b23d-17e3-4479-8582-4e44896f030a','f4d2b23d-17e3-4479-8582-4e44896f030a',_binary '\0',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
INSERT INTO `RESOURCE_URIS` VALUES ('a2a8358a-4819-4403-9ff1-981cdfede9e5','/*');
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('b3c42406-c9f4-4ee0-8ffc-240a45b4a1ed','8daa8096-d14e-4d1c-ad1f-83f822016aa1'),('10638de7-6a20-4ba3-988d-8b34a3e5aabd','b50188df-81bc-4fde-b9f1-c47d082442da');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `USERNAME_LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL,
  PRIMARY KEY (`REALM_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('01b8b235-6f58-4894-9ff1-55f974107253',NULL,'69eadec0-81fa-4da0-8c2f-bfc514f09c54',_binary '\0',_binary '',NULL,NULL,NULL,'campaign_answer','service-account-campaign-client',1624626344312,'f4d2b23d-17e3-4479-8582-4e44896f030a',0),('22a4d9fe-194c-4c6e-841a-8a55b402459f',NULL,'7ce57941-c037-4027-860e-8ad07baee6e7',_binary '\0',_binary '',NULL,NULL,NULL,'campaign_answer','mike@other.com',1580237252522,NULL,0),('64bcf33f-0f86-47e4-b90d-e71e7a862c9c',NULL,'4142c745-b4f3-431c-9619-04dfb4fedb26',_binary '\0',_binary '','8c8efe07-420f-425e-83fb-394d7e319214',NULL,NULL,'campaign_answer','admin',1624627312488,NULL,0),('a5461470-33eb-4b2d-82d4-b0484e96ad7f',NULL,'c7d1d0c9-d1fb-4769-8c78-d0ac0bd321a8',_binary '\0',_binary '',NULL,NULL,NULL,'campaign_answer','john@test.com',1574174706812,NULL,0),('cb267733-bb50-41e7-b42b-e7d74959126a',NULL,'e6db64b7-ee63-4a1f-acc3-bb758902387c',_binary '\0',_binary '',NULL,NULL,NULL,'master','campaign-admin',1624543574173,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('0dd6a8c7-d669-4941-9ea1-521980e9c53f','01b8b235-6f58-4894-9ff1-55f974107253'),('3b6109f5-6e5a-4578-83c3-791ec3e2bf9e','01b8b235-6f58-4894-9ff1-55f974107253'),('8daa8096-d14e-4d1c-ad1f-83f822016aa1','01b8b235-6f58-4894-9ff1-55f974107253'),('aed18201-2433-4998-8fa3-0979b0b31c10','01b8b235-6f58-4894-9ff1-55f974107253'),('f6416cdf-d4c0-4f02-b60d-754c62486495','01b8b235-6f58-4894-9ff1-55f974107253'),('0dd6a8c7-d669-4941-9ea1-521980e9c53f','22a4d9fe-194c-4c6e-841a-8a55b402459f'),('3b6109f5-6e5a-4578-83c3-791ec3e2bf9e','22a4d9fe-194c-4c6e-841a-8a55b402459f'),('8daa8096-d14e-4d1c-ad1f-83f822016aa1','22a4d9fe-194c-4c6e-841a-8a55b402459f'),('aed18201-2433-4998-8fa3-0979b0b31c10','22a4d9fe-194c-4c6e-841a-8a55b402459f'),('2477e069-54c5-488a-99af-0a298f3ef3ee','64bcf33f-0f86-47e4-b90d-e71e7a862c9c'),('ca962095-7f9b-49e2-a190-e391a0d4b704','64bcf33f-0f86-47e4-b90d-e71e7a862c9c'),('0dd6a8c7-d669-4941-9ea1-521980e9c53f','a5461470-33eb-4b2d-82d4-b0484e96ad7f'),('3b6109f5-6e5a-4578-83c3-791ec3e2bf9e','a5461470-33eb-4b2d-82d4-b0484e96ad7f'),('8daa8096-d14e-4d1c-ad1f-83f822016aa1','a5461470-33eb-4b2d-82d4-b0484e96ad7f'),('aed18201-2433-4998-8fa3-0979b0b31c10','a5461470-33eb-4b2d-82d4-b0484e96ad7f'),('53dc4d41-272d-4546-aeba-8abdf3ff9fb6','cb267733-bb50-41e7-b42b-e7d74959126a'),('b50188df-81bc-4fde-b9f1-c47d082442da','cb267733-bb50-41e7-b42b-e7d74959126a'),('c08688cf-ac66-4027-82d0-b81f6bf98ff2','cb267733-bb50-41e7-b42b-e7d74959126a'),('dc6d8013-0fc1-4789-b175-393a47752294','cb267733-bb50-41e7-b42b-e7d74959126a'),('f5000d61-2889-4046-a494-723f58055ce8','cb267733-bb50-41e7-b42b-e7d74959126a');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int(11) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int(11) DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('8e358d2f-b085-4243-8e6e-c175431e5eeb','+'),('a3d7c2fd-44a6-46ea-9d07-835116db1b07','+'),('b88ce206-63d6-43b6-87c9-ea09d8c02f32','+'),('f4d2b23d-17e3-4479-8582-4e44896f030a','http://localhost:7771');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-21 19:41:19
