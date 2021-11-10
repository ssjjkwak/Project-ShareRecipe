<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>레시피 작성 폼</title>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/home-favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/home-favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/home-favicon-32x32.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />
    
    <!-- BootStrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  </head>
  <script type="text/javascript">
  function deleteRecipe(){
		 if(confirm("삭제하시겠습니까?")){
			 document.getElementById("deleteForm").submit();
		 }
	 }
	 function updateRecipe(){
		 if(confirm("수정하시겠습니까?")){
			document.getElementById("updateForm").submit();
		 	//location.href="board/recipe-update.jsp";
		 }
	 }
  </script>
	<body>
		<c:import url="../header.jsp"></c:import>
		<br><br><br><br><br><br>
		<div class="container">
			<input type="hidden" name="id">
			 <div class="form-control border-5 input-box bg-100" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" >제목: ${rvo.title }</div><br>
			 <div class="form-control border-5 input-box bg-100" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" >작성자: ${rvo.memberVO.id }</div><br>
			 <div class="form-control border-5 input-box bg-100" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" >작성일: ${rvo.wroteDate }</div><br>
			 <div class="form-control border-5 input-box bg-100" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" >추천수: ${rvo.likes }</div><br>
			 <div class="form-control border-5 input-box bg-100" style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" >조회수: ${rvo.hits }</div><br>
			 <img src="image/${rvo.image }" width="400px"  style="text-align: center">
			<textarea class="form-control border-5 input-box bg-100" name="content"  rows="10" cols="120" style="resize: none; font-family: 'Jua'; font-weight: 500;" >${rvo.content }</textarea>
			<br>
			<form  action="RecipeUpdateFormController.do" id="updateForm" method="post">
				<input type="hidden" name="recipeNo" value="${rvo.recipeNo }">
			</form>
			<div class="d-grid gap-2"><a class="btn btn-lg btn-warning" onclick="recipeSubmit()" style="font-family: 'Jua'; font-weight: 100; width:10%;">수정</a></div>
			<form action="RecipeDeleteController.do" id="deleteForm" method="post">
				<input type="hidden" name="no" value="${rvo.recipeNo}">
			</form>
			<div class="d-grid gap-2"><a class="btn btn-lg btn-warning" onclick="deleteRecipe()" style="font-family: 'Jua'; font-weight: 100; width:10%;">삭제</a></div>

		</div>
	</body>
</html>