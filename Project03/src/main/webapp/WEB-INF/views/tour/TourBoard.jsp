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
									<li><a href="../index">메인</a></li>
									<li><a href="#services">후기</a></li>
									<li><a href="#portfolio">찾기</a></li>
									<li><a href="../MyPage">마이페이지</a></li>
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
								<h2>여행 게시판</h2>
							</div>
						</li>
						<li>
							<div class="overlay"></div> <img
							src="../resources/theme/images/slide2.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>참여하고 싶은 여행을 검색해보세요</h2>
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

				<h3 class="h2" style="font: bold;">여행 조건 상세 검색 </h3>
				
				<br /><br />

				<div>
					<input type="text" id="region_name" name="region_name" placeholder="지역이름">
					<button type="button" id="region_search">장소 검색</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<input type="text" id="start_date" name="start_date" placeholder="시작일"> ~ 
					<input type="text" id="end_date" name="end_date" placeholder="종료일">
					<button type="button" id="period_search">기간 검색</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<button id="btn_create_tour" style="float: right; margin-right: 13px">여행 등록</button>
					<br /><br /><br />
					
					
						
				</div>
				
				<div class="row" id="tourDetailSearch">
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
			
			getThumnails_By_Default();
			
			// 디폴트로 나오는 게시글
			function getThumnails_By_Default() {
				
				// wm_image 리스트
				imageList = [];
				// wm_tour 리스트(제목)
				titleList = [];
				// wm_tour_region 리스트(지역)
				regionList = [];
				
				var url1 = '/project03/index/defaultimage';
				$.getJSON(url1, function(data1) {
					$(data1).each(function() {
						imageList.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}, condition_sex: {}, condition_age: {}});	
					});
					
					var url2 = '/project03/index/defaulttitle';
					$.getJSON(url2, function(data2) {
						$(data2).each(function() {
							titleList.push({trip_no: this.trip_no, title: this.title, condition_sex: this.condition_sex, condition_age: this.condition_age});	
						});
						console.log(titleList);
						
						var url3 = '/project03/index/defaultregion';
						$.getJSON(url3, function(data3) {
							$(data3).each(function() {
								var name = this.region_name.split(",");
								var tagname = '';
								for(var i=0; i<name.length; i++){
									tagname +="#"+name[i]+" ";
								}
								
								regionList.push({region_name: tagname, trip_no: this.trip_no});	
							});
						
							for (var i = 0; i < imageList.length; i++) {
								for (var j = 0; j < titleList.length; j++) {
									if (imageList[i].content_no == titleList[j].trip_no) {
										imageList[i].tour = titleList[j].title;
										imageList[i].condition_sex = titleList[j].condition_sex;
										imageList[i].condition_age = titleList[j].condition_age;
									} 
									for (var k = 0; k < regionList.length; k++) {
										if (imageList[i].content_no == regionList[k].trip_no) {
											imageList[i].city = regionList[k].region_name;
										} 
									}	
								}	
							}	
							
							getAllThumnail();
						});

					});
		
				});// end getJSON()
		
			};//end of getThumnails()
		
	
			// 지역 검색: 해당 지역의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Region() {
				
				// wm_image 리스트
				imageList = [];
				// wm_tour 리스트(제목)
				titleList = [];
				// wm_tour_region 리스트(지역)
				regionList = [];
				
				var url1 = '/project03/index/regionimage/' + $('#region_name').val();
				$.getJSON(url1, function(data1) {
					$(data1).each(function() {
						imageList.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}, condition_sex: {}, condition_age: {}});	
					});
					
					var url2 = '/project03/index/regiontitle/' + $('#region_name').val();
					$.getJSON(url2, function(data2) {
						$(data2).each(function() {
							titleList.push({trip_no: this.trip_no, title: this.title, condition_sex: this.condition_sex, condition_age: this.condition_age});	
						});
						console.log(titleList);
						
						var url3 = '/project03/index/regionregion/' + $('#region_name').val();
						$.getJSON(url3, function(data3) {
							$(data3).each(function() {
								var name = this.region_name.split(",");
								var tagname = '';
								for(var i=0; i<name.length; i++){
									tagname +="#"+name[i]+" ";
								}
								
								regionList.push({region_name: tagname, trip_no: this.trip_no});	
							});
						
							for (var i = 0; i < imageList.length; i++) {
								for (var j = 0; j < titleList.length; j++) {
									if (imageList[i].content_no == titleList[j].trip_no) {
										imageList[i].tour = titleList[j].title;
										imageList[i].condition_sex = titleList[j].condition_sex;
										imageList[i].condition_age = titleList[j].condition_age;
									} 
									for (var k = 0; k < regionList.length; k++) {
										if (imageList[i].content_no == regionList[k].trip_no) {
											imageList[i].city = regionList[k].region_name;
										} 
									}	
								}	
							}
							
							
							getAllThumnail();
						});
							
						
					});

				});// end getJSON()

			};//end of getThumnails()
			
			
			
			// 기간 검색: 해당 기간의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Period() {
				
				// wm_image 리스트
				imageList = [];
				// wm_tour 리스트(제목)
				titleList = [];
				// wm_tour_region 리스트(지역)
				regionList = [];
				
				var url1 = '/project03/index/periodimage/' + $('#start_date').val() + "/" + $('#end_date').val();
				$.getJSON(url1, function(data1) {
					$(data1).each(function() {
						imageList.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}, condition_sex: {}, condition_age: {}});	
					});
					
					var url2 = '/project03/index/periodtitle/' + $('#start_date').val() + "/" + $('#end_date').val();
					$.getJSON(url2, function(data2) {
						$(data2).each(function() {
							titleList.push({trip_no: this.trip_no, title: this.title, condition_sex: this.condition_sex, condition_age: this.condition_age});	
						});
						console.log(titleList);
						
						var url3 = '/project03/index/periodregion/' + $('#start_date').val() + "/" + $('#end_date').val();
						$.getJSON(url3, function(data3) {
							$(data3).each(function() {
								var name = this.region_name.split(",");
								var tagname = '';
								for(var i=0; i<name.length; i++){
									tagname +="#"+name[i]+" ";
								}
								
								regionList.push({region_name: tagname, trip_no: this.trip_no});	
							});
						
							for (var i = 0; i < imageList.length; i++) {
								for (var j = 0; j < titleList.length; j++) {
									if (imageList[i].content_no == titleList[j].trip_no) {
										imageList[i].tour = titleList[j].title;
										imageList[i].condition_sex = titleList[j].condition_sex;
										imageList[i].condition_age = titleList[j].condition_age;
									} 
									for (var k = 0; k < regionList.length; k++) {
										if (imageList[i].content_no == regionList[k].trip_no) {
											imageList[i].city = regionList[k].region_name;
										} 
									}	
								}	
							}
							
							getAllThumnail();
						});
					
					});

				});// end getJSON()

			};//end of getThumnails()
			
			function getAllThumnail() {
				
				var list = '';
				
				for(var i = 0; i<imageList.length; i++){

					list += '<div class="portfolio-item col-md-3 col-sm-6">'
							+ '<div class="portfolio-thumb">'
							+ '<figure>'
							+ '<a href="../tour/detail?trip_no=' + imageList[i].content_no + '"><img src="../' + imageList[i].img_url + '" width="300" height="240"><br/>'
							+ '<div>제목: ' + imageList[i].tour + '</div>'
							+ '<div>' + imageList[i].city + '</div>'	
							+ '<div>' + imageList[i].condition_sex +  '&nbsp;&nbsp; / &nbsp;&nbsp;' + imageList[i].condition_age + '</div>'
							+ '</figure>'
							+ '</div>'
							+ '</div>';
				}

				$('#tourDetailSearch').html(list);
	
				//end of getThumnails()
			};
			
			
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
			
			$("#start_date, #end_date").datepicker({
				dateFormat : 'yy-mm-dd'
			});
			
			$('#btn_create_tour').click(function() {
				location = '../tour/GoRegister';
			});
			
		});
	</script>
</body>
</html>