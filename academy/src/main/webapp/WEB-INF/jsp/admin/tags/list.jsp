<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="../include/header.jsp" %>

<script src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/sweetalert/sweetalert2.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

</head>

<style>
	#bootstrap-data-table tr th{
	
	text-align: center;
	
	}
	
	#select_table tr td{
		border:1px solid black;
	}
	
</style>

<body>
    <!--헤더-->
	<%@ include file="../include/menu.jsp" %>
    <!--헤더 end-->

    <!--본문-->
    <section id="adm_sc">
        <div id="adm_sc_area">
            <div id="adm_sc_con">
                <div class="adm_sc_size">

                    <!--본문 내용-->
                    <section class="adm_sc_txt">
                        <div class="sc_con">
                            <div class="title">
                                <span></span>
                                <span>태그 관리</span>
                            </div>
                            
                            	<!--관리자 버튼-->
                            <div class="page_seach">
                                <div class="adm_btn_wrap stats_btn_area" style="margin-bottom:0px;">
                                    <ul>
                                    <li class="delete">
                                        <button onclick="tags_modal('insert')">태그 생성</button>
                                    </li>
                                </ul>
                                </div>
                            </div>
                            
                            <div class="table_wrap">
                                <table id="bootstrap-data-table">
                                  <tr>
								    <th>그룹명</th>
								    <th>명칭들</th>
								  </tr>
								  <c:forEach var="entry" items="${model.groupedTags}">
								    <tr>
								      <td>${entry.key}</td>
								      <td>
								        <c:forEach var="tag" items="${entry.value}">
								          <span onclick="tags_view(this)" tag_name="${tag.name}" tag_group="${entry.key}" tag_idx="${tag.idx}" style="cursor:pointer">#${tag.name}</span>&nbsp;
								        </c:forEach>
								      </td>
								    </tr>
								</c:forEach>
								</table>
                            </div>
                        </div>
                    </section>
                    <!--본문 내용 end-->
                </div>
            </div>
        </div>
    </section>
    <!--본문 end-->
    <form id="tags_form" action="/admin/tags/insert.do" method="POST" style="display:none">
    	<input type="text" name="group">
    	<input type="name" name="name">
    </form>

    <!--푸터-->
    <footer>
	<%@ include file="../include/footer.jsp" %>
    </footer>
    <!--푸터 end-->

</body>
<script>

$(document).ready(function () {
	
	$(".adm_menu_con > li").eq(3).find(".sub_menu_con").show();
	$(".adm_menu_con > li").eq(3).css({
	    backgroundColor: "#fff"
	});
});

function search(){
	
	let tagsStr = [];
	$('input[name="tag"]:checked').each(function(i, field) {
        tagsStr.push(field.value);
    });
    tagsStr = tagsStr.join("");
	
	location.href='/admin/program/list.do?tags='+tagsStr;
	
}


function tags_modal(model_type) {
	Swal.fire({
	    title: '태그 등록',
	    html:
	      '<label>그룹</label><input id="swal-input1" class="swal2-input" placeholder="group"><br>' +
	      '<label>명칭</label><input id="swal-input2" class="swal2-input" placeholder="name">',
	    focusConfirm: false,
	    preConfirm: () => {
	      const group = document.getElementById('swal-input1').value;
	      const name = document.getElementById('swal-input2').value;
	      console.log(`group:`+group+`, name: `+name+``);  // 값 확인을 위한 콘솔 출력
	      return { group: group, name: name };
	    }
	  }).then((result) => {
	    if (result.isConfirmed) {
	      // 콘솔 출력으로 result.value 확인
	      console.log('Returned result:', result.value);
	      if(result.value.group == '' || result.value.name == ''){
	    	  Swal.fire('빈값은 넣을수 없습니다.');
	      }else{
	    	  $('[name=group]').val(result.value.group);
	    	  $('[name=name]').val(result.value.name);
	    	  $('#tags_form').submit();
	      }
	    }
	  });
}


</script>

</html>

