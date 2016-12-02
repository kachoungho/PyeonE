select * from p2_sector;
select * from item_req_board;
select * from user_member;
select * from ROLE_USER;
select * from ROLE;


insert into ROLE(id, role_name) values('user1', 'ROLE_CUS');
insert into ROLE(id, role_name) values('user2', 'ROLE_CUS');
insert into ROLE(id, role_name) values('repl', 'ROLE_CUS');
insert into ROLE(id, role_name) values('choungho', 'ROLE_CUS');

select userid from user_member where username = '����ȣ' and useremail = 'kachounghoa@naver.com'
select userpwd from user_member where username = '����ȣ' and useremail = 'kachounghoa@naver.com'


insert into ROLE_USER values('user3', 'ROLE_USER');

SELECT USERID, USERPWD, 1 ENABLED FROM USER_MEMBER WHERE USERID = 'user1';

update p2_sector_p set item_name = '���ѱ⿾��������' where item_name = '���ѱ⿾�����������';

drop table role_user;
drop table p2_sector;
drop table item_req_board;
drop sequence sector_p;
drop sequence sector_y;
drop sequence sector_j;
drop sequence user_member;
drop sequence req_num;

CREATE TABLE ROLE_USER(
	ID VARCHAR2(20 BYTE), 	
	ROLE_NAME VARCHAR2(30 BYTE)
) SEGMENT CREATION IMMEDIATE ;

create table item_req_board_repl(
   rno number(10),
   bno number(10),
   replyText varchar2(1000),
   replyer varchar2(50),
   regdate_char varchar2(50),
   regdate date,
   updateDate date
);

create sequence item_req_board_repl_num
   increment by 1
   start with 1
   nocache;

create table item_req_board(
	req_num number(10) not null,
	title varchar2(50) not null,
	name varchar2(30) not null,		
	item_name varchar2(100) not null, 
	position varchar2(30) not null,
	contant varchar2(1000) not null,
	req_date Date not null
);

create sequence req_num
   increment by 1
   start with 1
   nocache;

create table item_req_board_repl(
   rno number(10),
   bno number(10),
   replyText varchar2(1000),
   replyer varchar2(50),
   regdate_char varchar2(50),
   regdate date,
   updateDate date
);

create sequence item_req_board_repl_num
   increment by 1
   start with 1
   nocache;

create table user_member(
	mem_num number,
	userid varchar2(30) not null,
	userpwd varchar2(30) not null,
	username varchar2(20) not null,
	useremail varchar2(50),
	userphone varchar2(50),
	constraint user_member_pk  primary key(userid)
);

create sequence mem_num
   increment by 1
   start with 1
   nocache;




create table p2_sector_p(
	sectors number not null,
	item_name varchar2(30) not null, 
	area varchar2(30) not null
);

create table p2_sector_j(
	sectors number not null,
	item_name varchar2(30) not null, 
	area varchar2(30) not null
);

create table p2_sector_y(
	sectors number not null,
	item_name varchar2(30) not null, 
	area varchar2(30) not null
);


create sequence sector_p
   increment by 1
   start with 1
   nocache;

create sequence sector_j
   increment by 1
   start with 1
   nocache;
   
create sequence sector_y
   increment by 1
   start with 1
   nocache;
   
   create table p2_gps(
   area varchar2(30) not null,
   address varchar2(500) not null,
   place varchar2(100) not null,
   phone varchar2(20)
);

drop table p2_gps;


select*from p2_gps;
   
insert into p2_gps values('판교', '경기도 성남시 분당구 삼평동 682 유스페이스2 B동 8층', 'Pyeon2 판교점' ,'010-6666-8345');
insert into p2_gps values('정자', '경기도 성남시 분당구 정자동 166-1 101호', 'Pyeon2 정자점' , '010-5581-0156');
insert into p2_gps values('야탑', '경기 성남시 분당구 야탑동 355-4 한주코아제상가동', 'Pyeon2 야탑점' , '010-3131-7995');
   
   

-- 판교점


insert into p2_sector(code1,code2,item_name,area) values('DRINK','101','하늘보리','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','102','딸기우유','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','지파크캔','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','드링킹복숭아','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','104','네이처티라임모히또','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','105','커피빈카페라떼','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','106','인삼한뿌리소병','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','107','립톤복숭아중P','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','108','사과드링크','판교');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','109','미에로210','판교');

insert into p2_sector(code1,code2,item_name,area) values('SNACK','101','내마음속하트도넛','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','102','갈릭팡','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','103','ID미스터리','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','104','오천자일리톨핑크','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','105','쟈키쟈키1500','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','106','자가비1700','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','107','홀스체리맛','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','108','돌풍감자허니치즈','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','109','피카츄상큼패스츄리','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','110','크라운산도딸기','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','111','오리온눈을감자','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','112','롯데몽쉘초코바나나','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','113','스피아민트스틱팩','판교');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','114','생후라보노','판교');

