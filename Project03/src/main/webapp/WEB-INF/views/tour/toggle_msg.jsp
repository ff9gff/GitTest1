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
	<div id="msg_header">�����</div>
	<input type="text" value="������(����)"/>
	<div id="msg_send">
		<span>�޴»��</span><span>����</span>
	</div>
	<div id="msg_text">
		<textarea rows="20" cols="10">�����̴�</textarea>
	</div>
</div>


</body>
</html>