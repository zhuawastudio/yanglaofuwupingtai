/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yanglaofuwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yanglaofuwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yanglaofuwupingtai`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '病例名称 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '老人',
  `bingli_bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `bingli_file` varchar(200) DEFAULT NULL COMMENT '药单',
  `bingli_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`bingli_uuid_number`,`bingli_name`,`yonghu_id`,`bingli_bingqing`,`jianchaxiangmu`,`jianchajieguo`,`bingli_file`,`bingli_time`,`yisheng_id`,`create_time`) values (1,'164769264060318','病例名称1',3,'病情1','检查项目1','检查结果1','http://localhost:8080/yanglaofuwupingtai/upload/file.rar','2022-03-19',3,'2022-03-19 20:24:00'),(2,'16476926406033','病例名称2',1,'病情2','检查项目2','检查结果2','http://localhost:8080/yanglaofuwupingtai/upload/file.rar','2022-03-19',2,'2022-03-19 20:24:00'),(3,'164769264060316','病例名称3',2,'病情3','检查项目3','检查结果3','http://localhost:8080/yanglaofuwupingtai/upload/file.rar','2022-03-19',1,'2022-03-19 20:24:00'),(4,'164769264060316','病例名称4',3,'病情4','检查项目4','检查结果4','http://localhost:8080/yanglaofuwupingtai/upload/file.rar','2022-03-19',1,'2022-03-19 20:24:00'),(5,'164769264060318','病例名称5',2,'病情5','检查项目5','检查结果5','http://localhost:8080/yanglaofuwupingtai/upload/file.rar','2022-03-19',2,'2022-03-19 20:24:00');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yanglaofuwupingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yanglaofuwupingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/yanglaofuwupingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'zongyishiliao_types','食疗类型',1,'食疗类型1',NULL,NULL,'2022-03-19 20:23:22'),(2,'zongyishiliao_types','食疗类型',2,'食疗类型2',NULL,NULL,'2022-03-19 20:23:22'),(3,'zongyishiliao_types','食疗类型',3,'食疗类型3',NULL,NULL,'2022-03-19 20:23:22'),(4,'xinlitiaohu_types','心里调护类型',1,'心里调护类型1',NULL,NULL,'2022-03-19 20:23:22'),(5,'xinlitiaohu_types','心里调护类型',2,'心里调护类型2',NULL,NULL,'2022-03-19 20:23:22'),(6,'xinlitiaohu_types','心里调护类型',3,'心里调护类型3',NULL,NULL,'2022-03-19 20:23:22'),(7,'zhongyao_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2022-03-19 20:23:22'),(8,'zhongyao_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2022-03-19 20:23:22'),(9,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-19 20:23:22'),(10,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-19 20:23:22'),(11,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-19 20:23:22'),(12,'sex_types','性别',1,'男',NULL,NULL,'2022-03-19 20:23:22'),(13,'sex_types','性别',2,'女',NULL,NULL,'2022-03-19 20:23:22'),(14,'keshi_types','科室',1,'科室1',NULL,NULL,'2022-03-19 20:23:23'),(15,'keshi_types','科室',2,'科室2',NULL,NULL,'2022-03-19 20:23:23'),(16,'yuyueguahao_yesno_types','审核',1,'审核中',NULL,NULL,NULL),(17,'yuyueguahao_yesno_types','审核',2,'通过',NULL,NULL,NULL),(18,'yuyueguahao_yesno_types','审核',3,'拒绝',NULL,NULL,NULL);

/*Table structure for table `huli` */

DROP TABLE IF EXISTS `huli`;

CREATE TABLE `huli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huli_name` varchar(200) DEFAULT NULL COMMENT '护理姓名 Search111 ',
  `huli_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `huli_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `huli_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='护理';

/*Data for the table `huli` */

