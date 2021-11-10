<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>recipe-update</title>
<script>
	/* $(".id").val(${rvo.categoryVO.categoryNo}).prop("selected", true); */
	document.getElementsByName("category_num").namedItem(
			"${rvo.categoryVO.categoryNo}").attribute = new value
</script>
</head>
<body>
	<form enctype="multipart/form-data" action="RecipeUpdateController.do"
		method="post">
		<table>
			<tr>
				<td><input type="hidden" name="recipeNo" value="${rvo.recipeNo }"></td>
			</tr>

			<!--  
			<select class="form-control" id="test" name="test" onchange="">
				<option value="">전체</option>
				<c:forEach items="${test}" var="testList">
					<option value="${testList.testNo}"
						${testList.testNo == 1 ? 'selected="selected"' : ''}>${testList.testNo}</option>
				</c:forEach>
			</select>
			-->
			
			<tr>
				<td><select name="category_num" required="required">
						<option>카테고리 선택</option>
						<option value="1">한식</option>
						<option value="2">양식</option>
						<option value="3">일식</option>
						<option value="4">중식</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="text" name="title" placeholder="${rvo.title }"
					required="required"></td>
			</tr>
			<tr>
				<td><textarea rows="10" name="content"
						placeholder="${rvo.content }" required="required"></textarea></td>
			</tr>
			<tr>
				<td><input type="file" name="image" placeholder="${rvo.image }">
				</td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>