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
,b.default_ny '대표'
,c.address as '주소'
,d.p_number as '핸드폰 번호'
,d.f_number as 'fax 번호'
,e.hobby_cd as '취미'
,f.projecttype as '프로젝트명'
,f.project_start as '프로젝트 시작'
,f.project_end as '프로젝트 끝'
,f.projectrole as '프로젝트 역할'
,f.ordercompany as '발주사'
,g.commender_name as '추천인'
,h.snstype_cd as 'sns타입'
,h.url as 'sns'
,i.jobtype_cd as '희망직업종류'
,i.job as '직업이름'
,a.myself as '자기소개'
from infrmember as a
left join infrmember_email as b on a.seq = b.infrMember_seq 
left join infrmember_address as c on a.seq = c.infrMember_seq
left join infrmember_mobile as d on a.seq = d.infrMember_seq
left join infrmember_hobby as e on a.seq = e.infrMember_seq
left join infrmember_project as f on a.seq = f.infrMember_seq
left join infrmember_commender as g on a.seq = g.infrMember_seq
left join infrmember_sns as h on a. seq = h.infrMember_seq
left join infrmember_job as i on a.seq = i.infrMember_seq
-- where b.emailtype_cd = '1';
-- where a.id = 'dog' ;