insert  into `huli`(`id`,`username`,`password`,`huli_name`,`huli_photo`,`sex_types`,`huli_phone`,`huli_email`,`create_time`) values (1,'a1','123456','护理姓名1','http://localhost:8080/yanglaofuwupingtai/upload/huli1.jpg',2,'17703786901','1@qq.com','2022-03-19 20:24:00'),(2,'a2','123456','护理姓名2','http://localhost:8080/yanglaofuwupingtai/upload/huli2.jpg',1,'17703786902','2@qq.com','2022-03-19 20:24:00'),(3,'a3','123456','护理姓名3','http://localhost:8080/yanglaofuwupingtai/upload/huli3.jpg',1,'17703786903','3@qq.com','2022-03-19 20:24:00');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '老人',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费原因 Search111',
  `jiaofei_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `jiaofei_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='缴费信息';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`yonghu_id`,`jiaofei_name`,`jiaofei_time`,`jiaofei_money`,`create_time`) values (1,1,'缴费原因1','2022-03-19 20:24:00','197.32','2022-03-19 20:24:00'),(2,2,'缴费原因2','2022-03-19 20:24:00','888.78','2022-03-19 20:24:00'),(3,3,'缴费原因3','2022-03-19 20:24:00','915.41','2022-03-19 20:24:00'),(4,1,'缴费原因4','2022-03-19 20:24:00','341.64','2022-03-19 20:24:00'),(5,2,'缴费原因5','2022-03-19 20:24:00','78.88','2022-03-19 20:24:00'),(6,3,'体检','2022-03-18 00:00:00','50.00','2022-03-21 09:34:45');

/*Table structure for table `laifangdengji` */

DROP TABLE IF EXISTS `laifangdengji`;

CREATE TABLE `laifangdengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '老人',
  `laifangdengji_name` varchar(200) DEFAULT NULL COMMENT '来访人名称 Search111',
  `laifangdengji_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='来访登记';

/*Data for the table `laifangdengji` */

insert  into `laifangdengji`(`id`,`yonghu_id`,`laifangdengji_name`,`laifangdengji_time`,`create_time`) values (1,1,'来访人名称1','2022-03-19 20:24:00','2022-03-19 20:24:00'),(2,1,'来访人名称2','2022-03-19 20:24:00','2022-03-19 20:24:00'),(3,3,'来访人名称3','2022-03-19 20:24:00','2022-03-19 20:24:00'),(4,1,'来访人名称4','2022-03-19 20:24:00','2022-03-19 20:24:00'),(5,3,'来访人名称5','2022-03-19 20:24:00','2022-03-19 20:24:00'),(6,2,'名称123','2022-03-09 00:00:00','2022-03-21 09:35:33');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/yanglaofuwupingtai/upload/news1.jpg','2022-03-19 20:24:00','公告详情1','2022-03-19 20:24:00'),(2,'公告标题2',2,'http://localhost:8080/yanglaofuwupingtai/upload/news2.jpg','2022-03-19 20:24:00','公告详情2','2022-03-19 20:24:00'),(3,'公告标题3',2,'http://localhost:8080/yanglaofuwupingtai/upload/news3.jpg','2022-03-19 20:24:00','公告详情3','2022-03-19 20:24:00'),(4,'公告标题4',2,'http://localhost:8080/yanglaofuwupingtai/upload/news4.jpg','2022-03-19 20:24:00','公告详情4','2022-03-19 20:24:00'),(5,'公告标题5',1,'http://localhost:8080/yanglaofuwupingtai/upload/news5.jpg','2022-03-19 20:24:00','公告详情5','2022-03-19 20:24:00');

/*Table structure for table `richenganpai` */

DROP TABLE IF EXISTS `richenganpai`;

CREATE TABLE `richenganpai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '老人',
  `richenganpai_name` varchar(200) DEFAULT NULL COMMENT '事情 Search111',
  `richenganpai_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='日程安排';

/*Data for the table `richenganpai` */

insert  into `richenganpai`(`id`,`yonghu_id`,`richenganpai_name`,`richenganpai_time`,`create_time`) values (1,3,'事情1','2022-03-19 20:24:00','2022-03-19 20:24:00'),(2,1,'事情2','2022-03-19 20:24:00','2022-03-19 20:24:00'),(3,3,'事情3','2022-03-19 20:24:00','2022-03-19 20:24:00'),(4,3,'事情4','2022-03-19 20:24:00','2022-03-19 20:24:00'),(5,3,'事情5','2022-03-19 20:24:00','2022-03-19 20:24:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','pknne1vdqjh9c74rp57ifz4iywoi98ks','2022-03-19 20:26:42','2022-03-21 10:43:18'),(2,1,'a1','yonghu','老人','cux2ynp4kl6amwtmrbrvbqgru89au09n','2022-03-19 20:27:04','2022-03-21 10:36:28'),(3,1,'a1','huli','护理','draejqr230nkk3665zi29rjl9tz9ahfn','2022-03-19 21:20:13','2022-03-21 10:33:37'),(4,1,'a1','yisheng','医生','up4sww95vtkjm472sg45ex9h1z57t406','2022-03-21 09:07:54','2022-03-21 10:42:23'),(5,1,'a1','yuangong','员工','hffpfclq7owkw6uhxc9kacr4bviqp6p4','2022-03-21 09:35:18','2022-03-21 10:35:18'),(6,2,'a2','yisheng','医生','rwmvkhmmak34cnffjx6onp875dmu77d8','2022-03-21 09:42:53','2022-03-21 10:42:53');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xinlitiaohu` */

DROP TABLE IF EXISTS `xinlitiaohu`;

CREATE TABLE `xinlitiaohu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlitiaohu_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `xinlitiaohu_types` int(11) DEFAULT NULL COMMENT '心里调护类型 Search111',
  `xinlitiaohu_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `xinlitiaohu_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `xinlitiaohu_content` text COMMENT '心里调护详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='心里调护';

