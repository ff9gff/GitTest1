<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
b {
	display: inline-block;
}
#mini_header {
	display: inline-block;
	float: right;
}

</style>
</head>
<body>
	<div class="site-main" style="height: 15%;">
		<b>같이가자</b>
		<div id="mini_header">
			<c:if test="${empty login_id }">
				<%-- 세션에 로그인 정보가 없는 경우 --%>
				<button id="btnMemberRegister">회원가입</button>
				<button id="btnLogin">로그인</button>
	
			</c:if>
			
			<c:if test="${not empty login_id }">
				<%-- 세션에 로그인 정보가 있는 경우 --%>
				<button id="btnMypage">마이페이지</button>		
				<button id="btnLogout">로그아웃</button><br/>
			</c:if>	
		</div>		
	</div>

<script>
$(document).ready(function() {
	$('#btnMemberRegister').click(function() {
		location = '/project03/member/member_register01';
	});
	
	$('#btnLogin').click(function() {
		location = '/project03/member/login';
	});
	
	$('#btnMypage').click(function() {
		location = '/project03/';
	});	
	
	$('#btnLogout').click(function() {
		location = '/project03/member/logout'; //logout 이라는 컨트롤러로 가겠다.
	});
	
});
</script>	
</body>
</html>