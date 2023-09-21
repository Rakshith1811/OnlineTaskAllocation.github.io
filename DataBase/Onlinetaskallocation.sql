/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - onlinetaskallocation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinetaskallocation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `onlinetaskallocation`;

/*Table structure for table `addemployee` */

DROP TABLE IF EXISTS `addemployee`;

CREATE TABLE `addemployee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectid` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jobrole` varchar(50) DEFAULT NULL,
  `validupto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `addemployee` */

insert  into `addemployee`(`id`,`projectid`,`email`,`jobrole`,`validupto`) values 
(5,1,'anusha@gmail.com','testing','2021-09-24'),
(7,3,'ram@gmail.com','software developer','2021-09-16');

/*Table structure for table `addproject` */

DROP TABLE IF EXISTS `addproject`;

CREATE TABLE `addproject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `fromdate` varchar(50) DEFAULT NULL,
  `todate` varchar(50) DEFAULT NULL,
  `technologies` varchar(50) DEFAULT NULL,
  `managername` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `addproject` */

insert  into `addproject`(`id`,`title`,`description`,`fromdate`,`todate`,`technologies`,`managername`) values 
(1,'online task allocation','create admin, employee, manager details and add project details ','2021-09-01','2021-09-30','java, jsp, myql','sreelu'),
(3,'cloud message queuing','message queuing','2021-09-02','2021-09-30','java,mysql','sunanda');

/*Table structure for table `addtask` */

DROP TABLE IF EXISTS `addtask`;

CREATE TABLE `addtask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `task` varchar(50) DEFAULT NULL,
  `fromdate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `todate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `managername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `addtask` */

insert  into `addtask`(`id`,`projectname`,`email`,`task`,`fromdate`,`todate`,`status`,`managername`) values 
(3,'online task allocation','ram@gmail.com','web design and java','2021-10-07','2021-11-07','Pending','sreelu'),
(4,'cloud message queuing','anusha@gmail.com','web design and java','2021-10-07','2021-11-02','completed','sunanda'),
(6,'cloud message queuing','anusha@gmail.com','good','2021-10-06','2021-10-29','pending','sunanda'),
(7,'cloud message queuing','ram@gmail.com','java','2021-10-06','2021-10-30','pending','sunanda'),
(8,'cloud message queuing','ram@gmail.com','java','2021-10-06','2021-11-01','pending','sunanda'),
(9,'cloud message queuing','ram@gmail.com','java','2021-10-07','2021-10-30','pending','sunanda');

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `admindata` */

insert  into `admindata`(`id`,`username`,`password`) values 
(1,'admin','1234');

/*Table structure for table `contactform` */

DROP TABLE IF EXISTS `contactform`;

CREATE TABLE `contactform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contactform` */

insert  into `contactform`(`id`,`name`,`email`,`subject`,`message`) values 
(1,'anusha','anusha@gmail.com','java','java is a high level object oriented programming language'),
(2,'vinyakumari','vinaya@gmail.com','python','heloo'),
(3,'jyoshna','jyoshna@gmail.com','html','html'),
(266,'ram','ram@gmail.com','spring','spring'),
(389,'sun','sunanda@gmail.com','angular','angular'),
(390,'sreelu','sreelu@gmail.com','oracle','oracle');

/*Table structure for table `employeedata` */

DROP TABLE IF EXISTS `employeedata`;

CREATE TABLE `employeedata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empid` varchar(50) NOT NULL,
  `empname` varchar(60) DEFAULT NULL,
  `jobrole` varchar(100) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `dateofjoining` varchar(60) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empid` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employeedata` */

insert  into `employeedata`(`id`,`empid`,`empname`,`jobrole`,`email`,`password`,`dateofjoining`,`salary`,`gender`,`role`) values 
(6,'15ht1a0584','ram','software developer','ram@gmail.com','ram','2021-09-14',600000,'male','employee'),
(7,'15ht1a0550','sunanda','testing','sunanda@gmail.com','1234','2021-09-03',700000,'female','manager'),
(8,'15ht1a0560','sreelu','testing','sreelu@gmail.com','sreelu','2021-09-07',900000,'female','manager'),
(9,'15ht1a0568','anusha ','testing','anusha@gmail.com','anusha','2021-09-09',500000,'female','employee');

/*Table structure for table `raiseissue` */

DROP TABLE IF EXISTS `raiseissue`;

CREATE TABLE `raiseissue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `categiry` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `response` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `raiseissue` */

insert  into `raiseissue`(`id`,`title`,`description`,`categiry`,`priority`,`severity`,`date`,`response`,`status`,`email`) values 
(4,'keyboard','not working','hardware','medium','medium','2021-10-04 17:55:32','problem solve','fixed','anusha@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
