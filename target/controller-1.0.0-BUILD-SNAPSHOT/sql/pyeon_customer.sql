select * from p2_sector_p;
select * from p2_sector_j;
select * from p2_sector_y;
select * from item_req_board;
select * from user_member;
select * from ROLE_USER;


select userid from user_member where username = '가충호' and useremail = 'kachounghoa@naver.com'
select userpwd from user_member where username = '가충호' and useremail = 'kachounghoa@naver.com'


insert into ROLE_USER values('user3', 'ROLE_USER');

SELECT USERID, USERPWD, 1 ENABLED FROM USER_MEMBER WHERE USERID = 'user1';

update p2_sector_p set item_name = '오뚜기옛날누룽지' where item_name = '오뚜기옛날누룽지용기';

drop table p2_sector_p;
drop table p2_sector_j;
drop table p2_sector_y;
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
   
   

insert into p2_sector_p(sectors,item_name,area) values('1','하늘보리','판교');
insert into p2_sector_p(sectors,item_name,area) values('1','딸기우유','판교');
insert into p2_sector_p(sectors,item_name,area) values('2','지파크캔','판교');
insert into p2_sector_p(sectors,item_name,area) values('2','드링킹복숭아','판교');
insert into p2_sector_p(sectors,item_name,area) values('3','네이처티라임모히또','판교');
insert into p2_sector_p(sectors,item_name,area) values('3','커피빈카페라떼','판교');
insert into p2_sector_p(sectors,item_name,area) values('4','인삼한뿌리소병','판교');
insert into p2_sector_p(sectors,item_name,area) values('4','립톤복숭아중P','판교');
insert into p2_sector_p(sectors,item_name,area) values('5','사과드링크','판교');
insert into p2_sector_p(sectors,item_name,area) values('5','미에로210','판교');

insert into p2_sector_p(sectors,item_name,area) values('6','내마음속하트도넛','판교');
insert into p2_sector_p(sectors,item_name,area) values('6','갈릭팡','판교');
insert into p2_sector_p(sectors,item_name,area) values('7','ID미스터리','판교');
insert into p2_sector_p(sectors,item_name,area) values('7','오천자일리톨핑크','판교');
insert into p2_sector_p(sectors,item_name,area) values('8','쟈키쟈키1500','판교');
insert into p2_sector_p(sectors,item_name,area) values('9','자가비1700','판교');
insert into p2_sector_p(sectors,item_name,area) values('10','홀스체리맛','판교');
insert into p2_sector_p(sectors,item_name,area) values('11','돌풍감자허니치즈','판교');
insert into p2_sector_p(sectors,item_name,area) values('12','피카츄상큼패스츄리','판교');
insert into p2_sector_p(sectors,item_name,area) values('13','크라운산도딸기','판교');
insert into p2_sector_p(sectors,item_name,area) values('14','오리온눈을감자','판교');
insert into p2_sector_p(sectors,item_name,area) values('15','롯데몽쉘초코바나나','판교');
insert into p2_sector_p(sectors,item_name,area) values('16','스피아민트스틱팩','판교');
insert into p2_sector_p(sectors,item_name,area) values('17','생후라보노','판교');

