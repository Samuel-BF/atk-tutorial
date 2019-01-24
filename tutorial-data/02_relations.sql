SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `app_room`
-- ----------------------------
DROP TABLE IF EXISTS `app_room`;
CREATE TABLE `app_room` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `capacity` smallint unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Sample data for `app_room`, taken from https://fahrplan.events.ccc.de/congress/2018/Fahrplan/index.html
-- ----------------------------
INSERT INTO `app_room` VALUES (1,'Adams',150,NULL),(2,'Borg',150,NULL),(3,'Dijkstra',500,NULL);

-- ----------------------------
--  Modifying `app_conference to reference rooms from app_room
-- ----------------------------
ALTER TABLE app_conference ADD room_id smallint NOT NULL;
UPDATE app_conference SET room_id = 1 WHERE room = 'Adams';
UPDATE app_conference SET room_id = 2 WHERE room = 'Borg';
UPDATE app_conference SET room_id = 3 WHERE room = 'Dijkstra';
ALTER TABLE app_conference DROP room;
ALTER TABLE app_conference CHANGE room_id room smallint NOT NULL;
