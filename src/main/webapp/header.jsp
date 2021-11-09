<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-navbar-on-scroll="data-navbar-on-scroll">
  <div class="container"><a class="navbar-brand d-inline-flex" href="layout.jsp"><img width="200px" height="90px" class="d-inline-block" src="assets/img/favicons/favicon.jpg" alt="logo" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
    <div class="collapse navbar-collapse border-top border-lg-0 my-2 mt-lg-0" id="navbarSupportedContent">
   	<div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block"> <!-- offset 사용 혹은 col-sm 사용 확인 -->
      </div>
      <form class="d-flex mt-4 mt-lg-0 ms-lg-auto ms-xl-0">
        
        <a href="login.jsp"><div class="btn btn-white text-warning" style="font-family: 'Jua'; font-weight: 500;"> <i class="fas fa-user me-2"></i>로그인</div></a>
       	
        <a href="RegisterMemberFormController.do"><div class="btn btn-white text-warning" style="font-family: 'Jua'; font-weight: 500;"> <i class="fas fa-user me-2"></i>회원가입</div></a>
      </form>
    </div>
  </div>
</nav>