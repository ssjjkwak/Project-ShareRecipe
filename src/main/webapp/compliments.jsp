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
            	<h3 style="font-family: 'Jua'; font-weight: 500;">" 칭찬합니다 "</h3><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 승진</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 항상 큰 리액션으로 팀원들의 사기를 북돋아주었다.
					- 형상관리 최종 관리자로서, 충돌이 생겼을 때 침작하게 해결하고 친절한 리뷰를 진행했다.
					- 모임 장소로부터 가장 멀었음에도 불구하고 불평 없이 항상 참가해주는 모습에 칭찬합니다!
					- 토의 시 의견을 많이 내주어 의사결정에 많은 도움을 주었고, 항상 밝은 모습으로 팀의 분위기를 좋게 해주었다!
				</textarea><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 용은</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 팀의 실질적인 리더 역할을 하며 프로젝트 전반을 잘 이끌어 주었다. 
					- 절대 화내지 않고 친절하게 알려주었다.
					- 프로젝트 기간 동안 힘들고 부담도 많았을 것 같은데 갓용은 이라는 수식어에 상응하는 모습에 배울점이 많았습니다.
					- 팀원이 막히는 부분이 있으면 언제나 침착하게 아이디어와 피드백을 주었고 팀의 전체적인 진행상황을 체크하고 나아갈 방향을 제시해주는 팀의 해결사!
				</textarea><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 근영</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 프론트 쪽을 처음 접해봄에도 불구하고 양질의 컨텐츠를 만들어냈다.
					- 본인은 리더가 아니라고 하지만 그는 리더가 맞았다. 
					- 항상 일찍 와서 자리도 잡아주었고, 무엇보다도 옆에서 지켜본 결과 그는 프론트의 신이었습니다.
					- 프론트엔드를 맡아 놀라운 결과를 보여주었고, 먼저 나서서 팀의 모든 일에 적극적으로 참여하여 원활한 진행을 하게 해주었다!
				</textarea><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 근원</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 프론트 백 구분 없이 본인이 알고 있는 바를 팀원들과 공유하며 보다 나은 프로젝트가 될 수 있도록 도움을 주었다.
					- 항상 문제에 직면했을때 침착하게 해결책을 제시했다.
					- 제일 막내임에도 불구하고 프로젝트를 수행함에 있어서 기 죽지 않고 주어진 역할에 최선을 다하는 모습이 보기 좋았습니다.
					- 이슈발생 시 자신의 의견을 적극적으로 공유해주었고, 과제를 분배하면 묵묵하게 결국 일을 해내는 든든한 팀원이다!
				</textarea><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 윤구</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 항상 열정적으로 공부하려는 자세가 잡혀있고, 프로젝트의 기능을 하나씩 구현해가며 성장하는 모습이 보인다.
					- 모두가 포기하려 했을 때, 끝까지 포기하지 않고 오류의 원인을 침착하게 찾아냈다.
					- 어려운 문제에서도 포기하지 않고 끈기 있게 문제를 해결하려 했고, 조언을 구하며 맡은 역할을 수행하려는 책임감 있는 팀원이다!
					- 엉뚱한 매력으로 팀원들에게 크고 작은 웃음을 선사해주었다.
				</textarea><br>
            	<h5 style="font-family: 'Jua'; font-weight: 500;">To. 정훈</h5>
				<textarea class="form-control border-5 border-warning input-box bg-100" id="teamInfo" rows="5" cols="200" style="font-family: 'Jua'; font-weight: 500;" readonly="readonly">
					- 상대적으로 난이도가 높은 게시판 쪽을 맡아 수많은 기능을 최선을 다해 구현해냈다.
					- 맛집을 추천을 잘해줘서 행복한 프로젝트 팀 회식이 가능했다.
					- 항상 침착하게 대응하고 어려운 파트를 도맡으며 최선을 다해 일을 수행해주어서 어려움 없이 끝마친 것 같아서 감사했다.
					- 작업 시 빠진 부분이 있는지 꼼꼼하게 체크를 하였고 추워지는 날씨에팀원들을 차로 태워주며 따뜻하게 해주었다!
				</textarea>
			</div>
		</div>
	</div>
</body>
</html>