-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmn576i
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687365430 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-14 01:00:27',1,1,'提问1','回复1',1),(62,'2021-03-14 01:00:27',2,2,'提问2','回复2',2),(63,'2021-03-14 01:00:27',3,3,'提问3','回复3',3),(64,'2021-03-14 01:00:27',4,4,'提问4','回复4',4),(65,'2021-03-14 01:00:27',5,5,'提问5','回复5',5),(66,'2021-03-14 01:00:27',6,6,'提问6','回复6',6),(1615684887226,'2021-03-14 01:21:26',11,NULL,'1',NULL,1),(1615687365429,'2021-03-14 02:02:44',1615687168826,NULL,'‍请问有地面停车场吗\r\n','没有\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweituizu`
--

DROP TABLE IF EXISTS `cheweituizu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweituizu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuyongbianhao` varchar(200) DEFAULT NULL COMMENT '租用编号',
  `cheweiquyu` varchar(200) DEFAULT NULL COMMENT '车位区域',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `tingfangshijia` int(11) DEFAULT NULL COMMENT '停放时价',
  `jinchangshijian` varchar(200) DEFAULT NULL COMMENT '进场时间',
  `likaishijian` datetime DEFAULT NULL COMMENT '离开时间',
  `tingfangshizhang` int(11) DEFAULT NULL COMMENT '停放时长',
  `zuyongjine` varchar(200) DEFAULT NULL COMMENT '租用金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687461717 DEFAULT CHARSET=utf8 COMMENT='车位退租';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweituizu`
--

