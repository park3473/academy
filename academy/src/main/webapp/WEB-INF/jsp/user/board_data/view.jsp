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

<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>

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


                </div>
            </div>
        </div>
    </div>
</div>
<div class="tit_01 font_noto f_wet_01 container"><span class="f_wet_07">${model.BoardConfig.name }</span></div> 
</div>

<!-- 상단탭끝 -->

<!-- 서브시작 -->
<div class="sub_wrap-1">
<!-- 내용 -->
<!-- 썸네일 게시판 타입 -->
<c:if test="${model.BoardConfig.type == '1' }">
<div class="container">
    <div class="tb_bo_tit_01 font_noto f_wet_05">
		${model.view.title }
	</div>
    <div class="row">
        <div class="col-sm-5 wid_img">
            <img src="/resources/upload/file/${model.view.image }" alt="Thumbnail">
        </div>
        <div class="col-sm-7">
            <table class="tb-bordered" style="width:100%;">
            <tbody>
            <tr>
                <td>작성자</td>
                <td>${model.view.name }</td>
            </tr>
            <tr>
                <td>조회수</td>
                <td>${model.view.rdcnt }</td>
            </tr>
			<tr>
                <td>작성일시</td>
                <td>${fn:substring(model.view.create_tm,0,11) }</td>
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
			<div class="ck-content">
            	${model.view.content }
        	</div>
        </div>
    </div>
</div>
</c:if>

<!-- 내용끝 -->


<!-- 내용 -->
<!-- 일반 게시판 타입 -->
<c:if test="${model.BoardConfig.type == '0' }">
<div class="container">
	<div class="tb_view" style="margin-bottom:100px;">
		<p class="title" style="margin-bottom:1rem;">${model.view.title }</p>
		<div class="top_info">
		<span class="name">${model.view.name }</span><span class="hit">조회 ${model.view.rdcnt }회</span><span class="date">작성일 ${fn:substring(model.view.create_tm , 0,11) }</span>
		<!-- 파일 부분 -->
		</div>
		<div class="contents ck-content">
			${model.view.content }	
		</div>
	</div>
</div>
</c:if>

<!-- 내용끝 -->

</div>
<!-- 서브끝 -->

<!-- content end -->

<!--공통하단-->
<%@ include file="../../include/user/footer.jsp" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">

</script>