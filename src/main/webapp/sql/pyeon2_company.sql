
select * from company_item;            -- 본사 재고 테이블
select * from company_notice;            -- 본사 공지 사항
select * from calendarMemo;            -- 달력 메모

drop table company_item;
drop table company_notice;
drop table calendarMemo;

drop sequence company_item_num;
drop sequence noticenum;


--------------- TABLE --------------------

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
   title varchar2(50) not null,
   name varchar2(30) not null,
   position varchar2(30) not null,
   contant varchar2(1000) not null,
   noticedate varchar2(30) not null
);

create table calendarMemo(
   year varchar2(10),
   month varchar2(10),
   day varchar2(10),
   content varchar2(500)
);

--create table company_notice_repl(
--   rno number(10),
--   bno number(10),
--   replyText varchar2(1000),
--   replyer varchar2(50),
--   regdate TIMESTAMP,
--   updateDate TIMESTAMP
--);


--------------- SEQUENCE --------------------

create sequence company_item_num
   increment by 1
   start with 1
   nocache;

create sequence noticenum
   increment by 1
   start with 1
   nocache;

--create sequence noticeRepl_num
--   increment by 1
--   start with 1
--   nocache;
   
   
--------------- INSERT --------------------

-- 음료
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK101','하늘보리P280ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/79A4191B8B694F5090EAB3CF00A91F7A.jpg',500,1000,500,'음료','DRINK',101 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK102','딸기우유250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/24310106D5B24CD7993ED05B43C4DD1F.jpg',500,1000,500,'음료','DRINK',102 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK103','지파크캔250ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3AE051F6D7E9439AAEFA45547DF0CB87.jpg',750,1500,500,'음료','DRINK',103 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK104','드링킹복숭아310ml',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',900,1800,500,'음료','DRINK',104 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK105','네이처티라임모히또중',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056052997.jpg',1000,2000,500,'음료','DRINK',105 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK106','커피빈카페라떼P300',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E801676D88D548D0A1B4D66C997C2990.jpg',1250,2500,500,'음료','DRINK',106 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK107','인삼한뿌리소병',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801007020945.jpg',2000,4000,500,'음료','DRINK',107 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK108','립톤복숭아중P',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056044534.jpg',850,1700,500,'음료','DRINK',108 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK109','사과드링크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801056020415.jpg',300,600,500,'음료','DRINK',109 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'DRINK110','미에로210',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8806004382119.jpg',675,1350,500,'음료','DRINK',110 );


-- 스낵
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK101','내마음속하트도넛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/3F579498A3EC491D9DFBF6552A026D0D.jpg',650,1300,500,'스낵','SNACK',101 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK102','갈릭팡',
'http://cdn2.bgfretail.com/bgfbrand/files/product/63CCF2C4D29E49AB9DC621595B072F4A.jpg',600,1200,500,'스낵','SNACK',102 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK103','ID미스터리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062317752.jpg',600,1200,500,'스낵','SNACK',103 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK104','오천자일리톨핑크',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062215799.jpg',2500,5000,500,'스낵','SNACK',104 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK105','쟈키쟈키1500',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801111770231.jpg',750,1500,500,'스낵','SNACK',105 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK106','자가비1700',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801019604997(1).jpg',850,1700,500,'스낵','SNACK',106 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK107','홀스체리맛',
'http://cdn2.bgfretail.com/bgfbrand/files/product/01793CF6CF3C4E12AD502AB82DB2639E.jpg',500,1000,500,'스낵','SNACK',107 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK108','돌풍감자허니치즈',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EB8D2B992E1741A4BFE8E492BEB5FE23.jpg',750,1500,500,'스낵','SNACK',108 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK109','피카츄상큼패스츄리',
'http://cdn2.bgfretail.com/bgfbrand/files/product/FC428DA0EB7C4601B9A35A23AC160B59.jpg',600,1200,500,'스낵','SNACK',109 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK110','크라운산도딸기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B8B39C2F0AD1423682543A004657254A.jpg',1200,2400,500,'스낵','SNACK',110 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK111','오리온눈을감자56g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/02E8667DA3914498B4BDFFE057E7083E.jpg',750,1500,500,'스낵','SNACK',111 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK112','롯데몽쉘초코바나나',
'http://cdn2.bgfretail.com/bgfbrand/files/product/A5C2391155B54E41B6E704890972BB8E.jpg',2100,4200,500,'스낵','SNACK',112 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK113','스피아민트스틱팩',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801062320653.jpg',500,1000,500,'스낵','SNACK',113 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'SNACK114','생후라보노',
'http://cdn2.bgfretail.com/bgfbrand/files/product/8801117627102.jpg',250,500,500,'스낵','SNACK',114 );


