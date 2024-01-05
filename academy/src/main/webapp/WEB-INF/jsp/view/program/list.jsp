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
  
  input[type="radio"] {
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
  input[type="radio"]:checked {
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
			font-size:24px;
			background:#000;color:#fff;height:40px;width:60px;line-height:40px;font-weight:bold
        }
        
        #search-box .action-buttons{
            position: relative;
    		left: 88%;
        }
        
        #search-box .action-buttons button {
        	font-family: inherit;
    		outline: none;
        	padding: 10px 24px;
    		font-size: 14px;
            background-color:#01438f;
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

<!-- 타이틀 -->
<div class="b_pad_30 container gray_10">
	 <div id="search-box">
        
        <!-- Action Buttons -->
        <div class="action-buttons">
            <button class="reset-button" onclick="location.href='/view/program/list.do'">초기화</button>
            <button class="search-button font_noto" onclick="search()"><i class="las la-search"></i></button>
        </div>
    </div>
    <div>
			<table id="select_table" before-data="${model.beforeData.tags }">
				<tbody>
          <c:forEach var="entry" items="${model.groupedTags}">
            <tr>
              <td>${entry.key}</td>
              <td>
                <c:forEach var="tag" items="${entry.value}">
                  <input type="checkbox" name="tags" value="%23${tag}"> ${tag}
                </c:forEach>
              </td>
            </tr>
          </c:forEach>
          	<tr>
          		<td>상태</td>
          		<td>
          			<input type="radio" name="finish" value="" <c:if test="${model.beforeData.finish == '' }">checked="checked"</c:if> >전체
          			<input type="radio" name="finish" value="no" <c:if test="${model.beforeData.finish == 'no' }">checked="checked"</c:if> >진행과정
          			<input type="radio" name="finish" value="yes" <c:if test="${model.beforeData.finish == 'yes' }">checked="checked"</c:if> >종료과정
          		</td>
          	</tr>
				</tbody>
			</table>
		</div>
</div>
<!-- 타이트끝 -->

<!-- 콘텐츠 -->
<div class="container p-0">
  <div class="post-container">
  	<c:forEach var="item" items="${model.list}" varStatus="status">
    <div class="post pointer" onclick="location.href='/view/program/view.do?idx=${item.idx}'">
      <div class="post-image" style="background-image: url('/resources/upload/program/image/${item.image}'); background-position: center; background-size: cover;"></div>
      <div class="post-content">
        <div class="post-title">${item.title }</div>
        <div class="post-preview">${item.explan }</div>
        <div class="post-time"><strong>기간 : </strong>${fn:substring(item.start_tm,0,11) } ~ ${fn:substring(item.end_tm,0,11) }</div>
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

$(document).ready(function(){
	
	var tags = '${model.beforeData.tags}';
	var tag_list = [];
	tag_list = tags.split('#');
	for(i = 1; i < tag_list.length; i++){
		console.log(tag_list[i]);
		$('input[type="checkbox"][name="tags"][value="%23'+tag_list[i]+'"]').prop('checked', true);
	}
});

function search(){
	
	let tagsStr = [];
	$('input[name="tags"]:checked').each(function(i, field) {
        tagsStr.push(field.value);
    });
    tagsStr = tagsStr.join("");
	
    if($('[name="finish"]:checked').val() == ''){
    	
    	location.href='/view/program/list.do?tags='+tagsStr;
    	
    }else{
    	
    	location.href='/view/program/list.do?tags='+tagsStr+'&finish='+$('[name="finish"]:checked').val();
    	
    }
	
	
}

function select_table(){
	
	$('#select_table').toggle();
		
}

function tag_check_out(){
	
	$('input[name="tag"]').prop('checked', false);
	
}

</script>