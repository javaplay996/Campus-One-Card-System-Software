/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanyikatong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanyikatong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanyikatong`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `exam_name` varchar(200) DEFAULT NULL COMMENT '考试名称 Search111 ',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目  Search111 ',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '分数  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`exam_name`,`kemu_types`,`fraction`,`create_time`) values (1,2,'考试名称1',3,'120.0000','2021-03-31 16:31:26'),(2,2,'考试名称2',3,'121.0000','2021-03-31 16:31:52'),(3,3,'考试名称111',4,'60.0000','2021-04-01 09:39:23'),(4,3,'考试名称4',1,'10.0000','2021-04-01 09:44:08');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-31 16:25:12'),(2,'sex_types','性别',2,'女',NULL,'2021-03-31 16:25:12'),(3,'kemu_types','科目类型名称',1,'数学',NULL,'2021-03-31 16:25:12'),(4,'kemu_types','科目类型名称',2,'语文',NULL,'2021-03-31 16:25:12'),(5,'kemu_types','科目类型名称',3,'英语',NULL,'2021-03-31 16:25:12'),(6,'shebei_types','设备状态',1,'未使用',NULL,'2021-03-31 16:25:12'),(7,'shebei_types','设备状态',2,'正在使用',NULL,'2021-03-31 16:25:12'),(8,'zhujie_types','租借状态',1,'已还',NULL,'2021-03-31 16:25:12'),(9,'zhujie_types','租借状态',2,'未还',NULL,'2021-03-31 16:25:12'),(10,'kemu_types','科目类型',4,'化学',NULL,'2021-04-01 09:39:47');

/*Table structure for table `jiaofeijilu` */

DROP TABLE IF EXISTS `jiaofeijilu`;

CREATE TABLE `jiaofeijilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xfname` varchar(200) DEFAULT NULL COMMENT '消费原因 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '消费人',
  `xfmoney` decimal(10,4) DEFAULT NULL COMMENT '消费金额',
  `xiaofei_time` timestamp NULL DEFAULT NULL COMMENT '消费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='缴费记录';

/*Data for the table `jiaofeijilu` */

insert  into `jiaofeijilu`(`id`,`xfname`,`yonghu_id`,`xfmoney`,`xiaofei_time`,`create_time`) values (1,'充值金额',1,'41.0000','2021-03-31 20:50:26','2021-03-31 20:50:26'),(2,'水费等缴纳',1,'200.0000','2021-03-31 20:52:18','2021-03-31 20:52:18'),(3,'充值金额',2,'123.0000','2021-03-31 21:29:18','2021-03-31 21:29:18'),(4,'充值金额',3,'1221.0000','2021-04-01 09:42:09','2021-04-01 09:42:09'),(5,'1111',3,'1221.0000','2021-04-01 09:42:13','2021-04-01 09:42:13');

/*Table structure for table `jiaofeileixing` */

DROP TABLE IF EXISTS `jiaofeileixing`;

CREATE TABLE `jiaofeileixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '设备名称 Search111 ',
  `money` decimal(10,4) DEFAULT NULL COMMENT '缴费金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='缴费类型';

/*Data for the table `jiaofeileixing` */

insert  into `jiaofeileixing`(`id`,`name`,`money`,`create_time`) values (1,'学生学费','9000.0000','2021-03-31 17:37:31'),(2,'四六级报考费','500.0000','2021-03-31 17:37:41'),(3,'水费等缴纳','200.0000','2021-03-31 17:37:50'),(4,'1111','1221.0000','2021-04-01 09:40:23');

/*Table structure for table `jiehuan` */

DROP TABLE IF EXISTS `jiehuan`;

CREATE TABLE `jiehuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '租借人',
  `zhujie_time` timestamp NULL DEFAULT NULL COMMENT '租借时间',
  `zhujie_types` int(11) DEFAULT NULL COMMENT '租借状态 Search111',
  `guihuan_time` timestamp NULL DEFAULT NULL COMMENT '设备归还时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设备借还';

/*Data for the table `jiehuan` */

insert  into `jiehuan`(`id`,`shebei_id`,`yonghu_id`,`zhujie_time`,`zhujie_types`,`guihuan_time`,`create_time`) values (2,1,1,'2021-03-31 21:22:03',1,'2021-03-31 21:22:07','2021-03-31 21:22:03'),(3,1,3,'2021-04-01 09:44:31',1,'2021-04-01 09:44:49','2021-04-01 09:44:31');

/*Table structure for table `kaoqin` */

DROP TABLE IF EXISTS `kaoqin`;

CREATE TABLE `kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qdname` varchar(200) DEFAULT NULL COMMENT '签到课堂 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '签到人',
  `qiandao_time` timestamp NULL DEFAULT NULL COMMENT '签到时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `kaoqin` */

insert  into `kaoqin`(`id`,`qdname`,`yonghu_id`,`qiandao_time`,`create_time`) values (2,'123',1,'2021-03-31 17:24:02','2021-03-31 17:24:02'),(3,'321',1,'2021-03-31 20:53:50','2021-03-31 20:53:50'),(4,'xxx老师的数学课',3,'2021-04-01 09:45:20','2021-04-01 09:45:20');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sbname` varchar(200) DEFAULT NULL COMMENT '设备名称 Search111 ',
  `sbimg_photo` varchar(200) DEFAULT NULL COMMENT '设备图片',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备状态 Search111',
  `tongzhi_content` varchar(200) DEFAULT NULL COMMENT '设备信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`sbname`,`sbimg_photo`,`shebei_types`,`tongzhi_content`,`create_time`) values (1,'设备1','http://localhost:8080/xiaoyuanyikatong/file/download?fileName=1617190920293.jpg',1,'设备信息1\r\n','2021-03-31 17:25:20'),(2,'设备2','http://localhost:8080/xiaoyuanyikatong/file/download?fileName=1617190914288.jpg',1,'设备信息2\r\n','2021-03-31 17:32:30');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','s3t8b2m5s52454wu6njwige5zaod7jcj','2021-03-31 16:29:48','2021-04-01 10:36:40'),(2,1,'111','yonghu','用户','76p0fsdik9sf33gfz2e3g1bf7vc0sze3','2021-03-31 21:28:51','2021-04-01 10:18:32'),(3,2,'222','yonghu','用户','jur6wp0mfujicc8643rq1oorvnf19zs9','2021-03-31 21:29:10','2021-03-31 22:29:10'),(4,3,'333','yonghu','用户','6hahkf61iwtz9a0xt9xqy8r06bffs1mn','2021-04-01 09:40:41','2021-04-01 10:41:38');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `balance` double(10,2) DEFAULT NULL COMMENT '余额',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`id_number`,`balance`,`role`) values (1,'小金','111','111','http://localhost:8080/xiaoyuanyikatong/file/download?fileName=1617190967233.jpg',1,'17796312333','410882200011231234',800.00,'用户'),(2,'小札','222','222','http://localhost:8080/xiaoyuanyikatong/file/download?fileName=1617190946535.jpg',2,'17754548971','410882200011274855',123.00,'用户'),(3,'小张','333','333','http://localhost:8080/xiaoyuanyikatong/file/download?fileName=1617241087420.jpg',2,'17785566454','410882200011231312',0.00,'用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
