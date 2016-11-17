<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">
#dropDownType {
	width: 50px
}

#selectOption {
	padding-left: 655px
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

		<nav id="menuBar">
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

		</nav>


		<section id="main">

			<table id="checkboxTestTbl" border="1px">
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
			</table>



			<div id="selectOption">
				<select id="dropDownType">
					<option value="none">--</option>
					<option value="agree">승인</option>
					<option value="banish">탈퇴</option>
					<option value="audi">Audi</option>
				</select> <input type="submit" value="저장" id="saveMyUser">
			</div>

		</section>

		<aside id="sidebar">
			<img alt="고양이" src="resources/theme/images/css_cat.jpg" style="width: 170px" /> 
			<img alt="강아지" src="resources/theme/images/css_dog.jpg" style="width: 170px" />
			<img alt="백조" src="resources/theme/images/css_swan.jpg" style="width: 170px" />
		</aside>

	</div>


	<script type="text/javascript">
		$('#checkboxTestTbl > tr > th >input: checked').each(function(index) {
			alert($(this).val());
		})
	</script>



</body>
</html>