CREATE TABLE IF NOT EXISTS `infrMember_hobby` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `hobby_cd` VARCHAR(50) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_hobby_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_hobby_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

drop table infrMember_hobby;

insert into infrMember_hobby (
hobby_cd
,infrMember_seq
) value (
'4'
,'3'
);

delete from infrMember_hobby
where 1=1 and seq = 1;

alter table infrmember_hobby modify hobby_cd varchar(50);

select * from infrmember_hobby;