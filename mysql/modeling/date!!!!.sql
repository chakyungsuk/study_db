CREATE TABLE IF NOT EXISTS `infrMember` (
  `ifmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmAdminNy` TINYINT NULL,
  `ifmmDormancyNy` TINYINT NULL,
  `ifmmName` VARCHAR(50) NOT NULL,
  `ifmmId` VARCHAR(50) NOT NULL,
  `ifmmPassword` VARCHAR(100) NULL,
  `ifmmPwdModDate` DATETIME NULL COMMENT '패스워드 수정일 ',
  `ifmmGenderCd` TINYINT NULL COMMENT '성별',
  `ifmmDob` DATE NULL COMMENT '생일',
  `ifmmSavedCd` TINYINT NULL COMMENT '회원정보 저장기간',
  `ifmmmarriageCd` TINYINT NULL,
  `ifmmMarriageDate` DATE NULL,
  `ifmmChildrenNum` TINYINT NULL,
  `ifmmFavoriteColor` VARCHAR(50) NULL,
  `ifmmRecommenderSeq` BIGINT NULL,
  `ifmmEmailConsentNy` TINYINT NULL COMMENT '이메일 마케팅 동의 여부 ',
  `ifmmSmsConsentNy` TINYINT NULL,
  `ifmmPushConsentNy` TINYINT NULL,
  `ifmmDesc` VARCHAR(255) NULL,
  `ifmmDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberEmail` (
  `ifmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmeDefaultNy` TINYINT NOT NULL,
  `ifmeTypeCd` TINYINT NULL,
  `ifmeEmailFull` VARCHAR(100) NULL,
  `ifmeEmailAccount` VARCHAR(100) NULL,
  `ifmeEmailDomain` VARCHAR(100) NULL,
  `ifmeEmailDomainCd` TINYINT NULL,
  `ifmeDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmeSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberphone` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpDefaultNy` TINYINT NOT NULL,
  `ifmpTypeCd` TINYINT NULL,
  `ifmpDeviceCd` TINYINT NULL,
  `ifmpTelecomCd` TINYINT NULL,
  `ifmpNumber` VARCHAR(50) NULL,
  `ifmpDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember10`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberAddressOnline` (
  `ifaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifaoTypeCd` TINYINT NULL COMMENT '소셜 인지 다른건지 구별',
  `ifaoDefaultNy` TINYINT NOT NULL,
  `ifaoSnsTypeCd` TINYINT NULL,
  `ifaoUrl` VARCHAR(100) NULL,
  `ifaoTitle` VARCHAR(100) NULL,
  `ifaoDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifaoSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember100`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberJoinQna` (
  `ifjqSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifjqQuestionCd` TINYINT NOT NULL,
  `ifjqAnswer` VARCHAR(50) NOT NULL,
  `ifjqDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifjqSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember1100`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberHobby` (
  `ifmhSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmhHobbyCd` TINYINT NOT NULL,
  `ifmhUseNy` TINYINT NULL,
  `ifmhOrder` TINYINT NULL,
  `ifmhDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmhSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember110`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` TINYINT NULL,
  `ifmaTitle` VARCHAR(100) NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL COMMENT '상세주소',
  `ifmaZipcode` VARCHAR(50) NULL,
  `ifmaDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember11`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmnDelNy` TINYINT NOT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmaSeq` BIGINT UNSIGNED NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMemberAddress1_idx` (`ifmaSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMemberAddress1`
    FOREIGN KEY (`ifmaSeq`)
    REFERENCES `infrMemberAddress` (`ifmaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrAuthMember` (
  `ifamSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifamUseNy` TINYINT NULL,
  `ifamOrder` TINYINT NULL,
  `ifamDesc` VARCHAR(255) NULL,
  `ifauDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifamSeq`),
  INDEX `fk_infrAuthMember_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMember_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthMember_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthMember_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrAuth` (
  `ifatSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifatAdminNy` TINYINT NULL,
  `ifatName` VARCHAR(50) NULL,
  `ifatNameEng` VARCHAR(50) NULL,
  `ifatUseNy` TINYINT NULL,
  `ifatOrderNy` TINYINT NULL,
  `ifatDesc` VARCHAR(255) NULL,
  `ifatDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifatSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrAuthMenu` (
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` TINYINT NULL,
  `ifauUseNy` TINYINT NULL,
  `ifauOrder` TINYINT NULL,
  `ifauDesc` VARCHAR(255) NULL,
  `ifauDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifauSeq`),
  INDEX `fk_infrAuthMenu_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMenu_infrMenu1_idx` (`ifmuSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthMenu_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthMenu_infrMenu1`
    FOREIGN KEY (`ifmuSeq`)
    REFERENCES `infrMenu` (`ifmuSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMenu` (
  `ifmuSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmuAdminNy` TINYINT NULL,
  `ifmuName` VARCHAR(50) NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT NULL,
  `ifmuDepth` TINYINT NULL COMMENT '정보성',
  `ifmuUseNy` TINYINT NULL,
  `ifmuOrder` TINYINT NULL,
  `ifmuDesc` VARCHAR(100) NULL,
  `ifmuDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmuSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberphone` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpDefaultNy` TINYINT NOT NULL,
  `ifmpTypeCd` TINYINT NULL,
  `ifmpDeviceCd` TINYINT NULL,
  `ifmpTelecomCd` TINYINT NULL,
  `ifmpNumber` VARCHAR(50) NULL,
  `ifmpDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember10`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmmarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
0,
'원빈',
'skjsekj',
'skdfjw7',
now(),
1,
'19900101',
1,
1,
'00000000',
0,
'red',
1,
1,
1,
1,
0,
now(),
now(),
now(),
now());

select * from infrmember;

update infrmember
set ifmmName = '이승철'
where ifmmSeq = 3;

INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifaoDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
1,
'www.google.com',
'개인홈피',
0,
now(),
now(),
now(),
now(),
3);


CREATE TABLE IF NOT EXISTS `infrMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` TINYINT NULL,
  `ifmaTitle` VARCHAR(100) NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL COMMENT '상세주소',
  `ifmaZipcode` VARCHAR(50) NULL,
  `ifmaDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember11`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrmemberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaTitle`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
'본가',
'서울특별시 강남구',
'',
0,
now(),
now(),
now(),
now(),
3
);

select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrCodeGroup a
	left join infrCode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder; 

select * from infrmemberemail;  

INSERT INTO `nct`.`infrmemberemail`
(
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomainCd`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
'binbin@naver.com',
'bin',
1,
0,
now(),
now(),
now(),
now(),
3
);

INSERT INTO `nct`.`infrmemberhobby`
(
`ifmhHobbyCd`,
`ifmhUseNy`,
`ifmhOrder`,
`ifmhDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
4,
1,
3,
0,
now(),
now(),
now(),
now(),
3
);

select * from infrmemberhobby;

INSERT INTO `nct`.`infrmemberjoinqna`
(
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifjqDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
'나는 원빈이다.',
0,
now(),
now(),
now(),
now(),
3
);

select * from infrmembernationality;

INSERT INTO `nct`.`infrmembernationality`
(
`ifmnDelNy`,
`ifnaSeq`,
`ifmaSeq`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0,
1,
2,
now(),
now(),
now(),
now()
);

CREATE TABLE IF NOT EXISTS `infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmnDelNy` TINYINT NOT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmaSeq` BIGINT UNSIGNED NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevise` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevise` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMemberAddress1_idx` (`ifmaSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMemberAddress1`
    FOREIGN KEY (`ifmaSeq`)
    REFERENCES `infrMemberAddress` (`ifmaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

select
a.ifmmName
, a.ifmmId
, b.ifmaTitle
, b.ifmaAddress1
, c.ifaoUrl
, c.ifaoDefaultNy
, c.ifaoTypeCd
from infrmember a 
left join infrmemberaddress b on b.ifmmSeq = a.ifmmSeq
left join infrmemberaddressonline c on c.ifmmSeq = a.ifmmSeq
where 1=1
	and c.ifaoDefaultNy = 1;

select * from infrmemberaddressonline;

update infrmemberaddressonline
	set ifaoDefaultNy = 2
where 1=1 
	and ifaoSeq = 3;
	
	