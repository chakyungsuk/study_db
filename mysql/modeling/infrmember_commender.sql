CREATE TABLE IF NOT EXISTS `infrMember_commender` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `default_ny` TINYINT(1) NULL,
  `commender_name` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_commender_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_commender_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into infrMember_commender (
default_ny
,commender_name
,infrmember_seq
) value (
'1'
,'구렁이'
,'3'
);

select * from infrmember_commender;