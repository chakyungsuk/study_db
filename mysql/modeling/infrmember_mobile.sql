use world;

CREATE TABLE IF NOT EXISTS `infrMember_mobile` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `default_ny` TINYINT(1) NULL,
  `phonetype_cd` TINYINT(1) NULL,
  `p_company_cd` TINYINT(1) NULL,
  `p_number` INT NULL,
  `f_number` INT NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_mobile_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_mobile_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into infrmember_mobile (
default_ny
,phonetype_cd
,p_company_cd
,p_number
,f_number
,infrMember_seq
) value (
'1'
,'1'
,'1'
,'010-2222-2222'
,'02-222-2222'
,'3'
);

select * from infrmember_mobile;

alter table infrmember_mobile modify f_number varchar(50);