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

<script src="resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>





<style>
.searchRegion {
	display: none;
}

.wrap textarea {
	width: 100%;
}
</style>




</head>



<!-- Smart Editor -->
<script type="text/javascript" src="<%=request.getContextPath()%>/se2폴더를 붙여넣기 한 곳의 경로/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2폴더를 붙여넣기 한 곳의 경로/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
 
 
<!-- Smart Editor -->
<script type="text/javascript">
 
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "textAreaContent",
    sSkinURI: "<%=request.getContextPath()%>/se2폴더를 붙여넣기 한 곳의 경로/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
 
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
 
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
    try {
        elClickedObj.form.submit();
    } catch(e) {
     
    }
}
 
// textArea에 이미지 첨부
function pasteHTML(filepath){
    var sHTML = '<img src="<%=request.getContextPath()%>/path에서 설정했던 경로/'+filepath+'">';
    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
}
 
</script>



<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->




	<div class="site-main" id="sTop">
		<div class="site-header">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="social-icons">
							<li><a href="#" class="fa fa-facebook"></a></li>
							<li><a href="#" class="fa fa-twitter"></a></li>
							<li><a href="#" class="fa fa-dribbble"></a></li>
							<li><a href="#" class="fa fa-linkedin"></a></li>
						</ul>
					</div>
					<!-- /.col-md-12 -->
				</div>
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
		<div class="site-slider">
			<div class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="overlay"></div> <img
							src="resources/theme/images/slide1.jpg" alt="">
							<div class="slider-caption visible-md visible-lg">
								<h2>여행 등록</h2>

								<br /> <br />

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

	<script>
		$(function() {
			$("#start_date, #end_date").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});
	</script>



	<div class="content-section" id="services">
		<div class="container">
			<div class="row">
				<div class="heading-section">
					<h2>여행 등록</h2>

				</div>
				<!-- /.heading-section -->



				<div class="wrap" >				
				<input type="hidden" name="mno" readonly="readonly"/><br />
				제목: <input type="text" name="title" style="width: 100%"/><br/>
				<form action="datepickTest" method="POST">
				날짜: <br/>
					<input type="text" id="start_date" name="start_date" placeholder="시작일"> ~ 
					<input type="text" id="end_date" name="end_date" placeholder="종료일">
				</form>
				성별 조건:<br/> 
				<div> 
				남자 <input type="radio" name="condition_sex" value="1"/> 
				여자 <input type="radio" name="condition_sex" value="2"/> 
				조건없음 <input type="radio" name="condition_sex" value="3"/> 
				</div>
				연령 조건:<br/>
				<div> 
				20대 <input type="radio" name="condition_age" value="1"/> 
				30대 <input type="radio" name="condition_age" value="2"/> 
				40대 <input type="radio" name="condition_age" value="3"/> 
				50대 <input type="radio" name="condition_age" value="4"/>
				
				<textarea style="width: 100%" rows="10" name="content" id="textAreaContent" cols="80"></textarea>
				
				</div>
												
				</div>				
				
					<div>
						<form action="send" method="post" id="frm">
							<textarea name="smarteditor" id="smarteditor" rows="10"
								cols="100" style="width: 766px; height: 412px;"></textarea><br/>
							<input type="button" id="savebutton" value="서버전송" />
						</form>

						
						<br /> <br /> 
						<input type="button" name="register" value="등록">
						<input type="button" name="register_cancel" value="취소">
					</div>

				</div>


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



	<script src="resources/theme/js/bootstrap.js"></script>
	<script src="resources/theme/js/plugins.js"></script>
	<script src="resources/theme/js/main.js"></script>

</body>
</html>