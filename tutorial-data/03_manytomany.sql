SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `app_speaker`
-- ----------------------------
DROP TABLE IF EXISTS `app_speaker`;
CREATE TABLE `app_speaker` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_speaker`
-- ----------------------------
DROP TABLE IF EXISTS `app_conference_speaker`;
CREATE TABLE `app_conference_speaker` (
 `speaker_id` int unsigned NOT NULL,
 `conference_id` int unsigned NOT NULL,
  PRIMARY KEY (`speaker_id`, `conference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
--  Sample data for `app_speaker`, taken from https://fahrplan.events.ccc.de/congress/2018/Fahrplan/index.html
-- ----------------------------
INSERT INTO `app_speaker` VALUES
(1, 'Hanno Böck', 'Hanno Böck is a hacker and freelance journalist. He is a regular writer for the German online IT magazine Golem.de and writes the monthly Bulletproof TLS Newsletter. Last year he discovered the ROBOT attack against TLS implementations.', 'https://hboeck.de/'),
(2, 'Marie Bröckling', 'Marie schreibt seit Februar 2018 bei netzpolitik.org. Sie war Sachverständige in verschiedenen Landtagen zum Thema Polizeigesetze.', 'https://netzpolitik.org/author/marie-broeckling/'),
(3, 'Constanze Kurz', 'Constanze is the spokeswoman of the German Chaos Computer Club.', 'https://www.privacynotprism.org.uk/'),
(4, 'Ingo Dachwitz', 'Ingo ist Medien- und Kommunikationswissenschaftler, Redakteur bei netzpolitik.org und Mitglied beim Verein Digitale Gesellschaft.', 'https://netzpolitik.org/author/ingo/'),
(5, 'Linus Neumann', 'Ein Teil von jener Kraft, die stets das Böse will und stets das Gute schafft.', 'https://linus-neumann.de/'),
(6, 'frank', 'Spokesperson of the Chaos Computer Club and expert on secure communications', 'http://frank.geekheim.de/'),
(7, 'erdgeist', '', ''),
(8, 'nexus', '', ''),
(9, 'Martin Vigo', 'Martin Vigo is a Product Security Lead and Researcher responsible for Mobile security, Identity and Authentication. He has presented at conferences such as DEF CON, Blackhat EU and others.', 'https://www.martinvigo.com/'),
(10, 'ron', '', '');

INSERT INTO `app_conference_speaker` VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(3, 3),
(3, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 5),
(6, 6),
(10, 6);

ALTER TABLE `app_conference` DROP `speakers`;
