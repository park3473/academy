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



	@media only screen and (max-width:992px) {
	.post-container {padding:0 10px}
	.post {width:48%}
	#search-box .search-container {width:60%;}
	.reset-button{display:none}
	}
	
	.bttn_01 {
    display: block;
    padding: 10px 20px;
    text-align: center;
    color: #fff;
    background: #01438f;
    border-radius: 6px;
    transition-duration: 0.3s;
    border: 1px solid #01438f;
}

	#bttn_01_div{
		width: 8rem;
	    float:right;
	}
	
        
</style>

<div class="container">
<div class="row">
<div class="container in_sub_sort">
<div class="row">
<div class="col">
<ul class="nav gab_04">
<li><a class="nav-link" href="/user/board_data/list.do?board_idx=1">공지사항</a></li>
<li><a class="nav-link" href="/user/board_data/list.do?board_idx=1">교육문의</a></li>
<li><a class="nav-link" href="/user/board_data/list.do?board_idx=1">FAQ</a></li>
<li><a class="nav-link" href="/user/board_data/list.do?board_idx=2">갤러리</a></li>
</ul>
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

<!-- 타이틀 -->
<div class="b_pad_30 container gray_10">



</div>
<!-- 타이트끝 -->

<!-- 썸네일 게시판 -->
<c:if test="${model.BoardConfig.type == '1' }">
<!-- 콘텐츠 -->
<div class="container p-0">
  <div class="post-container">
  	<c:forEach var="item" items="${model.BoardDataList}" varStatus="status">
    <div class="post pointer" onclick="location.href='/user/board_data/view.do?idx=${item.idx}&board_idx=${item.board_idx }'">
      <div class="post-image" style="background-image: url('/resources/upload/file/${item.image}');background-position: center; background-size: cover;"></div>
      <div class="post-content">
        <div class="post-title">${item.title }</div>
        <div class="post-preview">${item.name }</div>
        <div class="post-time"><strong>작성일시 : </strong>${fn:substring(item.create_tm,0,11) }</div>
      </div>
    </div>
    </c:forEach>
  </div>

           

</div>
<!-- 콘텐츠끝 -->
</c:if>
<!-- 썸네일 게시판 -->

<!-- 일반 게시판 -->
<c:if test="${model.BoardConfig.type == '0' || model.BoardConfig.type == '2'}">
<!-- 콘텐츠 -->
<div class="container p-0">
 
	<!-- 리스트 -->
	<div class="tb_list align_c">
	<table class="table">
	<thead>
	<tr>
	<th class="no">번호</th>
	<th>제목</th>
	<th class="write">작성자</th>
	<th class="date">작성일시</th>
	</tr>
	</thead>
	
	<tbody>
	
	<c:forEach var="item" items="${model.BoardDataList}" varStatus="status">
	<tr>
	<td class="no">${model.itemtotalcount - (status.index + model.before.PAGE *  model.before.ITEM_COUNT)}</td>
	<td class="subject"><a href="${pageContext.request.contextPath}/user/board_data/view.do?idx=${item.idx}&board_idx=${item.board_idx }">${item.title}</a></td>
	<td class="write">${item.name}</td>
	<td class="date">${fn:substring(item.create_tm , 0,11)}</td>
	</tr>
	</c:forEach>
	
	</tbody>
	</table>
	</div>
	<!-- 리스트 끝-->
	
	<!-- 페이징 -->
	<div class="tb_page">
	<ul class="pagination">
	    <c:if test="${model.page > 0}">
	        <c:if test="${model.itempagestart-model.itemCount > 0}">
	           <li class="page-item"><a class="page-link" href="javascript:pageChanged(${model.page-1}, ${model.itempageend});">PREV</a></li> 
	        </c:if>
	        <c:if test="${model.itempagestart-model.itemCount <= 0}">
	            <li class="page-item"><a class="page-link" href="javascript:pageChanged(${model.page-1}, ${model.itempageend});">PREV</a></li> 
	        </c:if>
	    </c:if>
	    <c:if test="${model.page <= 0}">
	        <li class="page-item"><a class="page-link" href="#">PREV</a></li> 
	    </c:if>
	    <c:if test="${model.itempageend > 0}">
	        <c:forEach var="i" begin="${model.itempagestart}" end="${model.itempageend}">
	            <c:choose>
					<c:when test="${model.page == i }">
						<li class="page-item active"><a class="page-link" href="#">${i+1}</a></li>
					</c:when>
					<c:otherwise>
		               <li class="page-item"><a class="page-link" href="javascript:pageChanged(${i}, ${model.itempageend});">${i+1}</a></li>
	                </c:otherwise>
	            </c:choose>
	        </c:forEach>   
	    </c:if>
	    <c:if test="${model.itempageend == 0}">
	        <li class="page-item active"><a class="page-link">1</a></li>
	    </c:if>
	    <c:if test="${model.itempageend < 0}">
	        <li class="page-item"><a class="page-link">1</a></li>
	    </c:if>
	    <c:if test="${model.itemCount < model.itemtotalcount/(model.page+1)}">
	        <li class="page-item"><a class="page-link" href="javascript:pageChanged(${model.page+1}, ${model.itemtotalpage});">NEXT</a></li>
	    </c:if>
	    <c:if test="${model.itemCount >= model.itemtotalcount/(model.page+1)}">
	        <li class="page-item"><a class="page-link" href="#">NEXT</a></li>
	    </c:if>
	</ul>
	</div>
	<!-- 페이징 끝-->
	
	
	<c:if test="${model.BoardConfig.type == '2' }">
	<div class="tb_page">
		<div id="bttn_01_div">
			<button type="button" class="bttn_01" onclick="location.href='/user/board_data/insert.do?board_idx=${model.BoardConfig.idx}'" >문의 작성</button>
		</div>
	</div>
	</c:if>
	
</div>
<!-- 콘텐츠끝 -->
</c:if>
<!-- 썸네일 게시판 -->


</div>
<!-- 서브끝 -->

<!-- content end -->

<!--공통하단-->
<%@ include file="../../include/user/footer.jsp" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">



</script>