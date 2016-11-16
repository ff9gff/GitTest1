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

<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

<style>
.searchRegion {
	display: none;
}
</style>
</head>
<body>

	<script>
		$(function() {
			$("#start_date, #end_date").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});
	</script>

	<div class="content-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>동행자 찾기 게시판</h2>
					<br /> <br /> <br />
					<p>
					<form action="regionTest" method="POST">
						<input type="text" id="region" name="region" placeholder="지역이름">
						<input type="submit" value="검색" />
					</form>
					</p>

					<p>
					<form action="datepickTest" method="POST">
						<input type="text" id="start_date" name="start_date"
							placeholder="시작일"> ~ <input type="text" id="end_date"
							name="end_date" placeholder="종료일"> <input type="submit"
							value="검색" />
					</form>
					</p>



					<div>
						<p>
						<form action="imageTest" method="POST">
							<input type="number" id="board_type" name="board_type"
								placeholder="게시판구분" required> <input type="number"
								id="content_no" name="content_no" placeholder="게시글구분" required>
							<input type="number" id="photo_no" name="photo_no"
								placeholder="사진구분" required> <input type="submit"
								value="사진" />
						</form>
						</p>
					</div>
				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->

			<p>
				<c:forEach var="region" items="${regionList }">
					<textarea rows="" cols="">${region.title}</textarea>
				</c:forEach>
			</p>

			<p>
				<c:forEach var="period" items="${periodList}">
					<textarea rows="" cols="">${period.title}</textarea>
				</c:forEach>
			</p>

			<c:forEach var="image" items="${imageList}">
				<div class="row">
					<div class="portfolio-item col-md-3 col-sm-6">
						<div class="portfolio-thumb">
							<a><img src="${image.img_file}"></a>
							<div class="portfolio-overlay">
								<h3>여행지</h3>
								<p>앙기모띠</p>
								<a href="${image.img_file}" data-rel="" class="expand"> <i
									class="fa fa-search"></i>
								</a>
							</div>
							<!-- /.portfolio-overlay -->
						</div>
						<!-- /.portfolio-thumb -->
					</div>
				</div>
			</c:forEach>
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



</body>
</html>