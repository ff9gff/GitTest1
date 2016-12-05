<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html class="no-js">

<head>
<meta charset="utf-8">
<title>같이가자</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<c:url value="/resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/font-awesome.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/animate.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/templatemo_misc.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/theme/css/templatemo_style.css"/>">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

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
								<h1> <a href="#">같&nbsp;이&nbsp;가&nbsp;자</a> </h1>
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

	<br /><br />	

	<div class="content-section" id="services">
		<br /><br />	
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>Top 4 Review</h2><br/><br/>
					<h1>당신만의 멋진 후기를 보여주세요</h1>
				</div>
			</div>

			<!-- /.row -->
			<br />
		
			<div class="row" id="TopReview">

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	
	<div class="content-section" id="services">
		<br /><br />	
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>Recent Review</h2><br/><br/>
					<h1>최신 후기를 살펴보세요</h1>
				</div>
				<div class="heading-section col-md-12 text-center">
					<h2><a href="review/reviewBoard">전체보기</a></h2>
				</div>
				<!-- /.heading-section -->
			</div>

			<!-- /.row -->
			<br />
			
			<div class="row" id="RecentReview">
			
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#services -->
	
	<br />

	<div class="content-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>여행 리스트</h2><br/><br/>
					<h1>함께 여행할 사람들을 찾아보세요</h1>
				</div>
				<div class="heading-section col-md-12 text-center"> 
					<h2><a href="tour/tourBoard">전체보기</a></h2>
					<!-- <br /><br />
					<h2><a href="tour/GoRegister">여행 등록하러 가기</a></h2> -->
				</div>
				<!-- /.heading-section -->
			</div>
			
			<br />
			
			<div class="row" id="TourDetail">

			</div>

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
		
		getThumnails_By_Default_TOUR();
		getThumnails_By_Default_TOPREVIEW();
		getThumnails_By_Default_RECENTREVIEW();
		
		// 디폴트로 나오는 후기 게시글 데이터를 가져오기
		function getThumnails_By_Default_TOPREVIEW() {
			
			// wm_image 배열
			TopReviewImage = [];
			// wm_review 배열(제목)
			TopReviewTitle = [];
			// wm_review_region 배열(지역)
			TopReviewRegion = [];
			
			var url1 = '/project03/review/Topdefaultimage';
			$.getJSON(url1, function(data1) {
				$(data1).each(function() {
					TopReviewImage.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}});	
				});
				
				var url2 = '/project03/review/Topdefaulttitle';
				$.getJSON(url2, function(data2) {
					$(data2).each(function() {
						TopReviewTitle.push({review_no: this.review_no, title: this.title});	
					});
					console.log(TopReviewTitle);
					
					var url3 = '/project03/review/Topdefaultregion';
					$.getJSON(url3, function(data3) {
						$(data3).each(function() {
							var name = this.region_name.split(",");
							var tagname = '';
							for(var i=0; i<name.length; i++){
								tagname +="#"+name[i]+" ";
							}
							
							TopReviewRegion.push({region_name: tagname, review_no: this.review_no});	
						});
					
						for (var i = 0; i < TopReviewImage.length; i++) {
							for (var j = 0; j < TopReviewTitle.length; j++) {
								if (TopReviewImage[i].content_no == TopReviewTitle[j].review_no) {
									TopReviewImage[i].tour = TopReviewTitle[j].title;
								} 
								for (var k = 0; k < TopReviewRegion.length; k++) {
									if (TopReviewImage[i].content_no == TopReviewRegion[k].review_no) {
										TopReviewImage[i].city = TopReviewRegion[k].region_name;
									} 
								}	
							}	
						}	
						
						getAllThumnail_TOPREVIEW();
					});
	
				});
	
			});// end getJSON()
	
		};//end of getThumnails()
		
		// 디폴트로 나오는 후기 게시글 데이터를 가져오기
		function getThumnails_By_Default_RECENTREVIEW() {
			
			// wm_image 배열
			RecentReviewImage = [];
			// wm_review 배열(제목)
			RecentReviewTitle = [];
			// wm_review_region 배열(지역)
			RecentReviewRegion = [];
			
			var url1 = '/project03/review/defaultimage';
			$.getJSON(url1, function(data1) {
				$(data1).each(function() {
					RecentReviewImage.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}});	
				});
				
				var url2 = '/project03/review/defaulttitle';
				$.getJSON(url2, function(data2) {
					$(data2).each(function() {
						RecentReviewTitle.push({review_no: this.review_no, title: this.title});	
					});
					console.log(RecentReviewTitle);
					
					var url3 = '/project03/review/defaultregion';
					$.getJSON(url3, function(data3) {
						$(data3).each(function() {
							var name = this.region_name.split(",");
							var tagname = '';
							for(var i=0; i<name.length; i++){
								tagname +="#"+name[i]+" ";
							}
							
							RecentReviewRegion.push({region_name: tagname, review_no: this.review_no});	
						});
					
						for (var i = 0; i < RecentReviewImage.length; i++) {
							for (var j = 0; j < RecentReviewTitle.length; j++) {
								if (RecentReviewImage[i].content_no == RecentReviewTitle[j].review_no) {
									RecentReviewImage[i].tour = RecentReviewTitle[j].title;
								} 
								for (var k = 0; k < RecentReviewRegion.length; k++) {
									if (RecentReviewImage[i].content_no == RecentReviewRegion[k].review_no) {
										RecentReviewImage[i].city = RecentReviewRegion[k].region_name;
									} 
								}	
							}	
						}	
						
						getAllThumnail_RECENTREVIEW();
					});
	
				});
	
			});// end getJSON()
	
		};//end of getThumnails()
		
		// 디폴트로 나오는 여행 게시글 데이터를 가져오기
		function getThumnails_By_Default_TOUR() {
			
			// wm_image 배열
			TourImage = [];
			// wm_tour 배열(제목)
			TourTitle = [];
			// wm_tour_region 배열(지역)
			TourRegion = [];

			var url1 = '/project03/index/defaultimage';
			$.getJSON(url1, function(data1) {
				$(data1).each(function() {
					TourImage.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}, condition_sex: {}, condition_age: {}});	
				});
				console.log(TourImage);
				
				var url2 = '/project03/index/defaulttitle';
				$.getJSON(url2, function(data2) {
					$(data2).each(function() {
						TourTitle.push({trip_no: this.trip_no, title: this.title, condition_sex: this.condition_sex, condition_age: this.condition_age});	
					});	
					
					var url3 = '/project03/index/defaultregion';
					$.getJSON(url3, function(data3) {
						$(data3).each(function() {
							var name = this.region_name.split(",");
							var tagname = '';
							for(var i=0; i<name.length; i++){
								tagname +="#"+name[i]+" ";
							}
							
							TourRegion.push({region_name: tagname, trip_no: this.trip_no});	
						});
					
						for (var i = 0; i < TourImage.length; i++) {
							for (var j = 0; j < TourTitle.length; j++) {
								if (TourImage[i].content_no == TourTitle[j].trip_no) {
									TourImage[i].tour = TourTitle[j].title;
									TourImage[i].condition_sex = TourTitle[j].condition_sex;
									TourImage[i].condition_age = TourTitle[j].condition_age;
								} 
								for (var k = 0; k < TourRegion.length; k++) {
									if (TourImage[i].content_no == TourRegion[k].trip_no) {
										TourImage[i].city = TourRegion[k].region_name;
									} 
								}	
							}	
						}		
						
						getAllThumnail_TOUR();
					});
				});
			});// end getJSON()	
		};//end of getThumnails()
		
		
		// 가져온 TOP후기 데이터를 뿌려주자
		function getAllThumnail_TOPREVIEW() {
			var list = '';
			
			var length = 0;
			
			if (TopReviewImage.length < 4) {
				length = TopReviewImage.length;
			} else {
				length = 4;
			}
			// 무조건 4개만 뿌린다!
			
			for(var i = 0; i < length; i++){
		
				list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<a href="review/review_detail?review_no=' + TopReviewImage[i].content_no + '"><img src="' + TopReviewImage[i].img_url + '" width="300" height="240"><br/>'
						+ '<div>제목: ' + TopReviewImage[i].tour + '</div>'
						+ '<div>' + TopReviewImage[i].city + '</div>'	
						//+ '<div>' + imageList[i].condition_sex +  '&nbsp;&nbsp; / &nbsp;&nbsp;' + imageList[i].condition_age + '</div>'
						+ '</div>'
						+ '</div>';
			}

			$('#TopReview').html(list);
		};
		
		// 가져온 최신후기 데이터를 뿌려주자
		function getAllThumnail_RECENTREVIEW() {
			var list = '';
			
			var length = 0;
			
			if (RecentReviewImage.length < 4) {
				length = RecentReviewImage.length;
			} else {
				length = 4;
			}
			// 무조건 4개만 뿌린다!
			
			for(var i = 0; i < length; i++){
		
				list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<a href="review/review_detail?review_no=' + RecentReviewImage[i].content_no + '"><img src="' + RecentReviewImage[i].img_url + '" width="300" height="240"><br/>'
						+ '<div>제목: ' + RecentReviewImage[i].tour + '</div>'
						+ '<div>' + RecentReviewImage[i].city + '</div>'	
						//+ '<div>' + imageList[i].condition_sex +  '&nbsp;&nbsp; / &nbsp;&nbsp;' + imageList[i].condition_age + '</div>'
						+ '</div>'
						+ '</div>';
			}

			$('#RecentReview').html(list);
		};

		// 가져온 여행 데이터를 뿌려주자
		function getAllThumnail_TOUR() {
			var list = '';
			
			var length = 0;
			
			if (TourImage.length < 8) {
				length = TourImage.length;
			} else {
				length = 8;
			}
			// 무조건 4개만 뿌린다!
			
			for(var i = 0; i < length; i++){
				/* console.log(TourImage[i].content_no); */
				list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<a href="tour/detail?trip_no=' + TourImage[i].content_no + '"><img src="' + TourImage[i].img_url + '" width="300" height="240"><br/>'
						+ '<div>제목: ' + TourImage[i].tour + '</div>'
						+ '<div>' + TourImage[i].city + '</div>'	
						+ '<div>' + TourImage[i].condition_sex +  '&nbsp;&nbsp; / &nbsp;&nbsp;' + TourImage[i].condition_age + '</div>'
						+ '</div>'
						+ '</div>';
			}

			$('#TourDetail').html(list);
		};
		
	});

	</script>

	<script src="resources/theme/js/bootstrap.js"></script>
	<script src="resources/theme/js/plugins.js"></script>
	<script src="resources/theme/js/main.js"></script>

</body>
</html>