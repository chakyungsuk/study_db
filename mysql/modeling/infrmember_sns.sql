CREATE TABLE IF NOT EXISTS `infrMember_sns` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `default_ny` TINYINT(1) NULL,
  `snstype_cd` TINYINT(1) NULL,
  `url` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_sns_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_sns_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into infrMember_sns (
default_ny
,snstype_cd
,url
,infrMember_seq
) value (
'1'
,'1'
,'https://www.kakao.com/explore/tags/wolf'
,'3'
);

select *from infrmember_sns;

update infrMember_sns set
	snstype_cd = '3'
where 1=1
	and seq = 4;