insert into p2_sector(code1,code2,item_name,area) values('INSTANT','101','팔도탄탄면컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','102','한성한입어묵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','103','팔도왕뚜껑','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','104','삼양불닭볶음탕면컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','105','오뚜기부대찌개라면','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','106','팔도김치도시락','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','107','불고기사각피자','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','108','오뚜기열떡볶이면컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','109','오뚜기볶음진짬뽕','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','110','농심둥지비빔냉면','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','111','양반전통김','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','112','컵반옐로우커리덮밥','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','113','오뚜기볶음진짬뽕컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','114','팔도팔도비빔면컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','115','오뚜기새우볶음밥','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','116','하이면김맛우동','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','117','팔도짜장면','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','118','농심신라면블랙봉지','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','119','오뚜기옛날누룽지용기','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','120','팔도불짬뽕','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','121','농심맛짬뽕큰사발','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','122','오뚜기진라면순한컵','판교');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','123','오뚜기진짜짱컵','판교');

insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','101','참이슬 fresh','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','102','처음처럼','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','103','자몽에 이슬','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','104','순하리','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','105','Hite 캔','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','106','Hite Dry Finish','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','107','OB Primium','판교');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','108','CASS FRESH','판교');


-- 정자점


insert into p2_sector(code1,code2,item_name,area) values('DRINK','101','하늘보리','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','102','딸기우유','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','지파크캔','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','드링킹복숭아','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','104','네이처티라임모히또','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','105','커피빈카페라떼','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','106','인삼한뿌리소병','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','107','립톤복숭아중P','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','108','사과드링크','정자');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','109','미에로210','정자');

insert into p2_sector(code1,code2,item_name,area) values('SNACK','101','내마음속하트도넛','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','102','갈릭팡','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','103','ID미스터리','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','104','오천자일리톨핑크','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','105','쟈키쟈키1500','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','106','자가비1700','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','107','홀스체리맛','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','108','돌풍감자허니치즈','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','109','피카츄상큼패스츄리','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','110','크라운산도딸기','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','111','오리온눈을감자','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','112','롯데몽쉘초코바나나','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','113','스피아민트스틱팩','정자');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','114','생후라보노','정자');

insert into p2_sector(code1,code2,item_name,area) values('INSTANT','101','팔도탄탄면컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','102','한성한입어묵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','103','팔도왕뚜껑','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','104','삼양불닭볶음탕면컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','105','오뚜기부대찌개라면','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','106','팔도김치도시락','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','107','불고기사각피자','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','108','오뚜기열떡볶이면컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','109','오뚜기볶음진짬뽕','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','110','농심둥지비빔냉면','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','111','양반전통김','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','112','컵반옐로우커리덮밥','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','113','오뚜기볶음진짬뽕컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','114','팔도팔도비빔면컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','115','오뚜기새우볶음밥','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','116','하이면김맛우동','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','117','팔도짜장면','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','118','농심신라면블랙봉지','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','119','오뚜기옛날누룽지용기','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','120','팔도불짬뽕','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','121','농심맛짬뽕큰사발','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','122','오뚜기진라면순한컵','정자');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','123','오뚜기진짜짱컵','정자');

insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','101','참이슬 fresh','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','102','처음처럼','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','103','자몽에 이슬','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','104','순하리','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','105','Hite 캔','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','106','Hite Dry Finish','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','107','OB Primium','정자');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','108','CASS FRESH','정자');


-- 야탑점


insert into p2_sector(code1,code2,item_name,area) values('DRINK','101','하늘보리','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','102','딸기우유','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','지파크캔','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','103','드링킹복숭아','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','104','네이처티라임모히또','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','105','커피빈카페라떼','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','106','인삼한뿌리소병','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','107','립톤복숭아중P','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','108','사과드링크','야탑');
insert into p2_sector(code1,code2,item_name,area) values('DRINK','109','미에로210','야탑');

insert into p2_sector(code1,code2,item_name,area) values('SNACK','101','내마음속하트도넛','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','102','갈릭팡','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','103','ID미스터리','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','104','오천자일리톨핑크','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','105','쟈키쟈키1500','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','106','자가비1700','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','107','홀스체리맛','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','108','돌풍감자허니치즈','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','109','피카츄상큼패스츄리','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','110','크라운산도딸기','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','111','오리온눈을감자','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','112','롯데몽쉘초코바나나','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','113','스피아민트스틱팩','야탑');
insert into p2_sector(code1,code2,item_name,area) values('SNACK','114','생후라보노','야탑');

insert into p2_sector(code1,code2,item_name,area) values('INSTANT','101','팔도탄탄면컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','102','한성한입어묵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','103','팔도왕뚜껑','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','104','삼양불닭볶음탕면컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','105','오뚜기부대찌개라면','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','106','팔도김치도시락','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','107','불고기사각피자','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','108','오뚜기열떡볶이면컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','109','오뚜기볶음진짬뽕','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','110','농심둥지비빔냉면','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','111','양반전통김','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','112','컵반옐로우커리덮밥','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','113','오뚜기볶음진짬뽕컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','114','팔도팔도비빔면컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','115','오뚜기새우볶음밥','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','116','하이면김맛우동','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','117','팔도짜장면','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','118','농심신라면블랙봉지','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','119','오뚜기옛날누룽지용기','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','120','팔도불짬뽕','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','121','농심맛짬뽕큰사발','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','122','오뚜기진라면순한컵','야탑');
insert into p2_sector(code1,code2,item_name,area) values('INSTANT','123','오뚜기진짜짱컵','야탑');

insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','101','참이슬 fresh','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','102','처음처럼','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','103','자몽에 이슬','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','104','순하리','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','105','Hite 캔','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','106','Hite Dry Finish','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','107','OB Primium','야탑');
insert into p2_sector(code1,code2,item_name,area) values('ALCOHOL','108','CASS FRESH','야탑');


