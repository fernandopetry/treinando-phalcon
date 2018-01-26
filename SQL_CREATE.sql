-- MySQL Workbench Synchronization
-- Generated: 2018-01-17 21:11
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Fernando Petry

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(85) NOT NULL,
  `senha` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `emprestimo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cd_livro` INT(11) NOT NULL,
  `cd_usuario` INT(11) NOT NULL,
  `data_saida` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_devolucao` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_emprestimo_livro1_idx` (`cd_livro` ASC),
  INDEX `fk_emprestimo_usuario1_idx` (`cd_usuario` ASC),
  CONSTRAINT `fk_emprestimo_livro1`
    FOREIGN KEY (`cd_livro`)
    REFERENCES `livro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_usuario1`
    FOREIGN KEY (`cd_usuario`)
    REFERENCES `usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `livro` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cd_autor` INT(11) NOT NULL,
  `cd_genero` INT(11) NOT NULL,
  `titulo` VARCHAR(85) NOT NULL,
  `ano` SMALLINT(5) NOT NULL,
  `edicao` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_livro_autor_idx` (`cd_autor` ASC),
  INDEX `fk_livro_genero1_idx` (`cd_genero` ASC),
  CONSTRAINT `fk_livro_autor`
    FOREIGN KEY (`cd_autor`)
    REFERENCES `autor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_livro_genero1`
    FOREIGN KEY (`cd_genero`)
    REFERENCES `genero` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `autor` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(85) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `genero` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(85) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
