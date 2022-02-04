CREATE TABLE IF NOT EXISTS `infrMember_email` (
  `seq` INT NOT NULL,
  `default_ny` TINYINT(1) NULL,
  `emailtype_cd` TINYINT(1) NULL,
  `email` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_sns_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_sns_infrMember100`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into infrmember_email (
seq
,default_ny
,emailtype_cd
,email
,infrMember_seq
) values (
1
,'1'
,'1'
,'sdkjfkajw@naver.com'
,'1'
);

select * from infrmember_email;


drop table infrmember_email;