<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#msg_header{
	color:  #ff5d3d;
	font-weight: bold; 
	font-size: 20px;
	height: 30px;
	padding-top: 10px;
}
#msg_send{

	border-bottom: 1px dotted lightgray;
	height: 25px;
	padding-top: 10px;

}
span{
	padding-left: 25px;
	padding-top: 5px;
}
#msg_text{
	padding-left: 20px;
	padding-top: 20px;
}
textarea{
	 min-width:340px; 
	 max-width:340px; 
	 min-height:340px; 
	 max-height:340px
}
</style>
</head>
<body>
<div style="width: 380px; height: 480px;">
	<div id="msg_header"><img src="../resources/theme/images/msg.PNG" style="width: 30px; height: 30px;">쪽찌쓰기</div>
	<input type="text" value="관리자(히든)" hidden/>
	<div id="msg_send">
		<span>받는사람</span><span>지구</span>
	</div>
	<div id="msg_text">
		<textarea>내용이다</textarea>
	</div>
</div>


</body>
</html>