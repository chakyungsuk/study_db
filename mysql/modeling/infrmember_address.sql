CREATE TABLE IF NOT EXISTS `infrMember_address` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `difault_dy` TINYINT(1) NULL,
  `addressType_cd` TINYINT(1) NULL,
  `address` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_address_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_address_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

drop table infrmember_address;

insert into infrmember_address (
difault_dy
,addressType_cd
,address
,infrMember_seq
) value (
'1'
,'1'
,'광주광역시 광산구'
,'3'
);

select * from infrmember_address;