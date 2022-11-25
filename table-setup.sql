create database if not exists demo;

use demo;

drop table if exists employees;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(64) DEFAULT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `phone_number` varchar(64) DEFAULT NULL,
 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number` ) VALUES (1,'Doe','John','010226654' );
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (2,'Public','Mary','012446645' );
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (3,'Queue','Susan','01255433' );

INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (4,'Williams','David','01523755355' );
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (5,'Johnson','Lisa','0162432456');
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (6,'Smith','Paul','01976254' );

INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number') VALUES (7,'Adams','Carl','10187252444');
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number` ) VALUES (8,'Brown','Bill','019276254' );
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number` ) VALUES (9,'Thomas','Susan','0187224452',);

INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number` ) VALUES (10,'Davis','John','0197726524');
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (11,'Fowler','Mary','01826534355');
INSERT INTO `employees` (`id`,`last_name`,`first_name`,`phone_number`) VALUES (12,'Waters','David','019287353');
