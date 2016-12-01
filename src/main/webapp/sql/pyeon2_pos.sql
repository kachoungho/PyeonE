select * from p2_item;
select * from p2_member;
select * from ROLE;
select * from sal;
select * from p2_calc;
select * from p2_daymoney;
select * from p2_dayCalc;
select * from p2_weekCalc;
select * from p2_monthCalc;
select * from ORDERSPEND;

drop table p2_item;
drop table p2_member;
drop table ROLE;
drop table sal;
drop table p2_calc;
drop table p2_daymoney;
drop table p2_dayCalc;
drop table p2_weekCalc;
drop table p2_monthCalc;

drop sequence p2_item_num;
drop sequence paynum;
drop sequence p2_daymoney_num;

--------------- TABLE --------------------

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

create table p2_calc(
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   price number(10) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   constraint calc_pk  primary key(item_code, area)
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

create table p2_weekCalc(
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   price number(10) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   p2_time date DEFAULT SYSDATE,
   constraint weekCalc_pk  primary key(item_code, area)
);

create table p2_monthCalc(
   item_code varchar2(40) not null, 
   item_name varchar2(30) not null, 
   price number(10) not null, 
   count number(10), 
   category varchar2(20), 
   area varchar2(30) not null,
   p2_time date DEFAULT SYSDATE,
   constraint monthCalc_pk  primary key(item_code, area)
);


--------------- SEQUENCE --------------------

create sequence p2_item_num
   increment by 1
   start with 1
   nocache;

create sequence paynum
   increment by 1
   start with 1
   nocache;

create sequence p2_daymoney_num
   increment by 1
   start with 1
   nocache;


--------------- INSERT --------------------

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK101','하늘보리P280ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/79A4191B8B694F5090EAB3CF00A91F7A.jpg',1000,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK102','딸기우유250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/24310106D5B24CD7993ED05B43C4DD1F.jpg',1000,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK103','지파크캔250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3AE051F6D7E9439AAEFA45547DF0CB87.jpg',1500,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK104','드링킹복숭아310ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1800,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK105','네이처티라임모히또중',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056052997.jpg',2000,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK106','커피빈카페라떼P300',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E801676D88D548D0A1B4D66C997C2990.jpg',2500,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK107','인삼한뿌리소병',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801007020945.jpg',4000,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK108','립톤복숭아중P',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056044534.jpg',1700,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK109','사과드링크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056020415.jpg',600,30,0,'음료','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK110','미에로210',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8806004382119.jpg',1350,30,0,'음료','판교');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK101','내마음속하트도넛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3F579498A3EC491D9DFBF6552A026D0D.jpg',1300,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK102','갈릭팡',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1200,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK103','ID미스터리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062317752.jpg',1200,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK104','오천자일리톨핑크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062215799.jpg',5000,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK105','쟈키쟈키1500',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801111770231.jpg',1500,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK106','자가비1700',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801019604997(1).jpg',1700,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK107','홀스체리맛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/01793CF6CF3C4E12AD502AB82DB2639E.jpg',1000,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK108','돌풍감자허니치즈',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EB8D2B992E1741A4BFE8E492BEB5FE23.jpg',1500,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK109','피카츄상큼패스츄리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/FC428DA0EB7C4601B9A35A23AC160B59.jpg',1200,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK110','크라운산도딸기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B8B39C2F0AD1423682543A004657254A.jpg',2400,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK111','오리온눈을감자56g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/02E8667DA3914498B4BDFFE057E7083E.jpg',1500,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK112','롯데몽쉘초코바나나',
'http://cdn2.bgfretail.com/bgfbrand/files/product/A5C2391155B54E41B6E704890972BB8E.jpg',4200,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK113','스피아민트스틱팩',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062320653.jpg',1000,30,0,'스낵','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK114','생후라보노',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801117627102.jpg',500,30,0,'스낵','판교');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT101','팔도탄탄면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/D747D62C269F4B678EC0238BC4C8B39D.jpg',1600,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT102','한성한입어묵60g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/778FD7ED5B924596A35D2EC40F6F2BE4.jpg',1000,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT103','팔도왕뚜껑',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4DCB16CD577F419E9F4117CA06FB3AE2.jpg',1050,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT104','삼양불닭볶음탕면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/F8E86E1F01504DCAA4781BD4E23109DC.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT105','오뚜기부대찌개라면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/185DB5F492444B4E9A1EA0EBCCA54B92.jpg', 1600,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT106','팔도김치도시락',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EC28F4E834F44BDE85B8148580D846D7.jpg',850,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT107','불고기사각피자96g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9D6D9061AA6345DF9DF74BA7D05CB74B.jpg',2800,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT108','오뚜기열떡볶이면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/CDFB85C9ACA94E4DAF7B54951F08C4C9.jpg',1400,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT109','오뚜기볶음진짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EE63A7E2CE854C9BB9716CCCCA805977.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT110','농심둥지비빔냉면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6214872FA1604352ADCEC82CE11D10C7.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT111','양반전통김',
'http://cdn2.bgfretail.com/bgfbrand/files/product/00F279D5DC324FCABD10450D23CA82D5.jpg',1300,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT112','컵반옐로우커리덮밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E89308DBC6694851AADB7265B30A8077.jpg',3300,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT113','오뚜기볶음진짬뽕컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B6D39921CEEA4383B608A5A91E5736F9.jpg',1600,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT114','팔도팔도비빔면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/55290779F8724326AA910F9D627375D7.jpg',1050,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT115','오뚜기새우볶음밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6C34044F1D32465FBE94E2B6154EA8CC.jpg',3500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT116','하이면김맛우동',
'http://cdn2.bgfretail.com/bgfbrand/files/product/995FCA2EE0624FCB872979B438F3037D.jpg',2500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT117','팔도짜장면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B74268DE514C468CB20D5CEBA0EC8113.jpg',1500,30,0,'인스턴트','판교');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT118','농심신라면블랙봉지',
'http://cdn2.bgfretail.com/bgfbrand/files/product/934787B40C0E4F368FCF860F35FDC740.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT119','오뚜기옛날누룽지용기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/AB3611FC4BEA45CE91B3A7B4E582CA26.jpg',1800,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT120','팔도불짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4CCD22A75F634FCDB214D811BEE6A2C7.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT121','농심맛짬뽕큰사발',
'http://cdn2.bgfretail.com/bgfbrand/files/product/21DFE67AE2C54DE281519C9D2E0718C1.jpg',1500,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT122','오뚜기진라면순한컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9A3CD41FDF504629A452952AF1E8B514.jpg',950,30,0,'인스턴트','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT123','오뚜기진짜짱컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9C988E488F364A6FAD626C7E92255529.jpg',1500,30,0,'인스턴트','판교');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC101','참이슬 fresh',
'http://image.asiatoday.co.kr/file/310975(0)-%5E484%5E1033%5E.jpg',1400,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC102','처음처럼',
'http://www.bizwatch.co.kr/files/2014/02/19/90131d475483dc16998c041ccc708199170636.jpg',1400,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC103','참이슬 자몽에 이슬',
'http://image.newsis.com/2015/06/09/NISI20150609_0011033834_web.jpg',1500,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC104','처음처럼 순하리',
'https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fimg.tf.co.kr%2Farticle%2Fhome%2F2015%2F04%2F28%2F201534091430214707.jpg',1500,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC105','Hite 캔 500ml',
'http://callmart-gimpo.com/data/item/1440839029/thumb-7ZWY7J207Yq4500ml_300x300.jpg',2600,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC106','Hite Dry Finish 500ml 캔',
'http://file.hitejinro.com/hitejinro/Cust/Pres/dry_finish_d.jpg',2600,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC107','OB Primium 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838900/thumb-OB7ZSE66as6647JeE500ml_300x300.jpg',2600,30,0,'주류','판교');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC108','CASS FRESH 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838986/thumb-7Lm07Iqk500ml_300x300.jpg',2600,30,0,'주류','판교');



insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK101','하늘보리P280ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/79A4191B8B694F5090EAB3CF00A91F7A.jpg',1000,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK102','딸기우유250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/24310106D5B24CD7993ED05B43C4DD1F.jpg',1000,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK103','지파크캔250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3AE051F6D7E9439AAEFA45547DF0CB87.jpg',1500,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK104','드링킹복숭아310ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1800,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK105','네이처티라임모히또중',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056052997.jpg',2000,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK106','커피빈카페라떼P300',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E801676D88D548D0A1B4D66C997C2990.jpg',2500,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK107','인삼한뿌리소병',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801007020945.jpg',4000,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK108','립톤복숭아중P',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056044534.jpg',1700,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK109','사과드링크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056020415.jpg',600,30,0,'음료','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK110','미에로210',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8806004382119.jpg',1350,30,0,'음료','정자');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK101','내마음속하트도넛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3F579498A3EC491D9DFBF6552A026D0D.jpg',1300,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK102','갈릭팡',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1200,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK103','ID미스터리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062317752.jpg',1200,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK104','오천자일리톨핑크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062215799.jpg',5000,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK105','쟈키쟈키1500',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801111770231.jpg',1500,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK106','자가비1700',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801019604997(1).jpg',1700,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK107','홀스체리맛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/01793CF6CF3C4E12AD502AB82DB2639E.jpg',1000,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK108','돌풍감자허니치즈',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EB8D2B992E1741A4BFE8E492BEB5FE23.jpg',1500,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK109','피카츄상큼패스츄리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/FC428DA0EB7C4601B9A35A23AC160B59.jpg',1200,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK110','크라운산도딸기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B8B39C2F0AD1423682543A004657254A.jpg',2400,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK111','오리온눈을감자56g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/02E8667DA3914498B4BDFFE057E7083E.jpg',1500,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK112','롯데몽쉘초코바나나',
'http://cdn2.bgfretail.com/bgfbrand/files/product/A5C2391155B54E41B6E704890972BB8E.jpg',4200,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK113','스피아민트스틱팩',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062320653.jpg',1000,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK114','생후라보노','http://cdn2.bgfretail.com/bgfbrand/files/product/8801117627102.jpg',500,30,0,'스낵','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT101','팔도탄탄면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/D747D62C269F4B678EC0238BC4C8B39D.jpg',1600,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT102','한성한입어묵60g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/778FD7ED5B924596A35D2EC40F6F2BE4.jpg',1000,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT103','팔도왕뚜껑',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4DCB16CD577F419E9F4117CA06FB3AE2.jpg',1050,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT104','삼양불닭볶음탕면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/F8E86E1F01504DCAA4781BD4E23109DC.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT105','오뚜기부대찌개라면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/185DB5F492444B4E9A1EA0EBCCA54B92.jpg', 1600,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT106','팔도김치도시락',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EC28F4E834F44BDE85B8148580D846D7.jpg',850,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT107','불고기사각피자96g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9D6D9061AA6345DF9DF74BA7D05CB74B.jpg',2800,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT108','오뚜기열떡볶이면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/CDFB85C9ACA94E4DAF7B54951F08C4C9.jpg',1400,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT109','오뚜기볶음진짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EE63A7E2CE854C9BB9716CCCCA805977.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT110','농심둥지비빔냉면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6214872FA1604352ADCEC82CE11D10C7.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT111','양반전통김',
'http://cdn2.bgfretail.com/bgfbrand/files/product/00F279D5DC324FCABD10450D23CA82D5.jpg',1300,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT112','컵반옐로우커리덮밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E89308DBC6694851AADB7265B30A8077.jpg',3300,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT113','오뚜기볶음진짬뽕컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B6D39921CEEA4383B608A5A91E5736F9.jpg',1600,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT114','팔도팔도비빔면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/55290779F8724326AA910F9D627375D7.jpg',1050,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT115','오뚜기새우볶음밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6C34044F1D32465FBE94E2B6154EA8CC.jpg',3500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT116','하이면김맛우동',
'http://cdn2.bgfretail.com/bgfbrand/files/product/995FCA2EE0624FCB872979B438F3037D.jpg',2500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT117','팔도짜장면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B74268DE514C468CB20D5CEBA0EC8113.jpg',1500,30,0,'인스턴트','정자');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT118','농심신라면블랙봉지',
'http://cdn2.bgfretail.com/bgfbrand/files/product/934787B40C0E4F368FCF860F35FDC740.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT119','오뚜기옛날누룽지용기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/AB3611FC4BEA45CE91B3A7B4E582CA26.jpg',1800,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT120','팔도불짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4CCD22A75F634FCDB214D811BEE6A2C7.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT121','농심맛짬뽕큰사발',
'http://cdn2.bgfretail.com/bgfbrand/files/product/21DFE67AE2C54DE281519C9D2E0718C1.jpg',1500,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT122','오뚜기진라면순한컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9A3CD41FDF504629A452952AF1E8B514.jpg',950,30,0,'인스턴트','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT123','오뚜기진짜짱컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9C988E488F364A6FAD626C7E92255529.jpg',1500,30,0,'인스턴트','정자');

insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC101','참이슬 fresh',
'http://image.asiatoday.co.kr/file/310975(0)-%5E484%5E1033%5E.jpg',1400,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC102','처음처럼',
'http://www.bizwatch.co.kr/files/2014/02/19/90131d475483dc16998c041ccc708199170636.jpg',1400,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC103','참이슬 자몽에 이슬',
'http://image.newsis.com/2015/06/09/NISI20150609_0011033834_web.jpg',1500,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC104','처음처럼 순하리',
'https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fimg.tf.co.kr%2Farticle%2Fhome%2F2015%2F04%2F28%2F201534091430214707.jpg',1500,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC105','Hite 캔 500ml',
'http://callmart-gimpo.com/data/item/1440839029/thumb-7ZWY7J207Yq4500ml_300x300.jpg',2600,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC106','Hite Dry Finish 500ml 캔',
'http://file.hitejinro.com/hitejinro/Cust/Pres/dry_finish_d.jpg',2600,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC107','OB Primium 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838900/thumb-OB7ZSE66as6647JeE500ml_300x300.jpg',2600,30,0,'주류','정자');
insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC108','CASS FRESH 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838986/thumb-7Lm07Iqk500ml_300x300.jpg',2600,30,0,'주류','정자');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK101','하늘보리P280ml',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/79A4191B8B694F5090EAB3CF00A91F7A.jpg',1000,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK102','딸기우유250ml',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/24310106D5B24CD7993ED05B43C4DD1F.jpg',1000,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK103','지파크캔250ml',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/3AE051F6D7E9439AAEFA45547DF0CB87.jpg',1500,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK104','드링킹복숭아310ml',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1800,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK105','네이처티라임모히또중',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056052997.jpg',2000,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK106','커피빈카페라떼P300',
--'http://c/.dn2.bgfretail.com/bgfbrand/files/product/E801676D88D548D0A1B4D66C997C2990.jpg',2500,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK107','인삼한뿌리소병',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801007020945.jpg',4000,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK108','립톤복숭아중P',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056044534.jpg',1700,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK109','사과드링크',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056020415.jpg',600,30,0,'음료','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'DRINK110','미에로210',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8806004382119.jpg',1350,30,0,'음료','정자');
--
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK101','내마음속하트도넛',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/3F579498A3EC491D9DFBF6552A026D0D.jpg',1300,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK102','갈릭팡',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',1200,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK103','ID미스터리',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062317752.jpg',1200,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK104','오천자일리톨핑크',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062215799.jpg',5000,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK105','쟈키쟈키1500',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801111770231.jpg',1500,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK106','자가비1700',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801019604997(1).jpg',1700,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK107','홀스체리맛',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/01793CF6CF3C4E12AD502AB82DB2639E.jpg',1000,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK108','돌풍감자허니치즈',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/EB8D2B992E1741A4BFE8E492BEB5FE23.jpg',1500,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK109','피카츄상큼패스츄리',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/FC428DA0EB7C4601B9A35A23AC160B59.jpg',1200,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK110','크라운산도딸기',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/B8B39C2F0AD1423682543A004657254A.jpg',2400,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK111','오리온눈을감자56g',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/02E8667DA3914498B4BDFFE057E7083E.jpg',1500,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK112','롯데몽쉘초코바나나',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/A5C2391155B54E41B6E704890972BB8E.jpg',4200,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK113','스피아민트스틱팩',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062320653.jpg',1000,30,0,'스낵','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'SNACK114','생후라보노',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/8801117627102.jpg',500,30,0,'스낵','정자');
--
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT101','팔도탄탄면컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/D747D62C269F4B678EC0238BC4C8B39D.jpg',1600,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT102','한성한입어묵60g',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/778FD7ED5B924596A35D2EC40F6F2BE4.jpg',1000,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT103','팔도왕뚜껑',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/4DCB16CD577F419E9F4117CA06FB3AE2.jpg',1050,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT104','삼양불닭볶음탕면컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/F8E86E1F01504DCAA4781BD4E23109DC.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT105','오뚜기부대찌개라면',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/185DB5F492444B4E9A1EA0EBCCA54B92.jpg', 1600,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT106','팔도김치도시락',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/EC28F4E834F44BDE85B8148580D846D7.jpg',850,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT107','불고기사각피자96g',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/9D6D9061AA6345DF9DF74BA7D05CB74B.jpg',2800,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT108','오뚜기열떡볶이면컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/CDFB85C9ACA94E4DAF7B54951F08C4C9.jpg',1400,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT109','오뚜기볶음진짬뽕',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/EE63A7E2CE854C9BB9716CCCCA805977.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT110','농심둥지비빔냉면',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/6214872FA1604352ADCEC82CE11D10C7.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT111','양반전통김',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/00F279D5DC324FCABD10450D23CA82D5.jpg',1300,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT112','컵반옐로우커리덮밥',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/E89308DBC6694851AADB7265B30A8077.jpg',3300,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT113','오뚜기볶음진짬뽕컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/B6D39921CEEA4383B608A5A91E5736F9.jpg',1600,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT114','팔도팔도비빔면컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/55290779F8724326AA910F9D627375D7.jpg',1050,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT115','오뚜기새우볶음밥',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/6C34044F1D32465FBE94E2B6154EA8CC.jpg',3500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT116','하이면김맛우동',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/995FCA2EE0624FCB872979B438F3037D.jpg',2500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT117','팔도짜장면',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/B74268DE514C468CB20D5CEBA0EC8113.jpg',1500,30,0,'인스턴트','정자');
--
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT118','농심신라면블랙봉지',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/934787B40C0E4F368FCF860F35FDC740.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT119','오뚜기옛날누룽지용기',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/AB3611FC4BEA45CE91B3A7B4E582CA26.jpg',1800,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT120','팔도불짬뽕',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/4CCD22A75F634FCDB214D811BEE6A2C7.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT121','농심맛짬뽕큰사발',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/21DFE67AE2C54DE281519C9D2E0718C1.jpg',1500,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT122','오뚜기진라면순한컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/9A3CD41FDF504629A452952AF1E8B514.jpg',950,30,0,'인스턴트','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'INSTANT123','오뚜기진짜짱컵',
--'http://cdn2.bgfretail.com/bgfbrand/files/product/9C988E488F364A6FAD626C7E92255529.jpg',1500,30,0,'인스턴트','정자');
--
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC101','참이슬 fresh',
--'http://image.asiatoday.co.kr/file/310975(0)-%5E484%5E1033%5E.jpg',1400,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC102','처음처럼',
--'http://www.bizwatch.co.kr/files/2014/02/19/90131d475483dc16998c041ccc708199170636.jpg',1400,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC103','참이슬 자몽에 이슬',
--'http://image.newsis.com/2015/06/09/NISI20150609_0011033834_web.jpg',1500,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC104','처음처럼 순하리',
--'https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fimg.tf.co.kr%2Farticle%2Fhome%2F2015%2F04%2F28%2F201534091430214707.jpg',1500,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC105','Hite 캔 500ml',
--'http://callmart-gimpo.com/data/item/1440839029/thumb-7ZWY7J207Yq4500ml_300x300.jpg',2600,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC106','Hite Dry Finish 500ml 캔',
--'http://file.hitejinro.com/hitejinro/Cust/Pres/dry_finish_d.jpg',2600,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC107','OB Primium 500ml 캔',
--'http://callmart-gimpo.com/data/item/1440838900/thumb-OB7ZSE66as6647JeE500ml_300x300.jpg',2600,30,0,'주류','정자');
--insert into p2_item(bno,item_code,item_name,item_image,price,count,hit,category,area) values(p2_item_num.nextVal,'ALCOHOLIC108','CASS FRESH 500ml 캔',
--'http://callmart-gimpo.com/data/item/1440838986/thumb-7Lm07Iqk500ml_300x300.jpg',2600,30,0,'주류','정자');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into p2_member values('admin','1','admin','admin','','','','본사','','','','');
insert into p2_member values('mina','1','mina','manager','010-1111-1111','19891017','woman','판교','','','','');
insert into p2_member values('ch','1','choungho','user','','','','판교','','','','');
insert into p2_member values('alba1','1','이원석','user','010-2222-2222','19880101','man','판교','야간','','','');
insert into p2_member values('alba2','1','지상동','user','010-3333-3333','19920101','man','판교','오후','','','');
insert into p2_member values('yujin','1','정유진','manager','010-4444-4444','19870101','man','야탑','오후','','','');
insert into p2_member values('choungho','1','','','','','','x','','','','');
insert into p2_member values('user1','1','','','','','','x','','','','');
insert into p2_member values('user2','1','','','','','','x','','','','');
insert into p2_member values('user3','1','','','','','','x','','','','');
insert into role values('admin', 'ROLE_ADMIN');
insert into role values('mina', 'ROLE_MANAGER');
insert into role values('ch', 'ROLE_USER');
insert into role values('repl', 'ROLE_MANAGER');

