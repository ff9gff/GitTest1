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

#menuBar{

 margin-top:30px;

}



#form-main{
	
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	float: left;
	left: 50%;
	position: absolute;
  margin-top:30px;
	margin-left: -500px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
	
	
}


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
		<div>&nbsp;</div>
		<h1>&nbsp;관리자님 안녕하세요</h1>
		<p id="dpTime">&nbsp;&nbsp;</p>
		</header>

		<div Class="wrapper">

		<nav id="menuBar">
			<ul id="menuList">
				<li Class="menuItem"><a Class="mylink" href="callbackAdmin">가입승인</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="AdminMsg">공지사항</a>
				</li>

				
				<li Class="menuItem"><a Class="mylink" href="MyUserInfo">유저 등급</a></li>

				<li Class="menuItem"><a Class="mylink" href="SendMsg">홈(아직)</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMyUser">전체 유저</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMySubAdmin">관리자 관리</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="index">메인</a>
				</li>
			</ul>
		</nav>
		
		<section id="main">
	
	<!-- todo 
	
	
	
	-->
	<form action="MiniSendToAllMyUser" method="get" id="form2" name="form2">
	<a href="javascript:OpenPop('', '', '', '');">누르세요!</a>
	</form>
	<table id="msgAdminMSG" border="1px">
		<caption>관리자 지난 공지함 </caption>
		<colgroup>
		<col width="40px">
		<col width="40px">
		<col width="500px">

		</colgroup>

	<tr>
		<th>번호</th>
		<th>번호</th>
		<th>공지사항</th>
	</tr>
	

	<c:forEach var ="vo" items="${msgContext }">
		<tr>
			<td><input type="checkbox"></td>
			<td>${x=x+1 }</td>
			<td>${vo }</td>
		</tr>
	
	
	
	
	
	</c:forEach>






</table>
	

		
		</section>


	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
	<script type="text/javascript">
	
		

		
		// 실시간 시간 보내는  모습입니다. 
		 setInterval("dpTime()",1000);
		    function dpTime(){
		       var now = new Date();
		        hours = now.getHours();
		        minutes = now.getMinutes();
		        seconds = now.getSeconds();
		 
		        if (hours > 12){
		            hours -= 12;
		        ampm = "오후 ";
		        }else{
		            ampm = "오전 ";
		        }
		        if (hours < 10){
		            hours = "0" + hours;
		        }
		        if (minutes < 10){
		            minutes = "0" + minutes;
		        }
		        if (seconds < 10){
		            seconds = "0" + seconds;
		        }
		document.getElementById("dpTime").innerHTML = ampm + hours + ":" + minutes + ":" + seconds ;
		    };
		
		
		
			var f = $("#form2"); 
		    function OpenPop(url,name,width,height)
		    {
		   		
		    	alert('hi');
		        window.open("", "pop", "width=800, height=800"); // 먼저 빈 창을 pop 라는 이름으로 열어놓고
		       // document.form1.action = "MiniSendToAllMyUser"; // '팝업주소.aspx' 를 form2이 실행될 action 으로 지정한다.
		        document.form2.target = "pop"; // 이 부분이 핵심! 열어놓은 빈 창(pop)을 form2가 날아갈 target으로 정한다.
		        document.form2.method = "get"; // target에 submit할 방식을 post 방식으로 지정한다.
		        document.form2.submit(); // target에 쏜다.
		        
		        // f.target="pop";
		       // f.submit();
		        
		        //document.form1.action = "MiniSendToAllMyUser"; // '팝업주소.aspx' 를 form2이 실행될 action 으로 지정한다.
		        //document.form1.target = "pop"; // 이 부분이 핵심! 열어놓은 빈 창(pop)을 form2가 날아갈 target으로 정한다.
		        //document.form1.method = "get"; // target에 submit할 방식을 post 방식으로 지정한다.
		       // document.form1.submit(); // target에 쏜다.
		         
		        
		    }
		
		
		
		
		
		
	</script>



</body>
</html>