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
      width: 100%;
    }
    #select_table td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: left;
    }
    
    /* 1번, 2번 요구사항 */
    #select_table td:first-child {
      background-color: #f2f2f2;
      font-weight: bold; /* 굵은 글씨 */
      color: blue; /* 파란색 글씨 */
      width: 10%;
    }

    /* 3번 요구사항 */
    #select_table td input[type="checkbox"] + label {
      margin-right: 15px; /* 간격 */
      font-weight: bold;  /* 굵은 글씨 */
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
        }
        
        #search-box .action-buttons button {
        	font-family: inherit;
    		outline: none;
        	margin-right: 5px;
        	padding: 10px 24px;
    		font-size: 14px;
            background-color: white;
            border: 1px solid black;
            border-radius: 999px;
			cursor: pointer;
		    border: 1px solid #222;
		    vertical-align: middle;
		    border-radius: 999px;
		    font-weight: 400;
		    line-height: 18px;
        }
        
	    /* 게시물 스타일 */
    .post-container {
      display: flex;
      flex-wrap: wrap;
    }
    .post {
      width: 18%;
      height: 300px;
      border: 1px solid black;
      border-radius: 20px;
      margin: 1%;
      overflow: hidden;
    }
    .post-image {
      height: 40%;
      width: 100%;
    }
    .post-content {
      height: 60%;
      padding: 10px;
    }
    .post-title {
      font-weight: bold;
    }
    .post-preview {
      overflow: hidden;
      text-overflow: ellipsis;
      display: -webkit-box;
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
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
	 <div id="search-box">
        <!-- Search Container -->
        <div class="search-container">
            <input type="text" placeholder="Search">
            <button class="search-button" onclick="search()">🔍</button> <!-- You can replace this with an image -->
        </div>
        
        <!-- Action Buttons -->
        <div class="action-buttons">
            <button class="reset-button" onclick="tag_check_out()">초기화</button>
            <button class="detail-button" id="detail-button" onclick="select_table()">상세 검색</button>
        </div>
    </div>
    <div>
			<table id="select_table">
				<tbody>
					<tr>
						<td><span>분야</span></td>
						<td>
							<c:forEach items="${model.filedTags }" var="item" varStatus="status">
							<input type="checkbox" name="tag" value="%23분야:${item.name }" <c:if test="${fn:contains(model.beforeData.tags , item.name)  }">checked</c:if> ><label>${item.name }</label>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td><span class="list_t">영역</span></td>
						<td>
							<c:forEach items="${model.AreaTags }" var="item" varStatus="status">
							<input type="checkbox" name="tag" value="%23영역:${item.name }" <c:if test="${fn:contains(model.beforeData.tags , item.name)  }">checked</c:if> ><label>${item.name }</label>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td><span class="list_t">난이도</span></td>
						<td>
							<c:forEach items="${model.DiffTags }" var="item" varStatus="status">
							<input type="checkbox" name="tag" value="%23난이도:${item.name }" <c:if test="${fn:contains(model.beforeData.tags , item.name)  }">checked</c:if> ><label>${item.name }</label>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td><span class="list_t">과정</span></td>
						<td>
							<c:forEach items="${model.ProcessTags }" var="item" varStatus="status">
							<input type="checkbox" name="tag" value="%23과정:${item.name }" <c:if test="${fn:contains(model.beforeData.tags , item.name)  }">checked</c:if> ><label>${item.name }</label>
							</c:forEach>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
</div>
<!-- 타이트끝 -->

<!-- 콘텐츠 -->
<div class="container">
  <div class="post-container">
  	<c:forEach var="item" items="${model.list}" varStatus="status">
    <div class="post" onclick="location.href='/view/program/view.do?idx=${item.idx}'">
      <div class="post-image" style="background-image: url('/resources/upload/program/image/${item.image}');"></div>
      <div class="post-content">
        <div class="post-title">${item.title }</div>
        <div class="post-preview">${item.content }</div>
        <div class="post-time">${fn:substring(item.start_tm,0,11) } ~ ${fn:substring(item.end_tm,0,11) }</div>
      </div>
    </div>
    </c:forEach>
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