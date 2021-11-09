<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 사용가능</title>
<script type="text/javascript">
// 본 창의 hidden 의 value에 아이디 중복확인한 아이디를 저장한다 ( 중복확인하지 않은 사용자는 가입되지 않도록 하기 위해 )
	opener.document.getElementById("flag").value="${param.joinId}";
	function closeWindow(){
		self.close();
	}
</script>
</head>
<body>
${param.joinId} 아이디 사용가능 <br><br>
<button type="button" onclick="closeWindow()">확인</button>
</body>
</html>