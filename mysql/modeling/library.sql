CREATE TABLE IF NOT EXISTS `library` (
  `seq` INT UNSIGNED NOT NULL,
  `book_img` VARCHAR(45) NULL,
  `top_name` VARCHAR(45) NULL,
  `book_name` VARCHAR(45) NULL,
  `make_name` VARCHAR(45) NULL,
  `make_company` VARCHAR(45) NULL,
  `time_month` DATETIME NULL,
  `price` INT NULL,
  `sale_price` INT NULL,
  `ppoint` INT NULL,
  `sale_index` INT NULL,
  `review` INT NULL,
  `star` VARCHAR(45) NULL,
  `time_arrival` VARCHAR(45) NULL,
  `eevent` VARCHAR(45) NULL,
  `relation` INT NULL,
  `ebook` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '도서관';

insert into library (
	seq
    ,top_name
    ,book_name
    ,make_name
    ,make_company
    ,time_month
    ,price
    ,sale_price
    ,ppoint
    ,sale_index
    ,review
    ,star
    ,time_arrival
    ,eevent
    ,relation
    ,ebook
) values (
	1
    ,'이지스퍼블리싱-Do it! 시리즈'
    ,'[도서] Do it! 자바스크립트 웹 표준의 정석 한권으로 끝내는 웹 기본 교과서'
    ,'고경희 저'
    ,'이지스퍼블리싱'
    ,202101
    ,27000
    ,10
    ,1500
    ,49899
    ,15
    ,9
    ,125
    ,'하나사면 하나더!'
    ,11
    ,19000
);

insert into library (
	seq
    ,top_name
    ,book_name
    ,make_name
    ,make_company
    ,time_month
    ,price
    ,sale_price
    ,ppoint
    ,sale_index
    ,review
    ,star
    ,time_arrival
    ,eevent
    ,relation
    ,ebook
) values (
	2
    ,'지구촌 공룡 시대 사람들'
    ,'[기타] 공룡 멸종에 대한 이야기를 파헤치다!'
    ,'차경석 저'
    ,'집어딘가에서'
    ,2021/05
    ,2700
    ,10
    ,270
    ,30000
    ,15
    ,9
    ,125
    ,'하나사면 싸인 이!!!'
    ,11
    ,15000
);

select * from library;
