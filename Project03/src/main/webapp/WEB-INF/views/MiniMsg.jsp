<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

html{
	background-color: lightgreen;
}

#textArea{

  padding: 10px;
margin-left: 12px;
}

#confirm{
margin-top :5px;
margin-left: 490px;
padding: 10px;
}

#sendMen{

margin-left: 10px;

}

</style>
</head>
<body>
<form action="">
<p id="sendMen">
보낸이 : ${getname }
<!--  ${ value } 보낸 번호 -->
</p>
<textarea rows="15" cols="70" readonly id="textArea">${sendTxt }</textarea><br/>
</form>
<input type="button" id="confirm" value="확인">



<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

$("#confirm").click(function(){
	
	
	self.close();
	
	
});







</script>




</body>
</html>