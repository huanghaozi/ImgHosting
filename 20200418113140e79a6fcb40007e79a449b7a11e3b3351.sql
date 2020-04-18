-- MySQL dump 10.13  Distrib 5.6.41, for Linux (x86_64)
--
-- Host: localhost    Database: ztll83e1
-- ------------------------------------------------------
-- Server version	5.6.41-log

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
-- Table structure for table `typecho_comments`
--

DROP TABLE IF EXISTS `typecho_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) unsigned DEFAULT '0',
  `ownerId` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `text` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_comments`
--

LOCK TABLES `typecho_comments` WRITE;
/*!40000 ALTER TABLE `typecho_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `typecho_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_contents`
--

DROP TABLE IF EXISTS `typecho_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `text` longtext,
  `order` int(10) unsigned DEFAULT '0',
  `authorId` int(10) unsigned DEFAULT '0',
  `template` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `password` varchar(32) DEFAULT NULL,
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` char(1) DEFAULT '0',
  `allowPing` char(1) DEFAULT '0',
  `allowFeed` char(1) DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  `likes` int(10) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_contents`
--

LOCK TABLES `typecho_contents` WRITE;
/*!40000 ALTER TABLE `typecho_contents` DISABLE KEYS */;
INSERT INTO `typecho_contents` VALUES (15,'Blog导完啦','15',1578140040,1578140040,'<!--markdown-->终于导完啦，Blog在[这里][1]\r\n\r\n\r\n  [1]: https://blog.hhzblog.xyz',0,1,NULL,'post','publish',NULL,0,'1','1','1',0,0,15),(2,'关于','about',1577466180,1577952365,'<!--markdown-->我是HHz\r\n马家沟船舶学院大三金融辅修**EE**爱好**CS**\r\n爱好：~~睡觉~~，搞♂电脑、修电器、打zhì、~~当工具人~~、乒乒球、画画\r\n扣扣：1158332489\r\n',12,1,'page-index.php','page','publish',NULL,0,'1','1','1',0,0,0),(4,'心愿','4',1577544540,1577553843,'<!--markdown-->**Hello NEW world!**',3,1,'page-index.php','page','publish',NULL,0,'1','1','1',0,0,0),(5,'捐赠','5',1577544720,1577553678,'<!--markdown-->![投资][1]\r\n\r\n\r\n  [1]: https://s2.ax1x.com/2019/12/29/lnuYGR.jpg',5,1,'page-index.php','page','publish',NULL,0,'1','1','1',0,0,0),(6,'日记','6',1577544776,1577544776,'<!--markdown-->',6,1,'page-note.php','page','publish',NULL,0,'1','1','1',0,0,0),(7,'作ye偷懒','7',1577545920,1577618263,'<!--markdown-->{\r\n\"project_img\": \"https://s2.ax1x.com/2019/12/29/lu7tGq.jpg\",\r\n\"body\": \"自动爬取投资学课程要求的数据...Python写的辣鸡爬虫\",\r\n\"imgs\": [\"https://s2.ax1x.com/2019/12/29/lu7NR0.jpg\"],\r\n\"info\": \"投资学数据日记偷懒\",\r\n\"url\": \"https://github.com/huanghaozi/autoInvestmentLog\",\r\n\"doc_url\": \"https://github.com/huanghaozi/autoInvestmentLog\"\r\n}',4,1,'page-works_info.php','page','publish',NULL,0,'1','1','1',0,0,0),(9,'语录','9',1577546280,1577554892,'<!--markdown-->“消灭人类暴政，世界属于三体！”——刘慈欣 《三体》\r\n\r\n“人天生，并将永远，是自私的动物。”——亚当·斯密《国富论》\r\n\r\n“资本来到世间,从头到脚,都流着血和肮脏的东西。”——马克思《资本论》\r\n\r\n“愿中国青年都摆脱冷气，只是向上走，不必听自暴自弃者流的话。”——鲁迅 《热风·随感录四十一》\r\n\r\n“昨天受群众拥戴的英雄一旦失败，今天就会受到侮辱。当然名望越高，反应就会越强烈。在这种情况下，群众就会把末路英雄视为自己的同类，为自己曾向一个已不复存在的权威低头哈腰而进行报复。”——古斯塔夫·勒庞《乌合之众》\r\n',7,1,'page-say.php','page','publish',NULL,0,'1','1','1',0,0,0),(8,'作品','8',1577546187,1577546187,'<!--markdown-->',8,1,'page-works.php','page','publish',NULL,0,'1','1','1',0,0,0),(10,'音乐','10',1577546340,1577697425,'<!--markdown-->{\r\n\"par\": \"YRGVUTMn7S4nhZvvxOPrGO4Zj0bPEnMBsZgN2F/P2/eo86P8XifEVcOec4YzkGAc0ccAGjsTDFUx/iuBUJIx1w5w2vFrrF+bNf9BC2uLo68ATYAjcCsZUhy6LZRdu7cI\",\r\n\"key\": \"977dfe3f890c2129067277cee2201ee3586e519725056bf5f24caf5e010001b99d9e1604f4500d438863007ca033eb445f575468e1418c9e9536740c084b3c1f8368480b5864c61d6d8b8edfb61983e93d6a8750b9f9bebc80c3848685a6367273cf61dfbcdbff9cb39e7e97f3b980cd77c55f9d1f82701a6fcd25b5fdfd3e4f\",\r\n\"token\": \"cee631ce403963bc7194ac2d753884e4\",\r\n\"cookie\": \"mail_psc_fingerprint=01b05969cf0edc57f0e2b6ab2d556208; _iuqxldmzr_=32; _ntes_nnid=d58fa4925c35962e3d574abbef16ddf2,1572354923449; _ntes_nuid=d58fa4925c35962e3d574abbef16ddf2; WM_TID=LRkVnCi%2FKuhAQVFUAFJo6EI7nNAItcIq; __remember_me=true; ntes_kaola_ad=1; nts_mail_user=johnhaung@163.com:-1:1; NTES_SESS=yhrWL1HbFMwOgIQvhyB7VNNcHFzZeHGWXQs5Qr7dWorowsISwc4gjpIswVOdCVNHVNHdo6r7ZFzg5EhXxh5MN7sgH69AO6PmDjauMM3J36PCSscBcatWmHrAOlWJ8lnRtWkVdPMjKCEkjgiI.xmvG_lZjBOgxSrU.3woh1uDf_.N8Uoc0_mr.UHcCtFogFPwgcMp9fMzqvrNyrasCPSUEvsMuaRsrNXuL; S_INFO=1576931991|0|1&65##|huang_hao_zi; P_INFO=huang_hao_zi@163.com|1576931991|1|imooc|00&99|nix&1573540735&mail163#not_found&null#10#0#0|177932&0|mail163|huang_hao_zi@163.com; hb_MA-975A-DBD9471124CE_source=www.baidu.com; JSESSIONID-WYYY=mryB18G0sWkd%2F%2Fqd%5CQQoDbtH2i6Bzb56YjNWN4vNgQiY5EAdu4d%2Fbeoi%2BJwQ4XAsu2zfUNx0N1a%2B5NJoQTzfDRcKRdQ9ZU5sl2uM5dvrwzCBsrX4AYcgTkJGDkHGedfpj%5CwtXYHaZv5oMdPI3yEVFIgwsMQkl0HO43ITzu2dA9CsX7Es%3A1577698587529; MUSIC_U=7a1a01b56d0807966af12b9462fe9f7677cb25695982896eb9836c8c25f23af88f1fce9c6090cc124b51204d94e9c9c37955a739ab43dce1; __csrf=cee631ce403963bc7194ac2d753884e4; WM_NI=HrZlN%2F%2BYJSMfBF0ncfdvqa2n7fI3CG59vdiCbnyhpHg00NJ%2FOmDq76Lcs8Ha7B%2BaVeCso2WHlF6x%2Bto7PUh3pOFmY9axmqGdgC6vaRSURj8H4RNqnCljkbb1eoCnyV42bXU%3D; WM_NIKE=9ca17ae2e6ffcda170e2e6eeb9c66bb790b896b75cbae78eb2c14b968a8fbaee21aa96fcb6e46286b9f98fef2af0fea7c3b92a8cae968dcd25e98786b4d06e829a008fe26ea8aabf82b166f5ba87d4c24df7e7ba85ec49a2b2b789f344a5f000afc9258db38c92b63e90bdbdd9cb6bf59ee582d56f81ada1d3d644b09afa99aa80ade9a0b6eb39b4918a8edc33a3a8a392c670a59dfa97e45a918b9e8bbb44f88e8292ed49b0b6a583e13ba7b18d8ffc5ef8eeaeb9d837e2a3\"\r\n}',9,1,'page-music.php','page','publish',NULL,0,'1','1','1',0,0,0),(11,'友链','11',1577546400,1577547482,'<!--markdown-->YeZi\r\nhttps://yukino.nl/\r\n鸿则的博客\r\nhttps://blog.hungtcs.top/\r\n宇宙的心弦\r\nhttps://www.physixfan.com/\r\n逆向未来\r\nhttps://www.pd521.com/\r\n保罗的小窝\r\nhttps://paul.ren/\r\n莫烦zhou\r\nhttps://morvanzhou.github.io/\r\nD的个人博客\r\nhttps://88250.b3log.org/\r\ninnei\r\nhttp://innei.ren/',10,1,'page-link.php','page','publish',NULL,0,'1','1','1',0,0,0),(13,'paCEIC','13',1577550840,1577618323,'<!--markdown-->{\r\n\"project_img\": \"https://s2.ax1x.com/2019/12/29/lu7WQK.jpg\",\r\n\"body\": \"爬取CEICdata.com的爬虫....@(一-一) 秘密---嘘```\",\r\n\"imgs\": [\"https://s2.ax1x.com/2019/12/29/lu7fsO.png\"],\r\n\"info\": \"数据网站的爬虫\",\r\n\"url\": \"https://github.com/huanghaozi/paCEIC\",\r\n\"doc_url\": \"https://github.com/huanghaozi/paCEIC\"\r\n}',1,1,'page-works_info.php','page','publish',NULL,0,'1','1','1',0,0,0),(12,'追番','12',1577546451,1577546451,'<!--markdown-->',11,1,'page-bangumi.php','page','publish',NULL,0,'1','1','1',0,0,0),(14,'4to6','14',1577551800,1578453545,'<!--markdown-->{\r\n\"project_img\": \"https://s2.ax1x.com/2019/12/29/lu7xeg.jpg\",\r\n\"body\": \"IPV4环境下上IPV6和x网的Windows脚本，用的是6chang服务器，嘘！\",\r\n\"imgs\": [\"https://s2.ax1x.com/2019/12/29/lu7zwQ.png\"],\r\n\"info\": \"一个jio本而已喔\",\r\n\"url\": \"https://github.com/huanghaozi/4to6\",\r\n\"doc_url\": \"https://github.com/huanghaozi/4to6\"\r\n}',2,1,'page-works_info.php','page','publish',NULL,0,'1','1','1',0,0,0);
/*!40000 ALTER TABLE `typecho_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_fields`
--

DROP TABLE IF EXISTS `typecho_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_fields` (
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(8) DEFAULT 'str',
  `str_value` text,
  `int_value` int(10) DEFAULT '0',
  `float_value` float DEFAULT '0',
  PRIMARY KEY (`cid`,`name`),
  KEY `int_value` (`int_value`),
  KEY `float_value` (`float_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_fields`
--

LOCK TABLES `typecho_fields` WRITE;
/*!40000 ALTER TABLE `typecho_fields` DISABLE KEYS */;
INSERT INTO `typecho_fields` VALUES (15,'mood','str','开心',0,0);
/*!40000 ALTER TABLE `typecho_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_metas`
--

DROP TABLE IF EXISTS `typecho_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `order` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_metas`
--

LOCK TABLES `typecho_metas` WRITE;
/*!40000 ALTER TABLE `typecho_metas` DISABLE KEYS */;
INSERT INTO `typecho_metas` VALUES (1,'默认分类','default','category','只是一个默认分类',1,1,0),(2,'test','test','tag',NULL,0,0,0),(3,'汇编语言','汇编语言','tag',NULL,0,0,0),(4,'自学笔记','自学笔记','tag',NULL,0,0,0);
/*!40000 ALTER TABLE `typecho_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_options`
--

DROP TABLE IF EXISTS `typecho_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_options` (
  `name` varchar(32) NOT NULL,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`name`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_options`
--

LOCK TABLES `typecho_options` WRITE;
/*!40000 ALTER TABLE `typecho_options` DISABLE KEYS */;
INSERT INTO `typecho_options` VALUES ('theme',0,'Paul'),('theme:Paul',0,'a:19:{s:7:\"favicon\";s:41:\"https://s2.ax1x.com/2019/12/29/lnK2tJ.png\";s:10:\"background\";s:41:\"https://s2.ax1x.com/2019/12/29/lnKRh9.png\";s:6:\"avatar\";s:41:\"https://s2.ax1x.com/2019/12/29/lnK2tJ.png\";s:15:\"github_username\";s:10:\"huanghaozi\";s:8:\"weibo_id\";s:11:\"huanghaozzz\";s:10:\"netease_id\";s:9:\"490031751\";s:7:\"bili_id\";s:7:\"8150379\";s:3:\"RSS\";s:34:\"https://hhzblog.xyz/index.php/feed\";s:8:\"blog_url\";s:19:\"https://hhzblog.xyz\";s:9:\"note_nums\";s:2:\"10\";s:14:\"is_hidden_note\";s:1:\"0\";s:6:\"secret\";s:10:\"helloworld\";s:15:\"display_bgm_num\";s:2:\"10\";s:22:\"is_display_all_content\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";s:13:\"custom_script\";s:717:\"<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?257e3566f3db4eecb81be3f511c652d1\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>\r\n<script>\r\n(function(){\r\n    var bp = document.createElement(\'script\');\r\n    var curProtocol = window.location.protocol.split(\':\')[0];\r\n    if (curProtocol === \'https\') {\r\n        bp.src = \'https://zz.bdstatic.com/linksubmit/push.js\';\r\n    }\r\n    else {\r\n        bp.src = \'http://push.zhanzhang.baidu.com/push.js\';\r\n    }\r\n    var s = document.getElementsByTagName(\"script\")[0];\r\n    s.parentNode.insertBefore(bp, s);\r\n})();\r\n</script>\r\n\";s:11:\"home_social\";s:0:\"\";s:11:\"author_text\";s:21:\"HHz - o(*￣▽￣*)o\";s:8:\"svg_path\";s:0:\"\";}'),('timezone',0,'28800'),('lang',0,NULL),('charset',0,'UTF-8'),('contentType',0,'text/html'),('gzip',0,'0'),('generator',0,'Typecho 1.1/17.10.30'),('title',0,'HHz の 小站'),('description',0,'Hello!'),('keywords',0,'typecho,php,blog'),('rewrite',0,'0'),('frontPage',0,'recent'),('frontArchive',0,'0'),('commentsRequireMail',0,'0'),('commentsWhitelist',0,'0'),('commentsRequireURL',0,'0'),('commentsRequireModeration',0,'0'),('plugins',0,'a:2:{s:9:\"activated\";a:1:{s:3:\"Pio\";a:1:{s:7:\"handles\";a:2:{s:21:\"Widget_Archive:header\";a:1:{i:0;a:2:{i:0;s:10:\"Pio_Plugin\";i:1;s:6:\"header\";}}s:21:\"Widget_Archive:footer\";a:1:{i:0;a:2:{i:0;s:10:\"Pio_Plugin\";i:1;s:6:\"footer\";}}}}}s:7:\"handles\";a:2:{s:21:\"Widget_Archive:header\";a:1:{i:0;a:2:{i:0;s:10:\"Pio_Plugin\";i:1;s:6:\"header\";}}s:21:\"Widget_Archive:footer\";a:1:{i:0;a:2:{i:0;s:10:\"Pio_Plugin\";i:1;s:6:\"footer\";}}}}'),('commentDateFormat',0,'F jS, Y \\a\\t h:i a'),('siteUrl',0,'https://hhzblog.xyz'),('defaultCategory',0,'1'),('allowRegister',0,'0'),('defaultAllowComment',0,'1'),('defaultAllowPing',0,'1'),('defaultAllowFeed',0,'1'),('pageSize',0,'5'),('postsListSize',0,'10'),('commentsListSize',0,'10'),('commentsHTMLTagAllowed',0,NULL),('postDateFormat',0,'Y-m-d'),('feedFullText',0,'1'),('editorSize',0,'350'),('autoSave',0,'0'),('markdown',0,'1'),('xmlrpcMarkdown',0,'0'),('commentsMaxNestingLevels',0,'7'),('commentsPostTimeout',0,'2592000'),('commentsUrlNofollow',0,'1'),('commentsShowUrl',0,'1'),('commentsMarkdown',0,'0'),('commentsPageBreak',0,'0'),('commentsThreaded',0,'1'),('commentsPageSize',0,'20'),('commentsPageDisplay',0,'last'),('commentsOrder',0,'DESC'),('commentsCheckReferer',0,'0'),('commentsAutoClose',0,'0'),('commentsPostIntervalEnable',0,'0'),('commentsPostInterval',0,'60'),('commentsShowCommentOnly',0,'0'),('commentsAvatar',0,'1'),('commentsAvatarRating',0,'X'),('commentsAntiSpam',0,'0'),('routingTable',0,'a:26:{i:0;a:25:{s:5:\"index\";a:6:{s:3:\"url\";s:1:\"/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:8:\"|^[/]?$|\";s:6:\"format\";s:1:\"/\";s:6:\"params\";a:0:{}}s:7:\"archive\";a:6:{s:3:\"url\";s:6:\"/blog/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:13:\"|^/blog[/]?$|\";s:6:\"format\";s:6:\"/blog/\";s:6:\"params\";a:0:{}}s:2:\"do\";a:6:{s:3:\"url\";s:22:\"/action/[action:alpha]\";s:6:\"widget\";s:9:\"Widget_Do\";s:6:\"action\";s:6:\"action\";s:4:\"regx\";s:32:\"|^/action/([_0-9a-zA-Z-]+)[/]?$|\";s:6:\"format\";s:10:\"/action/%s\";s:6:\"params\";a:1:{i:0;s:6:\"action\";}}s:4:\"post\";a:6:{s:3:\"url\";s:24:\"/archives/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:26:\"|^/archives/([0-9]+)[/]?$|\";s:6:\"format\";s:13:\"/archives/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"cid\";}}s:10:\"attachment\";a:6:{s:3:\"url\";s:26:\"/attachment/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:28:\"|^/attachment/([0-9]+)[/]?$|\";s:6:\"format\";s:15:\"/attachment/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"cid\";}}s:8:\"category\";a:6:{s:3:\"url\";s:17:\"/category/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:25:\"|^/category/([^/]+)[/]?$|\";s:6:\"format\";s:13:\"/category/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}s:3:\"tag\";a:6:{s:3:\"url\";s:12:\"/tag/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:20:\"|^/tag/([^/]+)[/]?$|\";s:6:\"format\";s:8:\"/tag/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}s:6:\"author\";a:6:{s:3:\"url\";s:22:\"/author/[uid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:24:\"|^/author/([0-9]+)[/]?$|\";s:6:\"format\";s:11:\"/author/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"uid\";}}s:6:\"search\";a:6:{s:3:\"url\";s:19:\"/search/[keywords]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:23:\"|^/search/([^/]+)[/]?$|\";s:6:\"format\";s:11:\"/search/%s/\";s:6:\"params\";a:1:{i:0;s:8:\"keywords\";}}s:10:\"index_page\";a:6:{s:3:\"url\";s:21:\"/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:22:\"|^/page/([0-9]+)[/]?$|\";s:6:\"format\";s:9:\"/page/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"page\";}}s:12:\"archive_page\";a:6:{s:3:\"url\";s:26:\"/blog/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:27:\"|^/blog/page/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/blog/page/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"page\";}}s:13:\"category_page\";a:6:{s:3:\"url\";s:32:\"/category/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:34:\"|^/category/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:16:\"/category/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"slug\";i:1;s:4:\"page\";}}s:8:\"tag_page\";a:6:{s:3:\"url\";s:27:\"/tag/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:29:\"|^/tag/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:11:\"/tag/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"slug\";i:1;s:4:\"page\";}}s:11:\"author_page\";a:6:{s:3:\"url\";s:37:\"/author/[uid:digital]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:33:\"|^/author/([0-9]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/author/%s/%s/\";s:6:\"params\";a:2:{i:0;s:3:\"uid\";i:1;s:4:\"page\";}}s:11:\"search_page\";a:6:{s:3:\"url\";s:34:\"/search/[keywords]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:32:\"|^/search/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/search/%s/%s/\";s:6:\"params\";a:2:{i:0;s:8:\"keywords\";i:1;s:4:\"page\";}}s:12:\"archive_year\";a:6:{s:3:\"url\";s:18:\"/[year:digital:4]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:19:\"|^/([0-9]{4})[/]?$|\";s:6:\"format\";s:4:\"/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"year\";}}s:13:\"archive_month\";a:6:{s:3:\"url\";s:36:\"/[year:digital:4]/[month:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:30:\"|^/([0-9]{4})/([0-9]{2})[/]?$|\";s:6:\"format\";s:7:\"/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"year\";i:1;s:5:\"month\";}}s:11:\"archive_day\";a:6:{s:3:\"url\";s:52:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:41:\"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})[/]?$|\";s:6:\"format\";s:10:\"/%s/%s/%s/\";s:6:\"params\";a:3:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:3:\"day\";}}s:17:\"archive_year_page\";a:6:{s:3:\"url\";s:38:\"/[year:digital:4]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:33:\"|^/([0-9]{4})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:12:\"/%s/page/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"year\";i:1;s:4:\"page\";}}s:18:\"archive_month_page\";a:6:{s:3:\"url\";s:56:\"/[year:digital:4]/[month:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:44:\"|^/([0-9]{4})/([0-9]{2})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:15:\"/%s/%s/page/%s/\";s:6:\"params\";a:3:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:4:\"page\";}}s:16:\"archive_day_page\";a:6:{s:3:\"url\";s:72:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:55:\"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:18:\"/%s/%s/%s/page/%s/\";s:6:\"params\";a:4:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:3:\"day\";i:3;s:4:\"page\";}}s:12:\"comment_page\";a:6:{s:3:\"url\";s:53:\"[permalink:string]/comment-page-[commentPage:digital]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:36:\"|^(.+)/comment\\-page\\-([0-9]+)[/]?$|\";s:6:\"format\";s:18:\"%s/comment-page-%s\";s:6:\"params\";a:2:{i:0;s:9:\"permalink\";i:1;s:11:\"commentPage\";}}s:4:\"feed\";a:6:{s:3:\"url\";s:20:\"/feed[feed:string:0]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:4:\"feed\";s:4:\"regx\";s:17:\"|^/feed(.*)[/]?$|\";s:6:\"format\";s:7:\"/feed%s\";s:6:\"params\";a:1:{i:0;s:4:\"feed\";}}s:8:\"feedback\";a:6:{s:3:\"url\";s:31:\"[permalink:string]/[type:alpha]\";s:6:\"widget\";s:15:\"Widget_Feedback\";s:6:\"action\";s:6:\"action\";s:4:\"regx\";s:29:\"|^(.+)/([_0-9a-zA-Z-]+)[/]?$|\";s:6:\"format\";s:5:\"%s/%s\";s:6:\"params\";a:2:{i:0;s:9:\"permalink\";i:1;s:4:\"type\";}}s:4:\"page\";a:6:{s:3:\"url\";s:12:\"/[slug].html\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:22:\"|^/([^/]+)\\.html[/]?$|\";s:6:\"format\";s:8:\"/%s.html\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}}s:5:\"index\";a:3:{s:3:\"url\";s:1:\"/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:7:\"archive\";a:3:{s:3:\"url\";s:6:\"/blog/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:2:\"do\";a:3:{s:3:\"url\";s:22:\"/action/[action:alpha]\";s:6:\"widget\";s:9:\"Widget_Do\";s:6:\"action\";s:6:\"action\";}s:4:\"post\";a:3:{s:3:\"url\";s:24:\"/archives/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:10:\"attachment\";a:3:{s:3:\"url\";s:26:\"/attachment/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:8:\"category\";a:3:{s:3:\"url\";s:17:\"/category/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:3:\"tag\";a:3:{s:3:\"url\";s:12:\"/tag/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:6:\"author\";a:3:{s:3:\"url\";s:22:\"/author/[uid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:6:\"search\";a:3:{s:3:\"url\";s:19:\"/search/[keywords]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:10:\"index_page\";a:3:{s:3:\"url\";s:21:\"/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"archive_page\";a:3:{s:3:\"url\";s:26:\"/blog/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:13:\"category_page\";a:3:{s:3:\"url\";s:32:\"/category/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:8:\"tag_page\";a:3:{s:3:\"url\";s:27:\"/tag/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"author_page\";a:3:{s:3:\"url\";s:37:\"/author/[uid:digital]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"search_page\";a:3:{s:3:\"url\";s:34:\"/search/[keywords]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"archive_year\";a:3:{s:3:\"url\";s:18:\"/[year:digital:4]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:13:\"archive_month\";a:3:{s:3:\"url\";s:36:\"/[year:digital:4]/[month:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"archive_day\";a:3:{s:3:\"url\";s:52:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:17:\"archive_year_page\";a:3:{s:3:\"url\";s:38:\"/[year:digital:4]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:18:\"archive_month_page\";a:3:{s:3:\"url\";s:56:\"/[year:digital:4]/[month:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:16:\"archive_day_page\";a:3:{s:3:\"url\";s:72:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"comment_page\";a:3:{s:3:\"url\";s:53:\"[permalink:string]/comment-page-[commentPage:digital]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:4:\"feed\";a:3:{s:3:\"url\";s:20:\"/feed[feed:string:0]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:4:\"feed\";}s:8:\"feedback\";a:3:{s:3:\"url\";s:31:\"[permalink:string]/[type:alpha]\";s:6:\"widget\";s:15:\"Widget_Feedback\";s:6:\"action\";s:6:\"action\";}s:4:\"page\";a:3:{s:3:\"url\";s:12:\"/[slug].html\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}}'),('actionTable',0,'a:0:{}'),('panelTable',0,'a:0:{}'),('attachmentTypes',0,'@image@,@media@,@doc@'),('secret',0,'1l8IfRAE27la1KhM9PhrLkJPyyfwL1dg'),('installed',0,'1'),('allowXmlRpc',0,'2'),('autoSave',1,'0'),('markdown',1,'1'),('xmlrpcMarkdown',1,'0'),('defaultAllowComment',1,'1'),('defaultAllowPing',1,'1'),('defaultAllowFeed',1,'1'),('plugin:Pio',0,'a:10:{s:13:\"choose_models\";N;s:12:\"custom_model\";s:43:\"https://files.hhzblog.xyz/haruto/model.json\";s:8:\"position\";s:4:\"left\";s:12:\"custom_width\";s:3:\"200\";s:13:\"custom_height\";s:3:\"290\";s:5:\"night\";s:0:\"\";s:11:\"custom_mode\";s:9:\"draggable\";s:6:\"hidden\";s:1:\"0\";s:4:\"tips\";s:1:\"1\";s:6:\"dialog\";s:0:\"\";}');
/*!40000 ALTER TABLE `typecho_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_relationships`
--

DROP TABLE IF EXISTS `typecho_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_relationships`
--

LOCK TABLES `typecho_relationships` WRITE;
/*!40000 ALTER TABLE `typecho_relationships` DISABLE KEYS */;
INSERT INTO `typecho_relationships` VALUES (15,1);
/*!40000 ALTER TABLE `typecho_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecho_users`
--

DROP TABLE IF EXISTS `typecho_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecho_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group` varchar(16) DEFAULT 'visitor',
  `authCode` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecho_users`
--

LOCK TABLES `typecho_users` WRITE;
/*!40000 ALTER TABLE `typecho_users` DISABLE KEYS */;
INSERT INTO `typecho_users` VALUES (1,'huanghaozi','$P$BzDaDqFtY1fdHbu61M2B3gRjL8slm91','huang_hao_zi@outlook.com','https://hhzblog.xyz','HHz',1577466224,1581314099,1580532967,'administrator','717be64c5cdf023a80013e54602bad98');
/*!40000 ALTER TABLE `typecho_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02  7:03:38
