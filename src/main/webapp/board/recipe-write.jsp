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
	<form enctype="multipart/form-data" action="../RecipeCreateController.do" method="post">
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
			<td><input type="text" name="title" placeholder="글제목" required="required"></td>
		</tr>
		<tr>
			<td>
				<textarea rows="10" name="content" placeholder="레시피 작성" required="required"></textarea>
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
	<div class="text-center">
		<button type="submit" class="btn btn-success">완료</button>
		<button type="reset" class="btn btn-success">취소</button>
	</div>
</form>
</body>
</html>