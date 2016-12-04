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
<script src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>


</head>
<body>

	<%@ include file="../top_header.jspf"%>

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
									<li><a href="index">메인</a></li>
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
							src="../resources/theme/images/slide1.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>후기 게시판</h2>
							</div>
						</li>
						<li>
							<div class="overlay"></div> <img
							src="../resources/theme/images/slide2.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>후기를 적어 공유해봅시다</h2>
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
			<div>

				<h3 class="h2" style="font: bold;"> 후기 게시판 </h3>
				
				<br /><br />

				<div>
					<input type="text" id="region_name" name="region_name" placeholder="지역이름">
					<button type="button" id="region_search">장소 검색</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

					<button id="btn_create_review" style="float: right; margin-right: 13px">후기 등록</button>

				</div>
				<br /><br />
				<br /><br />
				<div class="row" id="reviewDetail">
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
		// 디폴트로 나오는 게시글 함수 실행	
		getThumnails_By_Default_REVIEW();
		
		// 디폴트로 나오는 게시글
		function getThumnails_By_Default_REVIEW() {
			
			// wm_image 리스트
			ReviewImage = [];
			// wm_review 리스트(제목)
			ReviewTitle = [];
			// wm_review_region 리스트(지역)
			ReviewRegion = [];
			
			// ReviewSearchController의 review/defaultimage 메소드 실행
			var url1 = '/project03/review/defaultimage';
			$.getJSON(url1, function(data1) {
				$(data1).each(function() {
					// 데이터들을 배열에 저장
					ReviewImage.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}});	
				});
				
				var url2 = '/project03/review/defaulttitle';
				$.getJSON(url2, function(data2) {
					$(data2).each(function() {
						ReviewTitle.push({review_no: this.review_no, title: this.title, condition_sex: this.condition_sex, condition_age: this.condition_age});	
					});
					console.log(ReviewTitle);
					
					var url3 = '/project03/review/defaultregion';
					$.getJSON(url3, function(data3) {
						$(data3).each(function() {
							var name = this.region_name.split(",");
							var tagname = '';
							for(var i=0; i<name.length; i++){
								tagname +="#"+name[i]+" ";
							}
							
							ReviewRegion.push({region_name: tagname, review_no: this.review_no});	
						});
					
						for (var i = 0; i < ReviewImage.length; i++) {
							for (var j = 0; j < ReviewTitle.length; j++) {
								if (ReviewImage[i].content_no == ReviewTitle[j].review_no) {
									ReviewImage[i].tour = ReviewTitle[j].title;
								} 
								for (var k = 0; k < ReviewRegion.length; k++) {
									if (ReviewImage[i].content_no == ReviewRegion[k].review_no) {
										ReviewImage[i].city = ReviewRegion[k].region_name;
									} 
								}	
							}	
						}	
						
						getAllThumnail_REVIEW();
					});
	
				});
	
			});// end getJSON()
	
		};//end of getThumnails()
	

		
		// 지역 검색: 해당 지역의 후기 정보 썸네일들을 읽어오는 함수 정의 
		function getThumnails_By_Region_REVIEW() {
			
			// wm_image 리스트
			ReviewImage = [];
			// wm_review 리스트(제목)
			ReviewTitle = [];
			// wm_review_region 리스트(지역)
			ReviewRegion = [];
			
			var url1 = '/project03/review/regionimage/' + $('#region_name').val();
			$.getJSON(url1, function(data1) {
				$(data1).each(function() {
					ReviewImage.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}});	
				});
				
				var url2 = '/project03/review/regiontitle/' + $('#region_name').val();
				$.getJSON(url2, function(data2) {
					$(data2).each(function() {
						ReviewTitle.push({review_no: this.review_no, title: this.title});	
					});
					console.log(ReviewTitle);
					
					var url3 = '/project03/review/regionregion/' + $('#region_name').val();
					$.getJSON(url3, function(data3) {
						$(data3).each(function() {
							var name = this.region_name.split(",");
							var tagname = '';
							for(var i=0; i<name.length; i++){
								tagname +="#"+name[i]+" ";
							}
							
							ReviewRegion.push({region_name: tagname, review_no: this.review_no});	
						});
					
						for (var i = 0; i < ReviewImage.length; i++) {
							for (var j = 0; j < ReviewTitle.length; j++) {
								if (ReviewImage[i].content_no == ReviewTitle[j].review_no) {
									ReviewImage[i].tour = ReviewTitle[j].title;
								} 
								for (var k = 0; k < ReviewRegion.length; k++) {
									if (ReviewImage[i].content_no == ReviewRegion[k].review_no) {
										ReviewImage[i].city = ReviewRegion[k].region_name;
									} 
								}	
							}	
						}

						getAllThumnail_REVIEW();
					});
						
					
				});

			});// end getJSON()

		};//end of getThumnails()
		
		
		
		function getAllThumnail_REVIEW() {
			
			var list = '';
			
			for(var i = 0; i<ReviewImage.length; i++){

				list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<figure>'
						+ '<a href="../review/review_detail?review_no=' + ReviewImage[i].content_no + '"><img src="../' + ReviewImage[i].img_url + '" width="300" height="240"><br/>'
						+ '<div>제목: ' + ReviewImage[i].tour + '</div>'
						+ '<div>' + ReviewImage[i].city + '</div>'	
						//+ '<div>' + imageList[i].condition_sex +  '&nbsp;&nbsp; / &nbsp;&nbsp;' + imageList[i].condition_age + '</div>'
						+ '</figure>'
						+ '</div>'
						+ '</div>';
			}

			$('#reviewDetail').html(list);

			//end of getThumnails()
		};
		
		
		// 지역 검색 버튼 처리
		$('#region_search').click(function() {

			var region_name = $('#region_name').val();

			if (region_name == "") {
				alert('검색할 지역을 입력하세요');
			} else {
				alert('지역 검색 메소드 호출 ');
				getThumnails_By_Region_REVIEW();
			}

		});
		
		$('#btn_create_review').click(function() {
			location ='../review/review_register';
		});
		
	});
			
	</script>
</body>
</html>