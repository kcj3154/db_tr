use CJ2;

CREATE TABLE IF NOT EXISTS `CJ2`.`product` (
  `seq` INT NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `category` VARCHAR(45) NULL COMMENT '카테고리',
  `image` VARCHAR(45) NULL COMMENT '상품이미지',
  `brand` VARCHAR(45) NULL COMMENT '브랜드',
  `name` VARCHAR(45) NULL COMMENT '상품명',
  `rating` INT NULL COMMENT '평점',
  `discount_percent` INT NULL COMMENT '할인율',
  `price_original` INT NULL COMMENT '원가',
  `price_discount` INT NULL COMMENT '할인가',
  `delivery_info` VARCHAR(45) NULL,
  `option` INT NULL COMMENT '수량',
  `detailImage` VARCHAR(45) NULL COMMENT '상세이미지',
  `country_of_origin` VARCHAR(45) NULL,
  `ingestion_method` VARCHAR(45) NULL,
  `product_number` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`member` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NULL COMMENT '아이디',
  `name` VARCHAR(45) NULL,
  `dob` DATE NULL COMMENT '생년월일',
  `tel` VARCHAR(45) NULL COMMENT '전화번호',
  `gender` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL COMMENT '이메일',
  `adrress` VARCHAR(45) NULL COMMENT '주소',
  `pwd` VARCHAR(45) NULL,
  `zipcode` INT NULL,
  PRIMARY KEY (`seq`),
  UNIQUE INDEX `seq_UNIQUE` (`seq` ASC) VISIBLE)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`orderr` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `arrival_date` DATE NULL,
  `price` INT NULL,
  `payment_method` VARCHAR(45) NULL,
  `quantity` INT NULL,
  `product_seq` INT NOT NULL,
  `member_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_order_product1_idx` (`product_seq` ASC) VISIBLE,
  INDEX `fk_order_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_order_product1`
    FOREIGN KEY (`product_seq`)
    REFERENCES `CJ2`.`product` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `CJ2`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`favorite` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `product_seq1` INT NOT NULL,
  `member_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_favorite_product1_idx` (`product_seq1` ASC) VISIBLE,
  INDEX `fk_favorite_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_favorite_product1`
    FOREIGN KEY (`product_seq1`)
    REFERENCES `CJ2`.`product` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_favorite_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `CJ2`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`product_comment` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `member_seq` INT NULL,
  `product_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_product_comment_product1_idx` (`product_seq` ASC) VISIBLE,
  CONSTRAINT `fk_product_comment_product1`
    FOREIGN KEY (`product_seq`)
    REFERENCES `CJ2`.`product` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`member2` (
  `seq` INT NOT NULL,
  `id` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `tel` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `adrress` VARCHAR(45) NULL,
  `pwd` VARCHAR(45) NULL,
  `zipcode` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;
