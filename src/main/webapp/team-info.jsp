<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>팀 정보</title>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/home-favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/home-favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/home-favicon-32x32.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />
    
    <!-- BootStrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  </head>
<body>
	<div class="container">
        <div class="row h-100" style="background-color:#F9FAFD;">
        	<div class="col-lg-7 mx-auto text-center mt-7 mb-5">
            	<a href="index.jsp"><img src="assets/img/favicons/favicon.jpg" style="width:300px;"></a><br><br>
            	<h3 style="font-family: 'Jua'; font-weight: 500;">We Are 공유자들</h3><br>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="20" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					곽승진 (Seung Jin Kwak)  담당 : Git, Front_end, Back_end
					권용은 (Jenne Kwon)  담당 : DB, Back_end(Board)
					김근영 (Kevin Kim)  담당 : Front_end, Back_end(Member)
					이번 프로젝트를 통해 처음으로 본격적인 프론트엔드 및 css 디자인을 접하면서 이 분야에 흥미를 많이 느끼게 되었고, 백엔드 쪽 설계를 통해 수업 때 배운 내용을 효과적으로 복습하며 개인적인 기량도 많이 발전한 것 같습니다. 우리 팀원들 정말 고생 많았고 진심으로 감사합니다!
					김근원 (Geun Won Kim)  담당 : Front_end, Back_end
					김윤구 (Gary Kim)  담당 : Git, Back_end
					김정훈 (Jung Hoon Kim)  담당 : DB, Back_end(Board)
				</textarea>
			</div>
		</div>
	</div>
</body>
</html>