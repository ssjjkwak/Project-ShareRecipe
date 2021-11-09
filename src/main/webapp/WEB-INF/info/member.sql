CREATE TABLE recipe_member
(
ID VARCHAR2(100) PRIMARY KEY ,
NAME VARCHAR2(100) NOT NULL ,
PASSWORD VARCHAR2(100) NOT NULL ,
ADDRESS VARCHAR2(100) NOT NULL ,
SIGN_IN_DATE DATE DEFAULT SYSDATE ,
BIRTHDAY DATE NOT NULL ,
EMAIL VARCHAR2(100) NOT NULL ,
TEL VARCHAR2(100) NOT NULL
);

insert into recipe_member(ID,NAME,PASSWORD,ADDRESS,SIGN_IN_DATE,BIRTHDAY,E_MAIL,TEL) 
values('java','길동이','321','미금',sysdate,to_date('1996-04-22','YYYY-MM-DD'),'kimbeneeee@gmail.com','01012345678');
insert into recipe_member(ID,NAME,PASSWORD,ADDRESS,SIGN_IN_DATE,BIRTHDAY,E_MAIL,TEL) 
values('kykim97','김근영','971030','수내',sysdate,to_date('1997-10-30','YYYY-MM-DD'),'kykim97@naver.com','01054331428');
insert into recipe_member(ID,NAME,PASSWORD,ADDRESS,SIGN_IN_DATE,BIRTHDAY,E_MAIL,TEL) 
values('ksj','곽승진','a','동탄',sysdate,to_date('1997-04-09','YYYY-MM-DD'),'abc@gmail.com','01045980690');

select * from recipe_member;

select name,address,sign_in_date,birthday,e_mail,tel from RECIPE_MEMBER where id=? and password=?;

insert into RECIPE_MEMBER values('test','java','a','성남',sysdate,to_date('2003-05-21','YYYY-MM-DD'),'a@a.com','1234');

