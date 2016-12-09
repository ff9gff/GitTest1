<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">


<style type="text/css">

@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);

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
 
 .menuItem{
 	background-color: lightblue;
 	font-family: 'Jeju Hallasan', serif;
 }
 #pageForm{
	 font-family: 'Jeju Hallasan', serif;
 }
 
</style>


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

				<li Class="menuItem" ><a Class="mylink" href="AllAdminMSG" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/gongji.png" style="width: 40px; height: 40px; display: inline; text-align: center; vertical-align: middle;"/> 공지사항</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="MyUserInfo" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/test.png" style="width: 40px; height: 40px; display: inline; text-align: center; vertical-align: middle;"/> 유저 등급</a></li>

				<li Class="menuItem"><a Class="mylink" href="../SendMsg" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/gongji.png" style="width: 40px; height: 40px; display: inline; text-align: center; vertical-align: middle;"/>홈(아직)</a>
				</li>
					
					<li Class="menuItem"><a Class="mylink" href="AllMyUser" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/allperson.png" style="width: 40px; height: 40px; display: inline; text-align: center; vertical-align: middle;"/> 전체 유저</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMySubAdmin" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/new4.png" style="width: 40px; height: 40px; display: inline; text-align: center; vertical-align: middle;"/> 회원 관리</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="../index" style="text-align: center; vertical-align: middle;"><img  src="../resources/theme/images/house.png" style="width: 40px; height: 40px; display: inline; vertical-align: middle;"/> 메인&nbsp;가자 </a>
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
					
					<th>번호</th>
					<th>아이디 (ID)</th>
					<th>닉네임</th>
					<th>연락처 (PHONE)</th>
					<th>이메일 (E-MAIL)</th>
					<th>가입날짜 (DATE)</th>
				</tr>

			
			

					 <c:forEach var="vo" items="${listPage}">
					
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


		<br/>
<ul class="pageLinks">
    <c:if test="${pageMaker.hasPrev }">
    <li><a href="${pageMaker.startPageNum - 1 }">&laquo;이전</a></li>
    </c:if>
    
    <c:forEach begin="${pageMaker.startPageNum }"
        end="${pageMaker.endPageNum }"
        var="num">
    <li><a href="${num }">${num }</a></li>
    </c:forEach>
    
    <c:if test="${pageMaker.hasNext }">
    <li><a href="${pageMaker.endPageNum + 1 }">다음&raquo;</a></li>
    </c:if>
    
</ul>			
<%-- 현재 페이지, 페이지 당 보여줄 게시글 개수를 서버로 보내주기 위해서,
사용자에게는 보이지 않지만, 서버로 보낼 정보를 양식 데이터로 저장하는 form --%>
<form id="pageForm2">
    <input type="hidden" name="bno" />
    <input type="hidden" name="page" 
        value="${pageMaker.myUcriteria.page }" />
    <input type="hidden" name="perPage"
        value="${pageMaker.myUcriteria.perPage }" />
</form>			
					
					
					
</section>

	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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







var frm = $('#pageForm2');

$('.pageLinks li a').click(function() {
	alert('하이');
	event.preventDefault(); // 기본 이벤트 처리 방식을 방지(막음)
	// pageForm 안에 있는 name="page"인 요소를 찾아서
	// 이동할 페이지 번호를 세팅
	var targetPage = $(this).attr('href');
	frm.find('[name="page"]').val(targetPage);
	// 페이징 화면으로 보내기 위한 action 정보
	frm.attr('action', 'AllMyUser');
	// 페이징 화면을 처리하는 Controller의 method(요청 처리 방식)
	frm.attr('method', 'get');
	// 폼 양식을 서버로 전송
	frm.submit();
});





</script>

</body>
</html>