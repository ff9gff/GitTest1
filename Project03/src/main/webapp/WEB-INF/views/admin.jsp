<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		<h1>관리자님 안녕하세요</h1>
		<p>Test 화면입니다.</p>
	</header>


	<div Class="wrapper">

		<nav id="menuBar">
			<ul id="menuList">
				<li Class="menuItem"><a Class="mylink" href="callbackAdmin">가입승인</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="AdminMsg.jsp">공지사항</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="MyUserInfo">유저
						정보</a></li>

				<li Class="menuItem"><a Class="mylink" href="MyUserInfo.jsp">홈(아직)</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="index">메인</a>
				</li>



			</ul>

		</nav>


		<section id="main">

			<table id="checkboxTestTbl" border="1px">
				<caption>유저 정보 확인</caption>
				<colgroup>
					<col width="40px">
					<col width="100px">
					<col width="200px">
					<col width="200px;" />
					<col width="200px;" />

				</colgroup>
	
				
				
				
				<tr>
					<th><input type="checkbox"></th>
					<th>유저 번호</th>
					<th>유저 아이디</th>
					<th>유저 이메일</th>
					<th>유저 가입날짜</th>
				</tr>
				
		
				<c:forEach var="vo" items="${newMemberList}">
				
					<tr>
						<td><input type="checkbox"></td>
						<td>${vo.mno }</td>
						<td>${vo.userid }</td>
						<td>userEmail1</td>
						<td>JoinDate!
						</td>
			
					</tr>
				
				
				
				</c:forEach>
				<tr>
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user1</th>
					<th>userEmail1</th>
					<th>JoinDate1</th>
				</tr>
				<tr>
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user2</th>
					
					<th>userEmail2</th>
					<th>JoinDate2</th>
				</tr>
				<tr>
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user3</th>
					<th>userEmail3</th>
					<th>JoinDate3</th>
				</tr>
				<tr>
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user4</th>
					<th>userEmail4</th>
					<th>JoinDate5</th>
				</tr>
				<tr>
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user5</th>
					<th>userEmail5</th>
					<th>JoinDate5</th>
				</tr>



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