/*Data for the table `xinlitiaohu` */

insert  into `xinlitiaohu`(`id`,`xinlitiaohu_name`,`xinlitiaohu_types`,`xinlitiaohu_photo`,`xinlitiaohu_video`,`xinlitiaohu_content`,`create_time`) values (1,'标题1',1,'http://localhost:8080/yanglaofuwupingtai/upload/1647696151587.jpeg','http://localhost:8080/yanglaofuwupingtai/upload/video.mp4','<p>心里调护详情1</p>','2022-03-19 20:24:00'),(2,'标题2',3,'http://localhost:8080/yanglaofuwupingtai/upload/1647696144688.jpeg','http://localhost:8080/yanglaofuwupingtai/upload/video.mp4','<p>心里调护详情2</p>','2022-03-19 20:24:00'),(3,'标题3',2,'http://localhost:8080/yanglaofuwupingtai/upload/1647696136612.jpeg','http://localhost:8080/yanglaofuwupingtai/upload/video.mp4','<p>心里调护详情3</p>','2022-03-19 20:24:00'),(4,'标题4',2,'http://localhost:8080/yanglaofuwupingtai/upload/1647696127988.jpeg','http://localhost:8080/yanglaofuwupingtai/upload/video.mp4','<p>心里调护详情4</p>','2022-03-19 20:24:00'),(5,'标题5',1,'http://localhost:8080/yanglaofuwupingtai/upload/1647696120630.jpeg','http://localhost:8080/yanglaofuwupingtai/upload/video.mp4','<p>心里调护详情5</p>','2022-03-19 20:24:00');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) NOT NULL COMMENT '医生工号',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `keshi_types` int(200) DEFAULT NULL COMMENT '科室 Search111',
  `yisheng_zhuanchang` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `yisheng_zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yisheng_zuozhenshijian` varchar(200) DEFAULT NULL COMMENT '坐诊时间',
  `yisheng_new_money` decimal(10,2) NOT NULL COMMENT '挂号价格',
  `yisheng_content` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_uuid_number`,`yisheng_name`,`sex_types`,`yisheng_phone`,`keshi_types`,`yisheng_zhuanchang`,`yisheng_zhicheng`,`yisheng_photo`,`yisheng_zuozhenshijian`,`yisheng_new_money`,`yisheng_content`,`create_time`) values (1,'a1','123456','164769264065211','医生姓名1',1,'17703786901',2,'擅长领域1','职称1','http://localhost:8080/yanglaofuwupingtai/upload/yisheng1.jpg','坐诊时间1','376.71','个人介绍1','2022-03-19 20:24:00'),(2,'a2','123456','164769264065211','医生姓名2',1,'17703786902',1,'擅长领域2','职称2','http://localhost:8080/yanglaofuwupingtai/upload/yisheng2.jpg','坐诊时间2','311.17','个人介绍2','2022-03-19 20:24:00'),(3,'a3','123456','164769264065220','医生姓名3',1,'17703786903',1,'擅长领域3','职称3','http://localhost:8080/yanglaofuwupingtai/upload/yisheng3.jpg','坐诊时间3','240.45','个人介绍3','2022-03-19 20:24:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '老人姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '老人身份证号 ',
  `yonghu_kahao` varchar(200) DEFAULT NULL COMMENT '医保卡号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `yonghu_time` timestamp NULL DEFAULT NULL COMMENT '入院日期',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_kahao`,`yonghu_email`,`yonghu_jiguan`,`yonghu_time`,`yonghu_delete`,`create_time`) values (1,'a1','123456','老人姓名1','http://localhost:8080/yanglaofuwupingtai/upload/yonghu1.jpg',1,'17703786901','410224199610232001','医保卡号1','1@qq.com','籍贯1','2022-03-19 20:24:00',1,'2022-03-19 20:24:00'),(2,'a2','123456','老人姓名2','http://localhost:8080/yanglaofuwupingtai/upload/yonghu2.jpg',1,'17703786902','410224199610232002','医保卡号2','2@qq.com','籍贯2','2022-03-19 20:24:00',1,'2022-03-19 20:24:00'),(3,'a3','123456','老人姓名3','http://localhost:8080/yanglaofuwupingtai/upload/yonghu3.jpg',1,'17703786903','410224199610232003','医保卡号3','3@qq.com','籍贯3','2022-03-19 20:24:00',1,'2022-03-19 20:24:00');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_photo`,`sex_types`,`yuangong_phone`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','http://localhost:8080/yanglaofuwupingtai/upload/yuangong1.jpg',1,'17703786901','1@qq.com','2022-03-19 20:24:00'),(2,'a2','123456','员工姓名2','http://localhost:8080/yanglaofuwupingtai/upload/yuangong2.jpg',1,'17703786902','2@qq.com','2022-03-19 20:24:00'),(3,'a3','123456','员工姓名3','http://localhost:8080/yanglaofuwupingtai/upload/yuangong3.jpg',2,'17703786903','3@qq.com','2022-03-19 20:24:00');

/*Table structure for table `yuyueguahao` */

DROP TABLE IF EXISTS `yuyueguahao`;

CREATE TABLE `yuyueguahao` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '预约医生',
  `yuyueneirong_text` text COMMENT '预约内容',
  `yuyueneirong_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '老人',
  `yuyueguahao_yesno_types` int(200) DEFAULT NULL COMMENT '审核',
  `yuyueguahao_yesno_text` text COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='预约挂号';

