<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
   border: 1px solid gray;
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
				
						
				
				<li Class="menuItem"><a Class="mylink" href="AllAdminMSG">공지사항</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="MyUserInfo">유저 등급</a></li>

				<li Class="menuItem"><a Class="mylink" href="../SendMsg">홈(아직)</a>
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
	
	
	<form id="form-main">
			<table id="checkboxTestTbl" >
				<caption style="border-top:  1px solid gray; border-left:  1px solid gray; border-right:  1px solid gray; background-color: lightgray">유저 정보 확인</caption>
				<colgroup>
					<col width="40px">
					<col width="100px">
					<col width="200px">
					<col width="200px;" />
					<col width="200px;" />

				</colgroup>
	
			
			
				
				<tr>
					<th>번호</th>
					<th>유저 번호</th>
					<th>유저 아이디</th>
					<th>유저 연락처</th>
					<th>유저 이메일</th>
					<th>유저 가입날짜</th>
				</tr>
				
		
				<c:forEach var="vo" items="${newMemberList}">
				
					<tr class= "select0">
						<td >${x=x+1 }</td>
						<td>${vo.mno }</td>
						<td>${vo.userid }</td>
						<td>${vo.phone }</td>
						<td>${vo.email }</td>
					        <td>
	       						 <fmt:formatDate value="${vo.joindate }" 
	          						  pattern="yyyy-MM-dd HH:mm:ss"/>
        					</td>
			
					</tr>
			
				
				</c:forEach>
				<tr class= "select0">
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user1</th>
					<th>userphone</th>
					<th>userEmail1</th>
					<th>JoinDate1</th>
				</tr>
				<tr class= "select0">
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user2</th>
					<th>userphone</th>
					<th>userEmail2</th>
					<th>JoinDate2</th>
				</tr>
				<tr class= "select0">
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user3</th>
					<th>userphone</th>
					<th>userEmail3</th>
					<th>JoinDate3</th>
				</tr>
				<tr class= "select0">
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user4</th>
					<th>userphone</th>
					<th>userEmail4</th>
					<th>JoinDate5</th>
				</tr>
				<tr class= "select0">
					<th><input type="checkbox" /></th>
					<th>#</th>
					<th>user5</th>
					<th>userphone</th>
					<th>userEmail5</th>
					<th>JoinDate5</th>
				</tr>

			</table>
  
				<input type="button" value="수락" id="saveMyUser">
					</form>
		</section>


	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
	<script type="text/javascript">
	
		

		
		$('#saveMyUser').click(function(){
			
			$.ajax({
				type:'put',
				url:'/project03/users/updateLevelOne',
				headers:{
					'Content-Type':'application/json',
					'X-Http-Method-Ovveride':'PUT'
				}
				
				
			});
			
	
			$('.select0').empty();
			
		});//end saveMyuser
		
		
		
		
		
		
		
		
		
		
		
		
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
		
		
		
		
		
		
		
		
		
		
	</script>



</body>
</html>