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
	<script type="text/javascript">
  function categoryBold() {
		let categoryNum = "${param.category_num }";
		/* alert(categoryNum); */
		//alert(textselect.innerText);
		let str1 = "1";
		let str2 = "2";
		let str3 = "3";
		let str4 = "4";
		let str5 = "5";
		let str6 = "6";
		//alert(categoryNum==str1);
		//#FFB30E
		//#
		/* if(categoryNum==str1){
			document.getElementById("innerText01").style.color="red";
		}else if(categoryNum==str2){
			document.getElementById("innerText02").style.color="red";
		}else if(categoryNum==str3){
			document.getElementById("innerText03").style.color="red";
		}else if(categoryNum==str4){
			document.getElementById("innerText04").style.color="red";
		}else if(categoryNum==str5){
			document.getElementById("innerText05").style.color="red";
		}else if(categoryNum==str6){
			document.getElementById("innerText06").style.color="red";
		} */
		if(categoryNum==str1){
			document.getElementById("innerText01").style.color="#FFB30E";
		}else if(categoryNum==str2){
			document.getElementById("innerText02").style.color="#FFB30E";
		}else if(categoryNum==str3){
			document.getElementById("innerText03").style.color="#FFB30E";
		}else if(categoryNum==str4){
			document.getElementById("innerText04").style.color="#FFB30E";
		}else if(categoryNum==str5){
			document.getElementById("innerText05").style.color="#FFB30E";
		}else if(categoryNum==str6){
			document.getElementById("innerText06").style.color="#FFB30E";
		}
			
			
	}
	window.addEventListener("DOMContentLoaded",categoryBold);
  
  </script>
  </head>
  
  <body>
  <main class="main" id="top">
  <!-- header import -->
  <c:import url="../header.jsp"></c:import>
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
                        <a href="RecipeCategoryListController.do?category_num=1" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2"  style="font-family: 'Jua';"><span id="innerText01">&nbsp;&nbsp;한식</span></h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="RecipeCategoryListController.do?category_num=2" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';"><span id="innerText02">&nbsp;&nbsp;중식</span></h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="RecipeCategoryListController.do?category_num=3" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';"><span id="innerText03">&nbsp;&nbsp;일식</span></h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                      <a href="RecipeCategoryListController.do?category_num=4" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';"><span id="innerText04">&nbsp;&nbsp;양식</span></h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                        <a href="RecipeCategoryListController.do?category_num=5" style="display:block;">
                          <div class="card-body ps-0">
                            <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';"><span id="innerText05">&nbsp;&nbsp;채식</span></h4>
                          </div>
                        </a>
                      </div>
                      <div class="col-sm-6 col-md-4 col-xl mb-2 h-100">
                        <a href="RecipeCategoryListController.do?category_num=6" style="display:block;">
                            <div class="card-body ps-0">
                              <h4 class="text-center fw-bold text-1000 text-truncate mb-2" style="font-family: 'Jua';"><span id="innerText06">&nbsp;&nbsp;디저트</span></h5>
                            </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
	
			<c:choose>
		<c:when test="${sessionScope.mvo!=null}">
		<div class="d-grid gap-12"><a style="font-family: 'Jua'; font-weight: 100; font-size: 20px; text-align: right;" href="board/recipe-write-form.jsp" >글쓰기</a></div>
		</c:when>
		</c:choose>
		<table class="table table-hover table-striped boardlist" style="font-family: 'Jua'; font-weight: 100;">
			<thead>
				<tr style="background-color: #FFB30E">
					<th>번호</th>
					<th>이미지</th>
					<th class="title">제목</th>
					<th>작성자</th>
					<th>조회</th>
					<th>추천수</th>
					<th>작성일</th>
				</tr>
			</thead>
          <c:forEach items="${requestScope.list}" var="li">
			<tbody>
				<tr onclick="location.href='RecipeDetailController.do?recipeNo=${li.recipeNo}'">
					<td>${li.recipeNo} </td>
					<td><img src="./image/${li.image}" width="100px" height="70px"></td>
					<td>${li.title}</td>
					<td>${li.memberVO.id}</td>
					<td>${li.hits}</td>
					<td>${li.likes}</td>
					<td>${li.wroteDate}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table><br>
		
		<%--★★★★★페이징 처리★★★★★ --%>
		<ul class="pagination justify-content-center" style="font-family: 'Jua'; font-weight: 100;">
		<c:if test="${pagingBean.previousPageGroup }"> <!-- el동작이 get이랑 is계열 메서드의 return을 받아오는데 is계열은 t/f반환이므로 -->
		 <li class="page-item"><a class="page-link" href="RecipeCategoryListController.do?pageNo=${pagingBean.startPageOfPageGroup-1 }&&category_num=${param.category_num }">Previous</a></li> 
		 <!-- 위에 -1하면 이전그룹 가는거다 , 쿼리스트링방식으로 name(pageNo) 넘겨서 컨트롤러에서 받음-->
		 
		  <!-- 맨첨 list뜨면 1이 nowpage이므로previous그룹안뜨고 next그룹만 뜬다 -->
		 </c:if>
		 
		 
		 <c:forEach begin="${pagingBean.startPageOfPageGroup }" end="${pagingBean.endPageOfPageGroup }" var="page"> <!-- 아래처럼 다쓰지말고 for 구문으로 loop돌린다 begin~end갯수만큼-->
		 <c:choose>
		 <c:when test="${page==pagingBean.nowPage}">
		 <li class="page-item active"><a class="page-link" href="RecipeCategoryListController.do?pageNo=${page }&&category_num=${param.category_num }">${page }</a></li>
		 </c:when>
		 <c:otherwise>
		 <li class="page-item"><a class="page-link" href="RecipeCategoryListController.do?pageNo=${page }&&category_num=${param.category_num }">${page }</a></li>
		 </c:otherwise>
		 </c:choose>
		  <!--위에 var는 begin~end 한 갯수만큼 보여주고 1~5페이지라면 총 12345 보여줄텐데 그때마다 쿼리스트링도 1-1 2-2 3-3 이렇게 넘어간다 -->
		</c:forEach>
		 <!--   <li class="page-item"><a class="page-link" href="#">1</a></li>
		  <li class="page-item"><a class="page-link" href="#">2</a></li>
		  <li class="page-item"><a class="page-link" href="#">3</a></li>
		  <li class="page-item"><a class="page-link" href="#">4</a></li> -->
		  
		  <c:if test="${pagingBean.nextPageGroup }">  <!-- el동작이 get이랑 is계열 메서드의 return을 받아오는데 is계열은 t/f반환이므로 -->
		  <li class="page-item"><a class="page-link" href="RecipeCategoryListController.do?pageNo=${pagingBean.endPageOfPageGroup+1 }&&category_num=${param.category_num }">Next</a></li>
		  </c:if>
		</ul><br>
		
        </div>
      </main>
	</body>
	
</html>