-- MySQL Script generated by MySQL Workbench
-- lø. 27. mai 2017 kl. 16.45 +0200
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema project18
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `project18` ;

-- -----------------------------------------------------
-- Schema project18
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project18` DEFAULT CHARACTER SET utf8 ;
USE `project18` ;

-- -----------------------------------------------------
-- Table `project18`.`kategoris`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`kategoris` ;

CREATE TABLE IF NOT EXISTS `project18`.`kategoris` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Navn` TINYTEXT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`types`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`types` ;

CREATE TABLE IF NOT EXISTS `project18`.`types` (
  `Type_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type` VARCHAR(100) NOT NULL,
  `Kategori_ref` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Type_ID`),
  INDEX `Kategori_ref` (`Kategori_ref` ASC),
  CONSTRAINT `types_ibfk_1`
    FOREIGN KEY (`Kategori_ref`)
    REFERENCES `project18`.`kategoris` (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`butikkers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`butikkers` ;

CREATE TABLE IF NOT EXISTS `project18`.`butikkers` (
  `But_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` INT(11) NOT NULL,
  `Navn` VARCHAR(255) NOT NULL,
  `Adress` VARCHAR(255) NOT NULL,
  `Kontakt` VARCHAR(255) NOT NULL,
  `Apenstider` VARCHAR(255) NOT NULL,
  `Blide` TEXT NOT NULL,
  `Beskrivelse` TEXT NOT NULL,
  PRIMARY KEY (`But_ID`),
  INDEX `Type_ref` (`Type_ref` ASC),
  CONSTRAINT `butikkers_ibfk_1`
    FOREIGN KEY (`Type_ref`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`interests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`interests` ;

CREATE TABLE IF NOT EXISTS `project18`.`interests` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `kategori` TEXT NOT NULL,
  `blide` TEXT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`samlings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`samlings` ;

CREATE TABLE IF NOT EXISTS `project18`.`samlings` (
  `interest_id` INT(11) NOT NULL,
  `type_id` INT(11) NOT NULL,
  INDEX `interest_id` (`interest_id` ASC),
  INDEX `type_id` (`type_id` ASC),
  CONSTRAINT `samlings_ibfk_1`
    FOREIGN KEY (`interest_id`)
    REFERENCES `project18`.`interests` (`ID`),
  CONSTRAINT `samlings_ibfk_2`
    FOREIGN KEY (`type_id`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`spisesteders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`spisesteders` ;

CREATE TABLE IF NOT EXISTS `project18`.`spisesteders` (
  `Sp_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type_Ref` INT(11) NOT NULL,
  `Navn` VARCHAR(300) NOT NULL,
  `Adress` TEXT NOT NULL,
  `Kontakt` VARCHAR(250) NOT NULL,
  `Apenstider` TINYTEXT NOT NULL,
  `Blide` TEXT NOT NULL,
  `Beskrivelse` TEXT NOT NULL,
  PRIMARY KEY (`Sp_ID`),
  INDEX `Type_Ref` (`Type_Ref` ASC),
  CONSTRAINT `spisesteders_ibfk_1`
    FOREIGN KEY (`Type_Ref`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`tjenesters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`tjenesters` ;

CREATE TABLE IF NOT EXISTS `project18`.`tjenesters` (
  `Tjn_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` INT(11) NOT NULL,
  `Navn` VARCHAR(255) NOT NULL,
  `Adress` VARCHAR(255) NOT NULL,
  `Kontakt` VARCHAR(255) NOT NULL,
  `Apenstider` VARCHAR(255) NOT NULL,
  `Blide` TEXT NOT NULL,
  `Beskrivelse` TEXT NOT NULL,
  PRIMARY KEY (`Tjn_ID`),
  INDEX `Type_ref` (`Type_ref` ASC),
  CONSTRAINT `tjenesters_ibfk_1`
    FOREIGN KEY (`Type_ref`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`treningsenters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`treningsenters` ;

CREATE TABLE IF NOT EXISTS `project18`.`treningsenters` (
  `Tren_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` INT(11) NOT NULL,
  `Navn` VARCHAR(255) NOT NULL,
  `Adress` VARCHAR(255) NOT NULL,
  `Pris_range` VARCHAR(255) NOT NULL,
  `Kontakt` VARCHAR(255) NOT NULL,
  `Blide` TEXT NOT NULL,
  `Beskrivelse` TEXT NOT NULL,
  PRIMARY KEY (`Tren_ID`),
  INDEX `Type_ref` (`Type_ref` ASC),
  CONSTRAINT `treningsenters_ibfk_1`
    FOREIGN KEY (`Type_ref`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `project18`.`utesteders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project18`.`utesteders` ;

CREATE TABLE IF NOT EXISTS `project18`.`utesteders` (
  `Ut_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Type_ref` INT(11) NOT NULL,
  `Navn` VARCHAR(255) NOT NULL,
  `Adress` VARCHAR(255) NOT NULL,
  `Apenstider` VARCHAR(255) NOT NULL,
  `Pris` VARCHAR(255) NOT NULL,
  `Aldergrense` VARCHAR(255) NOT NULL,
  `Blide` TEXT NOT NULL,
  `Beskrivelse` TEXT NOT NULL,
  PRIMARY KEY (`Ut_ID`),
  INDEX `Type_ref` (`Type_ref` ASC),
  CONSTRAINT `utesteders_ibfk_1`
    FOREIGN KEY (`Type_ref`)
    REFERENCES `project18`.`types` (`Type_ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
