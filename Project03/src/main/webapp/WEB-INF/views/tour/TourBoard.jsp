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
	href="<c:url value="../resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resources/theme/css/font-awesome.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resources/theme/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resources/theme/css/templatemo_misc.css"/>">
<link rel="stylesheet"
	href="<c:url value="../resources/theme/css/templatemo_style.css"/>">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="../../js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>


</head>
<body>

	<%@ include file="../top_header.jsp"%>

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
					<h2>여행 게시판</h2>
					<p>참여하고 싶은 여행을 검색해보세요</p>
				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->

			<div class="row">
				<button id="btn_create_tour"
					style="float: right; margin-right: 13px">여행 등록</button>
			</div>

			<div id="best_top4">

				<h3 class="h3" style="font: bold;">여행 게시판</h3>
				<br /><br />

				<h1>여행 조건 검색</h1>
				<br /><br />

				<form method="post" id="frm">
					<p>
						<input type="text" id="region_name" name="region_name"
							placeholder="지역이름">
					</p>

					<br />

					<p>
						<input type="text" id="start_date" name="start_date"
							placeholder="시작일"> ~ <input type="text" id="end_date"
							name="end_date" placeholder="종료일">
					</p>

					<br />

					<p>
						<input type="text" id="start_date" name="start_date"
							placeholder="시작일"> ~ <input type="text" id="end_date"
							name="end_date" placeholder="종료일">
					</p>

					<br />

					<div>
						성별 조건: <br /> 남자 <input type="radio" name="condition_sex"
							value="1" /> 여자 <input type="radio" name="condition_sex"
							value="2" /> 조건없음 <input type="radio" name="condition_sex"
							value="3" />
					</div>

					<br />

					<div>
						연령 조건: <br /> 20대 <input type="radio" name="condition_age"
							value="1" /> 30대 <input type="radio" name="condition_age"
							value="2" /> 40대 <input type="radio" name="condition_age"
							value="3" /> 50대 <input type="radio" name="condition_age"
							value="4" />
					</div>
	
				</form>
				
				<br />
				
				<button type="button" id="btn_detail_search">검색하기</button>
				
				<br /> <br />


				<div class="row" id="tourDetailSearch">
					
					<!-- /.col-md-3 -->
				</div>
				<!-- /.row -->
			</div>
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

	<script src="../resources/theme/js/bootstrap.js"></script>
	<script src="../resources/theme/js/plugins.js"></script>
	<script src="../resources/theme/js/main.js"></script>
	
	<script>
		$(document).ready(function() {
			$('#btn_detail_search').click(function() {
				location = '../index';
			});
			
			function getThumnails_By_Region() {
				
				var url = '/project03/tour/tourBoard' + $('#region_name').val();

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
				
				var url = '/project03/tour/tourBoard' + $('#start_date').val() + "/" + $('#end_date').val();
				
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

		});
	</script>
</body>
</html>