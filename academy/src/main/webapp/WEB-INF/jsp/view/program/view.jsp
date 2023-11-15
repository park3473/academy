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

.tb-bordered{
width:100%
}

@media only screen and (max-width:992px) {        

.in_sub_sort {display:none}  

}

/* 기존의 테이블 스타일 */
    #select_table {
      border-collapse: collapse;
      width: 100%;border-top:2px #000 solid;margin-top:30px
    }
    #select_table td {
      border-bottom: 1px solid rgba(0,0,0,.1);
      padding: 8px;
      text-align: left;
    }
    
    /* 1번, 2번 요구사항 */
    #select_table td:first-child {
      background-color: #01438f;
      font-weight: bold; /* 굵은 글씨 */
      color:#fff; /* 파란색 글씨 */
      width: 10%;
	  border-bottom: 1px solid rgba(255,255,255,.2);
    }

    /* 3번 요구사항 */
    #select_table td input[type="checkbox"] + label {
      margin-right: 15px; /* 간격 */
      font-weight: bold_;  /* 굵은 글씨 */
	  margin-left:5px;
	  letter-spacing:0;
    }

	 input[type="checkbox"] {
    width: 1rem;
    height: 1rem;
    border-radius: 2px;
    border: 1px solid #dedede;
    appearance: none;
    cursor: pointer;
    transition: background 0.2s;
    margin-top:-3px;
	vertical-align: middle;
  }
  input[type="checkbox"]:checked {
    background: #000;
    border: none;
  }


    /* Search Box and Buttons */
        #search-box {
            display: flex;
            justify-content: space-between;
        }
        
        #search-box .search-container {
            position: relative;
            width: 25%;
        }
        
        #search-box input[type="text"] {
            width: 100%;
            box-sizing: border-box;
        }
        
        #search-box .search-button {
            position: absolute;
            right: 0;
            top: 0;
			font-size:24px;
			background:#000;color:#fff;height:40px;width:60px;line-height:40px;font-weight:bold
        }
        
        #search-box .action-buttons button {
        	font-family: inherit;
    		outline: none;
        	padding: 10px 24px;
    		font-size: 14px;
            background-color:#000;
            border: 1px solid black;
            border-radius: 0px;
			cursor: pointer;
		    border: 1px solid #222;
		    vertical-align: middle;
		    font-weight: 400;
		    line-height: 18px;
			color:#fff
        }
        
	    /* 게시물 스타일 */
    .post-container {
      display: flex;
      flex-wrap: wrap;
    }
    .post {
      width: 18%;
      height: 300px;
      border: 1px solid #dedede;
      border-radius:0px;
      margin: 1%;
      overflow: hidden;
    }
    .post-image {
      height: 50%;
      width: 100%;
    }
    .post-content {
      height: 60%;
      padding: 10px;
    }
    .post-title {
      font-weight: bold;padding-bottom:10px
    }
    .post-preview {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    }
	.post-time{color:#999;font-size:14px}
    
	.tb-bordered {border-top:1px #dedede solid}
	.tb-bordered td{padding:10px;border-bottom:1px #dedede solid}
	.tb-bordered td:first-child{border-right:1px #dedede solid;background:#f4f4f4;width:100px;font-weight:bold}
    .tb_bo_tit_01{font-size:36px;padding-bottom:15px;border-bottom:1px #000 solid;margin-bottom:50px}
	.tb_bo_tit_02{font-size:24px;padding:15px 0;border-bottom:1px #000 solid;border-top:1px #000 solid;margin-bottom:30px;margin-top:50px}
	@media only screen and (max-width:992px) {
	.tb_bo_tit_01{font-size:24px;padding-bottom:15px;margin-bottom:15px}
	.tb_bo_tit_02{font-size:20px;padding:10px 0;margin-bottom:15px;margin-top:30px}
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
<!-- 내용 -->
<div class="container">
    <div class="tb_bo_tit_01 font_noto f_wet_05">
		${model.view.title }
	</div>
    <div class="row">
        <div class="col-sm-5 wid_img">
            <img src="/resources/upload/program/image/${model.view.image }" alt="Thumbnail">
        </div>
        <div class="col-sm-7">
            <table class="tb-bordered" style="width: 100%;">
            <tbody>
            <tr>
                <td>운영조직</td>
                <td>${model.view.operate }</td>
            </tr>
            <tr>
                <td>교육 대상</td>
                <td>${model.view.target }</td>
            </tr>
            <tr>
                <td>교육 장소</td>
                <td>${model.view.place }</td>
            </tr>
            <tr>
                <td>문의처</td>
                <td>${model.view.phone}</td>
            </tr>

<!-- 분야 -->
<c:set var="showField" value="false"/>
<c:forEach items="${model.taglist}" var="item">
    <c:if test="${fn:startsWith(item.name, '분야:')}">
        <c:set var="showField" value="true"/>
    </c:if>
</c:forEach>

<c:if test="${showField}">
    <tr>
        <td>분야</td>
        <td>
            <c:forEach items="${model.taglist}" var="item">
                <c:if test="${fn:startsWith(item.name, '분야:')}">
                    ${fn:substringAfter(item.name, '분야:')}
                </c:if>
            </c:forEach>
        </td>
    </tr>
</c:if>

<!-- 난이도 -->
<c:set var="showLevel" value="false"/>
<c:forEach items="${model.taglist}" var="item">
    <c:if test="${fn:startsWith(item.name, '난이도:')}">
        <c:set var="showLevel" value="true"/>
    </c:if>
</c:forEach>

<c:if test="${showLevel}">
    <tr>
        <td>난이도</td>
        <td>
            <c:forEach items="${model.taglist}" var="item">
                <c:if test="${fn:startsWith(item.name, '난이도:')}">
                    ${fn:substringAfter(item.name, '난이도:')}
                </c:if>
            </c:forEach>
        </td>
    </tr>
</c:if>

<!-- 과정 -->
<c:set var="showCourse" value="false"/>
<c:forEach items="${model.taglist}" var="item">
    <c:if test="${fn:startsWith(item.name, '과정:')}">
        <c:set var="showCourse" value="true"/>
    </c:if>
</c:forEach>

<c:if test="${showCourse}">
    <tr>
        <td>과정</td>
        <td>
            <c:forEach items="${model.taglist}" var="item">
                <c:if test="${fn:startsWith(item.name, '과정:')}">
                    ${fn:substringAfter(item.name, '과정:')}
                </c:if>
            </c:forEach>
        </td>
    </tr>
</c:if>

<!-- 영역 -->
<c:set var="showDomain" value="false"/>
<c:forEach items="${model.taglist}" var="item">
    <c:if test="${fn:startsWith(item.name, '영역:')}">
        <c:set var="showDomain" value="true"/>
    </c:if>
</c:forEach>

<c:if test="${showDomain}">
    <tr>
        <td>영역</td>
        <td>
            <c:forEach items="${model.taglist}" var="item">
                <c:if test="${fn:startsWith(item.name, '영역:')}">
                    ${fn:substringAfter(item.name, '영역:')}
                </c:if>
            </c:forEach>
        </td>
    </tr>
</c:if>


			<tr>
                <td>운영기간</td>
                <td>${fn:substring(model.view.start_tm,0,11) } ~ ${fn:substring(model.view.end_tm,0,11) }</td>
            </tr>
			<tr>
                <td>설명</td>
                <td>${model.view.explan }</td>
            </tr>
            </tbody>
            </table>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-sm-12">
		<div class="tb_bo_tit_02 font_noto f_wet_05">
			세부내용
		</div>
            ${model.view.content }
        </div>
    </div>
</div>

<!-- 내용끝 -->
</div>
<!-- 서브끝 -->

<!-- content end -->

<!--공통하단-->
<%@ include file="../../include/user/footer.jsp" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">
function search(){
	
	let tagsStr = [];
	$('input[name="tag"]:checked').each(function(i, field) {
        tagsStr.push(field.value);
    });
    tagsStr = tagsStr.join("");
	
	location.href='/view/program/list.do?tags='+tagsStr;
	
}

function select_table(){
	
	$('#select_table').toggle();
		
}

function tag_check_out(){
	
	$('input[name="tag"]').prop('checked', false);
	
}

</script>