-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmu71x7
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-11-17 14:56:46',1,1,'提问1','回复1',1),(2,'2020-11-17 14:56:46',2,2,'提问2','回复2',2),(3,'2020-11-17 14:56:46',3,3,'提问3','回复3',3);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmu71x7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmu71x7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmu71x7/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssmu71x7/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssmu71x7/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (1,'2020-11-17 14:56:46','订单编号1','游戏名称1','游戏分类1','价格1','用户名1','用户姓名1','2020-11-17','未支付'),(2,'2020-11-17 14:56:46','订单编号2','游戏名称2','游戏分类2','价格2','用户名2','用户姓名2','2020-11-17','未支付'),(3,'2020-11-17 14:56:46','订单编号3','游戏名称3','游戏分类3','价格3','用户名3','用户姓名3','2020-11-17','未支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenyouxipaixingbang`
--

DROP TABLE IF EXISTS `discussremenyouxipaixingbang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenyouxipaixingbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='热门游戏排行榜评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenyouxipaixingbang`
--

LOCK TABLES `discussremenyouxipaixingbang` WRITE;
/*!40000 ALTER TABLE `discussremenyouxipaixingbang` DISABLE KEYS */;
INSERT INTO `discussremenyouxipaixingbang` VALUES (1,'2020-11-17 14:56:46',1,'评论内容1',1),(2,'2020-11-17 14:56:46',2,'评论内容2',2),(3,'2020-11-17 14:56:46',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussremenyouxipaixingbang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyouxiku`
--

DROP TABLE IF EXISTS `discussyouxiku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyouxiku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='游戏库评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyouxiku`
--

LOCK TABLES `discussyouxiku` WRITE;
/*!40000 ALTER TABLE `discussyouxiku` DISABLE KEYS */;
INSERT INTO `discussyouxiku` VALUES (1,'2020-11-17 14:56:46',1,'评论内容1',1),(2,'2020-11-17 14:56:46',2,'评论内容2',2),(3,'2020-11-17 14:56:46',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussyouxiku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-11-17 14:56:46','标题1','http://localhost:8080/ssmu71x7/upload/news_picture1.jpg','内容1'),(2,'2020-11-17 14:56:46','标题2','http://localhost:8080/ssmu71x7/upload/news_picture2.jpg','内容2'),(3,'2020-11-17 14:56:46','标题3','http://localhost:8080/ssmu71x7/upload/news_picture3.jpg','内容3');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenyouxipaixingbang`
--

DROP TABLE IF EXISTS `remenyouxipaixingbang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenyouxipaixingbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youxibiaoqian` varchar(200) DEFAULT NULL COMMENT '游戏标签',
  `juyuwang` varchar(200) DEFAULT NULL COMMENT '局域网',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `youxiwenjian` varchar(200) DEFAULT NULL COMMENT '游戏文件',
  `benzhoupaiming` varchar(200) DEFAULT NULL COMMENT '本周排名',
  `youxijianjie` longtext COMMENT '游戏简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='热门游戏排行榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenyouxipaixingbang`
--

LOCK TABLES `remenyouxipaixingbang` WRITE;
/*!40000 ALTER TABLE `remenyouxipaixingbang` DISABLE KEYS */;
INSERT INTO `remenyouxipaixingbang` VALUES (1,'2020-11-17 14:56:46','游戏名称1','游戏分类1','单人','单机','价格1','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian1.jpg','游戏文件1','本周排名1','游戏简介1'),(2,'2020-11-17 14:56:46','游戏名称2','游戏分类2','单人','单机','价格2','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian2.jpg','游戏文件2','本周排名2','游戏简介2'),(3,'2020-11-17 14:56:46','游戏名称3','游戏分类3','单人','单机','价格3','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian3.jpg','游戏文件3','本周排名3','游戏简介3');
/*!40000 ALTER TABLE `remenyouxipaixingbang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-17 14:56:46',1,1,'表名1','收藏名称1','http://localhost:8080/ssmu71x7/upload/storeup_picture1.jpg'),(2,'2020-11-17 14:56:46',2,2,'表名2','收藏名称2','http://localhost:8080/ssmu71x7/upload/storeup_picture2.jpg'),(3,'2020-11-17 14:56:46',3,3,'表名3','收藏名称3','http://localhost:8080/ssmu71x7/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-17 14:56:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-17 14:56:46','用户1','用户姓名1','123456','男','020-89819991','年龄1'),(2,'2020-11-17 14:56:46','用户2','用户姓名2','123456','男','020-89819992','年龄2'),(3,'2020-11-17 14:56:46','用户3','用户姓名3','123456','男','020-89819993','年龄3');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxibuding`
--

DROP TABLE IF EXISTS `youxibuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxibuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youxibuding` varchar(200) DEFAULT NULL COMMENT '游戏补丁',
  `xiangqing` longtext COMMENT '详情',
  `youxifengmian` varchar(200) DEFAULT NULL COMMENT '游戏封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='游戏补丁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxibuding`
--

LOCK TABLES `youxibuding` WRITE;
/*!40000 ALTER TABLE `youxibuding` DISABLE KEYS */;
INSERT INTO `youxibuding` VALUES (1,'2020-11-17 14:56:46','游戏名称1','游戏分类1','游戏补丁1','详情1','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian1.jpg','2020-11-17'),(2,'2020-11-17 14:56:46','游戏名称2','游戏分类2','游戏补丁2','详情2','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian2.jpg','2020-11-17'),(3,'2020-11-17 14:56:46','游戏名称3','游戏分类3','游戏补丁3','详情3','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian3.jpg','2020-11-17');
/*!40000 ALTER TABLE `youxibuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxifenlei`
--

DROP TABLE IF EXISTS `youxifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='游戏分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxifenlei`
--

LOCK TABLES `youxifenlei` WRITE;
/*!40000 ALTER TABLE `youxifenlei` DISABLE KEYS */;
INSERT INTO `youxifenlei` VALUES (1,'2020-11-17 14:56:46','游戏分类1'),(2,'2020-11-17 14:56:46','游戏分类2'),(3,'2020-11-17 14:56:46','游戏分类3');
/*!40000 ALTER TABLE `youxifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxigonglve`
--

DROP TABLE IF EXISTS `youxigonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxigonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youxifengmian` varchar(200) DEFAULT NULL COMMENT '游戏封面',
  `youxigonglve` longtext COMMENT '游戏攻略',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxigonglve`
--

LOCK TABLES `youxigonglve` WRITE;
/*!40000 ALTER TABLE `youxigonglve` DISABLE KEYS */;
INSERT INTO `youxigonglve` VALUES (1,'2020-11-17 14:56:46','游戏名称1','游戏分类1','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian1.jpg','游戏攻略1','2020-11-17'),(2,'2020-11-17 14:56:46','游戏名称2','游戏分类2','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian2.jpg','游戏攻略2','2020-11-17'),(3,'2020-11-17 14:56:46','游戏名称3','游戏分类3','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian3.jpg','游戏攻略3','2020-11-17');
/*!40000 ALTER TABLE `youxigonglve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxiku`
--

DROP TABLE IF EXISTS `youxiku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxiku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youxibiaoqian` varchar(200) DEFAULT NULL COMMENT '游戏标签',
  `juyuwang` varchar(200) DEFAULT NULL COMMENT '局域网',
  `youxifengmian` varchar(200) DEFAULT NULL COMMENT '游戏封面',
  `youxijianjie` longtext COMMENT '游戏简介',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `youxiwenjian` varchar(200) DEFAULT NULL COMMENT '游戏文件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='游戏库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxiku`
--

LOCK TABLES `youxiku` WRITE;
/*!40000 ALTER TABLE `youxiku` DISABLE KEYS */;
INSERT INTO `youxiku` VALUES (1,'2020-11-17 14:56:46','游戏名称1','游戏分类1','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian1.jpg','游戏简介1',1,'游戏文件1'),(2,'2020-11-17 14:56:46','游戏名称2','游戏分类2','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian2.jpg','游戏简介2',2,'游戏文件2'),(3,'2020-11-17 14:56:46','游戏名称3','游戏分类3','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian3.jpg','游戏简介3',3,'游戏文件3');
/*!40000 ALTER TABLE `youxiku` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-18 18:09:03
