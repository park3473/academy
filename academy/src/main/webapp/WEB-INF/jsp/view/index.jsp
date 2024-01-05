<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--삭제금지-->
<script src="${pageContext.request.contextPath}/resources/sweetalert/jquery-1.12.4.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

<!--공통 헤더 시작-->
<%@ include file="../include/user//header.jsp" %>
<%@ include file="../include/user/menu.jsp" %>

<!-- content -->

<style>
#carousel11_indicator .carousel-caption {top: 28vh;}
#carousel11_indicator .carousel-inner {height: 65vh;}
.carousel-control-next, .carousel-control-prev {padding-top:115px;}
#carousel11_indicator .carousel-caption .txt_64 {font-size: 3.6rem; padding: 0 0 0px 0;}
#carousel11_indicator .carousel-caption .txt_32 {line-height: 2rem;}
.main_tab_cont a {padding:30px 0; text-align:center; background:linear-gradient(270deg, rgb(12 124 193) 0%, rgb(1 67 143) 100%); color: white; font-size:22px; display:flex; justify-content:center; align-items:center;}
.main_tab_cont a:hover {background:rgb(1 67 143);}
.main_tab_cont i {font-size:40px;}
.main_tab {margin-top:-50px;position: relative;z-index: 10;}
.l_border_10 {border-radius:5px 0 0 5px;}
.r_border_10 {border-radius:0 5px 5px 0;}
#carousel11_indicator .carousel-indicators {bottom:8%;}
.kaist-box_01 {min-height:inherit !important;}
.notice_bg {background: url(${pageContext.request.contextPath}/resources/img/main_cont_bg.png) no-repeat rgb(1 67 143) center; flex-direction:column; justify-content:space-between;}
.notice_cont {padding:5px 0; font-size: 16px; border-bottom: 0.1px solid #666;}
.notice_cont:first-child {border-top: 2px solid #333;}
.notice_cont:last-child {border-bottom: 2px solid #333;}
.notice_cont .day_01 {margin-bottom:0;}
.btn_more {border-bottom:5px solid white;}
.t_mar_60 {margin-top:60px;}
.t_mar_70 {margin-top:70px;}
.t_mar_80 {margin-top:80px;}
.b_mar_80 {margin-bottom:80px;}
.mo_gab {padding: 30px 0 0 0;}

/* 반응형 */
@media only screen and (max-width: 528px) {
.r_mar_30 {margin-right:0px !important;}
}

@media screen and (max-width: 992px) {
.kaist-box_01 {justify-content:center; align-items: center; height: 150px;}
.kaist-box_01 p {margin-top:10px; font-size: 18px;}
.t_mar_80 {margin-top:20px !important;}
.b_mar_80 {margin-bottom:20px !important;}
.notice_bg .txt_30 {font-size:24px;}
.notice_bg .txt_24 {font-size:18px;}
.notice_bg .b_pad_10 {padding:0;}
.notice_bg {flex-direction:row;}
.notice_cont {padding:10px}
.pad_30 {padding: 20px;}
}

@media only screen and (max-width: 1024px) {
#carousel11_indicator .carousel-caption {top: 17vh;right: 10%;left: 10%;}
#carousel11_indicator .carousel-caption .txt_64 {font-size: 1.75rem;}
#carousel11_indicator .carousel-inner {height: 60vh;}
}


</style>


<!--메인이미지-->
<div id="carousel11_indicator" class="carousel" data-ride="carousel" data-interval="5000">
    <ol class="carousel-indicators">
        <li data-target="#carousel11_indicator" data-slide-to="0" class="active"></li>
        <li data-target="#carousel11_indicator" data-slide-to="1"></li>
        <li data-target="#carousel11_indicator" data-slide-to="2"></li>
        <li data-target="#carousel11_indicator" data-slide-to="3"></li>
        <li data-target="#carousel11_indicator" data-slide-to="4"></li>
    </ol>
    
    <div class="carousel-inner">
        <div class="pattern-overlay_wrap"></div>
        <div class="carousel-item active">
            <div class="carousel-caption">
                <div class="font_noto f_wet_01 gray_00">
                    <div class="txt_64"><span class="f_wet_05">KAIST 교육원</span></div>
                    <div class="txt_32 txt_just">KAIST 교육원 산하 부서 간 업무를 조정하고, 교육원 발전 및 개선 방안을 마련하는 등 <br class="c_hide"> 교육원 내 컨트롤타워 역할을 담당하고 있습니다</div>
                </div>
            </div>
            <img src="${pageContext.request.contextPath}/resources/img/main_bg_02.jpg" class="ani">
        </div>
        <div class="carousel-item">
            <div class="carousel-caption">
                <div class="font_noto f_wet_01 gray_00">
                    <div class="txt_64"><span class="f_wet_05">교수학습혁신센터</span></div>
                    <div class="txt_32 txt_just">KAIST 교수-학습활동을 적극 지원하며, 기업체 및 연구소와의 교육협약을 통해 <br class="c_hide"> 과학기술 인력들의 전문성과 역량강화를 위한 e-Learning과정을 제공합니다.</div>
                </div>
            </div>
            <img src="${pageContext.request.contextPath}/resources/img/main_bg_06.jpg" class="ani">
        </div>
        <div class="carousel-item">
            <div class="carousel-caption">
                <div class="font_noto f_wet_01 gray_00">
                    <div class="txt_64"><span class="f_wet_05">과학영재교육연구원</span></div>
                    <div class="txt_32 txt_just">과학영재교육에대한 전문적이고 수준 높은 기초·정책연구 수행을 통해 현장을 지원하고, <br class="c_hide"> 국가의 과학영재교육정책이 체계적으로 수립될 수 있도록 지원합니다.</div>
                </div>
            </div>
            <img src="${pageContext.request.contextPath}/resources/img/main_bg_05.jpg" class="ani">
        </div>
        <div class="carousel-item">
            <div class="carousel-caption">
                <div class="font_noto f_wet_01 gray_00">
                    <div class="txt_64"><span class="f_wet_05">SW교육센터</span></div>
                    <div class="txt_32 txt_just">KAIST의 우수한 교수진과 인재를 바탕으로 대학교육을 SW교육중심으로 재편하고, <br class="c_hide"> 창의성과 문제 해결 능력을 갖춘 SW인재 양성을 통해 우리나라의 SW경쟁력을 강화하며,<br class="c_hide"> SW가치 확산을 주도하는 역할을 담당하고 있습니다.</div>
                </div>
            </div>
            <img src="${pageContext.request.contextPath}/resources/img/main_bg_04.jpg" class="ani">
        </div>
        <div class="carousel-item">
            <div class="carousel-caption">
                <div class="font_noto f_wet_01 gray_00">
                    <div class="txt_64"><span class="f_wet_05">미래정부리더십센터</span></div>
                    <div class="txt_32 txt_just">미래전략과 과학기술 전문성을 갖춘 국정 리더 양성 과정으로 미래사회의 변화를 이해하고,<br class="c_hide"> 국가적 차원에서 장기적 미래 전략을 수립, 미래변화 대응과 <br class="c_hide"> 고위 공무원의 필수 역량을 기반으로 설계 및 지원을 하고자 노력하고 있습니다.</div>
                </div>
            </div>
            <img src="${pageContext.request.contextPath}/resources/img/main_bg_01.jpg" class="ani">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carousel11_indicator" role="button" data-slide="prev"><i class="la la-angle-left" aria-hidden="true"></i></a>
    <a class="carousel-control-next" href="#carousel11_indicator" role="button" data-slide="next"><i class="la la-angle-right" aria-hidden="true"></i></a>
</div>
<!--메인이미지-->

<!-- 메인탭 pc-->
<div class="container main_tab font_noto c_hide">
    <div class="row align-items-center m-0 main_tab_cont f_wet_07">
        <a href="/view/subpage/view.do?idx=1" class="col-3 l_border_10"><i class="las la-graduation-cap r_pad_20 txt_40"></i>기관소개</a>
        <a href="/view/subpage/view.do?idx=9" class="col-3"><i class="las la-user-graduate r_pad_20 txt_40"></i>교육소개</a>
        <a href="/view/program/list.do?tags=비학위연수과정" class="col-3"><i class="las la-school r_pad_20 txt_40"></i>교육과정</a>
        <a href="/view/subpage/view.do?idx=8" class="col-3 r_border_10"><i class="las la-chalkboard-teacher r_pad_20 txt_40"></i>온라인프로그램</a>
    </div>
</div>
<!-- 메인탭 pc 끝-->


<!-- 메인탭 모바일 -->
<div class="mo_gab c_show main_wrap_02">
    <div class="container font_noto row m-0 p-0">
        <div class="col-sm-12">
            <div class="font_noto txt_24 f_wet_07 blue_01">카이스트 교육원</div>
        </div>
        <div class="col-sm-12 t_pad_20">
            <div class="owl-carousel owl-theme">
                <a href="/view/subpage/view.do?idx=1" target="_blank" class="item border_01 kaist-box_01 max_img">
                    <i class="las la-graduation-cap txt_44"></i>
                    <p>기관소개</p>
                </a>
                <a href="/view/subpage/view.do?idx=9" target="_blank" class="item border_01 kaist-box_01 max_img">
                    <i class="las la-user-graduate txt_44"></i>
                    <p>교육소개</p>
                </a>
                <a href="/view/program/list.do?tags=비학위연수과정" target="_blank" class="item border_01 kaist-box_01 max_img">
                    <i class="las la-school txt_44"></i>
                    <p>교육과정</p>
                </a>
                <a href="/view/subpage/view.do?idx=8" target="_blank" class="item border_01 kaist-box_01 max_img">
                    <i class="las la-chalkboard-teacher r_pad_10 txt_44"></i>
                    <p>온라인프로그램</p>
                </a>
                
			</div>

        </div>
    </div>
</div>
<!-- 메인탭 모바일 끝 -->


<!-- 공지사항 -->
<div class="container t_mar_80">
    <div class="row m-0 font_noto">
        <div class="col-md-3 notice_bg pad_30 gray_00 row m-0 rounded">
            <div>
                <p class="txt_30 f_wet_07">공지사항</p>
                notice
            </div>
            <a href="/user/board_data/list.do?board_idx=1" class="d-flex gray_00 f_wet_07"><p class="txt_24 btn_more b_pad_10">View More +</p></a>
        </div>

        <div class="col-md-1"></div>

        <div class="col-md-8 mt-3 mt-md-0">
            <div class="row">
                <c:forEach items="${model.NoticeList}" var="item">
                <a href="/user/board_data/view.do?idx=${item.idx}&board_idx=${item.board_idx }" class="col-12 font_noto txt_just notice_cont">
                    <p class="txt_20 f_wet_07">${item.title}</p>
                    <div class="opa_07">${item.name}</div>
                    <p class="day_01 opa_07">${fn:substring(item.create_tm , 0,11)}</p>
                </a>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- 공지사항 끝 -->


<!-- 갤러리 -->
<div class="container t_mar_80 b_mar_80">
    <div class="row m-0 font_noto">
        <div class="col-md-3 notice_bg pad_30 gray_00 row m-0 rounded">
            <div>
                <p class="txt_30 f_wet_07">갤러리</p>
                gallery
            </div>
            <a href="/user/board_data/list.do?board_idx=2" class="d-flex gray_00 f_wet_07"><p class="txt_24 btn_more b_pad_10">View More +</p></a>
        </div>

        <div class="col-md-1"></div>

        <div class="col-md-8 mt-3 mt-md-0">
            <div class="row d-flex justify-content-between">
                <c:forEach items="${model.InfoList}" var="item">
                <div class="col-12 col-sm p-0 r_mar_30">
                    <a href="/user/board_data/view.do?idx=${item.idx}&board_idx=${item.board_idx }" class="card" style="width: 100%;">
                        <img src="/resources/upload/file/${item.image}" class="card-img-top c_hide" alt="...">
                        <div class="card-body">
                            <h5 class="card-title txt_20 f_wet_07">${item.title }</h5>
                            <p class="card-text opa_07">${item.name }</p>
                            <p class="day_01 opa_07 m-0">${fn:substring(item.create_tm,0,11) }</p>
                            <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                        </div>
                    </a>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- 갤러리 끝 -->






<script>




$('.owl-carousel').owlCarousel({
    loop:true,
    margin:20,
	autoplay:true,
    autoplayTimeout:6000,
    // nav:true,
    responsive:{
        0:{
            items:1
        },
        400:{
            items:2
        },
        700:{
            items:4
        },
        1000:{
            items:2
        }
    }
})

$(function() {
  var $tabButtonItem = $('#tab-button li'),
      $tabSelect = $('#tab-select'),
      $tabContents = $('.tab-contents'),
      activeClass = 'is-active';

  $tabButtonItem.first().addClass(activeClass);
  $tabContents.not(':first').hide();

  $tabButtonItem.find('a').on('click', function(e) {
    var target = $(this).attr('href');

    $tabButtonItem.removeClass(activeClass);
    $(this).parent().addClass(activeClass);
    $tabSelect.val(target);
    $tabContents.hide();
    $(target).show();
    e.preventDefault();
  });

  $tabSelect.on('change', function() {
    var target = $(this).val(),
        targetSelectNum = $(this).prop('selectedIndex');

    $tabButtonItem.removeClass(activeClass);
    $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
    $tabContents.hide();
    $(target).show();
  });
});



</script>

<!-- content -->

<!--공통하단-->
<%@ include file="../include/user/footer.jsp" %>
<script type="text/javascript">
</script>