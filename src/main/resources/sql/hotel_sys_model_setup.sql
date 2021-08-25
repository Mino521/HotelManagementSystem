-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hotelsys
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hotelsys
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hotelsys` DEFAULT CHARACTER SET utf8 ;
USE `hotelsys` ;

-- -----------------------------------------------------
-- Table `hotelsys`.`room_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`room_type` (
  `id` BIGINT(20) NOT NULL,
  `type_name` VARCHAR(45) NULL,
  `price` FLOAT(10,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`rooms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`rooms` (
  `id` BIGINT(20) NOT NULL,
  `room_num` VARCHAR(10) NULL,
  `room_state` VARCHAR(2) NULL DEFAULT 0,
  `room_type_id` BIGINT(20) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `room_type_id_idx` (`room_type_id` ASC) VISIBLE,
  CONSTRAINT `room_type_id`
    FOREIGN KEY (`room_type_id`)
    REFERENCES `hotelsys`.`room_type` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`check_in_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`check_in_info` (
  `id` BIGINT(20) NOT NULL,
  `customer_name` VARCHAR(45) NULL,
  `gender` VARCHAR(2) NULL DEFAULT '1',
  `vip` VARCHAR(2) NULL DEFAULT 0,
  `licence_id` VARCHAR(20) NULL,
  `phone_num` VARCHAR(20) NULL,
  `bond` FLOAT(10,2) NULL,
  `check_in_time` DATETIME NULL,
  `room_id` BIGINT(20) NULL,
  PRIMARY KEY (`id`),
  INDEX `room_id_idx` (`room_id` ASC) VISIBLE,
  CONSTRAINT `room_id`
    FOREIGN KEY (`room_id`)
    REFERENCES `hotelsys`.`rooms` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`vip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`vip` (
  `id` BIGINT(20) NOT NULL,
  `discount` FLOAT(2,1) NULL DEFAULT 9,
  `licence_id` BIGINT(20) NOT NULL,
  `create_date` DATETIME NULL,
  PRIMARY KEY (`licence_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`order` (
  `id` BIGINT(20) NOT NULL,
  `room_id` BIGINT(20) NULL,
  `total_pricer` FLOAT(10,2) NULL,
  `create_time` DATETIME NULL,
  `is_checked` VARCHAR(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `room_id_idx` (`room_id` ASC) VISIBLE,
  CONSTRAINT `room_id`
    FOREIGN KEY (`order_room_id`)
    REFERENCES `hotelsys`.`rooms` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`sys_usr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`sys_usr` (
  `id` BIGINT(20) NOT NULL,
  `usrname` VARCHAR(45) NULL,
  `psw` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`sys_authority`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`sys_authority` (
  `id` BIGINT(20) NOT NULL,
  `authority_name` VARCHAR(20) NULL,
  `authority_url` VARCHAR(200) NULL,
  `parent` BIGINT(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hotelsys`.`user_authority`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotelsys`.`user_authority` (
  `user_id` BIGINT(20) NOT NULL,
  `authority_id` BIGINT(20) NOT NULL,
  INDEX `authority_connect2_idx` (`authority_id` ASC) VISIBLE,
  PRIMARY KEY (`user_id`,`authority_id`),
  CONSTRAINT `authority_connect`
    FOREIGN KEY (`user_id`)
    REFERENCES `hotelsys`.`sys_usr` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `authority_connect2`
    FOREIGN KEY (`authority_id`)
    REFERENCES `hotelsys`.`sys_authority` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
