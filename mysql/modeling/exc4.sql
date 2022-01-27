CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into codegroup (
seq
,name
) value (
'infra002'
,'통신사'
);

insert into code (
code
,name
,codegroup_seq
) value (
'3'
,'LGU'
,'infra002'
);

select * from code;

select
a. seq
,a. name
,b. code
,b. name
from codegroup a
left join code b on b.codeGroup_seq = a.seq
;