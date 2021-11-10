<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/css/theme.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script type="text/javascript">
	function loginMove() {
		location.href="member/login.jsp";
	}
</script>
</head>
<body style="background-color:#F9FAFD;">
	<div class="container">
    	<div class="row h-100">
            <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
				<a href="index.jsp"><img src="assets/img/favicons/favicon.jpg" style="width:350px;"></a><br><br>
				<span style="font-family: 'Jua'; font-weight: 500; font-size:25px; ">${requestScope.pvo.id }님의 비밀번호는</span><br> 
				<div class="form-control border-0 input-box bg-50" style="margin-top: 15px; margin-bottom: 30px;"><span style="font-family: 'Jua'; font-weight: 500; font-size:20px;">${requestScope.pvo.password } 입니다.</span></div>  
				<button type="button" style="font-family: 'Jua'; font-weight: 100" class="btn btn-lg btn-danger" onclick="loginMove()">로그인 하러 가기</button>
			</div>
		</div>
	</div>
</body>
</html>