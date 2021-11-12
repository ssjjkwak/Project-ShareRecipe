# :spaghetti: SEMI-PROJECT-SHARE:CIPE :bento: 
 
## 개요 :stew: 
+ 자취생을 위한 개인 집밥 레시피를 공유하고 저장하는 게시판을 제작하는 프로젝트입니다.
   + 기능 : 로그인, 로그아웃, 회원가입(아이디 중복확인), 회원정보수정, 회원리스트 조회, 아이디 찾기, 비밀번호 찾기, 레시피 게시, 레시피 수정, 레시피 조회, 레시피 '좋아요' 기능


## 개발기간 :hamburger:
+ 약 3주 (2021.10.29 ~ 2021.11.11~)


## 구성원 및 구현 기능 :meat_on_bone:
+ 김근영 ([kk-young](https://github.com/kk-young)) : DEVELOPER / DB / FE 
+ 김정훈 ([anngdung2](https://github.com/anngdung2)) : DEVELOPER / FE / DB
+ 권용은 ([jenkwon92](https://github.com/jenkwon92)) : DEVELOPER / BE / GIT
+ 김윤구 ([kimbeneee](https://github.com/kimbeneee)) : DEVELOPER / BE / GIT
+ 김근원 ([guenwon](https://github.com/guenwon)) : DEVELOPER / FE / BE 
+ 곽승진 ([ssjjkwak](https://github.com/ssjjkwak)) : DEVELOPER / GIT / BE  
#### :computer: EVERYONE IS A DEVELOPER :computer: 

## 요구사항 🍛

<회원>

1. 비회원 상태에서는 회원가입 링크 제공
    Popular 카테고리 게시글 조회 가능

2. 회원가입 입력 요소 :
    이름, 아이디(중복확인), 비번, 비번확인, 주소, 전화번호, 생년월일, 이메일

3. 로그인 버튼 누르면 별도의 로그인 폼 제공 페이지로 이동
    아이디/비번 입력칸 + 아이디찾기/비번찾기/회원가입 링크(화면전환)
    아이디와 비밀번호가 일치하면 홈으로 이동
    둘 중 하나라도 일치하지 않으면 alert

4.  아이디/비번 찾기
     이름과 생년월일 입력하면 아이디 제공
     이름과 생년월일 아이디 입력하면 비밀번호 제공

5. 로그인 상태에서는 header 에 Welcome 닉네임 인사말 + 로그아웃 링크 제공
    게시글 작성(버튼), 모든 게시글 조회 및 추천 (좋아요 버튼) 가능 

<게시판>

1. 게시글 작성 폼 : 제목, 레시피 카테고리(토글), 이미지, 본문 입력

2. 게시글 상세 화면 : 제목, 카테고리, 이미지, 본문, 작성자, 작성일, 추천수 표시
Back to List (목록으로 복귀하는 버튼)
작성자와 로그인한 회원의 아이디가 동일할 경우
게시글 삭제 및 수정 기능 제공
회원당 한번씩 추천수를 누를수 있는 기능을 구현한다

3. 홈 제공 게시글 : Popular, Recent, Quisine
 + Popular : 추천수가 많은 게시글 순으로 정렬
 + Recent : 작성일이 최근인 게시글 순으로 정렬
 + Quisine : 음식 카테고리 별로 정렬 (ex.한식/양식/중식 등)

4. 카테고리별로 리스트 조회가 가능하도록한다
    각 카테고리에서 view all 버튼 누르면 전체 게시글 리스트로 이동

## 설계 프로세스 🥙
<details>
<summary>GANTT CHART</summary>
(https://docs.google.com/spreadsheets/d/1mtG1TZNYDDq6ArvWKuf_K026qZb_dR2NwS85DdZuqWg/edit#gid=1115838130)

![간트차트 사진](https://user-images.githubusercontent.com/72936976/141052127-1fe09ea9-0f6c-4f99-a3dc-30f389348ddd.PNG)


 
</details>

<details>
<summary>USECASE DIAGRAM</summary>

![usecase-강사님feedback](https://user-images.githubusercontent.com/72936976/141051770-9735966f-9a2a-49d5-be08-50f06e0edf55.jpg)


</details>

<details>
<summary>CLASS DIAGRAM</summary>

![class-diagram-after](https://user-images.githubusercontent.com/72936976/141393593-26aa45a0-d744-4ded-8892-d6db154919a9.PNG)



</details> 
 
<details>
<summary>ERD</summary>

![erd-로지컬](https://user-images.githubusercontent.com/72936976/141054310-0836bbaf-9c66-4f1b-8bad-ffde8908bfdc.png)


![erd-피지컬 진짜 최종](https://user-images.githubusercontent.com/72936976/141054803-1a72c593-78ae-4d79-a6d8-ac96df9fbca9.png)


</details>

<details>
<summary>FILE LIST</summary>               

![파일리스트 최종](https://user-images.githubusercontent.com/72936976/141393320-9255107f-1583-4cc2-96e4-7352c8a22639.png)

 
</details>

## GIT 🥩
+ Github
+ Sourcetree
<details>
<summary>Git Branch 구조</summary>

![GIT-TREE](https://user-images.githubusercontent.com/72936976/141056178-4122d2ed-1aa7-41cb-8844-2a5b5dca85c1.png)

 
 
</details> 

## 이슈관리 🍞

<details>
<summary>이슈관리대장</summary>

(https://docs.google.com/document/d/1Up6tVTLItHgWeiIwyY5E0VczxGOz9STl1AWgGCH5QZ8/edit#heading=h.nrnw03t7conb)

 
 ![이슈관리대장](https://user-images.githubusercontent.com/72936976/141394362-46328550-3c1b-44c1-ba15-03bc8f7604ae.PNG)

 
 
</details> 

## 화면구성 🍤

<details>
<summary>UI</summary>

![favicon-last](https://user-images.githubusercontent.com/72936976/141396399-c9a85fcc-ac39-48b7-b98a-6d2ddb6d7995.png)

 
 
![ui1](https://user-images.githubusercontent.com/72936976/141396232-5c49b1b5-3d46-44ac-8f78-ddc55c27e9e1.PNG)

 
![ui2](https://user-images.githubusercontent.com/72936976/141396439-c3add957-197e-450a-bd41-000c0b5cd9c2.PNG)

![ui3](https://user-images.githubusercontent.com/72936976/141396483-784e6d15-8c07-41a7-ad36-8b311e8054a1.PNG)

![ui4](https://user-images.githubusercontent.com/72936976/141396504-3f788a4f-ce06-4793-9505-c2e044610524.PNG)
 
![ui5](https://user-images.githubusercontent.com/72936976/141396522-a43ffcfd-7cf8-47b6-bfdc-ec94c5242bcb.PNG)

![ui6](https://user-images.githubusercontent.com/72936976/141396550-1a3fa703-dbaa-4317-9285-59c7fe43d1b0.PNG)

![ui7](https://user-images.githubusercontent.com/72936976/141396606-ce2bdfdc-7f5c-47c7-8203-924c0e44167e.PNG)
 
 
</details> 

## 회의록 🥗

<details>
<summary>회의록 내용</summary>

(https://docs.google.com/document/d/1v5NDAiH5BJWUB0K_4FcZCznZGSXsz3ds5SfMzIIHAGk/edit)

 
 ![회의록](https://user-images.githubusercontent.com/72936976/141410809-9bcbc60b-51ff-48ec-88e7-89d28ece1223.PNG)


 
</details> 

