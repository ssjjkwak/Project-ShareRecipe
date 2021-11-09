<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>recipe-update</title>
</head>
<body>
<table>
		<tr>
			<td>
				<select name="category_num">
					<option>카테고리 선택</option>
					<option value="1">한식</option>
					<option value="2">양식</option>
					<option value="3">일식</option>
					<option value="4">중식</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type="text" name="title" placeholder="${rvo.title }" required="required"></td>
		</tr>
		<tr>
			<td>
				<textarea rows="10" name="content" placeholder="${rvo.content }" required="required"></textarea>
			</td>
		</tr>
		<tr>
		<!-- session 보유 -->
			<td><input type="hidden" name="id"></td>
		</tr>
		<tr>
			<td>
				<input type="file" name="image">
			</td>
		</tr>
	</table>
	
</body>
</html>