insert into P2_DAYCALC values('0000','0000',0,0,'00','00',0,'0',sysdate,'bill',999,'bill999');   


--------------- UPDATE --------------------

update p2_item set item_image = 'http://justliquor.com.au/512/hite-dry-finish-cans.jpg' where item_name = 'Hite Dry Finish 500ml 캔';
update p2_item set item_image = 'http://photo.jtbc.joins.com/news/2015/06/10/20150610070105487.jpg' where item_name = '참이슬 자몽에 이슬';
update p2_item set item_image = 'http://cdnweb01.wikitree.co.kr/webdata/editor/201411/17/img_20141117104024_a5983ded.jpg' where item_name = '참이슬 fresh';


update p2_item set item_image = 'drink101.jpg' where item_code = 'DRINK101';
update p2_item set item_image = 'drink102.jpg' where item_code = 'DRINK102';
update p2_item set item_image = 'drink103.jpg' where item_code = 'DRINK103';
update p2_item set item_image = 'drink104.jpg' where item_code = 'DRINK104';
update p2_item set item_image = 'drink105.jpg' where item_code = 'DRINK105';
update p2_item set item_image = 'drink106.jpg' where item_code = 'DRINK106';
update p2_item set item_image = 'drink107.jpg' where item_code = 'DRINK107';
update p2_item set item_image = 'drink108.jpg' where item_code = 'DRINK108';
update p2_item set item_image = 'drink109.jpg' where item_code = 'DRINK109';
update p2_item set item_image = 'drink110.jpg' where item_code = 'DRINK110';
update p2_item set item_image = 'drink111.jpg' where item_code = 'DRINK111';
update p2_item set item_image = 'drink112.jpg' where item_code = 'DRINK112';


