-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema notasgarzon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema notasgarzon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `notasgarzon` DEFAULT CHARACTER SET utf8mb3 ;
USE `notasgarzon` ;

-- -----------------------------------------------------
-- Table `notasgarzon`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notasgarzon`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `notasgarzon`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notasgarzon`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `notasgarzon`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notasgarzon`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `date_create` DATETIME NOT NULL,
  `date_edit` DATETIME NULL DEFAULT NULL,
  `descripcion` TEXT NOT NULL,
  `eliminar` BINARY(1) NULL DEFAULT NULL,
  `usuario_id` INT NOT NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notas_usuarios_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_notas_categories_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `fk_notas_categories`
    FOREIGN KEY (`categories_id`)
    REFERENCES `notasgarzon`.`categories` (`id`),
  CONSTRAINT `fk_notas_usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `notasgarzon`.`usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
