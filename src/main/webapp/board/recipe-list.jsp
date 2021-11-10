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
    <title>전체 게시판</title>
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

  </head>
  <body>
  <main class="main" id="top">
  <!-- header import -->
  <c:import url="../header.jsp"></c:import>
	 <br><br><br><br><br><br>
      <div class="container">
          <div class="row flex-center">
            <div class="col-lg-7 mx-auto text-center">
              <h5 class="fw-bold fs-3 fs-lg-4 lh-sm" style="font-family: 'Jua'; ">우리들의 레시피</h5><br>
            </div>
          </div>
          

		<h3 style="text-align: 'center'; font-family: 'Jua'; font-weight: 100; " >최신등록순</h3>
		<c:choose>
		<c:when test="${sessionScope.mvo!=null}">
		<div class="d-grid gap-12"><a style="font-family: 'Jua'; font-weight: 100; font-size: 20px; text-align: right;" href="board/recipe-form.jsp" >글쓰기</a></div>
		</c:when>
		</c:choose>
		<!-- <div class="d-grid gap-12"><a style="font-family: 'Jua'; font-weight: 100; font-size: 20px; text-align: right;" href="board/recipe-form.jsp" >글쓰기</a></div> -->

		<table class="table table-hover table-striped boardlist" style="font-family: 'Jua'; font-weight: 100;">
			<thead>
				<tr style="background-color: #FFB30E">
					<th>번호</th>
					<th>카테고리명</th>
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
			<tr onclick="location.href='RecipeDetailController.do?recipeNo=${li.recipeNo}'">
				<td>${li.recipeNo} </td>
				<td>${li.categoryVO.cName}</td>
				<td><img src="./image/${li.image}" width="100px" height="70px"></td>
				<td>
				${li.title}
				</td>
				<td>${li.memberVO.id}</td>
				<td>${li.hits}</td>
				<td>${li.likes}</td>
				<td>${li.wroteDate}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table><br>
		<ul class="pagination justify-content-center" style="font-family: 'Jua'; font-weight: 100;">
		  <li class="page-item"><a class="page-link" href="#"><<</a></li>
		  <li class="page-item"><a class="page-link" href="#">1</a></li>
		  <li class="page-item"><a class="page-link" href="#">2</a></li>
		  <li class="page-item"><a class="page-link" href="#">3</a></li>
		  <li class="page-item"><a class="page-link" href="#">>></a></li>
		</ul><br>
        </div>
      </main>
      <script src="../vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
      
	</body>
</html>