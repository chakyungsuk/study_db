use world;

show tables;

-- 주석표시

-- 테이블 생성
create table member (
	seq int,
	name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int,
	name varchar(100),
    id varchar(100),
    regdate datetime
);

-- 테이블 삭제
drop table member2;
drop table member;

-- 데이터 입력(varchar는 '또는 "를 감싸야한다)
insert into cafe (	
	seq
	,cafe_name
	,ttable
	,chairs
	,address
	,area
	,Representative_name
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시 어디쯤'
    ,1
    ,'장동건'
);

-- 데이터 조회   (primary key : 유일한 데이터)
select * from cafe;

select * from cafe where seq = 3;
select * from cafe where ttable = 10;
select * from cafe where cafe_name = '탐엔탐스';
select * from cafe where cafe_name = '탐엔탐스' and ttable = '10';
select * from cafe where cafe_name = '탐엔탐스' or cafe_name = '스타벅스';

select * from cafe where area > 1000;
select * from cafe where area < 100;
select * from cafe where area >= 10;
select * from cafe where area <= 10;

select * from cafe where cafe_name like '%벅스%';
select * from cafe where cafe_name like '스타%';
select * from cafe where cafe_name like '%스';

-- pk : primary key : 중복되는 데이터는 불허
-- nn : not null : null값을 허용하지 않는다 (데이터가 무조건 들어와야 한다.)
-- uq : 유니크 : 중복되는 데이터는 불허
-- b : 바이너리 파일 저장
-- un : unsigned : 양수만 ( 0 ~ 255까지만 들어갈수 있음)
-- zf : zerofill (5.7 --> 00005.7)
-- ai : auto increment : 숫자 자동증가
-- g : auto increment 의 다른 형태


-- 컬럼 추가
alter table test add tel varchar(50);
-- alter table ** add ** ***

-- 컬럼 삭제
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;

-- 칼럼 이름 변경
alter table test change tele tel int;


insert into test (
	name
    ,tel
) value (
	'Tony'
	,1111
);

select * from test; 

-- 데이터 수정
update test set 
	name = 'Andrew'
    ,tel = 123
where 1=1 	
	and seq = 1;
    
update infrcodegroup
	set ifcgUseNy = 1
where ifcgSeq > 100;

-- select * from test;

-- 데이터 삭제
delete from test
where 1=1
	and seq = 3;

-- 전체 데이터 삭제
truncate test;

-- DDL : data definition language : db, table 컨트롤 : 주로 관리자, 선임들의 업무
-- DML : data manipulation language : data : 후임들
-- DCL : data control language : 접근 권한, 커밋/롤백

-- join
select
a.
,b.
from (첫번째) a
	left join (붙여올것) b on a.(첫번쨰) = b.(두번째);

-- 조인 한것 따로 찾기
where 1=1 
	and a.(보고싶은거) = 1;

-- 조인 한것 정렬 방법
order by -- 정렬
	a.(정렬할것) asc -- 내림차순
    , b.(정렬할것); desc -- 역차순
    
-- 항목 붙이기
concat(substring(1,3)) as sdfaf
    