update p2_item set item_image = 'snack101.jpg' where item_code = 'SNACK101';
update p2_item set item_image = 'snack102.jpg' where item_code = 'SNACK102';
update p2_item set item_image = 'snack103.jpg' where item_code = 'SNACK103';
update p2_item set item_image = 'snack104.jpg' where item_code = 'SNACK104';
update p2_item set item_image = 'snack105.jpg' where item_code = 'SNACK105';
update p2_item set item_image = 'snack106.jpg' where item_code = 'SNACK106';
update p2_item set item_image = 'snack107.jpg' where item_code = 'SNACK107';
update p2_item set item_image = 'snack108.jpg' where item_code = 'SNACK108';
update p2_item set item_image = 'snack109.jpg' where item_code = 'SNACK109';
update p2_item set item_image = 'snack110.jpg' where item_code = 'SNACK110';
update p2_item set item_image = 'snack111.jpg' where item_code = 'SNACK111';
update p2_item set item_image = 'snack112.jpg' where item_code = 'SNACK112';
update p2_item set item_image = 'snack113.jpg' where item_code = 'SNACK113';
update p2_item set item_image = 'snack114.jpg' where item_code = 'SNACK114';
update p2_item set item_image = 'snack115.jpg' where item_code = 'SNACK115';


update p2_item set item_image = 'instant101.jpg' where item_code = 'INSTANT101';
update p2_item set item_image = 'instant102.jpg' where item_code = 'INSTANT102';
update p2_item set item_image = 'instant103.jpg' where item_code = 'INSTANT103';
update p2_item set item_image = 'instant104.jpg' where item_code = 'INSTANT104';
update p2_item set item_image = 'instant105.jpg' where item_code = 'INSTANT105';
update p2_item set item_image = 'instant106.jpg' where item_code = 'INSTANT106';
update p2_item set item_image = 'instant107.jpg' where item_code = 'INSTANT107';
update p2_item set item_image = 'instant108.jpg' where item_code = 'INSTANT108';
update p2_item set item_image = 'instant109.jpg' where item_code = 'INSTANT109';
update p2_item set item_image = 'instant110.jpg' where item_code = 'INSTANT110';
update p2_item set item_image = 'instant111.jpg' where item_code = 'INSTANT111';
update p2_item set item_image = 'instant112.jpg' where item_code = 'INSTANT112';
update p2_item set item_image = 'instant113.jpg' where item_code = 'INSTANT113';
update p2_item set item_image = 'instant114.jpg' where item_code = 'INSTANT114';
update p2_item set item_image = 'instant115.jpg' where item_code = 'INSTANT115';
update p2_item set item_image = 'instant116.jpg' where item_code = 'INSTANT116';
update p2_item set item_image = 'instant117.jpg' where item_code = 'INSTANT117';
update p2_item set item_image = 'instant118.jpg' where item_code = 'INSTANT118';
update p2_item set item_image = 'instant119.jpg' where item_code = 'INSTANT119';
update p2_item set item_image = 'instant120.jpg' where item_code = 'INSTANT120';
update p2_item set item_image = 'instant121.jpg' where item_code = 'INSTANT121';
update p2_item set item_image = 'instant122.jpg' where item_code = 'INSTANT122';
update p2_item set item_image = 'instant123.jpg' where item_code = 'INSTANT123';


