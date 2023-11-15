<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--삭제금지-->
<!DOCTYPE html>
<html lang="ko">

<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<!--공통 헤더 시작-->
<%@ include file="../include/user//header.jsp" %>
<%@ include file="../include/user/menu.jsp" %>
<!--공통 헤더 끝-->

<!-- content -->

<!-- 상단탭 -->
<div class="sub_all_tit position-relative" style=" background:url('/resources/img/sub_bg_01.jpg') no-repeat center center">

<style>
.in_sub_sort{position:absolute;bottom:0px;}
.in_sub_sort .nav li {
	background:rgb(69 69 69 / 70%);
	/* background:#e8ebed; */
	line-height:35px;text-align:center}
.in_sub_sort .nav a {color:#fff;}
.in_sub_sort .active{background: #01264e;color:#fff !important; border:none !important; font-weight:normal;}
.in_sub_sort .gab_01 li {width:calc(100% / 1)}
.in_sub_sort .gab_02 li {width:calc(100% / 2)}
.in_sub_sort .gab_03 li {width:calc(99.9999% / 3)}
.in_sub_sort .gab_04 li {width:calc(100% / 4)}
.in_sub_sort .gab_05 li {width:calc(100% / 5)}
.in_sub_sort .gab_06 li {width:calc(100% / 6)}
.in_sub_sort .gab_07 li {width:calc(100% / 7)}

@media only screen and (max-width:992px) {        

.in_sub_sort {display:none}  

}

.login_container {
      width: 400px;
      margin: 0 auto;
      border: 2px solid black;
      padding: 20px;
      text-align: center;
    }

    .logo {
      margin-bottom: 20px;
    }

    .input-box {
      width: 80%;
      padding: 10px;
      margin: 10px 0;
    }

    .login-button {
      width: 80%;
      padding: 10px;
      background-color: blue;
      color: white;
      border: none;
    }
        
</style>

<div class="container">
<div class="row">
<div class="container in_sub_sort">
<div class="row">
<div class="col">
<ul class="nav gab_02">
<li><a class="nav-link" href="#">전문과정</a></li>
<li><a class="nav-link" href="#">모집과정</a></li>
</ul>
  

</div>
</div>
</div>
</div>
</div>

<div class="tit_01 font_noto f_wet_01 container"><span class="f_wet_07">프로그램</span></div> 
</div>
<!-- 상단탭끝 -->

<!-- 서브시작 -->
<div class="sub_wrap-1">

<!-- 타이틀 -->
<div class="sub_tit container gray_10">
	 
</div>
<!-- 타이트끝 -->


<!-- 콘텐츠 -->
<div class="container">
  <div class="login_container">
    <div class="logo">
      <img src="/resources/img/logo.png" alt="Logo Image" width="100">
    </div>
    <div>
      <input type="text" class="input-box" name="member_id" placeholder="Username">
    </div>
    <div>
      <input type="password" class="input-box" name="password" placeholder="Password">
    </div>
    <div>
      <button class="login-button" type="button" onclick="login()" >Login</button>
    </div>
  </div>

           

</div>
<!-- 콘텐츠끝 -->

</div>
<!-- 서브끝 -->

<!-- content end -->

<!--공통하단-->
<%@ include file="../include/user/footer.jsp" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">

</script>