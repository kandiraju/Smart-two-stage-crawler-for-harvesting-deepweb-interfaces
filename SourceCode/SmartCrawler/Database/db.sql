/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - crawler
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `crawler`;

USE `crawler`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `flogin` */

DROP TABLE IF EXISTS `flogin`;

CREATE TABLE `flogin` (
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `fid` varchar(300) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `flogin` */

insert  into `flogin`(`name`,`email`,`fid`) values ('Md Sajid','sajidshaimca@gmail.com','1175771195783227');

/*Table structure for table `graph` */

DROP TABLE IF EXISTS `graph`;

CREATE TABLE `graph` (
  `Sno` varchar(10) DEFAULT NULL,
  `URLs` varchar(10) DEFAULT NULL,
  `crawled_tot_urls` varchar(10) DEFAULT NULL,
  `crawled_dis_urls` varchar(10) DEFAULT NULL,
  `crawled_sim_urls` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `graph` */

insert  into `graph`(`Sno`,`URLs`,`crawled_tot_urls`,`crawled_dis_urls`,`crawled_sim_urls`) values ('0','1','37','34','3');

/*Table structure for table `metadata` */

DROP TABLE IF EXISTS `metadata`;

CREATE TABLE `metadata` (
  `topic` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `fileid` int(11) NOT NULL,
  `tot` int(11) DEFAULT '0',
  `dis` int(11) DEFAULT '0',
  PRIMARY KEY (`topic`,`url`),
  UNIQUE KEY `fileid` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `metadata` */

insert  into `metadata`(`topic`,`url`,`fileid`,`tot`,`dis`) values ('cloud computing','www.ibm.com/cloud-computing/in/.../what-is-cloud-computing.html',8,37,34),('cloud technologies ameerpet','cloudstechnologies.in/',1,50,27),('cloud technologies ameerpet','www.cloudsoftsol.com/',2,33,15),('j2ee tutorial','j2eetutorials.50webs.com/',9,27,23),('j2ee tutorial','www.j2eebrain.com/',10,127,103),('java','docs.oracle.com/javase/tutorial/',6,57,52),('java','java.com/download',4,19,18),('java','www.oracle.com/technetwork/java/',5,158,143),('java tutorial','www.javatpoint.com/java-tutorial',7,187,143),('java tutorial','www.tutorialspoint.com/java/',3,75,65);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `un` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`un`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`address`,`city`,`state`,`zip`,`phone`,`email`,`un`,`pwd`) values (1,'sajid md','304, siri towers','Hyderabad','Telangana','500016','09985714374','sajid24x7@gmail.com','user1101','sajid'),(2,'sajid md','304, siri towers','Hyderabad','Telangana','500016','8121953811','cloudtechnologiesprojects@gmail.com','user1102','sajid');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `url` varchar(500) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`url`,`text`) values ('java.com/download','Download Free Java Software'),('java.com/download','Download Free Java Software'),('en.wikipedia.org/wiki/Java_(software_platform)','Java (software platform) - Wikipedia, the free encyclopedia'),('en.wikipedia.org/wiki/Java_(software_platform)','Java (software platform) - Wikipedia, the free encyclopedia'),('en.wikipedia.org/wiki/Java_(programming_language)','Java (programming language) - Wikipedia, the free encyclopedia'),('InfoWorld Irish Times','News for java'),('en.wikipedia.org/wiki/Java_(programming_language)','Java (programming language) - Wikipedia, the free encyclopedia'),('www.oracle.com/technetwork/java/','Oracle Technology Network for Java Developers | Oracle ...'),('InfoWorld Irish Times','News for java'),('www.oracle.com/java/','Java Software | Oracle'),('www.oracle.com/technetwork/java/','Oracle Technology Network for Java Developers | Oracle ...'),('docs.oracle.com/javase/tutorial/','The Javaâ„¢ Tutorials - Oracle Documentation'),('www.oracle.com/technetwork/java/javase/downloads/','Java SE - Downloads | Oracle Technology Network | Oracle'),('www.oracle.com/java/','Java Software | Oracle'),('www.tutorialspoint.com/java/','Java Tutorial - TutorialsPoint.com'),('docs.oracle.com/javase/tutorial/','The Javaâ„¢ Tutorials - Oracle Documentation'),('www.java.net/','Java.net: Welcome'),('www.oracle.com/technetwork/java/javase/downloads/','Java SE - Downloads | Oracle Technology Network | Oracle'),('www.tutorialspoint.com/java/','Java Tutorial - TutorialsPoint.com'),('www.java.net/','Java.net: Welcome');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