/*Data for the table `yuyueguahao` */

insert  into `yuyueguahao`(`id`,`yisheng_id`,`yuyueneirong_text`,`yuyueneirong_time`,`yonghu_id`,`yuyueguahao_yesno_types`,`yuyueguahao_yesno_text`,`create_time`) values (1,3,'预约内容1','2022-03-19 20:24:00',2,1,NULL,'2022-03-19 20:24:00'),(2,3,'预约内容2','2022-03-19 20:24:00',1,1,NULL,'2022-03-19 20:24:00'),(3,1,'预约内容3','2022-03-21 09:42:43',3,3,'没时间','2022-03-19 20:24:00'),(4,2,'预约内容4','2022-03-19 20:24:00',1,1,NULL,'2022-03-19 20:24:00'),(5,1,'预约内容5','2022-03-21 09:10:45',2,2,'通过','2022-03-19 20:24:00'),(6,1,'预约内容：123','2022-03-21 09:31:09',1,2,'132','2022-03-21 09:30:29');

/*Table structure for table `zhongyao` */

DROP TABLE IF EXISTS `zhongyao`;

CREATE TABLE `zhongyao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhongyao_name` varchar(200) DEFAULT NULL COMMENT '中药名称 Search111',
  `zhongyao_new_money` decimal(10,2) DEFAULT NULL COMMENT '中药价格 ',
  `zhongyao_kucun_number` int(11) DEFAULT NULL COMMENT '中药库存',
  `zhongyao_danwei` int(11) DEFAULT NULL COMMENT '中药单位',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='中药信息';

/*Data for the table `zhongyao` */

insert  into `zhongyao`(`id`,`zhongyao_name`,`zhongyao_new_money`,`zhongyao_kucun_number`,`zhongyao_danwei`,`create_time`) values (1,'中药名称1','284.59',101,74,'2022-03-19 20:24:00'),(2,'中药名称2','215.96',82,488,'2022-03-19 20:24:00'),(3,'中药名称3','154.92',99,269,'2022-03-19 20:24:00'),(4,'中药名称4','118.27',100,358,'2022-03-19 20:24:00'),(5,'中药名称5','335.33',105,365,'2022-03-19 20:24:00');

/*Table structure for table `zhongyao_churu_inout` */

DROP TABLE IF EXISTS `zhongyao_churu_inout`;

CREATE TABLE `zhongyao_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhongyao_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `zhongyao_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `zhongyao_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型',
  `zhongyao_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `zhongyao_churu_inout` */

