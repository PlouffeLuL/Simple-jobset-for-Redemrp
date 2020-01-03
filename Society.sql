
CREATE TABLE IF NOT EXISTS `society_money` (
	`society` varchar(22) NOT NULL,
	`name` varchar(22) NOT NULL,
	`money` MEDIUMINT(3) NOT NULL DEFAULT '0',

	PRIMARY KEY (`name`)
);