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
  function recipeSubmit(){
			
			let category = document.getElementById("category").value;
			if(category==0){
				alert("카테고리를 선택해주세요");
				return false;
			}
			document.getElementById("submitForm").submit();
	}

  </script>
	<body style="background-color: #F9FAFD">
		<div class="container">
			<div style="background-color:#F9FAFD;">
          <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
					  <a href="../index.jsp"><img src="../assets/img/favicons/favicon.jpg" style="width:350px; margin-top: 80px;"></a><br><br><br><br>
					  <h2 style="font-family: 'Jua'; font-weight: 700;">나만의 레시피를 공유해 보세요!</h2><br>
			    </div>
			<form enctype="multipart/form-data" id="submitForm" action="../RecipeCreateController.do" method="post">
			<input type="hidden" name="id">
			<select name="category_num" id="category" class="btn btn-warning dropdown-toggle" style="font-family: 'Jua'; font-weight: 500;">
				<option value="0" style="text-align: left;">카테고리</option>
				<option value="1" style="text-align: left;">&nbsp;&nbsp;한식</option>
				<option value="2" style="text-align: left;">&nbsp;&nbsp;중식</option>
				<option value="3" style="text-align: left;">&nbsp;&nbsp;일식</option>
				<option value="4" style="text-align: left;">&nbsp;&nbsp;양식</option>
				<option value="5" style="text-align: left;">&nbsp;&nbsp;채식</option>
				<option value="6" style="text-align: left;">&nbsp;디저트</option>
			</select>
			<br><br>
			<input class="form-control border-5 input-box bg-100" type="text" name="title" placeholder="제목을 10자 이내로 입력해 주세요." style="font-family: 'Jua'; font-weight: 500;" aria-label="Search" required="required"/><br>
			<textarea class="form-control border-5 input-box bg-100" name="content" placeholder="레시피 작성 예시) 1. 난이도 / 2. 소요시간 / 3. 재료 / 4. 만족도 / 5. 본문" rows="10" cols="120" style="resize: none; font-family: 'Jua'; font-weight: 500;" required="required"></textarea>
			<br>
			<input class="form-control border-5 input-box bg-100" type="file" name="image" style="font-family: 'Jua'; font-weight: 500; width:60%;">
			
			<div class="d-grid gap-2 text-right">
				<a class="btn btn-lg btn-warning" onclick="recipeSubmit()" style="font-family: 'Jua'; font-weight: 100; width:10%;">완료</a>
				<a class="btn btn-lg btn-warning" type="reset" style="font-family: 'Jua'; font-weight: 100; width:10%;">취소</a>
			</div>
			<br><br>
			</form>
			</div>
		</div>
	</body>
</html>