update p2_item set item_image = 'alcoholic101.jpg' where item_code = 'ALCOHOLIC101';
update p2_item set item_image = 'alcoholic102.jpg' where item_code = 'ALCOHOLIC102';
update p2_item set item_image = 'alcoholic103.jpg' where item_code = 'ALCOHOLIC103';
update p2_item set item_image = 'alcoholic104.jpg' where item_code = 'ALCOHOLIC104';
update p2_item set item_image = 'alcoholic105.jpg' where item_code = 'ALCOHOLIC105';
update p2_item set item_image = 'alcoholic106.jpg' where item_code = 'ALCOHOLIC106';
update p2_item set item_image = 'alcoholic107.jpg' where item_code = 'ALCOHOLIC107';
update p2_item set item_image = 'alcoholic108.jpg' where item_code = 'ALCOHOLIC108';


------------------------------------------------------------------------------------------------------------------------
----x 아르바이트생 근무시간 오전/오후/야간 구분 x----
insert into p2_member values('alba1', 1, 'alba1', 'user', '010', 20, '한국', '남', '정자동', '오전');
insert into p2_member values('alba2', 1, 'alba2', 'user', '010', 20, '한국', '남', '정자동', '오후');
insert into p2_member values('alba3', 1, 'alba3', 'user', '010', 20, '한국', '남', '정자동', '야간');


---------------x ALTER x--------------------

ALTER TABLE roll RENAME TO role;

alter table sal add code1 varchar2(20);
alter table sal add code2 number(10);
alter table sal add billnum varchar2(50);
   
alter table p2_dayCalc add code1 varchar2(30) default 'bill';
alter table p2_dayCalc add code2 number(10) default 1000;
alter table p2_dayCalc add billnum varchar2(50);  

alter table p2_daymoney add billnum varchar2(50) default 'null';

alter table p2_member drop column post1;
alter table p2_member drop column post2;
alter table p2_member drop column addr1;
alter table p2_member drop column addr2;

alter table p2_member add postcode varchar2(20);
alter table p2_member add address varchar2(200);
alter table p2_member add address2 varchar2(200);

alter table p2_member add postcode varchar2(20);