-- 인스턴트
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT101','팔도탄탄면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/D747D62C269F4B678EC0238BC4C8B39D.jpg',800,1600,500,'인스턴트','INSTANT',101 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT102','한성한입어묵60g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/778FD7ED5B924596A35D2EC40F6F2BE4.jpg',500,1000,500,'인스턴트','INSTANT',102 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT103','팔도왕뚜껑',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4DCB16CD577F419E9F4117CA06FB3AE2.jpg',525,1050,500,'인스턴트','INSTANT',103 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT104','삼양불닭볶음탕면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/F8E86E1F01504DCAA4781BD4E23109DC.jpg',750,1500,500,'인스턴트','INSTANT',104 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT105','오뚜기부대찌개라면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/185DB5F492444B4E9A1EA0EBCCA54B92.jpg',800,1600,500,'인스턴트','INSTANT',105 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT106','팔도김치도시락',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EC28F4E834F44BDE85B8148580D846D7.jpg',425,850,500,'인스턴트','INSTANT',106 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT107','불고기사각피자96g',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9D6D9061AA6345DF9DF74BA7D05CB74B.jpg',1400,2800,500,'인스턴트','INSTANT',107 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT108','오뚜기열떡볶이면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/CDFB85C9ACA94E4DAF7B54951F08C4C9.jpg',700,1400,500,'인스턴트','INSTANT',108 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT109','오뚜기볶음진짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/EE63A7E2CE854C9BB9716CCCCA805977.jpg',750,1500,500,'인스턴트','INSTANT',109 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT110','농심둥지비빔냉면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6214872FA1604352ADCEC82CE11D10C7.jpg',750,1500,500,'인스턴트','INSTANT',110 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT111','양반전통김',
'http://cdn2.bgfretail.com/bgfbrand/files/product/00F279D5DC324FCABD10450D23CA82D5.jpg',650,1300,500,'인스턴트','INSTANT',111 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT112','컵반옐로우커리덮밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/E89308DBC6694851AADB7265B30A8077.jpg',1650,3300,500,'인스턴트','INSTANT',112 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT113','오뚜기볶음진짬뽕컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B6D39921CEEA4383B608A5A91E5736F9.jpg',800,1600,500,'인스턴트','INSTANT',113 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT114','팔도팔도비빔면컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/55290779F8724326AA910F9D627375D7.jpg',525,1050,500,'인스턴트','INSTANT',114 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT115','오뚜기새우볶음밥',
'http://cdn2.bgfretail.com/bgfbrand/files/product/6C34044F1D32465FBE94E2B6154EA8CC.jpg',1750,3500,500,'인스턴트','INSTANT',115 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT116','하이면김맛우동',
'http://cdn2.bgfretail.com/bgfbrand/files/product/995FCA2EE0624FCB872979B438F3037D.jpg',1250,2500,500,'인스턴트','INSTANT',116 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT117','팔도짜장면',
'http://cdn2.bgfretail.com/bgfbrand/files/product/B74268DE514C468CB20D5CEBA0EC8113.jpg',750,1500,500,'인스턴트','INSTANT',117 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT118','농심신라면블랙봉지',
'http://cdn2.bgfretail.com/bgfbrand/files/product/934787B40C0E4F368FCF860F35FDC740.jpg',750,1500,500,'인스턴트','INSTANT',118 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT119','오뚜기옛날누룽지용기',
'http://cdn2.bgfretail.com/bgfbrand/files/product/AB3611FC4BEA45CE91B3A7B4E582CA26.jpg',900,1800,500,'인스턴트','INSTANT',119 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT120','팔도불짬뽕',
'http://cdn2.bgfretail.com/bgfbrand/files/product/4CCD22A75F634FCDB214D811BEE6A2C7.jpg',750,1500,500,'인스턴트','INSTANT',120 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT121','농심맛짬뽕큰사발',
'http://cdn2.bgfretail.com/bgfbrand/files/product/21DFE67AE2C54DE281519C9D2E0718C1.jpg',750,1500,500,'인스턴트','INSTANT',121 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT122','오뚜기진라면순한컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9A3CD41FDF504629A452952AF1E8B514.jpg',475,950,500,'인스턴트','INSTANT',122 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'INSTANT123','오뚜기진짜짱컵',
'http://cdn2.bgfretail.com/bgfbrand/files/product/9C988E488F364A6FAD626C7E92255529.jpg',750,1500,500,'인스턴트','INSTANT',123 );


