<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="../assets/css/theme.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 찾기</title>
	</head>
	<body>
		<div class="container">
          <div class="row h-100" style="background-color:#F9FAFD;">
            <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
            	<a href="../index.jsp"><img src="../assets/img/favicons/favicon.jpg" style="width:350px;"></a><br><br>
				<form action="../FindPasswordController.do" method="post">
				    <input class="form-control border-0 input-box bg-100" type="text" name="id" placeholder="아이디" required="required" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" /><br>
				     <input class="form-control border-0 input-box bg-100" style="font-family: 'Jua'; font-weight: 500; width: 48%; display: inline-block; float: left; margin-bottom: 20px;"
						type="text" name="mail1" placeholder="이메일" required="required">
					<%-- <span style="position: relative; top:5px">@</span>--%>
					 <select class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500; width: 45%; display: block; float: right; margin-bottom: 20px;"
						name="mail2" id="email_server" onchange="input_email();">
						<option value="">주소선택</option>
						<option value="@naver.com">@naver.com</option>
						<option value="@gmail.com">@gmail.com</option>
						<option value="@hotmail.com">@hotmail.com</option>
					</select><br><br><br><br>
					<button style="font-family: 'Jua'; font-weight: 100" class="btn btn-lg btn-danger">비밀번호 찾기</button><br>
				</form>
			</div>
		  </div>
		</div>
	</body>
</html>