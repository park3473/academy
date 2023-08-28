<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 메뉴형식 -->
<!--메뉴-->
<style>
	.gnb-menu-pc {display:block !important;}
	.gnb-menu-mo {display:none !important;}

	@media screen and (max-width:768px) {
	.gnb-menu-pc {display:none !important;}
	.gnb-menu-mo {display:block !important;}
	}
</style>

<div id="wrapper" class="main">
<header id="header" class="header color-bright">
<div class="header-inner">

<!--모바일용로고-->
<div class="head-title">
<h1 class="main-logo"><a href="/"><img src="${pageContext.request.contextPath}/resources/img/logo.png"></a></h1>
</div>
<!--모바일용로고-->

<!--로고-->
<strong class="logo"><a href="/"><img src="${pageContext.request.contextPath}/resources/img/logo.png"></a></strong>
<!--로고끝-->

<!--모바일메뉴버튼-->
<button type="button" class="btn-gnb-open"><span class="bar"></span><span class="blind">메뉴열기</span></button>
<!--모바일메뉴버튼-->

<nav id="nav">
<div class="nav-inner">
<div class="util-menu">

<!--인사말및 로고처리-->
<div class="welcome">
<!-- Welcome to KAIST Academy Homepage ! -->
</div>
<!--인사말및 로고처리끝-->

<!--로그인-->
<!-- <div class="util-menu-group bottom">
<a href="#"><span>회원가입</span></a><span class="gab">ㅣ</span>
<a href="#"><span>로그인</span></a><span class="gab">ㅣ</span>
<a href="#"><span>사이트맵</span></a>
</div> -->
<!--로그인끝-->


<!--셀렉트박스-->
<div class="menu">
<div class="lang-list">
<div class="lang">
<a href="#page" class="select-link"><span class="blind">언어 선택</span></a>
<span class="selected"><i class="las la-search"></i></span>
</div>
<ul class="select-lang hide">
<li>
<!--<a href="/"><span>English</span></a>-->
</li>
</ul>
</div>
</div>
</div>
<!--셀렉트박스끝-->

<!--메뉴-->
<div class="gnb-area">
<!--카테고리-->
<ul class="gnb-menu gnb-menu-pc">

	<li>
	<a href="sub_01a.php"><span>기관소개</span></a>
	<ul class="depth2">
	<li><a href="sub_01a.php"><span>원장인사말</span></a></li>
	<li><a href="sub_01c.php"><span>조직도 및 구성원</span></a></li>
	<li><a href="sub_01e.php"><span>부서소개</span></a></li>
	<li><a href="sub_01d.php"><span>오시는길</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육소개</span></a>
	<ul class="depth2">
	<li><a href="#"><span>비학위연수과정</span></a></li>
	<li><a href="#"><span>마이크로디그리 과정</span></a></li>
	<li><a href="#"><span>산학협동공개강좌</span></a></li>
	<li><a href="sub_02a.php"><span>Education 4.0Q</span></a></li>
	<li><a href="sub_02c.php"><span>영재교육</span></a></li>
	<li><a href="sub_02d.php"><span>IT교육</span></a></li>
	<li><a href="#"><span>정부관료/공직자연수과정</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육과정</span></a>
	<ul class="depth2">
	<li><a href="#"><span>비학위연수과정</span></a></li>
	<li><a href="#"><span>마이크로디그리과정</span></a></li>
	<li><a href="#"><span>산학협동공개강좌</span></a></li>
	<li><a href="#"><span>정부관료/공직자연수과정</span></a></li>
	<li><a href="sub_03g.php"><span>온라인교육과정(Education 4.0Q)</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>온라인 프로그램</span></a>
	<ul class="depth2">
	<li><a href="sub_03c.php"><span>MOOCs</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>커뮤니티</span></a>
	<ul class="depth2">
	<li><a href="#"><span>공지사항</span></a></li>
	<li><a href="#"><span>교육문의</span></a></li>
	<li><a href="#"><span>FAQ</span></a></li>
	<li><a href="#"><span>갤러리</span></a></li>
	</ul>
	</li>


</ul>

<ul class="gnb-menu gnb-menu-mo">
	<li>
	<a href="#"><span>기관소개</span></a>
	<ul class="depth2">
	<li><a href="sub_01a.php"><span>원장인사말</span></a></li>
	<li><a href="sub_01c.php"><span>조직도 및 구성원</span></a></li>
	<li><a href="sub_01e.php"><span>부서소개</span></a></li>
	<li><a href="sub_01d.php"><span>오시는길</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육소개</span></a>
	<ul class="depth2">
	<li><a href="#"><span>비학위연수과정</span></a></li>
	<li><a href="#"><span>마이크로디그리과정</span></a></li>
	<li><a href="#"><span>산학협동공개강좌</span></a></li>
	<li><a href="sub_02a.php"><span>Education 4.0Q</span></a></li>
	<li><a href="sub_02c.php"><span>영재교육</span></a></li>
	<li><a href="sub_02d.php"><span>IT교육</span></a></li>
	<li><a href="#"><span>정부관료/공직자연수</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육과정</span></a>
	<ul class="depth2">
	<li><a href="#"><span>비학위연수과정</span></a></li>
	<li><a href="#"><span>마이크로디그리과정</span></a></li>
	<li><a href="#"><span>산학협동공개강좌</span></a></li>
	<li><a href="#"><span>정부관료/공직자연수과정</span></a></li>
	<li><a href="sub_03g.php"><span>온라인교육과정(Education 4.0Q)</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>온라인 프로그램</span></a>
	<ul class="depth2">
	<li><a href="sub_03c.php"><span>MOOCs</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>커뮤니티</span></a>
	<ul class="depth2">
	<li><a href="#"><span>공지사항</span></a></li>
	<li><a href="#"><span>교육문의</span></a></li>
	<li><a href="#"><span>FAQ</span></a></li>
	<li><a href="#"><span>갤러리</span></a></li>
	</ul>
	</li>


</ul>
<!--카테고리끝-->

<!--고객센터-->
<!-- <ul>
<li class="t_pad_30 text-right r_pad_20 gray_03 c_show">
<div class="b_pad_5">Tel : 042.350.6041</div>
<div class="b_pad_5">FAX : 042.350-6040</div>
</li>
</ul> -->
<!--고객센터-->

</div>
<!--메뉴끝-->

</div>
<button type="button" class="btn-gnb-close ico-close"><span class="blind">메뉴닫기</span></button>
</nav>
</div>
</header>
</div>
<!--메뉴끝-->

<!-- 메뉴 형식 -->

<!-- 메뉴는 기초 만들어두시면 그에 맞게 개발될 예정 -->