<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>아이앤시티 샘플 서버</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>

<script src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert2.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/sweetalert/sweetalert2.min.css">
<script src="${pageContext.request.contextPath}/resources/sweetalert/jquery-1.12.4.js"></script>


<!-- style start-->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/user_footer.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/tab2.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/all.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/animate.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/animate.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/basic_style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/home_style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/is_style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/navi.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/tab.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.theme.default.min.css">
<!-- style end-->

<!-- script start-->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/imageMapResizer.min.js"></script>
<!--  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/navi.js"></script> -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/menu.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/home_java.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- script end-->

</head>

<body>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script src="${pageContext.request.contextPath}/resources/js/gtag.js"></script>
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-163568943-1"></script> -->
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-163568943-1');
</script>

