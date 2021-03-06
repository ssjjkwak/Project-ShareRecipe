<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
                  	<c:forEach items="${requestScope.popularList }" var="pli" begin="0" end="4">
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3">
                        	<div style="width:208px; height:156px; text-align:center;">
                        	<img style="object_fit: cover; "class="img-fluid rounded-3 h-100" src="./image/${pli.image }" alt="..." />
                        	</div>
                          	<div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1 etc" style="font-family: 'Jua'; width: 190px;">${pli.title }</h4><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">${pli.hits }</span>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="RecipeDetailController.do?recipeNo=${pli.recipeNo }" role="button" style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                  	</c:forEach>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="5000">
                    <div class="row gx-3 h-100 align-items-center">
                  	<c:forEach items="${requestScope.popularList }" var="pli" begin="5" end="9">
                      <div class="col-sm-6 col-md-4 col-xl mb-5 h-100">
                        <div class="card card-span h-100 rounded-3">
                        <div style="width:208px; height:156px; text-align:center;">
                        <img style="object_fit: cover; "class="img-fluid rounded-3 h-100" src="./image/${pli.image }" alt="..." />
                          </div>
                          <div class="card-body ps-0">
                            <h4 class="fw-bold text-1000 text-truncate mb-1" style="font-family: 'Jua'; width: 190px;">${pli.title }</h4><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">${pli.hits }</span>
                          </div>
                        </div>
                        <div class="d-grid gap-2"><a class="btn btn-lg btn-danger" href="RecipeDetailController.do?recipeNo=${pli.recipeNo }"  style="font-family: 'Jua'; font-weight: 100">V i e w</a></div>
                      </div>
                  	</c:forEach>  
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
