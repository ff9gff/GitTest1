<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>

<body>
	<h1>로그인 페이지</h1>
	
	<form action="login-post" method="post">
		<input type="text" name="userid" placeholder="아이디" required /> <br/><br/>
		<input type="password" name="pwd" placeholder="비밀번호" required /> <br/><br/>	
		<input type="submit" value="로그인" /> <br/><br/>	
		<%-- "로그인" 버튼을 클릭했을 때 서버로 쿼리 스트링을 보내기 위해서 --%>
		<input type="hidden" name="query" value="<%=request.getQueryString() %>" />
	</form>
</body>
</html>