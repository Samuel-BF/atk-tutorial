SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for conferences
-- ----------------------------
DROP TABLE IF EXISTS `app_conference`;
CREATE TABLE `app_conference` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subtitle` varchar(512) DEFAULT NULL,
  `description` text,
  `room` smallint,
  `start` timestamp NOT NULL,
  `duration` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `app_room`;
CREATE TABLE `app_room` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `capacity` smallint unsigned,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO app_room(`name`, `capacity`) VALUES
('Julia', 250),
('Mandelbrot', 250),
('Koch', 820);

-- ----------------------------
--  Table structure for speakers
-- ----------------------------
DROP TABLE IF EXISTS `app_speaker`;
CREATE TABLE `app_speaker` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `organization` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Linking speakers to conferences
-- ----------------------------
DROP TABLE IF EXISTS `conference_speaker`;
CREATE TABLE `conference_speaker` (
  `conference_id` int unsigned NOT NULL,
  `speaker_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
