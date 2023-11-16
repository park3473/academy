<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="../include/header.jsp" %>
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
                                <span>프로그램 관리</span>
                            </div>
                            <div class="member_seach_form">
                                <div class="member_01_wrap">
                                     <form>
                                            <div class="form_01">
                                                <div class="page">
                                                	<table id="select_table">
                                                		<tbody>
                                                		<c:forEach var="entry" items="${model.groupedTags}">
											            <tr>
											              <td>${entry.key}</td>
											              <td>
											                <c:forEach var="tag" items="${entry.value}">
											                  <input type="checkbox" name="tags" value="%23${tag}" 
											                 	<c:if test="${model.beforeData.tags.contains(tag)}">
																  checked="checked"
																</c:if>> ${tag}
											                </c:forEach>
											              </td>
											            </tr>
											          </c:forEach>
                                                		</tbody>
                                                	</table>
                                                </div>
                                         </div>
                                         <button type="button" onclick="search()">검색</button>
                                     </form>
                                 </div>
                            </div>
                            
                            <div class="table_wrap">
                                <table id="bootstrap-data-table">
                                    <tr>
                                        <th class="number">번호</th>
                                        <th class="title">제목</th>
                                        <th class="operate">운영조직</th>
                                        <th class="oper_tm">운영 시간</th>
                                        <th class="create_tm">생성 일시</th>
                                        <th class="update_tm">수정 일시</th>
                                        <th class="setting">비고</th>
                                    </tr>
                                    <c:forEach var="item" items="${model.list}" varStatus="status">
                                    <tr data-role="button" data-id="${item.idx}"  >
                                        <td>${model.itemtotalcount - (status.index + model.page *  model.itemcount)}</td>
                                        <td>${item.title}</td>
                                        <td>${item.operate}</td>
                                        <td>${fn:substring(item.start_tm,0,11)} ~ ${fn:substring(item.end_tm,0,11)}</td>
                                        <td>
                                            ${fn:substring(item.create_tm,0,11)}
                                        </td>
                                        <td>
                                            ${fn:substring(item.update_tm,0,11)}
                                        </td>
                                        <td>
                                        	<button type="button" onclick="location.href='/admin/program/view.do?idx=${item.idx}'" >프로그램 관리</button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </table>
                            </div>

                            <!--관리자 버튼-->
                            <div class="page_seach">
                                <div class="adm_btn_wrap stats_btn_area">
                                    <ul>
                                    <li class="delete">
                                        <a href="./insert.do">프로그램 생성</a>
                                    </li>
                                </ul>
                                </div>
                            </div>

                            <!--관리자 버튼 end-->


                            <!--페이지 넘버-->
                            <nav class="paging_number">
                                <ul class="page">
                                   <%@ include file="../include/pageing.jsp" %>
                                </ul>
                            </nav>
                            <!--페이지 넘버 end-->
                        </div>
                    </section>
                    <!--본문 내용 end-->
                </div>
            </div>
        </div>
    </section>
    <!--본문 end-->

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
	$('input[name="tags"]:checked').each(function(i, field) {
        tagsStr.push(field.value);
    });
    tagsStr = tagsStr.join("");
	
	location.href='/admin/program/list.do?tags='+tagsStr;
	
}

</script>

</html>

