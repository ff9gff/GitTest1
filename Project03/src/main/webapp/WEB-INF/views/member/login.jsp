<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<link rel="stylesheet" href="<c:url value="../resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="../resources/theme/css/font-awesome.css"/>">
<link rel="stylesheet" href="<c:url value="../resources/theme/css/animate.css"/>">
<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_misc.css"/>">
<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_style.css"/>">

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="../resources/theme//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="../resources/theme//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>


<style>
.searchRegion {
	display: none;
}

        a:link {
            color: red;
            text-decoration: none;
        }       
        a:visited {
            color: black;
            text-decoration: none;
        }        
        a:hover {
            color: blue;
            text-decoration: underline;
        }        
        <!-- a:link: 클릭하지 않은 링크 a:visited: 한번 클릭했던 혹은 다녀갔던 링크 a:hover: 링크를 클릭하려고 마우스를 가져갔을 때 decoration: 밑줄 none: 없는 상태 underline: 있는 상태 -->

</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->




	


	<div class="content-section" id="services">
		<div class="container">
			<div class="row">
				<div class="heading-section col-md-12 text-center">
					<h2>로그인</h2>
					<br />
					<br />
					
					<form action="login-post" method="post">
						<input type="text" name="userid" id="userid" placeholder="아이디" required /><br/><br/>
						<input type="password" name="pwd" id="pwd" placeholder="비밀번호" required /><br/><br/>
						<input type="submit" value="로그인" /><br/><br/>
						
						<%-- "로그인" 버튼을 클릭했을 때 서버로 쿼리 스트링을 보내기 위해서 --%>
						<input type="hidden" name="query" value="<%=request.getQueryString()%>" />
					</form>
					
					<a href="find_id">아이디</a>·<a>비밀번호 찾기</a>&nbsp;&nbsp;<a href="member_register01">회원가입</a>
					

				</div>
				<!-- /.heading-section -->
			</div>
			<!-- /.row -->
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

</body>
</html>