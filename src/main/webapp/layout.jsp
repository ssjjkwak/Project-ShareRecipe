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
    <title>Share:cipe</title>
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
  <!-- 메인이미지(검색) -->
  	<section class="py-5 overflow-hidden bg-primary" id="home">
        <div class="container">
          <div class="row flex-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0"><a class="img-landing-banner" href="#!"><img class="img-fluid" src="assets/img/gallery/hero-header.png" alt="hero-header" /></a></div>
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light" style="font-family: 'Jua'; font-weight: 500;">오늘은 뭘 먹을까?</h1><br>
              <h1 class="text-800 mb-5 fs-4" style="font-family: 'Jua'; font-weight: 500;">자취생들의 걱정 1위 "오늘 뭐 먹지?"<br class="d-none d-xxl-block" /><br>SHARE:CIPE 에서 단번에 해결!</h1>
              <div class="card w-xxl-75">
                <div class="card-body">
                  
                  <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                      <form class="row gx-2 gy-2 align-items-center" action="RecipeSearchController.do">
                        <div class="col">
                        <div class="input-group-icon pe-2"><i class="fas fa-search input-box-icon text-primary"></i>
                            <label class="visually-hidden" for="inputDelivery">Address</label>
                            <input class="form-control input-box form-foodwagon-control" style="font-family: 'Jua'; font-weight: 500;" id="inputDelivery" type="text" name="search" placeholder="먹고싶은 음식을 검색해보세요!" />
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit" style="font-family: 'Jua'; font-weight: 500;">레시피 검색</button>
                        </div>
                      </form>
                    </div>
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                      <form class="row gx-4 gy-2 align-items-center">
                        <div class="col">
                          <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                            <label class="visually-hidden" for="inputPickup">Address</label>
                            <input class="form-control input-box form-foodwagon-control" id="inputPickup" type="text" placeholder="Enter Your Address" />
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit">Find Food</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- 메인이미지(검색) 끝-->
    
	  <!-- recipe-popular.jsp import  -->
	  <c:import url="${requestScope.popular }"/>
	  
      <!-- recipe-newWrite.jsp import -->
      <c:import url="${requestScope.latest }"/>



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-8 overflow-hidden">

        <div class="container">
          <div class="row flex-center mb-6">
            <div class="col-lg-7 mx-auto text-center mb-2">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm" style="font-family: 'Jua';">카테고리별 게시판</h5>
            </div>
          </div>
          <div class="row flex-center">
            <div class="col-12">
              <div class="carousel slide" id="carouselSearchByFood" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
                    <div class="row h-100 align-items-center">
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">                      
                        <a href="RecipeCategoryListController.do?category_num=한식" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/bibimbap.jpg" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;한식</h5>
                          </div>
                        </div>
                     </a> 
                      
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="RecipeCategoryListController.do?category_num=중식" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/jjambbong.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;중식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="RecipeCategoryListController.do?category_num=일식" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/sushi.jpg" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;일식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="RecipeCategoryListController.do?category_num=양식" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/steak.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;양식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <a href="RecipeCategoryListController.do?category_num=채식" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/salad.jpg" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;채식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <a href="RecipeCategoryListController.do?category_num=디저트" style="display:block;">
                          <div class="card card-span h-100 rounded-circle">
                            <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/cake.jpg" alt="..." />
                            <div class="card-body ps-0">
                              <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;디저트</h5>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section>
      <!-- footer import -->
      <c:import url="footer.jsp"></c:import>
  </main>
      <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
    </body>
    </html>