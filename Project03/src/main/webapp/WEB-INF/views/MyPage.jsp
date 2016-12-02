<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/templatemo_style.css"/>">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<style type="text/css">
#dropDownType {
	width: 50px
}

#selectOption {
	padding-left: 655px
}

ul {
	list-style-type: none;
}
.personal {
	border:none;
	width: 300px;
	height: 50px;
}

.content_profile_img{
	width: 200px;
	height: 200px;
	vertical-align: middle;
	display: inline-block;
	border-radius: 70px;
	-moz-border-radius: 70px;
	-khtml-border-radius: 70px;
	-webkit-border-radius: 70px;
	margin: auto;
}
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">

</head>

<body>
	<header style="background-color: #F79F12; height: 60px">
		<p style="font-weight: bold; color: white; font-size: 25px;">같이 가자</p>
		<p><a href="index" style="font-weight: bolder; color: white; font-size: 18px;">마이페이지 TEST 화면입니다</a></p>
	</header>


	<div Class="wrapper">
		<div style="background-color: #F79F12; height: 520px;">
			<div
				style="width: 1026px; height: 200px; text-align: center; vertical-align: center; margin: auto;">
				<div
					style="display: block; width: 100%; height: 100%; margin-top: 20px; margin: 10px; vertical-align: center; text-align: center;">

					<div id="content_profile"
						style="display: inline-block; text-align: center; vertical-align: middle; padding-top: 14px;">

					</div>

				</div>

			</div>



			<div
				style="display: block; width: 1026px; height: 260px; margin: auto; vertical-align: center; text-align: center; padding-top: 30px">
				<div>
					<input type="text" Class="personal" value="${vo.nickname }" readonly="readonly" style="background-color: transparent; color: white; font-size: 20px; font-weight: bold; text-align: center;" /> 
					<input type="text" Class="personal" value="${vo.age }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
				</div>
				<div>
					<input type="text" Class="personal" value="${vo.sex }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
					<input type="text" Class="personal" value="${vo.email }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
				</div>
				<textarea rows="" cols="" readonly="readonly" style="width: 600px; height: 120px; border: none; margin-top: 20px; background-color: #F19A0D; color: white; font-weight: bold; font-size: 25px">${vo.introduce }
				</textarea>
				
			</div>
				<input type="button" id="updatePersonal" value="수정" style="text-align: right; vertical-align: right; float: right; font-weight: bold; color: white; background-color: transparent;" /><br />
		</div>	

			<div style="display: block; width: 1026px; margin-top: 16px;">
				<p></p>
				<input type="hidden" id="mytour_mno" name="mytour_mno"
					value="${mno}" />
				<button type="button" id="mytour" style="font-weight: bold; background-color: transparent;">내 여행 리스트</button>
				<button type="button" id="mytourReview" style="font-weight: bold; background-color: transparent;">내 후기 리스트</button>
				
				<div class="row" id="toursearch" style="width: 1026px; margin-top: 30px;"></div>
				


			</div>
		
	</div>


	<!-- <script type="text/javascript">
		$('#checkboxTestTbl > tr > th >input: checked').each(function(index) {
			alert($(this).val());
		})
	</script> -->

			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<script>
	
		$(document).ready(function() {
			
			
			getThumnails_By_Mno();

			// 지역 검색: 해당 지역의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Mno() {
				
				var url = '/project03/MyPage/' + ${mno};

				$.getJSON(url, function(data) {
					var list = '';

					$(data).each(function() {
						
					alert("리스트 출력")
					
						console.log("this.content_no:"+this.content_no);
						list += '<div class="portfolio-item col-md-3 col-sm-6">'
								+ '<div class="portfolio-thumb">'
								+ '<figure>'
								+ '<a href="tour/detail?trip_no=' + this.content_no + '"><img src="' + this.img_url + '" width="300" height="200">'
								+ '</figure>'
								+ '</div>'
								+ '</div>';
					});
	
					$('#toursearch').html(list);

				});// end getJSON()

			};//end of getThumnails()
			
			// mno 검색 버튼 처리
			$('#mytour').click(function() {
				alert("나와라");
	
				var mytour_mno = ${mno};
	
				if (mytour_mno == "") {
					alert('검색할 mno을 입력하세요');
				} else {
					alert('mno 검색 메소드 호출 ');
					getThumnails_By_Mno();
				}
	
			});
		});		
		
		var mno_img = '${inserterImg}';
		
		$('#content_profile').html('<img src="'+mno_img+'" class="content_profile_img"/>');
		alert(mno_img);
		</script>
	
	




		</body>
</html>