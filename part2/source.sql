--exo1
USE webDevelopment;
CREATE TABLE `languages` (`id` INT UNSIGNED AUTO_INCREMENT, `language` VARCHAR(30), PRIMARY KEY (`id`));
--exo2
CREATE TABLE `tools` (`id` INT UNSIGNED AUTO_INCREMENT,`tools` VARCHAR(30),PRIMARY KEY (`id`));
--exo3
CREATE TABLE `librairies` (`id` INT UNSIGNED AUTO_INCREMENT,`library` VARCHAR(30),PRIMARY KEY (`id`));
--exo4
CREATE TABLE `ide` (`id` INT UNSIGNED AUTO_INCREMENT,`ideName` VARCHAR(30),PRIMARY KEY (`id`));
--exo5
CREATE TABLE IF NOT EXISTS `frameworks` (`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,`name` VARCHAR(30),);
--exo6
DROP TABLE IF EXISTS `tools`;
--exo7
DROP TABLE `librairies`;
--exo8
DROP TABLE `ide`;
--exo9 TP
CREATE DATABASE IF NOT EXISTS `codex` CHARACTER SET 'UTF8';
USE `codex`
CREATE TABLE IF NOT EXISTS `clients` (`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,`lastname` VARCHAR(40),`firstname` VARCHAR(40),`birthdate` DATE,`address` VARCHAR(255),`firstPhoneNumber` INT,`secondPhoneNumber` INT,`mail` VARCHAR(50))ENGINE = INNODB;
-- penser a encoder et proteger les table avec un ENGINE
