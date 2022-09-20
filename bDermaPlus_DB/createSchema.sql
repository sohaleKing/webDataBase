CREATE SCHEMA `bdermaplus` ;

---------CREATE TABLES---------

--creating customer table
CREATE TABLE `bdermaplus`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `ramq_number` VARCHAR(14) NULL,
  `age` INT NULL,
  `gender` VARCHAR(10) NULL,
  `telephone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(100) NULL,
  `status` VARCHAR(10) NOT NULL,
  `photo` VARCHAR(200) NULL,
  `is_vip` TINYINT(0) NULL,
  `is_deleted` TINYINT(0) NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  UNIQUE INDEX `ramq_number_UNIQUE` (`ramq_number` ASC) VISIBLE);

  --creating category table
  CREATE TABLE `bdermaplus`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `description` MEDIUMTEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

  --creating service table
  CREATE TABLE `bdermaplus`.`service` (
  `service_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `product_id` INT NULL,
  `name` VARCHAR(20) NOT NULL,
  `description` MEDIUMTEXT NULL,
  `is_favorite` TINYINT(0) NULL,
  `service_price` DECIMAL NOT NULL,
  PRIMARY KEY (`service_id`),
  UNIQUE INDEX `service_id_UNIQUE` (`service_id` ASC) VISIBLE,
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `bdermaplus`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `category_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `bdermaplus`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);