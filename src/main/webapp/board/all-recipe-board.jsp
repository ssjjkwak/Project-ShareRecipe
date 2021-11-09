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
  <c:import url="header.jsp"></c:import>
	 <br><br><br><br><br><br>
      <div class="container">
          <div class="row flex-center">
            <div class="col-lg-7 mx-auto text-center">
              <h5 class="fw-bold fs-3 fs-lg-4 lh-sm" style="font-family: 'Jua';">카테고리별 게시판</h5><br>
            </div>
          </div>
          <div class="row flex-center">
            <div class="col-9">
              <div class="carousel slide" id="carouselSearchByFood" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
                    <div class="row h-100 align-items-center">
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">                      
                        <a href="#" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;한식</h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="#" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;중식</h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="#" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;일식</h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="#" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;양식</h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                        <a href="#" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;채식</h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                        <a href="#" style="display:block;">
                            <div class="card-body ps-0">
                              <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;디저트</h5>
                            </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
		<h3 style="text-align: 'center'; font-family: 'Jua'; font-weight: 100;">카테고리명</h3>
		<table class="table table-hover table-striped boardlist" style="font-family: 'Jua'; font-weight: 100;">
			<thead>
				<tr style="background-color: #FFB30E">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>라면</td>
					<td>김근영</td>
					<td>2021.11.08</td>
					<td>6</td>
				</tr>
				<tr>
					<td>1</td>
					<td>라면</td>
					<td>김근영</td>
					<td>2021.11.08</td>
					<td>6</td>
				</tr>
				<tr>
					<td>1</td>
					<td>라면</td>
					<td>김근영</td>
					<td>2021.11.08</td>
					<td>6</td>
				</tr>
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
	</body>
</html>