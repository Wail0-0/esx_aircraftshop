USE `es_extended`;

;

CREATE TABLE `aircraft_vehicles` (
	`id` int NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `aircraft_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `owned_aircrafts` (
	`owner` varchar(40) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_aircrafts` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int NOT NULL,
	`rent_price` int NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `aircraft_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `aircraft_categories` (name, label) VALUES
	('helis','Helicopters'),
	('planes','Planes')
;

CREATE TABLE `aircrafts` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);

INSERT INTO `aircrafts` (name, model, price, category) VALUES
	('Buzzard','buzzard2',500000,'helis'),
	('Frogger','frogger',800000,'helis'),
	('Havok','havok',250000,'helis'),
	('Maverick','maverick',750000,'helis'),
	('Sea Sparrow','seasparrow',815000,'helis'),
	('SuperVolito','supervolito',1000000,'helis'),
	('SuperVolito Carbon','supervolito2',1250000,'helis'),
	('Swift','swift',1000000,'helis'),
	('Swift Deluxe','swift2',1250000,'helis'),
	('Volatus','volatus',1250000,'helis'),
	('Alpha Z1','alphaz1',1121000,'planes'),
	('Besra','besra',1000000,'planes'),
	('Cuban 800','cuban800',240000,'planes'),
	('Dodo','dodo',500000,'planes'),
	('Duster','duster',175000,'planes'),
	('Howard NX25','howard',975000,'planes'),
	('Luxor','luxor',1500000,'planes'),
	('Luxor Deluxe ','luxor2',1750000,'planes'),
	('Mallard','stunt',250000,'planes'),
	('Mammatus','mammatus',300000,'planes'),
	('Nimbus','nimbus',900000,'planes'),
	('Rogue','rogue',1000000,'planes'),
	('Sea Breeze','seabreeze',850000,'planes'),
	('Shamal','shamal',1150000,'planes'),
	('Ultra Light','microlight',50000,'planes'),
	('Velum','velum2',450000,'planes'),
	('Vestra','vestra',950000,'planes')
;