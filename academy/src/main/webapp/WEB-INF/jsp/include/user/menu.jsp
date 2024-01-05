
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 메뉴형식 -->

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
<button type="button" class="btn-gnb-close ico-close"><span class="blind">메뉴닫기</span></button>
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

<ul class="gnb-menu gnb-menu-pc ${sessionScope.UserLevel }" id="menu_list">
	<c:if test="${sessionScope.UserLevel == '73' }">
		<script>
			$(document).ready(function(){
				$('#menu_list').find('li').last().append('<li><a href="/admin/index.do">관리자 홈페이지</a></li>');
			})
		</script>
	</c:if>
</ul>

<!-- 
<ul class="gnb-menu gnb-menu-pc">

	<li>
	<a href="/view/subpage/view.do?idx=1"><span>기관소개</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=1"><span>원장인사말</span></a></li>
	<li><a href="/view/subpage/view.do?idx=13"><span>연혁</span></a></li>
	<li><a href="/view/subpage/view.do?idx=2"><span>조직도 및 구성원</span></a></li>
	<li><a href="/view/subpage/view.do?idx=3"><span>부서소개</span></a></li>
	<li><a href="/view/subpage/view.do?idx=4"><span>오시는길</span></a></li>
	</ul>
	</li>

	<li>
	<a href="/view/subpage/view.do?idx=9"><span>교육소개</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=9"><span>비학위연수과정</span></a></li>
	<li><a href="/view/subpage/view.do?idx=10"><span>마이크로디그리 과정</span></a></li>
	<li><a href="/view/subpage/view.do?idx=11"><span>산학협동공개강좌</span></a></li>
	<li><a href="/view/subpage/view.do?idx=5"><span>Education 4.0Q</span></a></li>
	<li><a href="/view/subpage/view.do?idx=6"><span>영재교육</span></a></li>
	<li><a href="/view/subpage/view.do?idx=7"><span>IT교육</span></a></li>
	<li><a href="/view/subpage/view.do?idx=12"><span>정부관료/공직자연수과정</span></a></li>
	</ul>
	</li>

	<li>
	<a href="/view/program/list.do?tags=비학위연수과정"><span>교육과정</span></a>
	<ul class="depth2">
	<li><a href="/view/program/list.do?tags=비학위연수과정"><span>비학위연수과정</span></a></li>
	<li><a href="/view/program/list.do"><span>마이크로디그리과정</span></a></li>
	<li><a href="/view/program/list.do?tags=산학협동공개강좌"><span>산학협동공개강좌</span></a></li>
	<li><a href="/view/program/list.do"><span>정부관료/공직자연수과정</span></a></li>
	</ul>
	</li>

	<li>
	<a href="/view/subpage/view.do?idx=8"><span>온라인 컨텐츠</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=8"><span>MOOCs</span></a></li>
	</ul>
	</li>

	<li>
	<a href="/user/board_data/list.do?board_idx=1"><span>커뮤니티</span></a>
	<ul class="depth2">
	<li><a href="/user/board_data/list.do?board_idx=1"><span>공지사항</span></a></li>
	<li><a href="/user/board_data/insert.do?board_idx=3"><span>교육문의</span></a></li>
	<li><a href="/user/board_data/list.do?board_idx=4"><span>FAQ</span></a></li>
	<li><a href="/user/board_data/list.do?board_idx=2"><span>갤러리</span></a></li>
	</ul>
	</li>


</ul>

-->

<ul class="gnb-menu gnb-menu-mo">
	<li>
	<a href="#"><span>기관소개</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=1"><span>원장인사말</span></a></li>
	<li><a href="/view/subpage/view.do?idx=13"><span>연혁</span></a></li>
	<li><a href="/view/subpage/view.do?idx=2"><span>조직도 및 구성원</span></a></li>
	<li><a href="/view/subpage/view.do?idx=3"><span>부서소개</span></a></li>
	<li><a href="/view/subpage/view.do?idx=4"><span>오시는길</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육소개</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=9"><span>비학위연수과정</span></a></li>
	<li><a href="/view/subpage/view.do?idx=10"><span>마이크로디그리 과정</span></a></li>
	<li><a href="/view/subpage/view.do?idx=11"><span>산학협동공개강좌</span></a></li>
	<li><a href="/view/subpage/view.do?idx=5"><span>Education 4.0Q</span></a></li>
	<li><a href="/view/subpage/view.do?idx=6"><span>영재교육</span></a></li>
	<li><a href="/view/subpage/view.do?idx=7"><span>IT교육</span></a></li>
	<li><a href="/view/subpage/view.do?idx=12"><span>정부관료/공직자연수과정</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>교육과정</span></a>
	<ul class="depth2">
		<li><a href="/view/program/list.do?tags=비학위연수과정"><span>비학위연수과정</span></a></li>
	<li><a href="/view/program/list.do"><span>마이크로디그리과정</span></a></li>
	<li><a href="/view/program/list.do?tags=산학협동공개강좌"><span>산학협동공개강좌</span></a></li>
	<li><a href="/view/program/list.do"><span>정부관료/공직자연수과정</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>온라인 컨텐츠</span></a>
	<ul class="depth2">
	<li><a href="/view/subpage/view.do?idx=8"><span>MOOCs</span></a></li>
	</ul>
	</li>

	<li>
	<a href="#"><span>커뮤니티</span></a>
	<ul class="depth2">
	<li><a href="/user/board_data/list.do?board_idx=1"><span>공지사항</span></a></li>
	<li><a href="/user/board_data/insert.do?board_idx=3"><span>교육문의</span></a></li>
	<li><a href="/user/board_data/list.do?board_idx=4"><span>FAQ</span></a></li>
	<li><a href="/user/board_data/list.do?board_idx=2"><span>갤러리</span></a></li>
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
</nav>
</div>
</header>
</div>
<!--메뉴끝-->

<!-- 메뉴 형식 -->

<!--메뉴-->
<style>
	.gnb-menu-pc {display:block !important;}
	.gnb-menu-mo {display:none !important;}

	@media screen and (max-width:768px) {
	.gnb-menu-pc {display:none !important;}
	.gnb-menu-mo {display:block !important;}
	}
</style>

<!-- 메뉴는 기초 만들어두시면 그에 맞게 개발될 예정 -->