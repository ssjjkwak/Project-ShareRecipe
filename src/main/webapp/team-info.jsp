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
					곽승진 [ 담당 : Git, Front_end, Back_end ]  a.k.a Traveler(트래블러)
					Git에 대한 개념과 구조를 제대로 이해할 수 있었습니다. 또한 구현을 할때 Front와 Back 중 어떤것을 먼저 해야하는게 유리한지 확신이 안갔었는데, 이는 만드는 페이지의 기능이나 어떤것에 중점을 두는 프로젝트인가에 대한 컨셉에 따라 다르다는 것을 느꼈습니다. 많은 것을 배웠고 경험했습니다. 다 우리팀원들 덕분입니다 감사합니다! 고생하셨습니다!
					권용은 [ 담당 : DB, Back_end(Board) ]  a.k.a Photographer(포토그래퍼)
					김근영 [ 담당 : Front_end, Back_end(Member) ]  a.k.a Early Bird(얼리버드)
					이번 프로젝트를 통해 처음으로 본격적인 프론트엔드 css 디자인을 접하면서 이 분야에 흥미를 많이 느끼게 되었고, 백엔드 쪽 설계를 통해 배운 내용을 효과적으로 복습하며 개인적인 기량도 많이 발전한 것 같습니다. 다음 프로젝트에서는 백엔드 쪽에 더 중심을 두고 개발을 해보면 스스로에게 더 값진 시간이 될 것 같습니다. 우리 팀원들 정말 고생 많았고 진심으로 감사합니다!
					김근원 [ 담당 : Front_end, Back_end ]  a.k.a Ninja(닌자)
					김윤구 [ 담당 : Git, Back_end ]  a.k.a Booker(부킹남)
					비대면만 하다가 다 같이 모여서 첫 프로젝트를 경험하였는데 , 처음에는 무엇을 해야할지 몰라서 서툴기도 하였고 낯설기도 했지만 , 시간이 지나면서 점점 자신감도 생기고 전체적인 흐름을 읽을 수 있는 값진 경험을 한 것 같아서 너무 좋았습니다. 또한 우리 조원들 너무 고생 많았고 도움도 많이 받아서 감사하다는 말을 전하고 싶습니다.
					김정훈 [ 담당 : DB, Back_end(Board) ]  a.k.a Best Driver(베스트드라이버)
					첫 프로젝트를 처음부터 끝까지 팀원들과 진행하며 그동안 배운 내용들에 대해 전반적인 이해도를 높이게 되었고 모호했던 개념들이 한 층 더 구체화되었습니다. 또 아이템 선정부터 Trello 칸반을 기반으로 한 자료정리까지 프로젝트가 어떤 방식으로 진행되는지 알게 된 시간이었습니다. 함께 고민하며 결과물을 만들어낸 4조 모두 고생했고 감사합니다!
				</textarea>
			</div>
		</div>
	</div>
</body>
</html>