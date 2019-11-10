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
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (1, 'André the Giant', NULL, 'André René Roussimoff', 1993, '1946-05-19', 'Feuded with Hogan', 'Sitting on his opponent', 'Paris, France');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (2, 'Big John Studd', NULL, 'John William Minton', 2004, '1948-02-19', 'Studd joined the United States Army and served as a military police officer', 'Reverse bearhug', 'Butler, Pennsylvania');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (3, 'Hulk Hogan', 'Hollywood', 'Terry Gene Bollea', 2005, '1953-08-11', 'Hulk Hogan', 'Leg drop', 'Augusta, Georgia');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (4, 'Bret Hart', 'The Hitman', 'Bret Sergeant Hart', 2006, '1957-07-02', 'Hitman Hart', 'Sharpshooter', 'Calgary, Alberta');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (5, 'Dusty Rhodes', 'The American Dream', 'Virgil Riley Runnels Jr.', 2007, '1945-10-11', 'Dusty dusty', 'Bionic elbow', 'Austin, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (6, 'Ric Flair', 'The Nature Boy', 'Richard Morgan Fliehr', 2008, '1949-02-25', 'WOOOOOOO', 'Figure-four leglock', 'Memphis, Tennessee');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (7, 'Stone Cold Steve Austin', 'Stone Cold Steve Austin', 'Steven James Anderson', 2009, '1964-12-18', '316', 'Stone cold stunner', 'Austin, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (8, 'Ted DiBiase', 'Million Dollar Man', 'Theodore Marvin DiBiase', 2010, '1954-01-18', 'HAHA YOU CAN BE BOUGHT', 'The million dollar dream', 'Miami, Florida');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (9, 'Shawn Michaels', 'The Heartbreak Kid', 'Michael Shawn Hickenbottom', 2011, '1965-07-22', 'In the WWF/WWE, Michaels headlined pay-per-view events between 1989 and 2018', 'Sweet chin music', 'Chandler, Arizona');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (10, 'Edge', 'Mr Money in the Bank', 'Adam Joseph Copeland', 2012, '1973-10-30', 'Copeland was trained by professional wrestlers Sweet Daddy Siki and Ron Hutchison', 'Spear', 'Orangeville, Ontario');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (11, 'Mick Foley', 'Mankind', 'Michael Francis Foley', 2013, '1965-06-07', 'Thrown off top of steel cage by Undertaker', 'Mandible claw', 'Bloomington, Indiana');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (12, 'Trish Stratus', NULL, 'Patricia Anne Stratigeas', 2013, '1975-12-18', '100% Stratusfaction Guaranteed', 'Stratusfaction', 'Toronto, Ontario');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (13, 'The Ultimate Warrior', 'Warrior', 'James Brian Hellwig', 2014, '1959-06-16', 'known for his high-energy ring entrances, which featured him racing into the arena at full speed, bursting into the ring, and violently shaking the ropes up and down', 'Gorilla press drop and running splash', 'Scottsdale, Arizona');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (14, 'Randy Savage', 'The Macho Man', 'Randall Mario Poffo', 2015, '1952-11-15', 'SLAP INTO A SLIM JIM', 'Flying elbow drop', 'Columbus, Ohio');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (15, 'Sting', NULL, 'Steve Borden', 2016, '1959-03-20', 'SCORPION DEATHLOCK SCROPION DEATHLOCK', 'Scorpion Deathlock', 'Omaha, Nebraska');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (16, 'Kurt Angle', NULL, 'Kurt Steven Angle', 2017, '1968-12-09', 'Olympic GOLD Medalist', 'Angle Slam', 'Mt. Lebanon Township, Pennsylvania');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (17, 'Bill Goldberg', 'Goldberg', 'William Scott Goldberg', 2018, '1966-12-27', 'THE MAN', 'spear and jackhammer', 'Tulsa, Oklahoma');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (18, 'Torrie Wilson', NULL, 'Torrie Anne Wilson', 2019, '1975-07-24', NULL, NULL, 'Boise, Idaho');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (19, 'The Honky Tonk Man', NULL, 'Roy Wayne Farris', 2019, '1953-01-25', NULL, NULL, 'Bolivar, Tennessee');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (20, 'Brutus Beefcake', 'The Barber', 'Edward Harrison Leslie', 2019, '1957-04-21', NULL, NULL, 'Tampa, Florida');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (21, 'Ivory', NULL, 'Lisa Mary Moretti', 2018, '1961-11-26', NULL, NULL, 'Inglewood, California');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (22, 'Jeff Jarrett', NULL, 'Jeffrey Leonard Jarrett', 2018, '1967-07-14', NULL, NULL, 'Hendersonville, Tennessee');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (23, 'Hillbilly Jim', NULL, 'James Morris', 2018, '1952-07-5', NULL, NULL, 'Scottsville, Kentucky');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (24, 'Mark Henry', NULL, 'Mark Jerrold Henry', 2018, '1971-06-12', 'THATS WHAT I DO', 'Worlds strongest slam', 'Austin, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (25, 'Kid Rock', NULL, 'Robert James Ritchie', 2018, '1971-01-17', NULL, NULL, 'Romeo, Michigan');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (26, 'Theodore Long', NULL, 'Theodore Robert Rufus Long', 2017, '1947-09-15', NULL, NULL, 'Marietta, Georgia');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (27, 'Diamond Dallas Page', 'DDP', 'Page Joseph Falkinburg', 2017, '1956-04-05', 'BANG', NULL, 'Point Pleasant, New Jersey');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (28, 'Beth Phoenix', 'The Glamazon', 'Elizabeth Kociański', 2017, '1980-11-24', NULL, 'Glam slam', 'Asheville, North Carolina');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (29, 'Rick Rude', NULL, 'Richard Erwin Rood', 2017, '1958-12-7', NULL, NULL, 'Alpharetta, Georgia');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (30, 'The Godfather', NULL, 'Charles Wright', 2016, '1961-05-16', NULL, 'Ho-train', 'Las Vegas, Nevada');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (31, 'Big Boss Man', NULL, 'Ray Washington Traylor Jr.', 2016, '1963-05-02', NULL, NULL, 'Dallas, Georgia');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (32, 'Jacqueline', NULL, 'Jacqueline DeLois Moore', 2016, '1964-01-06', NULL, NULL, 'Dallas, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (33, 'Stan Hansen', NULL, 'John Stanley Hansen II', 2016, '1949-08-29', NULL, NULL, 'Knox City, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (34, 'Snoop Dogg', NULL, 'Calvin Cordozar Broadus Jr.', 2016, '1971-10-20', NULL, NULL, 'Long Beach, California');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (35, 'Rikishi', NULL, 'Solofa Fatu Jr.', 2015, '1965-10-11', NULL, 'Stinkface', 'San Francisco, California');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (36, 'Alundra Blayze', 'Madusa', 'Debrah Anne Miceli', 2015, '1964-02-09', NULL, NULL, 'Milan, Italy');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (37, 'Larry Zbyszko', NULL, 'Lawrence Whistler', 2015, '1951-12-05', NULL, NULL, 'Avalon Park, Florida');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (38, 'Tatsumi Fujinami', 'The Dragon', 'Tatsumi Fujinami', 2015, '1953-12-28', NULL, 'Dragon sleeper', 'Kunisaki, Ōita, Japan');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (39, 'Kevin Nash', 'Big Sexy', 'Kevin Scott Nash', 2015, '1959-07-09', NULL, 'Jackknife powerbomb', 'Detroit, Michigan');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (40, 'Arnold Schwarzenegger', NULL, 'Arnold Alois Schwarzenegger', 2015, '1947-07-30', 'ILL BE BACK', NULL, 'Thal, Allied-occupied Austria');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (41, 'Jake Roberts', 'The Snake', 'Aurelian Jake Smith Jr.', 2014, '1955-05-30', NULL, NULL, 'Gainesville, Texas');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (42, 'Lita', NULL, 'Amy Christine Dumas', 2014, '1975-04-14', NULL, 'Moonsault', 'Fort Lauderdale, Florida');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (43, 'Paul Bearer', NULL, 'William Alvin Moody', 2014, '1954-04-10', NULL, NULL, 'Mobile, Alabama');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (44, 'Carlos Colón Sr.', NULL, 'Carlos Edwin Colón Gonzalez', 2014, '1948-07-18', NULL, NULL, 'Santa Isabel, Puerto Rico');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (45, 'Scott Hall', 'Razor Ramon', 'Scott Oliver Hall', 2014, '1958-10-20', 'EY CHICO', 'Outsider\'s edge', 'St. Mary\'s County, Maryland');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (46, 'Mr. T', NULL, 'Laurence Tureaud', 2014, '1952-05-21', NULL, NULL, 'Chicago, Illinois');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (47, 'Bob Backlund', NULL, 'Robert Louis Backlund', 2013, '1949-08-14', NULL, NULL, 'Glastonbury, Connecticut,');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (48, 'Bruno Sammartino', NULL, 'Bruno Leopoldo Francesco Sammartino', 2013, '1935-10-06', NULL, NULL, 'Pizzoferrato, Italy');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (49, 'Booker T', NULL, 'Robert Booker Tio Huffman', 2013, '1965-03-01', 'CAN YOU DIG IT SUCKA', 'Book end', 'Plain Dealing, Louisiana');
INSERT INTO `Inductee` (`id`, `name`, `crowd_name`, `real_name`, `inducted`, `birthday`, `description`, `finisher`, `birthplace`) VALUES (50, 'Donald Trump', NULL, 'Donald John Trump', 2013, '1946-06-14', 'GET EM OUTTA HERE', NULL, 'Queens, New York City');

COMMIT;

