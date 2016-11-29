<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/font-awesome.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/templatemo_misc.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/templatemo_style.css"/>">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script
	src="resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

<style>
.searchRegion {
	display: none;
}

.row {
	
}
</style>
</head>
<body>

	<%@ include file="top_header.jspf"%>

	<div class="site-main" id="sTop">
		<div class="site-header">
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
									<li class="active"><a href="#">메인</a></li>
									<li><a href="#services">후기</a></li>
									<li><a href="#portfolio">찾기</a></li>
									<li><a href="MyPage">마이페이지</a></li>
									<li><a href="admin">관리자</a></li>
									<li><a href="member/login">로그인</a></li>
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
		<div class="site-slider">
			<div class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="overlay"></div> <img
							src="resources/theme/images/slide1.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>같이가자</h2>
							</div>
						</li>
						<li>
							<div class="overlay"></div> <img
							src="resources/theme/images/slide2.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>이벤트</h2>
							</div>
						</li>
					</ul>
				</div>
				<!-- /.flexslider -->
			</div>
			<!-- /.slider -->
		</div>
		<!-- /.site-slider -->
	</div>
	<!-- /.site-main -->


	<div class="content-section" id="services">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>Top 4 Review</h2>
					<p>당신만의 멋진 후기를 보여주세요</p>
				</div>
				<div class="heading-section col-md-12 text-center">
					<h4>
						<a href="review/totalReview">전체보기</a>
					</h4>
				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-md-3 col-sm-6" style="display: inline">
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
				<div class="col-md-3 col-sm-6" style="display: inline">
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
				<div class="col-md-3 col-sm-6" style="display: inline">
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
				<div class="col-md-3 col-sm-6" style="display: inline">
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
		</div>
		<!-- /.container -->
	</div>
	<!-- /#services -->

	<script>
		$(function() {
			$("#start_date, #end_date").datepicker({
				dateFormat : 'yy-mm-dd'
			});
			
			$("#start_date2, #end_date2").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});
	</script>



	<div class="content-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>여행 검색 (여행지 & 여행기간)</h2>
					<br /> <br /><br /><br />	
					
					<p>
						<input type="text" id="region_name" name="region_name" placeholder="지역이름">
						<button type="button" id="region_search">장소 검색</button><br />
					</p>

					<br /><br />
					
					<p>	
						<input type="text" id="start_date" name="start_date" placeholder="시작일"> ~ 
						<input type="text" id="end_date" name="end_date" placeholder="종료일">
						<button type="button" id="period_search">기간 검색</button> <br /><br /><br />
					</p>

					<p>
					<div>
						<form action="tour/GoRegister" method="post">
							<input type="submit" value="여행 등록하러 가기" /> <br /> <br />
						</form>
					</div>
					</p>
				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->

			<p>
			<div class="row" id="toursearch">

			</div>
			</p>


			<p>
			<div class="row">
				<c:forEach var="image" items="${imageList}">
					<div class="portfolio-item col-md-3 col-sm-6">
						<div class="portfolio-thumb">
							<a href="tourRegister/FTourRegister"><img src="${image.img_url}"
								width="300" height="200"></a>
						</div>
						<!-- /.portfolio-thumb -->
					</div>
				</c:forEach>
			</div>
			</p>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#portfolio -->



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



	<script>
	
		$(document).ready(function() {

			// 지역 검색: 해당 지역의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Region() {
				
				var url = '/project03/index/' + $('#region_name').val();

				$.getJSON(url, function(data) {
					var list = '';

					$(data).each(function() {
	
						list += '<div class="portfolio-item col-md-3 col-sm-6">'
								+ '<div class="portfolio-thumb">'
								+ '<figure>'
								+ '<a href="tour/FTourRegister?trip_no=' + this.content_no + '"><img src="' + this.img_url + '" width="300" height="200">'
								+ '</figure>'
								+ '</div>'
								+ '</div>';
					});
	
					$('#toursearch').html(list);

				});// end getJSON()

			};//end of getThumnails()
			
			
			// 기간 검색: 해당 기간의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Period() {
				
				var url = '/project03/index/' + $('#start_date').val() + "/" + $('#end_date').val();
				
				$.getJSON(url, function(data) {
					var list = '';

					$(data).each(function() {
	
						list += '<div class="portfolio-item col-md-3 col-sm-6">'
								+ '<div class="portfolio-thumb">'
								+ '<figure>'
								+ '<a href="tour/FTourRegister?trip_no=' + this.content_no + '"><img src="' + this.img_url + '" width="300" height="200">'
								+ '</figure>'
								+ '</div>'
								+ '</div>';
					});
	
					$('#toursearch').html(list);

				});// end getJSON()

			};//end of getThumnails()
			
			
			
			// 지역 검색 버튼 처리
			$('#region_search').click(function() {
	
				var region_name = $('#region_name').val();
	
				if (region_name == "") {
					alert('검색할 지역을 입력하세요');
				} else {
					alert('지역 검색 메소드 호출 ');
					getThumnails_By_Region();
				}
	
			});
		

			// 기간 검색 버튼 처리			
			$('#period_search').click(function(){
				
				var start_date = $('#start_date').val();
				var end_date = $('#end_date').val();
				
				if (start_date == "" || end_date == "") {
					alert('검색할 기간을 선택하세요');		
				} else {	
					
					alert('기간 검색 메소드 호출');
					getThumnails_By_Period();
						
				}
			}); 
		});
	</script>


	<script src="resources/theme/js/bootstrap.js"></script>
	<script src="resources/theme/js/plugins.js"></script>
	<script src="resources/theme/js/main.js"></script>

</body>
</html>