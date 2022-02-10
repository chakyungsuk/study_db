use world;

CREATE TABLE IF NOT EXISTS `book4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review_book4_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review_book4`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book4;

insert into book4 (
name
) values (
'5차산업혁명의미래'
);

select * from book4;

insert into review4 (
comment
,book4_no
) values (
'우와 책 재미 있습니다~'
,1
);

truncate review4;

select * from review4;

-- 공통코드, 코드성 데이터 참조 
-- 데이터가 1개이상인 코드 
-- 데이터가 1개이상인 코드 인데 코드성 데이터 참조일때