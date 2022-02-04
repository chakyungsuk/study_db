use world;

CREATE TABLE IF NOT EXISTS `book6` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `writer` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6_writer` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_seq` INT UNSIGNED NOT NULL,
  `writer_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_book6_writer_book61_idx` (`book6_seq` ASC) VISIBLE,
  INDEX `fk_book6_writer_writer1_idx` (`writer_seq` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_book61`
    FOREIGN KEY (`book6_seq`)
    REFERENCES `book6` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_writer1`
    FOREIGN KEY (`writer_seq`)
    REFERENCES `writer` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into book6 (
name
) value (
'bootstrap'
);

select * from book6;
select * from writer;

insert into writer (
name
) value (
'고소영'
);

insert into book6_writer (
book6_seq
,writer_seq
) value (
3
,4
);

select * from book6;

select * from writer;

select * from book6_writer;

select
a.seq
,a.name
,b.writer_seq
,(select name from writer c where c.seq = b.writer_seq) as name
from book6 a
left join book6_writer b on b.book6_seq = a.seq
;

select 
a.seq
,a.name
,b.writer_seq
,c.name as writer_name
from book6 as a 
left join book6_writer as b on b.book6_seq = a.seq 
left join writer as c on b.writer_seq = c.seq
;

update writer set 
	name = '차경석'
where 1=1 
	and seq = 1;