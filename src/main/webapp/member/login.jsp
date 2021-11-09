<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="../assets/css/theme.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
		<div class="container">
          <div class="row h-100">
            <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
            	<a href="index.jsp"><img src="../assets/img/favicons/favicon.jpg" style="width:350px;"></a><br><br>
				<form action="LoginController.do" method="post">
				    <input class="form-control border-0 input-box bg-100" type="text" name="id" placeholder="아이디" required="required" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" /><br>
				    <input class="form-control border-0 input-box bg-100" type="password" name="password" placeholder="비밀번호" required="required" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" /><br><br>
					<div class="d-grid gap-2"><button type="submit" style="font-family: 'Jua'; font-weight: 100" class="btn btn-lg btn-danger">로그인</button></div><br>
				</form>
				<form action="FindIdController.do" style="width:211px; float:left;  padding-right:10px;">
					<div class="d-grid gap-2"><a class="btn btn-lg btn-warning" role="button" style="font-family: 'Jua'; font-weight: 100">아이디찾기</a></div><br>
				</form>
				<form action="FindPasswordController.do" style="width:211px; float:left;  padding-right:10px;">
					<div class="d-grid gap-2"><a class="btn btn-lg btn-warning" role="button" style="font-family: 'Jua'; font-weight: 100">비번찾기</a></div><br>
				</form>
				<form action="RegisterMemberController.do" method="post" style="width:210px; float:left;">
					<div class="d-grid gap-2"><a href="register.jsp" class="btn btn-lg btn-warning" role="button" style="font-family: 'Jua'; font-weight: 100">회원가입</a></div><br>
				</form>
			</div>
		  </div>
		</div>
	</body>
</html>