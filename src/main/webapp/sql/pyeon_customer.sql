select * from p2_sector_p;
select * from p2_sector_j;
select * from p2_sector_y;
select * from item_req_board;
select * from user_member;
select * from ROLE_USER;
select * from ROLE;


insert into ROLE(id, role_name) values('user1', 'ROLE_CUS');
insert into ROLE(id, role_name) values('user2', 'ROLE_CUS');
insert into ROLE(id, role_name) values('user3', 'ROLE_CUS');
insert into ROLE(id, role_name) values('choungho', 'ROLE_CUS');

select userid from user_member where username = '����ȣ' and useremail = 'kachounghoa@naver.com'
select userpwd from user_member where username = '����ȣ' and useremail = 'kachounghoa@naver.com'


insert into ROLE_USER values('user3', 'ROLE_USER');

SELECT USERID, USERPWD, 1 ENABLED FROM USER_MEMBER WHERE USERID = 'user1';

update p2_sector_p set item_name = '���ѱ⿾��������' where item_name = '���ѱ⿾�����������';

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
   
insert into p2_gps values('�Ǳ�', '��⵵ ������ �д籸 ���� 682 �������̽�2 B�� 8��', 'Pyeon2 �Ǳ���' ,'010-6666-8345');
insert into p2_gps values('����', '��⵵ ������ �д籸 ���ڵ� 166-1 101ȣ', 'Pyeon2 ������' , '010-5581-0156');
insert into p2_gps values('��ž', '��� ������ �д籸 ��ž�� 355-4 �����ھ����󰡵�', 'Pyeon2 ��ž��' , '010-3131-7995');
   
   

