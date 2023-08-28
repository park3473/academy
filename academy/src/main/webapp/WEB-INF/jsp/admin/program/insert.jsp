<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="../include/header.jsp" %>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- ckeditor필요한 부분 -->
<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.datetimepicker.css">
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<style>
	/*admin css 와 ckeditor css 충돌나서 바꿔버림*/
	.member_input_wrap .member_input button {
    margin-left: 0px !important;
	}
	.member_input_wrap .member_input textarea {
    	width: 100%;
    	height: 100%;
    	padding: 0px;
    }
</style>
<!-- ckeditor필요한 부분 -->

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
                	<div>
                    <form action="./insert.do" method="post" name="insertForm" id="insertForm" enctype="multipart/form-data">
                        <input type="hidden"  name="csrf" value="${CSRF_TOKEN}" />
                        <input type="hidden" name="member_id" value="${sessionScope.UserId }"  />
                        <input type="hidden" name="name" value="${sessionScope.UserName }"  />
                        <input type="hidden" name="image_change_bool" value="false" />
                        <div class="sc_con" id="div_con">
                            <div class="title">
                                <span></span>
                                <span>게시글 등록</span>
                            </div>
                            <div class="member_register_wrap">
                                <div class="member_input_wrap">
                                    <ul class="member_input">
                                        <li>
                                        	<span class="list_t">프로그램 명</span>
                                        	<input class="input_title" type="text" name="title" id="title" >
                                        </li>
                                        <li>
                                        	<span class="list_t">분야</span>
                                        	<c:forEach items="${model.filedTags }" var="item" varStatus="status">
                                        	${item.name }<input type="checkbox" name="tag" value="${item.idx }">
                                        	</c:forEach>
                                        	<br>
                                        	<span class="list_t">영역</span>
                                        	<c:forEach items="${model.AreaTags }" var="item" varStatus="status">
                                        	${item.name }<input type="checkbox" name="tag" value="${item.idx }">
                                        	</c:forEach>
                                        	<br>
                                        	<span class="list_t">난이도</span>
                                        	<c:forEach items="${model.DiffTags }" var="item" varStatus="status">
                                        	${item.name }<input type="checkbox" name="tag" value="${item.idx }">
                                        	</c:forEach>
                                        	<br>
                                        	<span class="list_t">과정</span>
                                        	<c:forEach items="${model.ProcessTags }" var="item" varStatus="status">
                                        	${item.name }<input type="checkbox" name="tag" value="${item.idx }">
                                        	</c:forEach>
                                        	
                                        </li>
                                        <li>
                                        	<div style="width:227px;heigth:295px;">
											<img style="width:100%;height:100%;object-fit:cover" id="preview_img" src="" alt="no"/>
											</div>
                                           	<span class="list_t">썸네일 선택</span>
                                            <input type="file" id="file1" name="file1" onchange="changeValue(this)">
											<input type="hidden" id="image" name="image">
                                        </li>
                                        <li>
                                        	<span class="list_t">운영 조직</span>
                                        	<input type="text" name="operate" id="operate" />
                                        </li>
                                        <li>
                                        	<span class="list_t">운영 시간</span>
                                        	<input type="text" name="start_tm" id="start_tm" class="input_size mr datecalendar2" />
                                        	-
                                        	<input type="text" name="end_tm" id="end_tm" class="input_size mr datecalendar2"/>
                                        </li>
                                        <li>
                                        	<span class="list_t">설명</span>
                                        	<input type="text" name="explan" id="explan" class="input_title" />
                                        </li>
                                        <li>
                                        	<span class="list_t">프로그램 내용</span>
                                        	<textarea id="editor"></textarea>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!--저장하기 버튼-->
                        <div class="register_btn_area">
                            <div class="register_btn_con">
                                <a class="storage" href="javascript:insertClick()">프로그램 저장</a>
                                <a class="cancel" href="javascript:history.back()">취소하기</a>
                            </div>
                        </div>
                        <!--저장하기 버튼 end-->
                        </form>
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

<!--  JQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.datetimepicker.full.min.js"></script>


</body>
</html>
<script type="text/javascript">
$(document).ready(function () {
	
	$(".adm_menu_con > li").eq(3).find(".sub_menu_con").show();
	$(".adm_menu_con > li").eq(3).css({
	    backgroundColor: "#fff"
	});
});

//ckeditor5
ClassicEditor
.create( document.querySelector( '#editor' ), {
    language: 'ko' //언어설정
})
.then( contents => {
theEditor = contents; // #contents에 있는 값을 theEditor에 넣어놓는다.
} )
.catch( error => {
    console.error( error );
} );


function insertClick()
{

	if($('#title').val() == '')
	{
		alert('제목을 입력 하여 주세요');
		return;
	}

	var formData = new FormData($('#insertForm')[0]);
	formData.append('content',theEditor.getData());
	let tagsStr = [];
    $('input[name="tag"]:checked').each(function(i, field) {
        tagsStr.push(field.value);
    });
    tagsStr = tagsStr.join(",");  // 쉼표를 사용하여 문자열로 합칩니다.

    // FormData 객체에 문자열을 추가한다.
    formData.append('tags', tagsStr);
	
	$.ajax({
		url : '/admin/program/insert.do',
		type : 'POST',
		data : formData,
		processData :false,
		contentType:false,
		success : function(result , status){
			console.log('success : ' + result);
		},
		error : function(xhr , status , error){
			console.log('error : ' , error);
		}
		
	})
	
}

$.datetimepicker.setLocale('ko');
$('.datecalendar2').datetimepicker({
    format:'Y-m-d H:00:00',
    lang: "ko",
    timepicker:true
});


//파일 이름 변경 함수
function changeValue(obj){
    var fileObj = obj.value;
    var pathHeader , pathMiddle, pathEnd, allFilename, fileName, extName;
    pathHeader = fileObj.lastIndexOf("\\");
    pathMiddle = fileObj.lastIndexOf(".");
    pathEnd = fileObj.length;
    fileName = fileObj.substring(pathHeader+1, pathMiddle);
    extName = fileObj.substring(pathMiddle+1, pathEnd);
    allFilename = fileName+"."+extName;

    $('#image').val(allFilename);
    
    $('#image_change_bool').val('true');
}

//프로필 사진 미리보기
function preview_img(input){
	const reader = new FileReader();
	reader.onload = e => {
		const previewImage = document.getElementById('preview_img');
		previewImage.src = e.target.result
	}
	
	reader.readAsDataURL(input.files[0]);
	
}

//프로필 사진 등록 함수 이벤트 설정
const inputImage = document.getElementById('file1')
inputImage.addEventListener('change' , e => {
	preview_img(e.target);
})

</script>