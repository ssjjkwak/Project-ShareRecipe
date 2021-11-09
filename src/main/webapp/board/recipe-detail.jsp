<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 등록 폼</title>
</head>
<body>
	<table>
		<tr>
			<td>글번호: ${rvo.recipeNo }</td>
		</tr>
		<tr>
			<td>제목: ${rvo.title }</td>
		</tr>
		<tr>
			<td>작성자: ${rvo.memberVO.id }</td>
		</tr>
		<tr>
			<td>내용: ${rvo.content }</td>
		</tr>
		<tr>
			<td>작성일: ${rvo.wroteDate }</td>
		</tr>
		<tr>
			<td>추천수: ${rvo.likes }</td>
		</tr>
		<tr>
			<td>조회수: ${rvo.hits }</td>
		</tr>
		<tr>
			<td>이미지: ${rvo.image }</td>
		</tr>
	</table>
		 <img src="image/${rvo.image }" width="100px">
	<div class="text-center">
		<button type="submit" class="btn btn-success" onclick="location.href=''">수정</button>
		<button type="submit" class="btn btn-success">삭제</button>
	</div>
</body>
</html>