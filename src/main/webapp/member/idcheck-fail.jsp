<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//현재 팝업창을 열어준 본 창의 아이디 요소에 접근해서 사용불가한 아이디를 지운다 
	opener.document.getElementById("joinId").value="";
	opener.document.getElementById("joinId").focus();
	//본 창(register-member.jsp) 의 hidden 에 value를 공란으로 초기화한다 
	opener.document.getElementById("flag").value="";
	function closeWindow(){
		self.close();
	}
</script>
</head>
<body>
${param.joinId} 아이디는 중복되어 사용불가 <br><br>
<button type="button" onclick="closeWindow()">확인</button>
</body>
</html>