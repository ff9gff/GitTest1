<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 이거 안 쓰는 jsp입니다!!!  -->

<html class="no-js">

	<head>
		<meta charset="utf-8">
		<title>같이가자</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/font-awesome.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/animate.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_misc.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_style.css"/>">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
		
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		<script src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
		<script src="../resources/theme/js/bootstrap.js"></script>
		<script src="../resources/theme/js/plugins.js"></script>
		<script src="../resources/theme/js/main.js"></script>

		
<style>
.main-header{
 top: 30;
}	
</style>
</head>
<body>
<!-- 회원가입/로그인 부분 -->
<%@ include file="../top_header.jspf"  %>

	<!-- 헤더 메인부분 -->
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
							<li><a href="../admin">관리자</a></li>
							<li><a href="../login">로그인</a></li>
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


	<div class="wrap">				
						
						<form action="TourRegisterComplete" method="post" id="frm">
						
							<input type="hidden" name="trip_no" value="1" readonly="readonly" /> 
								
							<input type="hidden" name="mno" value="2" readonly="readonly" /> 
						
							<input type="text" name="title" style="width: 60%" value="${tourVO.title}" placeholder="제목"/><br /> <br /> 
									
							<input type="text" id="start_date" name="start_date" value="${tourVO.start_date}" placeholder="시작일"> 
							~ 
							<input type="text" id="end_date" name="end_date" value="${tourVO.end_date}" placeholder="종료일"> <br /> <br />
							
							성별 조건: <input type="text" id="condition_sex" name="condition_sex" value="${tourVO.condition_sex}" placeholder="성별조건"> <br /> <br />
						
							연령 조건: <input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
			
							<textarea name="content" id="smarteditor" rows="10" readonly="readonly"
								cols="100" style="width: 766px; height: 412px;">${tourVO.content}	
							</textarea><br /><br />									
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							<input type="text" id="condition_age" name="condition_age" value="${tourVO.condition_age}" placeholder="나이조건"> <br /> <br />
							
						</form>	

					
				</div>
				
			






</body>
</html>