insert into p2_sector_p(sectors,item_name,area) values('18','팔도탄탄면컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('18','한성한입어묵','판교');
insert into p2_sector_p(sectors,item_name,area) values('18','팔도왕뚜껑','판교');
insert into p2_sector_p(sectors,item_name,area) values('19','삼양불닭볶음탕면컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('19','오뚜기부대찌개라면','판교');
insert into p2_sector_p(sectors,item_name,area) values('20','팔도김치도시락','판교');
insert into p2_sector_p(sectors,item_name,area) values('20','불고기사각피자','판교');
insert into p2_sector_p(sectors,item_name,area) values('21','오뚜기열떡볶이면컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('21','오뚜기볶음진짬뽕','판교');
insert into p2_sector_p(sectors,item_name,area) values('22','농심둥지비빔냉면','판교');
insert into p2_sector_p(sectors,item_name,area) values('22','양반전통김','판교');
insert into p2_sector_p(sectors,item_name,area) values('23','컵반옐로우커리덮밥','판교');
insert into p2_sector_p(sectors,item_name,area) values('23','오뚜기볶음진짬뽕컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('24','팔도팔도비빔면컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('24','오뚜기새우볶음밥','판교');
insert into p2_sector_p(sectors,item_name,area) values('25','하이면김맛우동','판교');
insert into p2_sector_p(sectors,item_name,area) values('25','팔도짜장면','판교');
insert into p2_sector_p(sectors,item_name,area) values('26','농심신라면블랙봉지','판교');
insert into p2_sector_p(sectors,item_name,area) values('26','오뚜기옛날누룽지용기','판교');
insert into p2_sector_p(sectors,item_name,area) values('27','팔도불짬뽕','판교');
insert into p2_sector_p(sectors,item_name,area) values('27','농심맛짬뽕큰사발','판교');
insert into p2_sector_p(sectors,item_name,area) values('28','오뚜기진라면순한컵','판교');
insert into p2_sector_p(sectors,item_name,area) values('28','오뚜기진짜짱컵','판교');

insert into p2_sector_p(sectors,item_name,area) values('29','참이슬 fresh','판교');
insert into p2_sector_p(sectors,item_name,area) values('29','처음처럼','판교');
insert into p2_sector_p(sectors,item_name,area) values('29','자몽에 이슬','판교');
insert into p2_sector_p(sectors,item_name,area) values('30','순하리','판교');
insert into p2_sector_p(sectors,item_name,area) values('30','Hite 캔','판교');
insert into p2_sector_p(sectors,item_name,area) values('31','Hite Dry Finish','판교');
insert into p2_sector_p(sectors,item_name,area) values('31','OB Primium','판교');
insert into p2_sector_p(sectors,item_name,area) values('31','CASS FRESH','판교');



--------------------------정자점


insert into p2_sector_j(sectors,item_name,area) values('1','하늘보리','정자');
insert into p2_sector_j(sectors,item_name,area) values('1','딸기우유','정자');
insert into p2_sector_j(sectors,item_name,area) values('2','지파크캔','정자');
insert into p2_sector_j(sectors,item_name,area) values('2','드링킹복숭아','정자');
insert into p2_sector_j(sectors,item_name,area) values('3','네이처티라임모히또','정자');
insert into p2_sector_j(sectors,item_name,area) values('3','커피빈카페라떼','정자');
insert into p2_sector_j(sectors,item_name,area) values('4','인삼한뿌리소병','정자');
insert into p2_sector_j(sectors,item_name,area) values('4','립톤복숭아중P','정자');
insert into p2_sector_j(sectors,item_name,area) values('5','사과드링크','정자');
insert into p2_sector_j(sectors,item_name,area) values('5','미에로210','정자');

insert into p2_sector_j(sectors,item_name,area) values('6','내마음속하트도넛','정자');
insert into p2_sector_j(sectors,item_name,area) values('6','갈릭팡','정자');
insert into p2_sector_j(sectors,item_name,area) values('7','ID미스터리','정자');
insert into p2_sector_j(sectors,item_name,area) values('7','오천자일리톨핑크','정자');
insert into p2_sector_j(sectors,item_name,area) values('8','쟈키쟈키1500','정자');
insert into p2_sector_j(sectors,item_name,area) values('8','자가비1700','정자');
insert into p2_sector_j(sectors,item_name,area) values('9','홀스체리맛','정자');
insert into p2_sector_j(sectors,item_name,area) values('9','돌풍감자허니치즈','정자');
insert into p2_sector_j(sectors,item_name,area) values('10','피카츄상큼패스츄리','정자');
insert into p2_sector_j(sectors,item_name,area) values('10','크라운산도딸기','정자');
insert into p2_sector_j(sectors,item_name,area) values('11','오리온눈을감자','정자');
insert into p2_sector_j(sectors,item_name,area) values('11','롯데몽쉘초코바나나','정자');
insert into p2_sector_j(sectors,item_name,area) values('12','스피아민트스틱팩','정자');
insert into p2_sector_j(sectors,item_name,area) values('12','생후라보노','정자');

insert into p2_sector_j(sectors,item_name,area) values('13','팔도탄탄면컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('13','한성한입어묵','정자');
insert into p2_sector_j(sectors,item_name,area) values('13','팔도왕뚜껑','정자');
insert into p2_sector_j(sectors,item_name,area) values('14','삼양불닭볶음탕면컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('14','오뚜기부대찌개라면','정자');
insert into p2_sector_j(sectors,item_name,area) values('14','팔도김치도시락','정자');
insert into p2_sector_j(sectors,item_name,area) values('15','불고기사각피자','정자');
insert into p2_sector_j(sectors,item_name,area) values('15','오뚜기열떡볶이면컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('15','오뚜기볶음진짬뽕','정자');
insert into p2_sector_j(sectors,item_name,area) values('16','농심둥지비빔냉면','정자');
insert into p2_sector_j(sectors,item_name,area) values('16','양반전통김','정자');
insert into p2_sector_j(sectors,item_name,area) values('16','컵반옐로우커리덮밥','정자');
insert into p2_sector_j(sectors,item_name,area) values('17','오뚜기볶음진짬뽕컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('17','팔도팔도비빔면컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('17','오뚜기새우볶음밥','정자');
insert into p2_sector_j(sectors,item_name,area) values('18','하이면김맛우동','정자');
insert into p2_sector_j(sectors,item_name,area) values('18','팔도짜장면','정자');
insert into p2_sector_j(sectors,item_name,area) values('18','농심신라면블랙봉지','정자');
insert into p2_sector_j(sectors,item_name,area) values('19','오뚜기옛날누룽지용기','정자');
insert into p2_sector_j(sectors,item_name,area) values('19','팔도불짬뽕','정자');
insert into p2_sector_j(sectors,item_name,area) values('19','농심맛짬뽕큰사발','정자');
insert into p2_sector_j(sectors,item_name,area) values('20','오뚜기진라면순한컵','정자');
insert into p2_sector_j(sectors,item_name,area) values('20','오뚜기진짜짱컵','정자');

insert into p2_sector_j(sectors,item_name,area) values('21','참이슬 fresh','정자');
insert into p2_sector_j(sectors,item_name,area) values('21','처음처럼','정자');
insert into p2_sector_j(sectors,item_name,area) values('21','자몽에 이슬','정자');
insert into p2_sector_j(sectors,item_name,area) values('22','순하리','정자');
insert into p2_sector_j(sectors,item_name,area) values('22','Hite 캔','정자');
insert into p2_sector_j(sectors,item_name,area) values('22','Hite Dry Finish','정자');
insert into p2_sector_j(sectors,item_name,area) values('23','OB Primium','정자');
insert into p2_sector_j(sectors,item_name,area) values('23','CASS FRESH','정자');



----------------------------야탑점

insert into p2_sector_y(sectors,item_name,area) values('1','하늘보리','야탑');
insert into p2_sector_y(sectors,item_name,area) values('1','딸기우유','야탑');
insert into p2_sector_y(sectors,item_name,area) values('2','지파크캔','야탑');
insert into p2_sector_y(sectors,item_name,area) values('2','드링킹복숭아','야탑');
insert into p2_sector_y(sectors,item_name,area) values('3','네이처티라임모히또','야탑');
insert into p2_sector_y(sectors,item_name,area) values('3','커피빈카페라떼','야탑');
insert into p2_sector_y(sectors,item_name,area) values('4','인삼한뿌리소병','야탑');
insert into p2_sector_y(sectors,item_name,area) values('4','립톤복숭아중P','야탑');
insert into p2_sector_y(sectors,item_name,area) values('5','사과드링크','야탑');
insert into p2_sector_y(sectors,item_name,area) values('5','미에로210','야탑');

insert into p2_sector_y(sectors,item_name,area) values('6','내마음속하트도넛','야탑');
insert into p2_sector_y(sectors,item_name,area) values('6','갈릭팡','야탑');
insert into p2_sector_y(sectors,item_name,area) values('6','ID미스터리','야탑');
insert into p2_sector_y(sectors,item_name,area) values('7','오천자일리톨핑크','야탑');
insert into p2_sector_y(sectors,item_name,area) values('7','쟈키쟈키1500','야탑');
insert into p2_sector_y(sectors,item_name,area) values('7','자가비1700','야탑');
insert into p2_sector_y(sectors,item_name,area) values('8','홀스체리맛','야탑');
insert into p2_sector_y(sectors,item_name,area) values('8','돌풍감자허니치즈','야탑');
insert into p2_sector_y(sectors,item_name,area) values('8','피카츄상큼패스츄리','야탑');
insert into p2_sector_y(sectors,item_name,area) values('9','크라운산도딸기','야탑');
insert into p2_sector_y(sectors,item_name,area) values('9','오리온눈을감자','야탑');
insert into p2_sector_y(sectors,item_name,area) values('9','롯데몽쉘초코바나나','야탑');
insert into p2_sector_y(sectors,item_name,area) values('10','스피아민트스틱팩','야탑');
insert into p2_sector_y(sectors,item_name,area) values('10','생후라보노','야탑');

insert into p2_sector_y(sectors,item_name,area) values('11','팔도탄탄면컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('11','한성한입어묵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('12','팔도왕뚜껑','야탑');
insert into p2_sector_y(sectors,item_name,area) values('12','삼양불닭볶음탕면컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('13','오뚜기부대찌개라면','야탑');
insert into p2_sector_y(sectors,item_name,area) values('13','팔도김치도시락','야탑');
insert into p2_sector_y(sectors,item_name,area) values('14','불고기사각피자','야탑');
insert into p2_sector_y(sectors,item_name,area) values('14','오뚜기열떡볶이면컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('15','오뚜기볶음진짬뽕','야탑');
insert into p2_sector_y(sectors,item_name,area) values('15','농심둥지비빔냉면','야탑');
insert into p2_sector_y(sectors,item_name,area) values('16','양반전통김','야탑');
insert into p2_sector_y(sectors,item_name,area) values('16','컵반옐로우커리덮밥','야탑');
insert into p2_sector_y(sectors,item_name,area) values('16','오뚜기볶음진짬뽕컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('17','팔도팔도비빔면컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('17','오뚜기새우볶음밥','야탑');
insert into p2_sector_y(sectors,item_name,area) values('18','하이면김맛우동','야탑');
insert into p2_sector_y(sectors,item_name,area) values('18','팔도짜장면','야탑');
insert into p2_sector_y(sectors,item_name,area) values('19','농심신라면블랙봉지','야탑');
insert into p2_sector_y(sectors,item_name,area) values('19','오뚜기옛날누룽지용기','야탑');
insert into p2_sector_y(sectors,item_name,area) values('19','팔도불짬뽕','야탑');
insert into p2_sector_y(sectors,item_name,area) values('20','농심맛짬뽕큰사발','야탑');
insert into p2_sector_y(sectors,item_name,area) values('20','오뚜기진라면순한컵','야탑');
insert into p2_sector_y(sectors,item_name,area) values('20','오뚜기진짜짱컵','야탑');

insert into p2_sector_y(sectors,item_name,area) values('21','참이슬 fresh','야탑');
insert into p2_sector_y(sectors,item_name,area) values('21','처음처럼','야탑');
insert into p2_sector_y(sectors,item_name,area) values('22','자몽에 이슬','야탑');
insert into p2_sector_y(sectors,item_name,area) values('22','순하리','야탑');
insert into p2_sector_y(sectors,item_name,area) values('23','Hite 캔','야탑');
insert into p2_sector_y(sectors,item_name,area) values('23','Hite Dry Finish','야탑');
insert into p2_sector_y(sectors,item_name,area) values('24','OB Primium','야탑');
insert into p2_sector_y(sectors,item_name,area) values('24','CASS FRESH','야탑');
