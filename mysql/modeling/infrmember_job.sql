CREATE TABLE IF NOT EXISTS `infrMember_Job` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `difault_ny` TINYINT(1) NULL,
  `jobtype_cd` TINYINT(1) NULL,
  `job` VARCHAR(50) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMember_Job_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMember_Job_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into infrmember_job (
difault_ny
,jobtype_cd
,job
,infrmember_seq
) value (
'2'
,'3'
,'농사'
,'3'
);

select * from infrmember_job;

update infrmember_job set
	difault_ny = '2'
   -- jobtype_cd = '2'
where 1=1 
	and seq = 4; 