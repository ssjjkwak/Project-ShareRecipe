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

INSERT INTO recipe_member(ID,NAME,PASSWORD,ADDRESS,BIRTHDAY,EMAIL,TEL) 
VALUES('JAVA','자바','1234','미금',SYSDATE,'java@gmail.com','010')


CREATE TABLE category
(
CATEGORY_NUM NUMBER PRIMARY KEY ,
CATEGORY_NAME VARCHAR2(100) NOT NULL
);

INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(1,'한식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(2,'양식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(3,'일식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(4,'중식');

select*from category;

CREATE TABLE recipe
(
RECIPE_NUM NUMBER PRIMARY KEY,
ID VARCHAR2(100) NOT NULL ,
TITLE VARCHAR2(100) NOT NULL ,
CONTENT CLOB NOT NULL ,
HITS NUMBER default 0,
LIKES NUMBER default 0,
REG_DATE DATE default sysdate ,
CATEGORY_NUM NUMBER NOT NULL,
image VARCHAR2(100) NOT NULL,
CONSTRAINT recipe_fk1 FOREIGN KEY(ID) REFERENCES recipe_member(id),
CONSTRAINT recipe_fk2 FOREIGN KEY(CATEGORY_NUM) REFERENCES category(category_num)
);

INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
values(recipe_seq.nextval,'JAVA','월요일테스트','본문임',1,'1636364271303.jpg');



select * from recipe;

				
select c.category_name,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,r.reg_date
from recipe r,category c
where r.category_num=c.category_num
order by r.reg_date desc

--게시물 상세보기
select r.recipe_num,r.title,m.id,r.content,r.hits,r.likes,to_char(r.reg_date,'yyyy.mm.dd') as reg_date,r.image
from recipe r, recipe_member m
where r.id=m.id and r.recipe_num=3;

select r.recipe_num,r.title,m.id,r.content,r.hits,r.likes,to_char(r.reg_date,'yyyy.mm.dd') as reg_date,r.image
from recipe r, recipe_member m
where r.id=m.id and r.recipe_num=3; 


--조회수 증가
update recipe set hits=hits+1 where recipe_num=3;

--레시피 삭제
delete from RECIPE where recipe_num=6;




--데이블 drop 할 경우 아래의 순서로 진행해야함
drop table recipe;
drop table category;
drop table recipe_member;
