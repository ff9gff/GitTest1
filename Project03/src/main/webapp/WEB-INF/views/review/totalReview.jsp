<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>같이가자</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 
Flex Template 
http://www.templatemo.com/tm-406-flex
-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/bootstrap.min.css"/>"> 
<link rel="stylesheet" href="<c:url value="/resources/theme/css/font-awesome.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/animate.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/templatemo_misc.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/templatemo_style.css"/>">

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>



<style>
.searchRegion {
	display: none;
}
</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        
    
    <%@ include file="../top_header.jsp" %>
    
	<div class="site-main" id="sTop">
		<div class="site-header">
			<div class="container">

				<!-- /.row -->
			</div>
			<!-- /.container -->
			<div class="main-header">
				<div class="container">
					<div id="menu-wrapper">
						<div class="row">
							<div class="logo-wrapper col-md-2 col-sm-2">
								<h1>
									<a href="#">hello </a>
								</h1>
							</div>
							<!-- /.logo-wrapper -->
							<div class="col-md-10 col-sm-10 main-menu text-right">
								<div class="toggle-menu visible-sm visible-xs">
									<i class="fa fa-bars"></i>
								</div>
								<ul class="menu-first">
									<li><a href="index">메인</a></li>
									<li><a href="admin">관리자</a></li>
									<li><a href="login">로그인</a></li>
								</ul>
							</div>
							<!-- /.main-menu -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /#menu-wrapper -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.main-header -->
		</div>
		<!-- /.site-header -->
	</div>
	<!-- /.site-main -->


	<div class="content-section" id="services">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>후기 게시판</h2>
					<p>당신만의 멋진 후기를 보여주세요</p>
				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->
			
			<div class="row">
				<button id="btn_create_review" style="float: right; margin-right: 13px ">후기 등록</button>
			</div>
			
			<div id="best_top4">
				<h3 class="h3" style="font: bold;">Best top4</h3>
			
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-1">
						<div class="service-icon">
							<i class="fa fa-file-code-o"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3>HTML5 Coding</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Enim, assumenda, eveniet, consectetur, ex doloribus veniam
									asperiores incidunt mollitia placeat aniet.</p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->				
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-2">
						<div class="service-icon">
							<i class="fa fa-paper-plane-o"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-3">
						<div class="service-icon">
							<i class="fa fa-institution"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-4">
						<div class="service-icon">
							<i class="fa fa-flask"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- /.row -->			
			</div><br/><br/> <!-- // end best-top4 -->
			
			<!--  -->
			<!--  -->
			<!-- 일반 리뷰 → 게시글 갯수에 따라서 유동적! → c:for → 개수만큼 나오게... -->
			<div id="General_reviews" style="margin: 10px">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-1">
						<div class="service-icon">
							<i class="fa fa-file-code-o"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3>HTML5 Coding</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Enim, assumenda, eveniet, consectetur, ex doloribus veniam
									asperiores incidunt mollitia placeat aniet.</p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->				
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-2">
						<div class="service-icon">
							<i class="fa fa-paper-plane-o"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-3">
						<div class="service-icon">
							<i class="fa fa-institution"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="service-item" id="service-4">
						<div class="service-icon">
							<i class="fa fa-flask"></i>
						</div>
						<!-- /.service-icon -->
						<div class="service-content">
							<div class="inner-service">
								<h3></h3>
								<p></p>
							</div>
						</div>
						<!-- /.service-content -->
					</div>
					<!-- /#service-1 -->
				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- /.row -->
			</div> <!--// end General reviews  -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#services -->


	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-xs-12 text-left">
					<span>Copyright &copy; 2014 Company Name</span>
				</div>
				<!-- /.text-center -->
				<div class="col-md-4 hidden-xs text-right">
					<a href="#top" id="go-top">Back to top</a>
				</div>
				<!-- /.text-center -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#footer -->



	<script src="resources/theme/js/bootstrap.js"></script>
	<script src="resources/theme/js/plugins.js"></script>
	<script src="resources/theme/js/main.js"></script>
	<script>
	$(document).ready(function() {
		$('#btn_create_review').click(function() {
			location = 'review_register';
			
		});
		
	});
	
	</script>
</body>
</html>