
select * from p2_gps;
select * from p2_location;

drop table p2_gps;
drop table p2_location;


--------------- TABLE --------------------

--create table p2_gps(
	--area varchar2(30) primary key,
	--address varchar2(50) not null,
	--phone varchar2(15),
	--b_hours varchar2(20) default '00:00 ~ 24:00'
--);

create table p2_gps(
	area varchar2(30) not null,
	address varchar2(500) not null,
	place varchar2(100) not null,
	phone varchar2(20)
);

create table p2_location(
	item_code varchar2(40) not null,
	area varchar2(30) not null,
	sector varchar2(30) not null,
	constraint location_pk  primary key(item_code, area)
);


--------------- INSERT --------------------

insert into p2_gps values('판교', '경기도 성남시 분당구 삼평동 682 유스페이스2 B동 8층', 'Pyeon2 판교점' ,'010-6666-8345');
insert into p2_gps values('정자', '경기도 성남시 분당구 정자동 166-1 101호', 'Pyeon2 정자점' , '010-5581-0156');
insert into p2_gps values('야탑', '경기 성남시 분당구 야탑동 355-4 한주코아제상가동', 'Pyeon2 야탑점' , '010-3131-7995');


