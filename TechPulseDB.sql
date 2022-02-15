CREATE DATABASE Parkit;
USE Parkit;

CREATE TABLE `Parkit`.`User_Details` (
  `User Id` INT NOT NULL,
  `User Name` VARCHAR(45) NOT NULL,
  `User_email` VARCHAR(45) NOT NULL,
  `User_password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`User Id`));
  
CREATE TABLE `Parkit`.`Park_Details` (
  `Park Id` INT NOT NULL,
  `Park Name` VARCHAR(45) NOT NULL,
  `Park Location` VARCHAR(45) NOT NULL,
  `Total Spots` INT NOT NULL,
  `Available Spots` INT NOT NULL,
  PRIMARY KEY (`Park Id`));
  
CREATE TABLE `Parkit`.`Park1` (
  `Park Id` INT NOT NULL,
  `A1` TINYINT NOT NULL,
  `A2` TINYINT NOT NULL,
  `B1` TINYINT NOT NULL,
  `C2` TINYINT NOT NULL,
  INDEX `Park Id_idx` (`Park Id` ASC) VISIBLE,
  PRIMARY KEY (`Park Id`),
  CONSTRAINT `Park Id`
    FOREIGN KEY (`Park Id`)
    REFERENCES `Parkit`.`Park_Details` (`Park Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);