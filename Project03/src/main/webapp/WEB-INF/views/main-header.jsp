<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_style.css"/>">

		
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		<script src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
		<script src="../resources/theme/js/bootstrap.js"></script>
		<script src="../resources/theme/js/plugins.js"></script>
		<script src="../resources/theme/js/main.js"></script>
</head>
<body>

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


</body>
</html>