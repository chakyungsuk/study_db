use world;

drop table infrmember;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `birthday` DATE NULL,
  `gender_cd` TINYINT(1) NULL,
  `id` VARCHAR(45) NULL,
  `password` VARCHAR(100) NULL,
  `password_hint` VARCHAR(45) NULL,
  `password_answer` VARCHAR(45) NULL,
  `marry_cd` TINYINT(1) NULL,
  `children_cd` TINYINT(1) NULL,
  `weddingday` DATE NULL,
  `color_cd` TINYINT(1) NULL,
  `snsmarketing_cd` TINYINT(1) NULL,
  `emailmarketing_cd` TINYINT(1) NULL,
  `Privacy_cd` TINYINT(1) NULL,
  `myself` VARCHAR(200) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

insert into infrmember (
name
,birthday
,gender_cd
,id
,password
,password_hint
,password_answer
,marry_cd
,children_cd
,weddingday
,color_Cd
,snsmarketing_cd
,emailmarketing_cd
,privacy_Cd
,myself
) values (
'고양이'
,'2020-01-11'
,1
,'cat'
,1234
,'are you okay?'
,'sure'
,2
,2
,0000000
,3
,1
,1
,3
,'안녕하세요 저는 고양이 입니다. 고양이로써 최선을 다하겠습니다 감사합니다'
);

select * from infrmember;
