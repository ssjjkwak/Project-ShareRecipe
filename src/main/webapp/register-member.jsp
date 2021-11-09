<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RegisterMemberController.do">
      아이디: <input type="text" name="joinId" placeholder="아이디를 입력하세요." required="required">
      <button type="button">ID중복확인</button>
      <br>
      비밀번호: <input type="password" name="joinPw" placeholder="비밀번호를 입력하세요." required="required">
      <br>         
      비밀번호 재확인: <input type="password" name="joinPwck" placeholder="비밀번호 재확인." required="required">
      <br>  
      이름: <input type="text" name="joinName" placeholder="이름 입력" required="required">
      <br>
      주소: <input type="text" name="joinAddr1" id="sample2_postcode" placeholder="우편번호" disabled="disabled">
      <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
      <input type="text" name="joinAddr2" id="sample2_address" placeholder="주소" disabled="disabled"><br>
      <input type="text" name="joinAddr3" id="sample2_detailAddress" placeholder="상세주소">
      <input type="text" name="joinAddr4" id="sample2_extraAddress" placeholder="참고항목"> 
      <br>
      휴대폰 번호: <input type="text" name="joinTel" placeholder="공백없이 숫자만 입력" required="required"><br>
      생년월일: <input type="date" name="joinBirthday" required="required"><br>
      이메일: <input type="text" name="joinMail1" placeholder="이메일 주소" required="required"> @
      <select name="joinMail2" id="email_server" onchange="input_email();">
         <option value="">주소선택</option>
         <option value="naver.com">naver.com</option>   
         <option value="gmail.com">gmail.com</option>
         <option value="hotmail.com">hotmail.com</option>
      </select> <br>
      <button>회원가입</button>
   </form>
</body>
</html>