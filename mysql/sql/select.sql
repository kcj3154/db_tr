use CJ2;

CREATE TABLE IF NOT EXISTS `CJ2`.`member` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NULL COMMENT '아이디',
  `name` VARCHAR(45) NULL COMMENT '이름',
  `dob` DATE NULL COMMENT '생년월일',
  `tel` VARCHAR(45) NULL COMMENT '전화번호',
  `gender` VARCHAR(45) NULL COMMENT '성별',
  `email` VARCHAR(45) NULL COMMENT '이메일',
  `address` VARCHAR(45) NULL COMMENT '주소',
  `pwd` VARCHAR(45) NULL COMMENT '비밀번호',
  `zipcode` INT NULL COMMENT '우편번호',
  PRIMARY KEY (`seq`),
  UNIQUE INDEX `seq_UNIQUE` (`seq` ASC) VISIBLE)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`product` (
  `seq` INT NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `category` VARCHAR(45) NULL COMMENT '카테고리',
  `brand` VARCHAR(45) NULL COMMENT '브랜드',
  `name` VARCHAR(45) NULL COMMENT '상품명',
  `rating` INT NULL COMMENT '평점',
  `discount_percent` INT NULL COMMENT '할인율',
  `price_original` INT NULL COMMENT '원가',
  `price_discount` INT NULL COMMENT '할인가',
  `delivery_info` VARCHAR(45) NULL,
  `country_of_origin` VARCHAR(45) NULL COMMENT '원산지',
  `product_number` VARCHAR(45) NULL COMMENT '상품번호',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`orders` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `price` INT NULL COMMENT '가격',
  `quantity` INT NULL COMMENT '수량',
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

CREATE TABLE IF NOT EXISTS `CJ2`.`payment` (
  `orders_seq` INT NOT NULL,
  `payment_method` VARCHAR(45) NULL COMMENT '결제방법',
  INDEX `fk_payment_orders1_idx` (`orders_seq` ASC) VISIBLE,
  CONSTRAINT `fk_payment_orders1`
    FOREIGN KEY (`orders_seq`)
    REFERENCES `CJ2`.`orders` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`delivery` (
  `arrivalDate` DATE NULL COMMENT '도착일',
  `orders_seq` INT NOT NULL,
  INDEX `fk_delivery_orders1_idx` (`orders_seq` ASC) VISIBLE,
  CONSTRAINT `fk_delivery_orders1`
    FOREIGN KEY (`orders_seq`)
    REFERENCES `CJ2`.`orders` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`favorite` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `member_seq` INT NOT NULL,
  `product_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_favorite_member1_idx` (`member_seq` ASC) VISIBLE,
  INDEX `fk_favoritmembere_product1_idx` (`product_seq` ASC) VISIBLE,
  CONSTRAINT `fk_favorite_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `CJ2`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_favorite_product1`
    FOREIGN KEY (`product_seq`)
    REFERENCES `CJ2`.`product` (`seq`)
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

CREATE TABLE IF NOT EXISTS `CJ2`.`ccg` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `codeGroup` VARCHAR(45) NULL,
  `useNy` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `CJ2`.`cc` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `codeName` VARCHAR(45) NULL,
  `ccg_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_cc_ccg1_idx` (`ccg_seq` ASC) VISIBLE,
  CONSTRAINT `fk_cc_ccg1`
    FOREIGN KEY (`ccg_seq`)
    REFERENCES `CJ2`.`ccg` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
