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