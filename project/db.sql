CREATE TABLE `family` (
	`id` tinyint(3) unsigned NOT NULL,
	`name` varchar(40) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pet` (
	`id` tinyint(3) unsigned NOT NULL,
	`name` varchar(40) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `car` (
	`id` tinyint(3) unsigned NOT NULL,
	`name` varchar(40) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `family_setting` (
	`id_family` tinyint(3) unsigned NOT NULL,
	`type` varchar(10) DEFAULT NULL,
	`key` tinyint(3) unsigned NOT NULL,
	KEY (`id_family`),
	KEY (`type`),
	KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `family` (`id`, `name`) VALUES(1, 'Family 1');
INSERT INTO `family` (`id`, `name`) VALUES(2, 'Family 2');
INSERT INTO `family` (`id`, `name`) VALUES(3, 'Family 3');

INSERT INTO `pet` (`id`, `name`) VALUES(1, 'Pet 1');
INSERT INTO `pet` (`id`, `name`) VALUES(2, 'Pet 2');
INSERT INTO `pet` (`id`, `name`) VALUES(3, 'Pet 3');

INSERT INTO `car` (`id`, `name`) VALUES(1, 'Car 1');
INSERT INTO `car` (`id`, `name`) VALUES(2, 'Car 2');
INSERT INTO `car` (`id`, `name`) VALUES(3, 'Car 3');

INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(1, 'pet', 1);
INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(1, 'pet', 2);
INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(1, 'car', 3);
INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(2, 'car', 1);
INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(2, 'car', 2);
INSERT INTO `family_setting` (`id_family`, `type`, `key`) VALUES(3, 'pet', 3);
