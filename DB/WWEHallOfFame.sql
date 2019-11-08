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
-- Table `Inductees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inductees` ;

CREATE TABLE IF NOT EXISTS `Inductees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
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
-- Data for table `Inductees`
-- -----------------------------------------------------
START TRANSACTION;
USE `WWEHallOfFameDB`;
INSERT INTO `Inductees` (`id`, `name`) VALUES (1, 'André the Giant');

COMMIT;