-- 주류
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC101','참이슬 fresh',
'http://image.asiatoday.co.kr/file/310975(0)-%5E484%5E1033%5E.jpg',700,1400,500,'주류','ALCOHOLIC',101 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC102','처음처럼',
'http://www.bizwatch.co.kr/files/2014/02/19/90131d475483dc16998c041ccc708199170636.jpg',700,1400,500,'주류','ALCOHOLIC',102 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC103','참이슬 자몽에 이슬',
'http://image.newsis.com/2015/06/09/NISI20150609_0011033834_web.jpg',750,1500,500,'주류','ALCOHOLIC',103 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC104','처음처럼 순하리',
'https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fimg.tf.co.kr%2Farticle%2Fhome%2F2015%2F04%2F28%2F201534091430214707.jpg',750,1500,500,'주류','ALCOHOLIC',104 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC105','Hite 캔 500ml',
'http://callmart-gimpo.com/data/item/1440839029/thumb-7ZWY7J207Yq4500ml_300x300.jpg',1300,2600,500,'주류','ALCOHOLIC',105 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC106','Hite Dry Finish 500ml 캔',
'http://file.hitejinro.com/hitejinro/Cust/Pres/dry_finish_d.jpg',1300,2600,500,'주류','ALCOHOLIC',106 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC107','OB Primium 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838900/thumb-OB7ZSE66as6647JeE500ml_300x300.jpg',1300,2600,500,'주류','ALCOHOLIC',107 );
insert into company_item(bno, item_code,item_name,item_image,cost,price,count,category,code1,code2 ) values(company_item_num.nextVal, 'ALCOHOLIC108','CASS FRESH 500ml 캔',
'http://callmart-gimpo.com/data/item/1440838986/thumb-7Lm07Iqk500ml_300x300.jpg',1300,2600,500,'주류','ALCOHOLIC',108 );


---------------o UPDATE o--------------------

update company_item set item_image = 'http://justliquor.com.au/512/hite-dry-finish-cans.jpg' where item_name = 'Hite Dry Finish 500ml 캔';
update company_item set item_image = 'http://photo.jtbc.joins.com/news/2015/06/10/20150610070105487.jpg' where item_name = '참이슬 자몽에 이슬';
update company_item set item_image = 'http://cdnweb01.wikitree.co.kr/webdata/editor/201411/17/img_20141117104024_a5983ded.jpg' where item_name = '참이슬 fresh';


update company_item set item_image = 'drink101.jpg' where item_code = 'DRINK101';
update company_item set item_image = 'drink102.jpg' where item_code = 'DRINK102';
update company_item set item_image = 'drink103.jpg' where item_code = 'DRINK103';
update company_item set item_image = 'drink104.jpg' where item_code = 'DRINK104';
update company_item set item_image = 'drink105.jpg' where item_code = 'DRINK105';
update company_item set item_image = 'drink106.jpg' where item_code = 'DRINK106';
update company_item set item_image = 'drink107.jpg' where item_code = 'DRINK107';
update company_item set item_image = 'drink108.jpg' where item_code = 'DRINK108';
update company_item set item_image = 'drink109.jpg' where item_code = 'DRINK109';
update company_item set item_image = 'drink110.jpg' where item_code = 'DRINK110';
update company_item set item_image = 'drink111.jpg' where item_code = 'DRINK111';
update company_item set item_image = 'drink112.jpg' where item_code = 'DRINK112';


