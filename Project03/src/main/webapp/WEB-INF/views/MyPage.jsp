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
}
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">

</head>

<body>
	<header id="top">
		<h1>회원님 안녕하세요</h1>
		<p>마이페이지 TEST 화면입니다</p>
	</header>


	<div Class="wrapper">
		<div>	
			<div style="display: inline-block; width: 25%; height: 220px; margin-top:20px; margin: 10px; vertical-align: top;">

				<div id="content_profile"
					style="width: 110px; height: 100px; display: inline-block; text-align: center; vertical-align: middle;">

				</div>

			</div>		
			<div style="display: inline-block; width: 63%; height: 220px; margin-top:20px; margin: 10px; vertical-align: top;">
					<input type="text" Class="personal" value="${vo.nickname }" readonly="readonly" /><br/>
					<input type="text" Class="personal" value="${vo.age }" readonly="readonly" /><br/>
					<input type="text" Class="personal" value="${vo.sex }" readonly="readonly" /><br/>
					<input type="text" Class="personal" value="${vo.email }" readonly="readonly" /><br/>
					<input type="text" Class="personal" value="${vo.introduce }" readonly="readonly" />				
			</div>
			<div style="display: inline-block; width: 5%; height: 220px; margin-top:20px; margin: 10px; vertical-align: top;" >
			<input type="button" id="updatePersonal" value="수정" />
			</div>
		</div>
		
		<div>
			<p>내여행 리스트</p>
			<input type="hidden" id="mytour_mno" name="mytour_mno" value="${mno}" />
			<button type="button" id="mytour">내 여행 리스트</button>
			<button type="button" id="mytourReview">내 후기 리스트</button>
			<p>
			<div class="row" id="toursearch">

			</div>
			</p>
			
		
		</div>

		<!-- <nav id="menuBar">
			<ul id="menuList">
				<li Class="menuItem"><a Class="mylink" href="admin.jsp">회원 정보</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="AdminMsg.jsp">내 여행 목록</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="MyUserInfo.jsp">내 후기 목록</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="index">메인</a>
				</li>



			</ul>

		</nav> -->


		<section id="main">

			<%-- <table id="checkboxTestTbl" border="1px" >
				<caption>회원 정보</caption>
				<colgroup>
					<col width="40px">
					<col width="100px">
					<col width="200px">
					<col width="200px;" />
					<col width="200px;" />
					<col width="200px;" />

				</colgroup>
				<tr>
					<th><input type="checkbox"></th>
					<th>회원번호</th>
					<th>아이디</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>가입날짜</th>
				</tr>
				
				<c:forEach var="member" items="memberList">
					<tr>
						<th><input type="checkbox" /></th>
						<th>#</th>
						<th>user1</th>
						<th>Phone1</th>
						<th>userEmail1</th>
						<th>JoinDate1</th>
					</tr>
				</c:forEach>
			</table> --%>



			<!-- <div id="selectOption">
				<select id="dropDownType">
					<option value="none">--</option>
					<option value="agree">승인</option>
					<option value="banish">탈퇴</option>
					<option value="audi">Audi</option>
				</select> <input type="submit" value="저장" id="saveMyUser">
			</div> -->

		</section>

		<!-- <aside id="sidebar">
			<img alt="고양이" src="resources/theme/images/css_cat.jpg" style="width: 170px" /> 
			<img alt="강아지" src="resources/theme/images/css_dog.jpg" style="width: 170px" />
			<img alt="백조" src="resources/theme/images/css_swan.jpg" style="width: 170px" />
		</aside> -->

	</div>


	<!-- <script type="text/javascript">
		$('#checkboxTestTbl > tr > th >input: checked').each(function(index) {
			alert($(this).val());
		})
	</script> -->
	
	<script>
	
		$(document).ready(function() {

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
		
		$('#content_profile').html('<img src="../'+mno_img+'" class="content_profile_img"/>');
		</script>
	
	



</body>
</html>