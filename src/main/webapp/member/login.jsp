<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
		<form action="LoginController.do" method="post">
			<input type="text" name="id" placeholder="아이디" required="required" size="12"><br><br>
			<input type="password" name="password" placeholder="비밀번호" required="required" size="12"><br><br>
			<button type="submit">로그인</button><br><br>
		</form>
		<form action="FindIdController.do" method="post">
			<button type="submit">아이디찾기</button>
		</form>
		<form action="FindPasswordController.do" method="post">
			<button type="submit">비밀번호찾기</button>
		</form>
		<form action="RegisterMemberController.do" method="post">
			<button type="submit">회원가입</button>
		</form>
	</body>
</html>