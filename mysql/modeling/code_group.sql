use world;

drop table code_group;

drop table code;

CREATE TABLE IF NOT EXISTS `code_group` (
  `cg_seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`cg_seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code_seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `cg_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code_seq`, `cg_seq`),
  INDEX `fk_code_code_group1_idx` (`cg_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_code_group1`
    FOREIGN KEY (`cg_seq`)
    REFERENCES `code_group` (`cg_seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into code_group (
cg_seq
,name
) values (
'infra014'
,'희망직업분류'
);

insert into code (
code_seq
,name
,cg_seq
) values (
'6'
,'기타'
,'infra014'
);


select * from code_group;
select * from code;

delete from code
where 1=1
	and name = ''; 
    
SET sql_safe_updates = 0;

select
a.cg_seq as '순서'
,a.name
,b.code_seq as '순서'
,b.name as '구분'
from code_group as a  -- from 첫번째 테이블
left join code as b   -- left join 2번째 테이블
on a.cg_seq = b.cg_seq ;-- 조건처리 (같은항목)
-- where a.name = '국적';