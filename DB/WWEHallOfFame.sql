-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema WWEHallOfFameDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `WWEHallOfFameDB` ;

-- -----------------------------------------------------
-- Schema WWEHallOfFameDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `WWEHallOfFameDB` DEFAULT CHARACTER SET utf8 ;
USE `WWEHallOfFameDB` ;

-- -----------------------------------------------------
-- Table `Inductee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inductee` ;

CREATE TABLE IF NOT EXISTS `Inductee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `crowd_name` VARCHAR(100) NULL,
  `real_name` VARCHAR(100) NULL,
  `inducted` YEAR NULL,
  `birthday` DATE NULL,
  `description` LONGTEXT NULL,
  `finisher` VARCHAR(200) NULL,
  `birthplace` VARCHAR(150) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS wwe@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'wwe'@'localhost' IDENTIFIED BY 'wwe';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'wwe'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Inductee`
-- -----------------------------------------------------
START TRANSACTION;
USE `WWEHallOfFameDB`;
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (1, 'André the Giant', NULL, 'André René Roussimoff', 1993, '1946-05-19', 'Feuded with Hogan', 'Sitting on his opponent', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (2, 'Big John Studd', NULL, 'John William Minton', 2004, '1948-02-19', 'Studd joined the United States Army and served as a military police officer', 'Reverse bearhug', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (3, 'Hulk Hogan', 'Hollywood', 'Terry Gene Bollea', 2005, '1953-08-11', 'Hulk Hogan', 'Leg drop', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (4, 'Bret Hart', 'The Hitman', 'Bret Sergeant Hart', 2006, '1957-07-02', 'Hitman Hart', 'Sharpshooter', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (5, 'Dusty Rhodes', 'The American Dream', 'Virgil Riley Runnels Jr.', 2007, '1945-10-11', 'Dusty dusty', 'Bionic elbow', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (6, 'Ric Flair', 'The Nature Boy', 'Richard Morgan Fliehr', 2008, '1949-02-25', 'WOOOOOOO', 'Figure-four leglock', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (7, 'Stone Cold Steve Austin', 'Stone Cold Steve Austin', 'Steven James Anderson', 2009, '1964-12-18', '316', 'Stone cold stunner', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (8, 'Ted DiBiase', 'Million Dollar Man', 'Theodore Marvin DiBiase', 2010, '1954-01-18', 'HAHA YOU CAN BE BOUGHT', 'The million dollar dream', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (9, 'Shawn Michaels', 'The Heartbreak Kid', 'Michael Shawn Hickenbottom', 2011, '1965-07-22', 'In the WWF/WWE, Michaels headlined pay-per-view events between 1989 and 2018', 'Sweet chin music', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (10, 'Edge', 'Mr Money in the Bank', 'Adam Joseph Copeland', 2012, '1973-10-30', 'Copeland was trained by professional wrestlers Sweet Daddy Siki and Ron Hutchison', 'Spear', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (11, 'Mick Foley', 'Mankind', 'Michael Francis Foley', 2013, '1965-06-07', 'Thrown off top of steel cage by Undertaker', 'Mandible claw', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (12, 'Trish Stratus', NULL, 'Patricia Anne Stratigeas', 2013, '1975-12-18', '100% Stratusfaction Guaranteed', 'Stratusfaction', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (13, 'The Ultimate Warrior', 'Warrior', 'James Brian Hellwig', 2014, '1959-06-16', 'known for his high-energy ring entrances, which featured him racing into the arena at full speed, bursting into the ring, and violently shaking the ropes up and down', 'Gorilla press drop and running splash', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (14, 'Randy Savage', 'The Macho Man', 'Randall Mario Poffo', 2015, '1952-11-15', 'SLAP INTO A SLIM JIM', 'Flying elbow drop', NULL);
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (15, 'Sting', NULL, 'Steve Borden', 2016, '1959-03-20', 'SCORPION DEATHLOCK SCROPION DEATHLOCK', 'Scorpion Deathlock', NULL);

COMMIT;

