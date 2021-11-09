<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert("글등록이 완료되었습니다");
	//"redirect:RecipeListController.do"
	//location.href="${pageContext.request.contextPath}/redirect:RecipeListController.do";
	location.href="${pageContext.request.contextPath}/RecipeListController.do";
</script>
</body>
</html>