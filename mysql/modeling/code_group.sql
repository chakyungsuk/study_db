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
'5'
,'사무'
,'infra014'
);


select * from code_group;
select * from code;