update company_item set item_image = 'snack101.jpg' where item_code = 'SNACK101';
update company_item set item_image = 'snack102.jpg' where item_code = 'SNACK102';
update company_item set item_image = 'snack103.jpg' where item_code = 'SNACK103';
update company_item set item_image = 'snack104.jpg' where item_code = 'SNACK104';
update company_item set item_image = 'snack105.jpg' where item_code = 'SNACK105';
update company_item set item_image = 'snack106.jpg' where item_code = 'SNACK106';
update company_item set item_image = 'snack107.jpg' where item_code = 'SNACK107';
update company_item set item_image = 'snack108.jpg' where item_code = 'SNACK108';
update company_item set item_image = 'snack109.jpg' where item_code = 'SNACK109';
update company_item set item_image = 'snack110.jpg' where item_code = 'SNACK110';
update company_item set item_image = 'snack111.jpg' where item_code = 'SNACK111';
update company_item set item_image = 'snack112.jpg' where item_code = 'SNACK112';
update company_item set item_image = 'snack113.jpg' where item_code = 'SNACK113';
update company_item set item_image = 'snack114.jpg' where item_code = 'SNACK114';
update company_item set item_image = 'snack115.jpg' where item_code = 'SNACK115';


update company_item set item_image = 'instant101.jpg' where item_code = 'INSTANT101';
update company_item set item_image = 'instant102.jpg' where item_code = 'INSTANT102';
update company_item set item_image = 'instant103.jpg' where item_code = 'INSTANT103';
update company_item set item_image = 'instant104.jpg' where item_code = 'INSTANT104';
update company_item set item_image = 'instant105.jpg' where item_code = 'INSTANT105';
update company_item set item_image = 'instant106.jpg' where item_code = 'INSTANT106';
update company_item set item_image = 'instant107.jpg' where item_code = 'INSTANT107';
update company_item set item_image = 'instant108.jpg' where item_code = 'INSTANT108';
update company_item set item_image = 'instant109.jpg' where item_code = 'INSTANT109';
update company_item set item_image = 'instant110.jpg' where item_code = 'INSTANT110';
update company_item set item_image = 'instant111.jpg' where item_code = 'INSTANT111';
update company_item set item_image = 'instant112.jpg' where item_code = 'INSTANT112';
update company_item set item_image = 'instant113.jpg' where item_code = 'INSTANT113';
update company_item set item_image = 'instant114.jpg' where item_code = 'INSTANT114';
update company_item set item_image = 'instant115.jpg' where item_code = 'INSTANT115';
update company_item set item_image = 'instant116.jpg' where item_code = 'INSTANT116';
update company_item set item_image = 'instant117.jpg' where item_code = 'INSTANT117';
update company_item set item_image = 'instant118.jpg' where item_code = 'INSTANT118';
update company_item set item_image = 'instant119.jpg' where item_code = 'INSTANT119';
update company_item set item_image = 'instant120.jpg' where item_code = 'INSTANT120';
update company_item set item_image = 'instant121.jpg' where item_code = 'INSTANT121';
update company_item set item_image = 'instant122.jpg' where item_code = 'INSTANT122';
update company_item set item_image = 'instant123.jpg' where item_code = 'INSTANT123';


update company_item set item_image = 'alcoholic101.jpg' where item_code = 'ALCOHOLIC101';
update company_item set item_image = 'alcoholic102.jpg' where item_code = 'ALCOHOLIC102';
update company_item set item_image = 'alcoholic103.jpg' where item_code = 'ALCOHOLIC103';
update company_item set item_image = 'alcoholic104.jpg' where item_code = 'ALCOHOLIC104';
update company_item set item_image = 'alcoholic105.jpg' where item_code = 'ALCOHOLIC105';
update company_item set item_image = 'alcoholic106.jpg' where item_code = 'ALCOHOLIC106';
update company_item set item_image = 'alcoholic107.jpg' where item_code = 'ALCOHOLIC107';
update company_item set item_image = 'alcoholic108.jpg' where item_code = 'ALCOHOLIC108';


---------------x ALTER x--------------------

alter table company_item add code1 varchar2(20);
alter table company_item add code2 number(10);

ALTER TABLE company_item
MODIFY (item_image varchar2(2000));


---------------x UPDATE x--------------------

update company_item set code1 = 'DRINK' , code2 = 110 where item_code = 'DRINK110';
update company_item set code1 = 'SNACK' , code2 = 114 where item_code = 'SNACK114';
update company_item set code1 = 'INSTANT' , code2 = 123 where item_code = 'INSTANT123';
update company_item set code1 = 'ALCOHOLIC' , code2 = 108 where item_code = 'ALCOHOLIC108';

update company_item set code1 = 'SNACK' where category = '스낵';

update company_item set code1 = 'DRINK' where category = '음료';

update company_item set code1 = 'INSTANT' where category = '인스턴트';

update company_item set code1 = 'ALCOHOLIC' where category = '주류';