LOCK TABLES `cheweituizu` WRITE;
/*!40000 ALTER TABLE `cheweituizu` DISABLE KEYS */;
INSERT INTO `cheweituizu` VALUES (41,'2021-03-14 01:00:27','租用编号1','车位区域1','车位号1','车位位置1',1,'进场时间1','2021-03-14 09:00:27',1,'租用金额1','用户名1','车牌号1','是','','未支付'),(42,'2021-03-14 01:00:27','租用编号2','车位区域2','车位号2','车位位置2',2,'进场时间2','2021-03-14 09:00:27',2,'租用金额2','用户名2','车牌号2','是','','未支付'),(43,'2021-03-14 01:00:27','租用编号3','车位区域3','车位号3','车位位置3',3,'进场时间3','2021-03-14 09:00:27',3,'租用金额3','用户名3','车牌号3','是','','未支付'),(44,'2021-03-14 01:00:27','租用编号4','车位区域4','车位号4','车位位置4',4,'进场时间4','2021-03-14 09:00:27',4,'租用金额4','用户名4','车牌号4','是','','未支付'),(45,'2021-03-14 01:00:27','租用编号5','车位区域5','车位号5','车位位置5',5,'进场时间5','2021-03-14 09:00:27',5,'租用金额5','用户名5','车牌号5','是','','未支付'),(46,'2021-03-14 01:00:27','租用编号6','车位区域6','车位号6','车位位置6',6,'进场时间6','2021-03-14 09:00:27',6,'租用金额6','用户名6','车牌号6','是','','未支付'),(1615684961643,'2021-03-14 01:22:41','20213149202061920900','A区','1','B1',1,'2021-03-14 09:20:24','2021-03-16 13:13:16',4,'4','用户1','车牌号1','否',NULL,'未支付'),(1615687461716,'2021-03-14 02:04:20','20213141003533863816','B区','B08','B1',20,'2021-03-14 10:00:59','2021-03-14 13:05:07',3,'60','1','粤A12345','是','ok','已支付');
/*!40000 ALTER TABLE `cheweituizu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweiquyu` varchar(200) NOT NULL COMMENT '车位区域',
  `cheweihao` varchar(200) NOT NULL COMMENT '车位号',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `tingfangshijia` int(11) DEFAULT NULL COMMENT '停放时价',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687079034 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (21,'2021-03-14 01:00:27','A区','车位号1','http://localhost:8080/jspmn576i/upload/cheweixinxi_tupian1.jpg','B1','空闲',1,'2021-03-14 09:00:27',1),(22,'2021-03-14 01:00:27','A区','车位号2','http://localhost:8080/jspmn576i/upload/1615686858518.jpg','B1','空闲',2,'2021-03-14 09:54:11',4),(23,'2021-03-14 01:00:27','A区','车位号3','http://localhost:8080/jspmn576i/upload/cheweixinxi_tupian3.jpg','B1','空闲',3,'2021-03-14 09:00:27',3),(24,'2021-03-14 01:00:27','A区','车位号4','http://localhost:8080/jspmn576i/upload/cheweixinxi_tupian4.jpg','B1','空闲',4,'2021-03-14 09:00:27',4),(25,'2021-03-14 01:00:27','A区','车位号5','http://localhost:8080/jspmn576i/upload/cheweixinxi_tupian5.jpg','B1','空闲',5,'2021-03-14 10:00:22',10),(26,'2021-03-14 01:00:27','A区','车位号6','http://localhost:8080/jspmn576i/upload/1615686865817.jpg','B1','空闲',6,'2021-03-14 09:54:23',9),(1615687079033,'2021-03-14 01:57:58','B区','B08','http://localhost:8080/jspmn576i/upload/1615687072867.jpg','B1','空闲',20,'2021-03-14 10:01:05',3);
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweizuyong`
--

DROP TABLE IF EXISTS `cheweizuyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweizuyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuyongbianhao` varchar(200) DEFAULT NULL COMMENT '租用编号',
  `cheweiquyu` varchar(200) DEFAULT NULL COMMENT '车位区域',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `tingfangshijia` varchar(200) DEFAULT NULL COMMENT '停放时价',
  `jinchangshijian` datetime DEFAULT NULL COMMENT '进场时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuyongbianhao` (`zuyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687262911 DEFAULT CHARSET=utf8 COMMENT='车位租用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweizuyong`
--

LOCK TABLES `cheweizuyong` WRITE;
/*!40000 ALTER TABLE `cheweizuyong` DISABLE KEYS */;
INSERT INTO `cheweizuyong` VALUES (31,'2021-03-14 01:00:27','租用编号1','车位区域1','车位号1','车位位置1','车位状态1','停放时价1','2021-03-14 09:00:27','备注1','用户名1','手机1','车牌号1','是',''),(32,'2021-03-14 01:00:27','租用编号2','车位区域2','车位号2','车位位置2','车位状态2','停放时价2','2021-03-14 09:00:27','备注2','用户名2','手机2','车牌号2','是',''),(33,'2021-03-14 01:00:27','租用编号3','车位区域3','车位号3','车位位置3','车位状态3','停放时价3','2021-03-14 09:00:27','备注3','用户名3','手机3','车牌号3','是',''),(34,'2021-03-14 01:00:27','租用编号4','车位区域4','车位号4','车位位置4','车位状态4','停放时价4','2021-03-14 09:00:27','备注4','用户名4','手机4','车牌号4','是',''),(35,'2021-03-14 01:00:27','租用编号5','车位区域5','车位号5','车位位置5','车位状态5','停放时价5','2021-03-14 09:00:27','备注5','用户名5','手机5','车牌号5','是',''),(36,'2021-03-14 01:00:27','租用编号6','车位区域6','车位号6','车位位置6','车位状态6','停放时价6','2021-03-14 09:00:27','备注6','用户名6','手机6','车牌号6','是',''),(1615684827258,'2021-03-14 01:20:26','20213149202061920900','A区','1','B1','空闲','1','2021-03-14 09:20:24','','用户1','13823888881','车牌号1','是','ok'),(1615687262910,'2021-03-14 02:01:02','20213141003533863816','B区','B08','B1','空闲','20','2021-03-14 10:00:59','','1','12312312312','粤A12345','是','ok');
/*!40000 ALTER TABLE `cheweizuyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmn576i/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmn576i/upload/1615687130870.jpg'),(3,'picture3','http://localhost:8080/jspmn576i/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscheweixinxi`
--

DROP TABLE IF EXISTS `discusscheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='车位信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscheweixinxi`
--

LOCK TABLES `discusscheweixinxi` WRITE;
/*!40000 ALTER TABLE `discusscheweixinxi` DISABLE KEYS */;
INSERT INTO `discusscheweixinxi` VALUES (101,'2021-03-14 01:00:28',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-14 01:00:28',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-14 01:00:28',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-14 01:00:28',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-14 01:00:28',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-14 01:00:28',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusscheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687318361 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-14 01:00:28','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-14 01:00:28','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-14 01:00:28','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-14 01:00:28','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-14 01:00:28','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-14 01:00:28','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615687308027,'2021-03-14 02:01:47','新车保养','<p>如果对新车进行保养</p>\n<p><img src=\"../../..//upload/1615687304797.jpg\" alt=\"\" width=\"500\" height=\"334\" /></p>',0,1615687168826,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687110033 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-14 01:00:28','标题1','简介1','http://localhost:8080/jspmn576i/upload/1615686967852.jpg','内容1\r\n'),(92,'2021-03-14 01:00:28','标题2','简介2','http://localhost:8080/jspmn576i/upload/1615686974610.jpg','内容2\r\n'),(93,'2021-03-14 01:00:28','标题3','简介3','http://localhost:8080/jspmn576i/upload/news_picture3.jpg','内容3'),(94,'2021-03-14 01:00:28','标题4','简介4','http://localhost:8080/jspmn576i/upload/1615686980543.jpg','内容4\r\n'),(95,'2021-03-14 01:00:28','标题5','简介5','http://localhost:8080/jspmn576i/upload/news_picture5.jpg','内容5'),(96,'2021-03-14 01:00:28','标题6','简介6','http://localhost:8080/jspmn576i/upload/news_picture6.jpg','内容6'),(1615687110032,'2021-03-14 01:58:30','规范停车要求','规范停车','http://localhost:8080/jspmn576i/upload/1615687101097.jpg','规范停车\r\n<img src=\"http://localhost:8080/jspmn576i/upload/1615687108836.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmn576i/upload/1615687108836.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687235119 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','31blassy9xqbzhum0a0a4ksizlse8q26','2021-03-14 01:16:37','2021-03-14 03:05:18'),(2,11,'用户1','yonghu','用户','t41zdtzsxxjlkezjow57a460kuia7z74','2021-03-14 01:20:08','2021-03-14 02:21:46'),(3,1615687168826,'1','yonghu','用户','h9foc4oj7qbfqi20g3sp6lw7ynes5exs','2021-03-14 01:59:34','2021-03-14 02:59:35');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-14 01:00:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weiguijubao`
--

DROP TABLE IF EXISTS `weiguijubao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weiguijubao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jubaoneirong` longtext COMMENT '举报内容',
  `jubaoshijian` datetime DEFAULT NULL COMMENT '举报时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687503193 DEFAULT CHARSET=utf8 COMMENT='违规举报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weiguijubao`
--

LOCK TABLES `weiguijubao` WRITE;
/*!40000 ALTER TABLE `weiguijubao` DISABLE KEYS */;
INSERT INTO `weiguijubao` VALUES (51,'2021-03-14 01:00:27','标题1','http://localhost:8080/jspmn576i/upload/weiguijubao_tupian1.jpg','举报内容1','2021-03-14 09:00:27','用户名1','手机1','是',''),(52,'2021-03-14 01:00:27','标题2','http://localhost:8080/jspmn576i/upload/weiguijubao_tupian2.jpg','举报内容2','2021-03-14 09:00:27','用户名2','手机2','是',''),(53,'2021-03-14 01:00:27','标题3','http://localhost:8080/jspmn576i/upload/1615687029118.jpg','举报内容3','2021-03-14 09:00:27','用户名3','手机3','是',''),(54,'2021-03-14 01:00:27','标题4','http://localhost:8080/jspmn576i/upload/1615687034421.jpg','举报内容4','2021-03-14 09:00:27','用户名4','手机4','是',''),(55,'2021-03-14 01:00:27','标题5','http://localhost:8080/jspmn576i/upload/weiguijubao_tupian5.jpg','举报内容5','2021-03-14 09:00:27','用户名5','手机5','是',''),(56,'2021-03-14 01:00:27','标题6','http://localhost:8080/jspmn576i/upload/weiguijubao_tupian6.jpg','举报内容6','2021-03-14 09:00:27','用户名6','手机6','是',''),(1615687503192,'2021-03-14 02:05:02','违规停车举报','http://localhost:8080/jspmn576i/upload/1615687489581.jpg','占用隔壁车位','2021-03-14 10:05:34','1','12312312312','是','马上处理');
/*!40000 ALTER TABLE `weiguijubao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615687168827 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-14 01:00:27','用户1','123456','姓名1','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang1.jpg','13823888881','车牌号1'),(12,'2021-03-14 01:00:27','用户2','123456','姓名2','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang2.jpg','13823888882','车牌号2'),(13,'2021-03-14 01:00:27','用户3','123456','姓名3','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang3.jpg','13823888883','车牌号3'),(14,'2021-03-14 01:00:27','用户4','123456','姓名4','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang4.jpg','13823888884','车牌号4'),(15,'2021-03-14 01:00:27','用户5','123456','姓名5','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang5.jpg','13823888885','车牌号5'),(16,'2021-03-14 01:00:27','用户6','123456','姓名6','男','http://localhost:8080/jspmn576i/upload/yonghu_touxiang6.jpg','13823888886','车牌号6'),(1615687168826,'2021-03-14 01:59:28','1','1','陈一','女','http://localhost:8080/jspmn576i/upload/1615687185430.jpg','12312312312','粤A12345');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 10:38:59
