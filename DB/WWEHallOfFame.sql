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
  `real_name` VARCHAR(100) NOT NULL,
  `inducted` YEAR NOT NULL,
  `birthday` DATE NOT NULL,
  `description` LONGTEXT NULL,
  `finisher` VARCHAR(200) NULL,
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
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (1, 'André the Giant', NULL, 'André René Roussimoff', 1993, '1946-05-19', 'Feuded with Hogan', 'Sitting on his opponent');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (2, 'Big John Studd', NULL, 'John William Minton', 2004, '1948-02-19', 'Studd joined the United States Army and served as a military police officer', 'Reverse bearhug');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (3, 'Hulk Hogan', 'Hollywood', 'Terry Gene Bollea', 2005, '1953-08-11', 'Hulk Hogan', 'Leg drop');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (4, 'Bret Hart', 'The Hitman', 'Bret Sergeant Hart', 2006, '1957-07-02', 'Hitman Hart', 'Sharpshooter');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (5, 'Dusty Rhodes', 'The American Dream', 'Virgil Riley Runnels Jr.', 2007, '1945-10-11', 'Dusty dusty', 'Bionic elbow');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (6, 'Ric Flair', 'The Nature Boy', 'Richard Morgan Fliehr', 2008, '1949-02-25', 'WOOOOOOO', 'Figure-four leglock');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (7, 'Stone Cold Steve Austin', 'Stone Cold Steve Austin', 'Steven James Anderson', 2009, '1964-12-18', '316', 'Stone cold stunner');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`) VALUES (8, 'Ted DiBiase', 'Million Dollar Man', 'Theodore Marvin DiBiase', 2010, '1954-01-18', 'HAHA YOU CAN BE BOUGHT', 'The million dollar dream');

COMMIT;

