select * from orderReqState where area = '판교';
select * from orderSpend where spend_date between '2016-11-21 13:23:00.0' and '2016-11-21 14:23:00.0';
------------------------------------------------------------------------------------------------------------------------

select * from orderReq;
select * from orderReq_temp;
select * from orderSpend;
select * from orderReqState;

drop table orderReq;
drop table orderReq_temp;
drop table orderReqState;
drop table orderSpend;

drop sequence orderReq_num;
drop sequence orderReq_temp_num;
drop sequence orderReqState_num;
drop sequence orderSpend_num;

--------------- TABLE --------------------

create table orderReq(
	bno number,
	item_code varchar2(40) not null, 
	item_name varchar2(30) not null, 
	count number(10), 
	category varchar2(20), 
	area varchar2(30) not null,
	p2_time date DEFAULT SYSDATE,
	state varchar2(30),
	constraint orderReq_pk  primary key(item_code, area)
);

create table orderReq_temp(
	bno number,
	item_code varchar2(40) not null, 
	item_name varchar2(30) not null, 
	count number(10), 
	category varchar2(20), 
	area varchar2(30) not null,
	p2_time date DEFAULT SYSDATE,
	state varchar2(30),
	constraint orderReq_temp_pk  primary key(item_code, area)
);

create table orderReqState(
   bno number,
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   p2_time varchar2(40),
   state varchar2(30)
);

create table orderSpend(
	bno number(7),
	spend varchar2(10),
	pay number(10),
	spend_date date,
	area varchar2(20)
);

create table orderTempTemp(
	item_code varchar2(30),
	item_name varchar2(30),
	category varchar2(20),
	area varchar2(20)
);

--------------- SEQUENCE --------------------

create sequence orderReq_num
   increment by 1
   start with 1
   nocache;

create sequence orderReq_temp_num
   increment by 1
   start with 1
   nocache;
   
create sequence orderReqState_num
   increment by 1
   start with 1
   nocache;

create sequence orderSpend_num
   increment by 1
   start with 1
   nocache;

---------------x ALTER x--------------------
   
alter table orderReq_temp add(state varchar2(30));
alter table orderReq add(state varchar2(30));
alter table orderReq_temp drop(state);

   






