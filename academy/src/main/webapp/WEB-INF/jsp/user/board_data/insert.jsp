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
	
	.sub_tit_txt {position:absolute;width:100%}
.sub_tit_line {border-bottom:2px #243558 solid;padding:0 0 5px 0}
.sub_tit_chach {color:rgba(255,255,255,1);font-size:40px;margin-top:32vh;letter-spacing:0}
.small_txt {padding-top:30px}
.sub_tit {text-align:center;position:relative}
#bo_w .bo_w_info .frm_input{float:left;width:33%;}
#bo_w .write_div{margin:10px 0;position:relative;}
#bo_w .bo_w_info .frm_input{float:left;width:33%;}
.btn_confirm {text-align:right;}
a.btn_cancel {display:inline-block;border:1px solid #dedede;background:#f4f4f4;color:white;text-decoration:none;vertical-align:middle;}
a.btn,.btn{line-height:35px;height:35px;padding:0 15px !important;text-align:center;border-radius:3px;font-weight:normal;border:0;font-size:13px;background: #01438f;color:white;}
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
<!-- 일반 게시판 타입 -->
<c:if test="${model.BoardConfig.type == '2' }">
<div class="sub_tit">
<div class="sub_tit_txt">
<div class="txt_40 f_wet_03 gray_10 spa_01 font_noto">
			<!--타이틀조건출력-->
					<span class="sub_tit_line" title="CONTACT US ">CONTACT US </span>
				<!--타이틀조건출력끝-->
</div>
</div>
</div>
<div class="container b_pad_15">

<section id="bo_w">

    <!-- 게시물 작성/수정 시작 { -->
    <form name="fwrite" id="fwrite" action="http://leeyunbio.com/bbs/write_update.php" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off" style="width:100%">
    

<div class="font_noto f_wet_05 txt_20">고객정보</div>

    <div class="bo_w_info write_div">
        <input type="text" name="company" value="" id="company" required="" class="frm_input required" placeholder="회사명">
        <input type="text" name="name" value="" id="name" required="" class="frm_input gab required" placeholder="담당자명">
        <input type="text" name="password" value="" id="name" required="" class="frm_input gab required" oninput="this.value = this.value.replace(/[^0-9]/g, '')" maxlength="4" placeholder="비밀번호(숫자4자리)">
    </div>
    <div class="bo_w_info write_div">
        <input type="text" name="phone2" value="" id="wr_2" required="" class="frm_input required" oninput="this.value = this.value.replace(/[^0-9]/g, '')" maxlength="11" placeholder="전화번호(-없이 입력해주세요.)">
        <input type="text" name="phone" value="" id="wr_3" required="" class="frm_input gab required" oninput="this.value = this.value.replace(/[^0-9]/g, '')" maxlength="11" placeholder="휴대전화(-없이 입력해주세요.)">
        <input type="text" name="email" value="" id="wr_email" class="frm_input email" placeholder="이메일(@포함 입력 바랍니다.)">
    </div>
    <br>
<div class="font_noto f_wet_05 txt_20">기타문의</div>

    <div class="write_div">
        <div class="wr_content ">
<textarea id="wr_content" name="wr_content" class="" maxlength="65536" style="width:100%;height:300px"></textarea></div>
        
    </div>
    <div class="btn_confirm write_div">
        <a href="./" class="btn_cancel btn">취소</a>
        <input type="submit" value="작성완료" id="btn_submit" accesskey="s" class="btn_submit btn">
    </div>
    </form>

    
</section>
<!-- } 게시물 작성/수정 끝 --></div>


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