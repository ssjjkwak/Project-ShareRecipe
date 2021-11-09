<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>recipe-list</title>
</head>
<body>
	<table class="table table-hover table-bordered boardlist">
		<thead>
			<tr style="background-color: #d6f5d6">

				<th>카테고리명</th>
				<th>번호</th>
				<th>이미지</th>
				<th class="title">제목</th>
				<th>작성자</th>
				<th>조회</th>
				<th>추천수</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${requestScope.list}" var="li">
			<tr>
				<td>${li.categoryVO.cName}</td>
				<td>${li.recipeNo} </td>
				<td>${li.image}</td>
				<td>
				<a href="RecipeDetailController.do?recipeNo=${li.recipeNo}">${li.title}</a>
				</td>
				<td>${li.memberVO.id}</td>
				<td>${li.hits}</td>
				<td>${li.likes}</td>
				<td>${li.wroteDate}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<button type="button" onclick="location.href='board/recipe-write.jsp'">글등록</button>
</body>
</html>