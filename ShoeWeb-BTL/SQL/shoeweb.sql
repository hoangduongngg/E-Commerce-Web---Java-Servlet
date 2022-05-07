CREATE SCHEMA `shoeweb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `shoeweb`.`category` (
  `cid` INT NOT NULL,
  `cname` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`cid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `shoeweb`.`account` (
  `uID` INT NOT NULL,
  `user` VARCHAR(255) NOT NULL,
  `pass` VARCHAR(45) NOT NULL,
  `isSell` INT NULL,
  `isAdmin` INT NULL,
  PRIMARY KEY (`uID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `shoeweb`.`cart` (
  `AccountID` INT NOT NULL,
  `ProductID` INT NULL,
  `Amount` INT NULL,
  PRIMARY KEY (`AccountID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
  
  CREATE TABLE `shoeweb`.`product` (
  `id` INT NOT NULL,
  `name` VARCHAR(1000) NULL,
  `image` VARCHAR(5000) NULL,
  `price` VARCHAR(1000) NULL,
  `title` VARCHAR(1000) NULL,
  `description` VARCHAR(5000) NULL,
  `cateID` INT NULL,
  `sell_ID` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

