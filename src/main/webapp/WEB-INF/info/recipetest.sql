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
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(2,'중식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(3,'일식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(4,'양식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(5,'채식');
INSERT INTO category(CATEGORY_NUM,CATEGORY_NAME) values(6,'디저트');

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

--상세보기 sql 변경
SELECT recipe_num, title, id, content, hits ,likes, to_char(reg_date,'yyyy.mm.dd') as reg_date, image
FROM recipe;

--조회수 증가
update recipe set hits=hits+1 where recipe_num=3;

--레시피 삭제
delete from RECIPE where recipe_num=6;

--레시피 수정
update recipe set category_num=2,title='화요일저녁',content='밤',image='1636449018556.jpg' where recipe_num=3;


--카테고리별 리스트
select category_num,recipe_num,image,title,id,hits,likes,to_char(reg_date,'YYYY.MM.DD') from recipe where category_num=1;

SELECT c.category_num,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,to_char(r.reg_date,'YYYY.MM.DD')  AS reg_date
FROM recipe r, category c
WHERE r.category_num=c.category_num AND category_name='한식';


--페이지구현--
--데이터삽입
INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
values(recipe_seq.nextval,'java','페이징테스트1','본문임',1,'1636364271303.jpg');
INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
values(recipe_seq.nextval,'java','페이징테스트2','본문임',2,'1636364271303.jpg');
INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
values(recipe_seq.nextval,'java','페이징테스트3','본문임',3,'1636364271303.jpg');
INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
values(recipe_seq.nextval,'java','페이징테스트4','본문임',4,'1636364271303.jpg');

--배수로 게시물 삽입
INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) 
select recipe_seq.nextval,id,title,content,category_num,image from recipe

--너무 많아서 삭제좀 함
delete from RECIPE where recipe_num between 50 and 100


--★★★★★실질적 sql 테스트★★★★
--rnum test
select row_number() over(order by RECIPE_NUM desc) as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.reg_date 
from recipe r,category c
where r.category_num=c.category_num

--진짜연습 step1
select row_number() over(order by RECIPE_NUM desc) as rnum,RECIPE_NUM,image,title,id,hits,likes,to_char(reg_date,'yyyy.mm.dd')as reg_date
from recipe

--step2
select rnum,RECIPE_NUM,image,title,id,hits,likes,reg_date
from(
select row_number() over(order by RECIPE_NUM desc) as rnum,RECIPE_NUM,image,title,id,hits,likes,to_char(reg_date,'yyyy.mm.dd')as reg_date
from recipe
)where rnum between 1 and 5

--step3
select r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.reg_date
from(
select row_number() over(order by RECIPE_NUM desc) as rnum,RECIPE_NUM,image,title,id,hits,likes,to_char(reg_date,'yyyy.mm.dd')as reg_date
from recipe
) r, category c
where r.category_num=c.category_num and rnum between 1 and 5;

--step4 << 3안되서 새로운방법으로 >>>됐다! (조인먼저 뽑고 그담 rnum 정렬로 뽑은거임)
select RECIPE_NUM,category_name,image,title,id,hits,likes,reg_date
from( --카테고리명까지 조인해서 가져온 것으로부터
select row_number() over(order by RECIPE_NUM desc) as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.reg_date 
from recipe r,category c
where r.category_num=c.category_num
)
where rnum between 1 and 5; --가장최신꺼 5개 불러오겠다

--카테고리로조회 (조인헷갈려서, 그리고 카테고리로 들어온거라 카테고리명은 일단 뺴봄..)
select RECIPE_NUM,image,title,id,hits,likes,reg_date
from( 
select row_number() over(order by RECIPE_NUM desc) as rnum,RECIPE_NUM,image,title,id,hits,likes,reg_date 
from recipe
where category_num=1
)
where rnum between 1 and 5;



--최신 데이터 8개만 가져오기
select * from RECIPE order by reg_date desc;

SELECT  image, title,likes,TO_CHAR(reg_date,'YYYY.MM.DD')AS reg_date
FROM (select * from recipe order by reg_date desc) 
WHERE rownum<=8 
ORDER BY reg_date DESC;

--카테고리 이름, 레시피 넘버, image, 제목, likes , 작성일시  , 작성자 아이디, 조회수, content, 
SELECT recipe_num, id, title, content, image, hits, likes, TO_CHAR(r. reg_date,'YYYY.MM.DD') AS reg_date,  c.category_num , c.category_name
from RECIPE R,  CATEGORY C
WHERE ROWNUM<=8 AND R.CATEGORY_NUM =C.CATEGORY_NUM 
ORDER BY reg_date DESC;

SELECT r.recipe_num,r.image, r.title,r.likes,TO_CHAR(r.reg_date,'YYYY.MM.DD')AS reg_date , c.category_name
FROM (select * from recipe order by reg_date desc)   r, category c
WHERE rownum<=8 AND r.category_num=c.category_num



--시간계산 더 생각해보기
SELECT TO_DATE(sysdate, 'YYYY-MM-DD') - TO_DATE('2021-05-01', 'YYYY-MM-DD')
  FROM dual

  SELECT recipe_num , ROUND((sysdate-reg_date)*24*60*60) FROM recipe

  
  
  
--데이블 drop 할 경우 아래의 순서로 진행해야함
drop table recipe;
drop table category;
drop table recipe_member;

drop table recipe cascade constraint
