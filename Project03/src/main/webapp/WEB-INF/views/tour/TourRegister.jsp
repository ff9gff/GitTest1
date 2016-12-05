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
 
<script
   src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
 
<script type="text/javascript"
   src="../resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
 
<style>
.searchRegion {
   display: none;
}
 
.wrap textarea {
   width: 100%;
}
 
 
</style>
 
 
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
									<li class="active"><a href="index">메인</a></li>
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
								<h2>같이가자</h2>
							</div>
						</li>
						<li>
							<div class="overlay"></div> <img
							src="../resources/theme/images/slide2.jpg" alt="">
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
 
 
	
	
	<script>
		$(function() { //전역변수선언
			
			$("#start_date, #end_date").datepicker({
				dateFormat : 'yy-mm-dd'
			});
			
			var editor_object = [];
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : editor_object,
				elPlaceHolder : "smarteditor",
				sSkinURI : "../resources/smarteditor/SmartEditor2Skin.html",
				htParams : {
					// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
					bUseToolbar : true,
					// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
					bUseVerticalResizer : true,
					// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
					bUseModeChanger : true,
				}
			});
			
			$('#imageFile').on('change', function() {
			      
		    	ext = $(this).val().split('.').pop().toLowerCase(); //확장자
		      
		      	//배열에 추출한 확장자가 존재하는지 체크
		      	if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
		        	resetFormElement($(this)); //폼 초기화
		         	window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
		      	} else {
		        	file = $('#imageFile').prop("files")[0];
		         	blobURL = window.URL.createObjectURL(file);
			        $('#image_preview img').attr('src', blobURL);
			        document.getElementById("profile-image").style.display = "inline";
			        $('#image_preview img').attr('width', '300px');
			        $('#image_preview img').attr('height', '300px');
			        document.getElementById("btn_profile-image_remove").style.display = "inline";
			        //$('#image_preview').slideDown(); //업로드한 이미지 미리보기
			        $('#image_preview').show(); //업로드한 이미지 미리보기
		     	}
			});
 
			//전송버튼 클릭이벤트
			$("#savebutton").click(function() {
				//id가 smarteditor인 textarea에 에디터에서 대입
				editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
				// 이부분에 에디터 validation 검증
				
				//폼 submit
				$("#frm").submit();
			})
			
			$("#cancelbutton").click(function() {
				location = 'cancelTourRegister';
			})
			
			$("#homebutton").click(function() {
				location = '../index';
			})
 
	        $('#addOption').click(function() {
	            $('#regionTable > tbody:last').append('<tr><td><input type="text" name="region_name" style="width: 100%" placeholder="지역"/></td></tr>');
	        });
 
	        $('#delOption').click(function() {
	        	$('#regionTable > tbody:last > tr:last').remove();
	        });
 
		})
	</script>
 
 
 
 
	<div class="content-section" id="services">
		<div class="container">
        	<div class="row">
         
            <!-- /.heading-section -->
            <div class="heading-section">
            	<h2>여행 등록</h2>
            </div>
 
				<div class="wrap">
		
					<form action="TourRegisterInsert" method="post" id="frm" enctype="multipart/form-data">
			
						<label for="imageFile">썸네일 이미지</label><br/>       
					    <input type="file" id="imageFile" name="imageFile" value="<img src='${pageContext.request.contextPath}/image/${imageFile.id}' width='100' height='100'>"><br>
					            
					    <div id="image_preview">
					      <img src="#" id="profile-image" style="display: none;" /><br/>
					    </div><br/>      
					
						<input type="hidden" name="mno" value="${mno}" readonly="readonly" /> 
						
						<input type="text" name="title" style="width: 60%" placeholder="제목"/><br /> <br /> 
					
							
						<div id="region_plus">
							<table id="regionTable">
								<tr>
									<td><input type="text" name="region_name" style="width: 100%" placeholder="지역"/></td>
								</tr>
								<tbody></tbody>
							</table>
							<br /> 	
						</div>
						<button type="button" id="addOption">지역 추가</button><button type="button" id="delOption">지역 삭제</button><br /> <br /> 
	
						<input type="text" id="start_date" name="start_date" placeholder="시작일"> 
						~ 
						<input type="text" id="end_date" name="end_date" placeholder="종료일"> <br /> <br />
						
						<div>
							성별 조건: <br />
							남자 <input type="radio" name="condition_sex" value="1" /> 
							여자 <input type="radio" name="condition_sex" value="0" /> 
							조건없음 <input type="radio" name="condition_sex" value="2" />
						</div><br />
					
						<div>
							연령 조건: <br />
							20대 <input type="radio" name="condition_age" value="1" /> 
							30대 <input type="radio" name="condition_age" value="2" /> 
							40대 <input type="radio" name="condition_age" value="3" /> 
							조건없음 <input type="radio" name="condition_age" value="4" />
						 </div><br />		 
						 
						
						<textarea name="content" id="smarteditor" rows="10"
							cols="100" style="width: 766px; height: 412px;">	
						</textarea><br /><br />		
													
					</form>	
 
					<input type="button" id="savebutton" value="작성" />
					<input type="button" id="cancelbutton" value="취소" />
					<input type="button" id="homebutton" value="홈으로" />
 
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
 
 
	<script src="../resources/theme/js/bootstrap.js"></script>
	<script src="../resources/theme/js/plugins.js"></script>
	<script src="../resources/theme/js/main.js"></script>
	
 
</body>
</html>