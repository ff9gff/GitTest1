<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 외부 css 파일을 링크 -->
<link rel="stylesheet" href="css/mystyle1.css"/>
<style type="text/css">
#form-main{
	width:100%;
	float:left;
	padding-top:0px;
}
#form-div {
	background-color:rgba(72,72,72,0.4);
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
  margin-top:30px;
	margin-left: -260px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}

textarea {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}




#dropDownType{
width: 50px
}

#selectOption{
padding-left: 655px

}

</style>
<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">
</head>



<body>
<!-- HTML5부터 문서의 구조에 의미를 두기 위해 생긴 semantic 태그 -div일정부분 대체
1. <header>: 문서의 머리글의미 
2. <nav> :문서의 내비게이션 메뉴
3. <aside>: 문서의 사이드 메뉴 
4. <section> 실제 본문에 해당 하는 주된 컨텐츠
5. <article> 본문에 포함되는 기사(컨텐트)
6. <footer> :문서의 꼬리글 그냥 권장 사항임 안써도 됨  -->


	<header id="top">
		<h1>관리자님 안녕하세요 </h1>
		<p>Test 화면입니다. </p>
	</header>
	
	
	<div Class="wrapper">
	
	<nav id ="menuBar">
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
				
				<li Class="menuItem"><a Class="mylink" href="index">메인</a>
				</li>

			</ul>	
		
		</nav>
		
		
		
		<section id="main">
			
		<h1>쪽지 보내기 화면 입니다 .</h1>
		    <div id="form-main">
  <div id="form-div">
    <form class="form" name="form1" id="form1" action="sendAllMyUser" method="post">
      
      <p class="name">
        <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="관리자" id="adminId" readonly="readonly" />
      </p>
      
      <p class="allMyUser">
        <input name="text" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="모든 사용자" readonly="readonly" />
       
      </p>
      
      <p class="text">
        <textarea name="text" class="validate[required,length[6,300]] feedback-input" id="msg_content"   placeholder="Comment"></textarea>
     	<input type="hidden" id="value" name="value">
      </p>
      
      
      <div class="submit">
        <input type="button" value="SEND" id="sendBtn"/> <%-- submit 에서 버튼으로 바꿈  --%>
        <div class="ease"></div>
      </div>
    </form>
  </div>
 </div>
 

		</section>
		
	
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
<script type="text/javascript">
$(document).ready(function(){
	
		var frm = $('#form1');
		
		$('#sendBtn').click(function(){//sendBtn
		var sendText = $('#msg_content').val(); 
		alert('공지사항 전송 성공'+ sendText);
		//<input type="hidden" id="value" name="value">
		$("#value").val(sendText);
		frm.submit();
		
		
		
		
		/*	
				alert(sendText);
		frm.attr('action','sendAllMyUser');
		frm.attr('method','post');
		frm.submit();
		
		
		
		
		$('#btnUpdate').click(function() {
		frm.attr('action', 'update'); // attr('속성이름', '속성값')
		frm.attr('method', 'post');
		frm.submit();
		
		
	
	});
		*/
	});
	
	
	
});

//comment




</script>






</body>
</html>