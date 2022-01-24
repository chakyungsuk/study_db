create table books (
	seq int,
    book_name varchar(45),
    publisher varchar(45),
    author varchar(45),
    price int
);

drop table books;

--

create table cafe (
	seq int,
    cafe_name varchar(45),
    tables int,
    chair int,
	address varchar(45),
    area varchar(45),
    Representative_name varchar(45)
);

CREATE TABLE IF NOT EXISTS `cafe` (
  `seq` INT UNSIGNED NOT NULL,
  `cafe_name` VARCHAR(45) NULL,
  `ttable` INT NULL,
  `chairs` INT NULL,
  `address` VARCHAR(45) NULL,
  `area` VARCHAR(45) NULL,
  `Representative_name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'coffee';

