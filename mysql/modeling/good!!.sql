INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrcode;
-- where 1=1
-- and ifcgDelNy = 1;



update infrcodegroup
set ifcgDelNy = 0
where ifcgSeq > 10;


INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`)
VALUES
(
'내 별명은?',
2,
0,
now(),
now(),
now(),
now(),
14);

select * from infrcode;

select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrCodeGroup a
	left join infrCode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;    

update infrCode 
set ifcgSeq = 1
	,ifcdName = '관리'
where ifcdOrder = 2;

delete from infrcode
where 1=1
	and ifcgSeq = 1;
    
INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3char`,
`ifnaUseNy`,
`ifnaOrderNy`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'미국',
'US',
'USA',
1,
2,
0,
now(),
now(),
now(),
now()
);
	
select * from infrnationality;

desc infrnationality;
    