insert  into `zhongyao_churu_inout`(`id`,`zhongyao_churu_inout_uuid_number`,`zhongyao_churu_inout_name`,`zhongyao_churu_inout_types`,`zhongyao_churu_inout_content`,`insert_time`,`create_time`) values (1,'164769264067812','出入库名称1',1,'备注1','2022-03-19 20:24:00','2022-03-19 20:24:00'),(2,'164769264067819','出入库名称2',1,'备注2','2022-03-19 20:24:00','2022-03-19 20:24:00'),(3,'164769264067818','出入库名称3',1,'备注3','2022-03-19 20:24:00','2022-03-19 20:24:00'),(4,'16476926406780','出入库名称4',1,'备注4','2022-03-19 20:24:00','2022-03-19 20:24:00'),(5,'16476926406785','出入库名称5',2,'备注5','2022-03-19 20:24:00','2022-03-19 20:24:00'),(6,'1647826561134','出库药品123',1,'','2022-03-21 09:36:01','2022-03-21 09:36:01');

/*Table structure for table `zhongyao_churu_inout_list` */

DROP TABLE IF EXISTS `zhongyao_churu_inout_list`;

CREATE TABLE `zhongyao_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhongyao_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `zhongyao_id` int(11) DEFAULT NULL COMMENT '中药',
  `zhongyao_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `zhongyao_churu_inout_list` */

insert  into `zhongyao_churu_inout_list`(`id`,`zhongyao_churu_inout_id`,`zhongyao_id`,`zhongyao_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,316,'2022-03-19 20:24:00','2022-03-19 20:24:00'),(2,2,2,291,'2022-03-19 20:24:00','2022-03-19 20:24:00'),(3,3,3,51,'2022-03-19 20:24:00','2022-03-19 20:24:00'),(4,4,4,270,'2022-03-19 20:24:00','2022-03-19 20:24:00'),(5,5,5,260,'2022-03-19 20:24:00','2022-03-19 20:24:00'),(6,6,2,20,'2022-03-21 09:36:01','2022-03-21 09:36:01'),(7,6,3,1,'2022-03-21 09:36:01','2022-03-21 09:36:01'),(8,6,4,2,'2022-03-21 09:36:01','2022-03-21 09:36:01');

/*Table structure for table `zhongyizhenduan` */

DROP TABLE IF EXISTS `zhongyizhenduan`;

CREATE TABLE `zhongyizhenduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '老人',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `zhongyizhenduan_text` text COMMENT '症状',
  `zhongyizhenduan_huifu_text` text COMMENT '回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='中医诊断';

/*Data for the table `zhongyizhenduan` */

insert  into `zhongyizhenduan`(`id`,`yonghu_id`,`yisheng_id`,`zhongyizhenduan_text`,`zhongyizhenduan_huifu_text`,`create_time`) values (1,3,1,'症状1','回复1','2022-03-19 20:24:00'),(2,3,3,'症状2','回复2','2022-03-19 20:24:00'),(3,2,1,'症状3','回复3','2022-03-19 20:24:00'),(4,3,3,'症状4','回复4','2022-03-19 20:24:00'),(5,2,2,'症状5','回复5','2022-03-19 20:24:00'),(6,1,2,'填写自己的症状','医生看到后可回复','2022-03-21 09:42:10');

/*Table structure for table `zongyishiliao` */

DROP TABLE IF EXISTS `zongyishiliao`;

CREATE TABLE `zongyishiliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zongyishiliao_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `zongyishiliao_types` int(11) DEFAULT NULL COMMENT '食疗类型 Search111',
  `zongyishiliao_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `zongyishiliao_content` text COMMENT '食疗详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='中医食疗';

/*Data for the table `zongyishiliao` */

insert  into `zongyishiliao`(`id`,`zongyishiliao_name`,`zongyishiliao_types`,`zongyishiliao_photo`,`zongyishiliao_content`,`create_time`) values (1,'标题1',1,'http://localhost:8080/yanglaofuwupingtai/upload/1647696534968.jpeg','<p>食疗详情1</p>','2022-03-19 20:24:00'),(2,'标题2',2,'http://localhost:8080/yanglaofuwupingtai/upload/1647696517513.jpeg','<p>食疗详情2</p>','2022-03-19 20:24:00'),(3,'标题3',1,'http://localhost:8080/yanglaofuwupingtai/upload/1647696509262.jpeg','<p>食疗详情3</p>','2022-03-19 20:24:00'),(4,'标题4',3,'http://localhost:8080/yanglaofuwupingtai/upload/1647696499981.jpeg','<p>食疗详情4</p>','2022-03-19 20:24:00'),(5,'标题5',1,'http://localhost:8080/yanglaofuwupingtai/upload/1647696491461.jpeg','<p>食疗详情5</p>','2022-03-19 20:24:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
