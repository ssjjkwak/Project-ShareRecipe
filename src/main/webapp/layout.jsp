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
  	<section class="py-5 overflow-hidden bg-primary" id="home">
        <div class="container">
          <div class="row flex-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0"><a class="img-landing-banner" href="#!"><img class="img-fluid" src="assets/img/gallery/hero-header.png" alt="hero-header" /></a></div>
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light" style="font-family: 'Jua'; font-weight: 500;">오늘은 뭘 먹을까?</h1>
              <h1 class="text-800 mb-5 fs-4" style="font-family: 'Jua'; font-weight: 500;">Within a few clicks, find meals that<br class="d-none d-xxl-block" />are accessible near you</h1>
              <div class="card w-xxl-75">
                <div class="card-body">
                  <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                      <button class="nav-link active mb-3" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true"><i class="fas fa-motorcycle me-2"></i>Delivery</button>
                      <button class="nav-link mb-3" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false"><i class="fas fa-shopping-bag me-2"></i>Pickup</button>
                    </div>
                  </nav>
                  <div class="tab-content mt-3" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                      <form class="row gx-2 gy-2 align-items-center">
                        <div class="col">
                          <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                            <label class="visually-hidden" for="inputDelivery">Address</label>
                            <input class="form-control input-box form-foodwagon-control" id="inputDelivery" type="text" placeholder="Enter Your Address" />
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit">Find Food</button>
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
       <section class="py-4 overflow-hidden">

        <div class="container">
          <div class="row h-100">
            <div class="col-lg-7 mx-auto text-center mt-7 mb-5">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm" style="font-family: 'Jua';">인기 레시피</h5>
            </div>
            <div class="col-12">
              <div class="carousel slide" id="carouselPopularItems" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
                    <div class="row gx-3 h-100 align-items-center">
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/cheese-burger.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">	은열글자까지가능</h4><!-- varchar2(48) -->
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/toffes-cake.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">팬케이크</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/dancake.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">호떡</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/crispy-sandwitch.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">샌드위치</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/thai-soup.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">스프</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="5000">
                    <div class="row gx-3 h-100 align-items-center">
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/cheese-burger.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">제목은열글자까지가능</h4><!-- varchar2(48) -->
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/toffes-cake.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">팬케이크</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/dancake.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">호떡</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/crispy-sandwitch.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">샌드위치</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/thai-soup.png" alt="..." />
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua';">스프</h4>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="#!" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <button class="carousel-control-prev carousel-icon" type="button" data-bs-target="#carouselPopularItems" data-bs-slide="prev"><span class="carousel-control-prev-icon hover-top-shadow" aria-hidden="true"></span><span class="visually-hidden">Previous</span></button>
                <button class="carousel-control-next carousel-icon" type="button" data-bs-target="#carouselPopularItems" data-bs-slide="next"><span class="carousel-control-next-icon hover-top-shadow" aria-hidden="true"></span><span class="visually-hidden">Next </span></button>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <section id="testimonial">
        <div class="container">
          <div class="row h-100">
            <div class="col-lg-7 mx-auto text-center mb-6">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="font-family: 'Jua';">최신 등록 레시피</h5>
            </div>
          </div>
          <div class="row gx-2">
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="#" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3"><img class="img-fluid rounded-3 h-100" src="assets/img/gallery/food-world.png" alt="..." />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">20% off</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3">
                      <h5 class="mb-0 fw-bold text-1000" style="font-family: 'Jua';">레시피</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">46</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            <div class="col-12 d-flex justify-content-center mt-5"> <a class="btn btn-lg btn-primary" href="#!" style="font-family: 'Jua'; font-weight: 500;">View All <i class="fas fa-chevron-right ms-2"> </i></a></div>
          </div>
        </div>
      </section>


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
                        <a href="#" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/search-pizza.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;한식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="#" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/burger.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;중식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="#" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/noodles.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;일식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                      <a href="#" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/sub-sandwich.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;양식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <a href="#" style="display:block;">
                        <div class="card card-span h-100 rounded-circle">
                        <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/chowmein.png" alt="..." />
                          <div class="card-body ps-0">
                            <h5 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';">&nbsp;&nbsp;채식</h5>
                          </div>
                        </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <a href="#" style="display:block;">
                          <div class="card card-span h-100 rounded-circle">
                            <img class="img-fluid rounded-circle h-100" src="assets/img/gallery/steak.png" alt="..." />
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