insert into p2_sector_p(sectors,item_name,area) values('1','�ϴú���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('1','�������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('2','����ũĵ','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('2','�帵ŷ������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('3','����óƼ���Ӹ�����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('3','Ŀ�Ǻ�ī���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('4','�λ��ѻѸ��Һ�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('4','���溹������P','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('5','����帵ũ','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('5','�̿���210','�Ǳ�');

insert into p2_sector_p(sectors,item_name,area) values('6','����������Ʈ����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('6','������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('7','ID�̽��͸�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('7','��õ���ϸ�����ũ','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('8','��Ű��Ű1500','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('9','�ڰ���1700','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('10','Ȧ��ü����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('11','��ǳ�������ġ��','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('12','��ī���ŭ�н���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('13','ũ���굵����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('14','�����´�������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('15','�Ե��������ڹٳ���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('16','���Ǿƹ�Ʈ��ƽ��','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('17','���Ķ󺸳�','�Ǳ�');

insert into p2_sector_p(sectors,item_name,area) values('18','�ȵ�źź����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('18','�Ѽ����Ծ','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('18','�ȵ��նѲ�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('19','���Ҵߺ���������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('19','���ѱ�δ�����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('20','�ȵ���ġ���ö�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('20','�Ұ��簢����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('21','���ѱ⿭�����̸���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('21','���ѱ⺺����«��','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('22','��ɵ�������ø�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('22','��������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('23','�Źݿ��ο�Ŀ������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('23','���ѱ⺺����«����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('24','�ȵ��ȵ��������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('24','���ѱ���캺����','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('25','���̸����쵿','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('25','�ȵ�¥���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('26','��ɽŶ�������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('26','���ѱ⿾�����������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('27','�ȵ���«��','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('27','��ɸ�«��ū���','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('28','���ѱ�����������','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('28','���ѱ���¥¯��','�Ǳ�');

insert into p2_sector_p(sectors,item_name,area) values('29','���̽� fresh','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('29','ó��ó��','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('29','�ڸ��� �̽�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('30','���ϸ�','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('30','Hite ĵ','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('31','Hite Dry Finish','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('31','OB Primium','�Ǳ�');
insert into p2_sector_p(sectors,item_name,area) values('31','CASS FRESH','�Ǳ�');



--------------------------������


insert into p2_sector_j(sectors,item_name,area) values('1','�ϴú���','����');
insert into p2_sector_j(sectors,item_name,area) values('1','�������','����');
insert into p2_sector_j(sectors,item_name,area) values('2','����ũĵ','����');
insert into p2_sector_j(sectors,item_name,area) values('2','�帵ŷ������','����');
insert into p2_sector_j(sectors,item_name,area) values('3','����óƼ���Ӹ�����','����');
insert into p2_sector_j(sectors,item_name,area) values('3','Ŀ�Ǻ�ī���','����');
insert into p2_sector_j(sectors,item_name,area) values('4','�λ��ѻѸ��Һ�','����');
insert into p2_sector_j(sectors,item_name,area) values('4','���溹������P','����');
insert into p2_sector_j(sectors,item_name,area) values('5','����帵ũ','����');
insert into p2_sector_j(sectors,item_name,area) values('5','�̿���210','����');

insert into p2_sector_j(sectors,item_name,area) values('6','����������Ʈ����','����');
insert into p2_sector_j(sectors,item_name,area) values('6','������','����');
insert into p2_sector_j(sectors,item_name,area) values('7','ID�̽��͸�','����');
insert into p2_sector_j(sectors,item_name,area) values('7','��õ���ϸ�����ũ','����');
insert into p2_sector_j(sectors,item_name,area) values('8','��Ű��Ű1500','����');
insert into p2_sector_j(sectors,item_name,area) values('8','�ڰ���1700','����');
insert into p2_sector_j(sectors,item_name,area) values('9','Ȧ��ü����','����');
insert into p2_sector_j(sectors,item_name,area) values('9','��ǳ�������ġ��','����');
insert into p2_sector_j(sectors,item_name,area) values('10','��ī���ŭ�н���','����');
insert into p2_sector_j(sectors,item_name,area) values('10','ũ���굵����','����');
insert into p2_sector_j(sectors,item_name,area) values('11','�����´�������','����');
insert into p2_sector_j(sectors,item_name,area) values('11','�Ե��������ڹٳ���','����');
insert into p2_sector_j(sectors,item_name,area) values('12','���Ǿƹ�Ʈ��ƽ��','����');
insert into p2_sector_j(sectors,item_name,area) values('12','���Ķ󺸳�','����');

insert into p2_sector_j(sectors,item_name,area) values('13','�ȵ�źź����','����');
insert into p2_sector_j(sectors,item_name,area) values('13','�Ѽ����Ծ','����');
insert into p2_sector_j(sectors,item_name,area) values('13','�ȵ��նѲ�','����');
insert into p2_sector_j(sectors,item_name,area) values('14','���Ҵߺ���������','����');
insert into p2_sector_j(sectors,item_name,area) values('14','���ѱ�δ�����','����');
insert into p2_sector_j(sectors,item_name,area) values('14','�ȵ���ġ���ö�','����');
insert into p2_sector_j(sectors,item_name,area) values('15','�Ұ��簢����','����');
insert into p2_sector_j(sectors,item_name,area) values('15','���ѱ⿭�����̸���','����');
insert into p2_sector_j(sectors,item_name,area) values('15','���ѱ⺺����«��','����');
insert into p2_sector_j(sectors,item_name,area) values('16','��ɵ�������ø�','����');
insert into p2_sector_j(sectors,item_name,area) values('16','��������','����');
insert into p2_sector_j(sectors,item_name,area) values('16','�Źݿ��ο�Ŀ������','����');
insert into p2_sector_j(sectors,item_name,area) values('17','���ѱ⺺����«����','����');
insert into p2_sector_j(sectors,item_name,area) values('17','�ȵ��ȵ��������','����');
insert into p2_sector_j(sectors,item_name,area) values('17','���ѱ���캺����','����');
insert into p2_sector_j(sectors,item_name,area) values('18','���̸����쵿','����');
insert into p2_sector_j(sectors,item_name,area) values('18','�ȵ�¥���','����');
insert into p2_sector_j(sectors,item_name,area) values('18','��ɽŶ�������','����');
insert into p2_sector_j(sectors,item_name,area) values('19','���ѱ⿾�����������','����');
insert into p2_sector_j(sectors,item_name,area) values('19','�ȵ���«��','����');
insert into p2_sector_j(sectors,item_name,area) values('19','��ɸ�«��ū���','����');
insert into p2_sector_j(sectors,item_name,area) values('20','���ѱ�����������','����');
insert into p2_sector_j(sectors,item_name,area) values('20','���ѱ���¥¯��','����');

insert into p2_sector_j(sectors,item_name,area) values('21','���̽� fresh','����');
insert into p2_sector_j(sectors,item_name,area) values('21','ó��ó��','����');
insert into p2_sector_j(sectors,item_name,area) values('21','�ڸ��� �̽�','����');
insert into p2_sector_j(sectors,item_name,area) values('22','���ϸ�','����');
insert into p2_sector_j(sectors,item_name,area) values('22','Hite ĵ','����');
insert into p2_sector_j(sectors,item_name,area) values('22','Hite Dry Finish','����');
insert into p2_sector_j(sectors,item_name,area) values('23','OB Primium','����');
insert into p2_sector_j(sectors,item_name,area) values('23','CASS FRESH','����');



----------------------------��ž��

insert into p2_sector_y(sectors,item_name,area) values('1','�ϴú���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('1','�������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('2','����ũĵ','��ž');
insert into p2_sector_y(sectors,item_name,area) values('2','�帵ŷ������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('3','����óƼ���Ӹ�����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('3','Ŀ�Ǻ�ī���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('4','�λ��ѻѸ��Һ�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('4','���溹������P','��ž');
insert into p2_sector_y(sectors,item_name,area) values('5','����帵ũ','��ž');
insert into p2_sector_y(sectors,item_name,area) values('5','�̿���210','��ž');

insert into p2_sector_y(sectors,item_name,area) values('6','����������Ʈ����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('6','������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('6','ID�̽��͸�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('7','��õ���ϸ�����ũ','��ž');
insert into p2_sector_y(sectors,item_name,area) values('7','��Ű��Ű1500','��ž');
insert into p2_sector_y(sectors,item_name,area) values('7','�ڰ���1700','��ž');
insert into p2_sector_y(sectors,item_name,area) values('8','Ȧ��ü����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('8','��ǳ�������ġ��','��ž');
insert into p2_sector_y(sectors,item_name,area) values('8','��ī���ŭ�н���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('9','ũ���굵����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('9','�����´�������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('9','�Ե��������ڹٳ���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('10','���Ǿƹ�Ʈ��ƽ��','��ž');
insert into p2_sector_y(sectors,item_name,area) values('10','���Ķ󺸳�','��ž');

insert into p2_sector_y(sectors,item_name,area) values('11','�ȵ�źź����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('11','�Ѽ����Ծ','��ž');
insert into p2_sector_y(sectors,item_name,area) values('12','�ȵ��նѲ�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('12','���Ҵߺ���������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('13','���ѱ�δ�����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('13','�ȵ���ġ���ö�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('14','�Ұ��簢����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('14','���ѱ⿭�����̸���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('15','���ѱ⺺����«��','��ž');
insert into p2_sector_y(sectors,item_name,area) values('15','��ɵ�������ø�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('16','��������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('16','�Źݿ��ο�Ŀ������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('16','���ѱ⺺����«����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('17','�ȵ��ȵ��������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('17','���ѱ���캺����','��ž');
insert into p2_sector_y(sectors,item_name,area) values('18','���̸����쵿','��ž');
insert into p2_sector_y(sectors,item_name,area) values('18','�ȵ�¥���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('19','��ɽŶ�������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('19','���ѱ⿾�����������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('19','�ȵ���«��','��ž');
insert into p2_sector_y(sectors,item_name,area) values('20','��ɸ�«��ū���','��ž');
insert into p2_sector_y(sectors,item_name,area) values('20','���ѱ�����������','��ž');
insert into p2_sector_y(sectors,item_name,area) values('20','���ѱ���¥¯��','��ž');

insert into p2_sector_y(sectors,item_name,area) values('21','���̽� fresh','��ž');
insert into p2_sector_y(sectors,item_name,area) values('21','ó��ó��','��ž');
insert into p2_sector_y(sectors,item_name,area) values('22','�ڸ��� �̽�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('22','���ϸ�','��ž');
insert into p2_sector_y(sectors,item_name,area) values('23','Hite ĵ','��ž');
insert into p2_sector_y(sectors,item_name,area) values('23','Hite Dry Finish','��ž');
insert into p2_sector_y(sectors,item_name,area) values('24','OB Primium','��ž');
insert into p2_sector_y(sectors,item_name,area) values('24','CASS FRESH','��ž');
