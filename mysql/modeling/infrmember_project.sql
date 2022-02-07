CREATE TABLE IF NOT EXISTS `infrMember_project` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `projecttype` VARCHAR(50) NULL,
  `projectrole` VARCHAR(50) NULL,
  `ordercompany` VARCHAR(50) NULL,
  `project_start` DATE NULL,
  `project_end` DATE NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_project_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_project_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into infrMember_project (
projecttype
,projectrole
,ordercompany
,project_start
,project_end
,infrMember_seq
) value (
'자바'
,'기획,개발'
,'daum'
,'21.02.11'
,'22.04.02'
,'3'
);

select * from infrmember_project;