<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 실패</title>
	</head>
	<body>
		<script type="text/javascript">
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
			location.href = "../member/login.jsp";
		</script>
	</body>
</html>