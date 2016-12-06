

create table calendarMemo(
   year varchar2(10),
   month varchar2(10),
   day varchar2(10),
   content varchar2(500)
);


create table company_item(
   bno number,
   item_code varchar2(40) not null, 
   item_name varchar2(100) not null, 
   item_image varchar2(2000), 
   cost number(20) not null,
   price number(20) not null, 
   count number(20),
   category varchar2(20),
   code1 varchar2(20),
   code2 number(10),
   constraint company_item_pk  primary key(item_code)
);


create table company_notice(
   noticenum number(10) not null,
   title varchar2(150) not null,
   name varchar2(30) not null,
   position varchar2(30) not null,
   contant varchar2(1000) not null,
   noticedate varchar2(30) not null
);


create table company_notice_repl(
   rno number(10),
   bno number(10),
   replyText varchar2(1000),
   replyer varchar2(50),
   regdate_char varchar2(50),
   regdate date,
   updateDate date
);


create table item_req_board(
	req_num number(10) not null,
	title varchar2(50) not null,
	name varchar2(30) not null,		
	item_name varchar2(100) not null, 
	position varchar2(30) not null,
	contant varchar2(1000) not null,
	req_date Date not null
);


create table item_req_board_repl(
   rno number(10),
   bno number(10),
   replyText varchar2(1000),
   replyer varchar2(50),
   regdate_char varchar2(50),
   regdate date,
   updateDate date
);


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


create table p2_calc(
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   price number(10) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   constraint calc_pk  primary key(item_code, area)
);


create table p2_dayCalc(
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   price number(10) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   num number(10) not null,
   p2_time varchar2(30),
   sys_time date default sysdate,
   code1 varchar2(30) default 'bill',
   code2 number(10) default 1000,
   billnum varchar2(50),
   constraint dayCalc_pk  primary key(item_code, area,sys_time)
);


create table p2_daymoney(
   bno number(10),
   num number(10),
   title varchar2(20) not null,
   content varchar2(10) not null,
   pay number(10) not null,
   area varchar2(30) not null,
   year varchar2(20) not null,
   month varchar2(20) not null,
   days varchar2(20) not null,
   dayda date,
   billnum varchar2(50) default 'null'
);

				-- 데이터 입력
create table p2_gps(
   area varchar2(30) not null,
   address varchar2(500) not null,
   place varchar2(100) not null,
   phone varchar2(20)
);

			-- 데이터 입력
create table p2_item(
   bno number,
   item_code varchar2(40) not null, 
   item_name varchar2(60) not null, 
   item_image varchar2(500), 
   price number(10) not null, 
   count number(10), 
   hit number(5), 
   category varchar2(20), 
   area varchar2(30) not null,
   constraint item_pk  primary key(item_code, area)
);

-- 데이터 입력
create table p2_member(
   id varchar2(20) not null,
   pwd varchar2(30) not null,
   name varchar2(30),
   position varchar2(20),
   phone varchar2(20),
   age varchar2(20), 
   gender varchar2(10),
   area varchar2(30),
   optime varchar2(20),
   postcode varchar2(20),
   address varchar2(200),
   address2 varchar2(200),
   constraint member_pk  primary key(id, area)
);


-- 데이터 입력
create table p2_sector(
   code1 varchar2(20),
   code2 number,
   item_name varchar2(30), 
   area varchar2(30)
);


create table p2_user(
	userid varchar2(30),
	go_time date,
	back_time date,
	area varchar2(30) not null
);


create table p2_userMoney(
	year varchar2(10),
	month varchar2(10),
	day varchar2(10),
	userid varchar2(30),
	hour number(5),
	money number(5),
	area varchar2(30) not null
);


create table p2_usermoneyfin(
	year varchar2(10),
	month varchar2(10),
	day varchar2(10),
	userid varchar2(30),
	hour number(10),
	money number(10),
	area varchar2(30) not null
);


CREATE TABLE ROLE(
   ID VARCHAR2(20 BYTE),    
   ROLE_NAME VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE ;


create table sal(
   sold varchar2(10) not null,
   pay number(10) not null,
   paynum number(10) not null,
   sal_time varchar2(30),
   sys_time date default sysdate,
   area varchar2(30) not null,
   code1 varchar2(20),
   code2 number(10),
   billnum varchar2(50)
);



create table user_member(
	mem_num number,
	userid varchar2(30) not null,
	userpwd varchar2(30) not null,
	username varchar2(20) not null,
	useremail varchar2(50),
	userphone varchar2(50),
	constraint user_member_pk  primary key(userid)
);




