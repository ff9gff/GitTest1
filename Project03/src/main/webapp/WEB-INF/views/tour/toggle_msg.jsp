<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#msg_header{
	color: #ff5d3d; 
	font-weight: bold; 
	text-align: center;
	font-size: 20px;
	height: 40px;
	padding-top: 10px;
}
#msg_send{
	border-top: 1px solid gray;
}

</style>
</head>
<body>
<div style="width: 380px; height: 480px;">
	<div id="msg_header">쪽찌쓰기</div>
	<input type="text" value="관리자(히든)"/>
	<div id="msg_send">
		<span>받는사람</span><span>지구</span>
	</div>
	<div id="msg_text">
		<textarea rows="20" cols="10">내용이다</textarea>
	</div>
</div>


</body>
</html>