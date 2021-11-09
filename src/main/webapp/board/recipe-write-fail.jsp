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
	alert("글등록이 정상적으로 수행되지 않았습니다");
	//location.href="../ListController.do";// home으로 보낸다   ../ 를 한 이유는 member 디렉토리 상위로 가야하기 때문에 
	location.href="${pageContext.request.contextPath}/CreateRecipeController.do";
</script>
</body>
</html>