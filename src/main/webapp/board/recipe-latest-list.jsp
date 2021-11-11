<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<section id="testimonial">
        <div class="container">
          <div class="row h-100">
            <div class="col-lg-7 mx-auto text-center mb-6">
              <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="font-family: 'Jua';">최신 등록 레시피</h5>
            </div>
          </div>
          <div class="row gx-2">
          <c:forEach items="${requestScope.latestList }" var="li">
            <div class="col-sm-6 col-md-4 col-lg-3 h-100 mb-5">
            <a href="RecipeDetailController.do?recipeNo=${li.recipeNo }" style="display:block;">
              <div class="card card-span h-100 text-white rounded-3 "><img class="img-fluid rounded-3 h-100" style="width: 300px;  height: 150px; object-fit: cover;" src="./image/${li.image }" alt="..."  />
                <div class="card-img-overlay ps-0"><span class="badge bg-danger p-2 ms-3"><i class="fas fa-tag me-2 fs-0"></i><span class="fs-0">${li.categoryVO.cName }</span></span><span class="badge bg-primary ms-2 me-1 p-2"><i class="fas fa-clock me-1 fs-0"></i><span class="fs-0">Fast</span></span></div>
                <div class="card-body ps-0">
                    <div class="flex-1 ms-3" style="width:239px;">
                      <h5 class="mb-0 fw-bold text-1000 etc" style="font-family: 'Jua';">${li.title}</h5><span class="text-primary fs--1 me-1"><i class="fas fa-star"></i></span><span class="mb-0 text-primary">${li.hits}</span>
                    </div>
                </div>
              </div>
              </a>
            </div>
            </c:forEach>
            <!-- <script type="text/javascript">
            	function 
            </script>
            <form action="LoginController.do" id=""></form>
             -->
			    
            <div class="col-12 d-flex justify-content-center mt-5"> <a class="btn btn-lg btn-primary" href="RecipeListController.do" style="font-family: 'Jua'; font-weight: 500;">View All <i class="fas fa-chevron-right ms-2"> </i></a></div>
          </div>
        </div>
      </section>