<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--삭제금지-->
<!DOCTYPE html>
<html lang="ko">

<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

<!--공통 헤더 시작-->
<%@ include file="../../include/user//header.jsp" %>
<%@ include file="../../include/user/menu.jsp" %>
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



.view-container {
  display: flex;
  flex-direction: column;
  width: 100%;
}

/* Header Section */
.view-header {
  display: flex;
  flex-direction: row;
}

.thumbnail {
  width: 40%;
}

.thumbnail img {
  width: 100%;
  height: auto;
}

.view-info {
  flex: 1;
  padding-left: 20px;
}

.view-title {
  font-size: 24px;
}

/* Related Info Section */
.related-info {
  margin-top: 10px;
}

.info-item {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
  border-bottom:1px #dedede solid;
}

.info-label {
  font-weight: normal;
  width: 15%;text-align:left;font-weight:bold;border-right:1px #dedede solid;padding:7px 20px 0 0;border-collapse: collapse;
}
.info-value{width:85%;padding-left:20px}

.thin-divider {
  height: 1px;
  background: grey;
  margin: 10px 0;
}

.thick-divider {
  height: 3px;
  background: black;
  margin: 10px 0;
}

/* Content Section */
.view-content {
  display: flex;
  flex-direction: column;
  margin-top: 20px;
}

.content-title {
  flex: 1;
  font-size: 24px;
}

.vertical-divider {
  height: 100%;
  width: 1px;
  background: grey;
  margin: 0 20px;
}

.content-body {
  flex: 3;
  margin-top: 10px;
  font-size: 16px;
}


        
</style>

<div class="container">
<div class="row">
<div class="container in_sub_sort">
<div class="row">
<div class="col">
  

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

<!-- 콘텐츠 -->
<div class="container" style="margin-top:50px;">
	<div class="view-container">
  <div class="view-header">
    <div class="thumbnail"><img src="/resources/upload/program/image/${model.view.image }" alt="Thumbnail"></div>
    <div class="view-info">
      <div class="view-title"><strong>${model.view.title }</strong></div>
      <div class="related-info">
        <strong>관련정보</strong>
        <div class="thin-divider"></div>
        <div class="info-item">
          <span class="info-label">운영 조직</span>
          <span class="info-value">${model.view.operate }</span>
        </div>
        <div class="info-item">
          <span class="info-label">문의처</span>
          <span class="info-value">카이스트 교육원</span>
        </div>
        
        <!-- 분야 -->
        <div class="info-item">
          <span class="info-label">분야</span>
          <span class="info-value">
          	<c:forEach items="${model.taglist }" var="item" varStatus="status">
          		<c:if test="${fn:startsWith(item.name, '분야:')}">
			        ${fn:substringAfter(item.name, '분야:')}
			    </c:if>
          	</c:forEach>
          </span>
        </div>
        
        <!-- 난이도 -->
        <div class="info-item">
          <span class="info-label">난이도</span>
          <span class="info-value">
          	<c:forEach items="${model.taglist }" var="item" varStatus="status">
          		<c:if test="${fn:startsWith(item.name, '난이도:')}">
			        ${fn:substringAfter(item.name, '난이도:')}
			    </c:if>
          	</c:forEach>
          </span>
        </div>
        
        <!-- 과정 -->
        <div class="info-item">
          <span class="info-label">과정</span>
          <span class="info-value">
          	<c:forEach items="${model.taglist }" var="item" varStatus="status">
          		<c:if test="${fn:startsWith(item.name, '과정:')}">
			        ${fn:substringAfter(item.name, '과정:')}
			    </c:if>
          	</c:forEach>
          </span>
        </div>
        
        <!-- 영역 -->
        <div class="info-item">
          <span class="info-label">영역</span>
          <span class="info-value">
          	<c:forEach items="${model.taglist }" var="item" varStatus="status">
          		<c:if test="${fn:startsWith(item.name, '영역:')}">
			       ${fn:substringAfter(item.name, '영역:')}
			    </c:if>
          	</c:forEach>
          </span>
        </div>
        
        
        <div class="info-item">
          <span class="info-label">운영기간</span>
          <span class="info-value">${fn:substring(model.view.start_tm,0,11) } ~ ${fn:substring(model.view.end_tm,0,11) }</span>
        </div>
        <div class="info-item">
          <span class="info-label">설명</span>
          <span class="info-value">${model.view.explan }</span>
        </div>
      </div>
    </div>
  </div>
  
  <div class="view-content">
    <div class="content-title">세부내용</div>
    <div class="thin-divider vertical-divider"></div>
    <div class="thick-divider"></div>
    <div class="content-body">
      ${model.view.content }
    </div>
  </div>
  <div class="thick-divider"></div>
</div>
           

</div>
<!-- 콘텐츠끝 -->

</div>
<!-- 서브끝 -->

<!-- content end -->

<!--공통하단-->
<%@ include file="../../include/user/footer.jsp" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">

</script>