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
'늑대'
,'2018-01-10'
,2
,'wolf'
,'skjw2'
,'my email?'
,'chacha@naver.com'
,2
,2
,0000000
,1
,1
,1
,3
,'아우우우우~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
);

select * from infrmember;

select
a.seq as '순서'
,a.name
,a.id
,a.password
,b.emailtype_cd as 'email 종류'
,b.email
,c.address as '주소'
from infrmember as a
left join infrmember_email as b 
on a.seq = b.infrMember_seq 
left join infrmember_address as c
on a.seq = c.infrMember_seq
where b.emailtype_cd = '1';
-- where a.name = '늑대';
