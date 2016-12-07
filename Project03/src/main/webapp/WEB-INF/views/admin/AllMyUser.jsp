<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">
#top{
		color: white;
		background-image: url("../resources/theme/images/slide1.jpg");
		background-size: 100%;
		background-repeat: no-repeat;
		padding: 15px;
}


#dropDownType {
	width: 50px
}

#selectOption {
	padding-left: 655px
}

table, th, td {
   border: 1px solid #e65b05;
   border-collapse: collapse;
   text-align: center;
   vertical-align: middle;
 }
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">

</head>

<body>
	<header id="top">
			<div>&nbsp;</div>	
			<div>&nbsp;</div>
			<h1>&nbsp;관리자님 안녕하세요</h1>
			<div>&nbsp;</div>
		<p id="dpTime">&nbsp;&nbsp;</p>
	</header>


	<div Class="wrapper">

		<nav id="menuBar">
			<ul id="menuList">
				<li Class="menuItem"><a Class="mylink" href="callbackAdmin">가입승인</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="AdminMsg">공지사항</a>
				</li>
	
			<li Class="menuItem"><a Class="mylink" href="AllAdminMSG">지난공지</a>
				</li>
				<li Class="menuItem"><a Class="mylink" href="MyUserInfo">유저 등급</a></li>

				<li Class="menuItem"><a Class="mylink" href="SendMsg">홈(아직)</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMyUser">전체 유저</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMySubAdmin">관리자 관리</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="../index">메인</a>
				</li>



			</ul>

		</nav>


		<section id="main">
<!-- 	model.addAttribute("cntUsers" , cntUsers) -->
	<form id="pageForm">
			<table id="checkboxTestTbl" >
				<caption style="border-top:  1px solid orange; border-left:  1px solid gray; border-right:  1px solid gray; border-radius: 99px 0px 0px 0px; border: 2px solid #e65b05; background-color : orange;">전체 유저 정보 확인     (현재인원 : ${ cntUsers} 명)     </caption>
				<colgroup>
					
					<col width="100px">
					<col width="200px">
					<col width="200px">
					<col width="200px">
					<col width="200px" />
					<col width="200px" />
				</colgroup>
	
				<tr>
					
					<th>유저 번호</th>
					<th>유저 아이디</th>
					<th>유저 닉네임</th>
					<th>유저 연락처</th>
					<th>유저 이메일</th>
					<th>유저 가입날짜</th>
				</tr>

			
			

					<c:forEach var="vo" items="${newMemberList}">
				
					<tr class= "select0">
						
						<td>${vo.mno }</td>
						<td>${vo.userid }</td>
						<td><a href="/project03/mypage/UserPage/${vo.mno}">${vo.nickname }</a></td>
						<td>${vo.phone }</td>
						<td>${vo.email }</td>
					        <td>
	       						 <fmt:formatDate value="${vo.joindate }" 
	          						  pattern="yyyy-MM-dd HH:mm:ss"/>
        					</td>
			
					</tr>


						</c:forEach>

			</table>
  
					</form>
		</section>

	</div>


<script type="text/javascript">

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


/*
	var frm = $('#pageForm');
	
    // table 안의 tr 안의 td 안의 a 태그 click 커스터마이징
    $('table tr td a').click(function() {
    	//event.preventDefault();
    	//var bno = $(this).attr('href');
    	
    	
    	//frm.find('[name="bno"]').val(bno);
    	//frm.attr('action', 'detail');
    	//frm.attr('method', 'get');
    	//frm.submit();
    });

*/













</script>

</body>
</html>