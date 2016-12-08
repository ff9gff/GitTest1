<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#feedback-page{
	text-align:center;
}

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

.feedback-input {
	color:#3c3c3c;
	font-family: Helvetica, Arial, sans-serif;
  font-weight:500;
	font-size: 18px;
	border-radius: 0;
	line-height: 22px;
	background-color: #fbfbfb;
	padding: 13px 13px 13px 54px;
	margin-bottom: 10px;
	width:100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  border: 3px solid rgba(0,0,0,0);
}

.feedback-input:focus{
	background: #fff;
	box-shadow: 0;
	border: 3px solid #3498db;
	color: #3498db;
	outline: none;
  padding: 13px 13px 13px 54px;
}

.focused{
	color:#30aed6;
	border:#30aed6 solid 3px;
}

/* Icons ---------------------------------- */
#name{
	background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#name:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
	background-size: 30px 30px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#nickname{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#nickname:focus{
	background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#comment{
	background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

textarea {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}

input:hover, textarea:hover,
input:focus, textarea:focus {
	background-color:white;
}

#button-blue{
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	float:left;
	width: 100%;
	border: #fbfbfb solid 4px;
	cursor:pointer;
	background-color: #3498db;
	color:white;
	font-size:24px;
	padding-top:22px;
	padding-bottom:22px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}

#button-blue:hover{
	background-color: rgba(0,0,0,0);
	color: #0493bd;
}
	
.submit:hover {
	color: #3498db;
}
	
.ease {
	width: 0px;
	height: 74px;
	background-color: #fbfbfb;
	-webkit-transition: .3s ease;
	-moz-transition: .3s ease;
	-o-transition: .3s ease;
	-ms-transition: .3s ease;
	transition: .3s ease;
}

.submit:hover .ease{
  width:100%;
  background-color:white;
}


@media only screen and (max-width: 580px) {
	#form-div{
		left: 3%;
		margin-right: 3%;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
}s










</style>
</head>
<body>


	<div id="form-main">
	  <div id="form-div">
    		<form class="form" id="form1" action="sendMsgU2" method="post" >
      
    	  <p class="name">
       		 <input name="sd_mno" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
      		</p>
      
     		 <p class="userClass">
        	<input name="nickname" type="text" class="validate[required,custom[email]] feedback-input" id="nickname" placeholder="받는 사람" />
       	
      		</p>
      
      		<div id= "result_nick">
     		 </div>
      		<p class="text">
        	<textarea name="msg_content" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Comment"></textarea>
      			</p>
      
      
     		 <div class="submit">
      	  <input type="submit" value="SEND" id="button-blue"/>
      	  <div class="ease"></div>
     	 </div>
   		 </form>
 	 </div>
	 </div>
  
  
  <br>
  <br>
  <form action="myMsg" method="get">
  <input type="submit" id="nextPage" value="받은 쪽지함으로 갑시다 이제">
  </form>
  
  <br>
  <br>
    <form action="MySendMsg" method="get">
  <input type="submit" id="mySendMsg" value="보낸쪽지함으로 갑시다 이제">
  </form>
  
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
 <script type="text/javascript">
  $(document).ready(function(){
 		 		
 		$('#nextPage').click(function(){
 		 			
 		}); // end next Page 
 		
 		 		
 		// 닉네임 중복 체크
 		$('#nickname').change(function() {
 			alert("닉네임 중복 체크");
 			
 			$.ajax({
 				type: 'post',
 				url: './member/checknick',
 				headers: {
 					'Content-Type': 'application/json',
 					'X-HTTP-Method-Override': 'POST'
 				},
 				data: JSON.stringify({
 					nickname: $('#nickname').val()
 				}),
 				success: function(response) {
 					if (response == 'NOK') {
 							<%-- 유저 정보가 있는 경우 --%>
 					} else {					
 						alert("존재하지 않는 사용자 입니다. 다시 입력하세요.");
 						$('#nickname').val("");
 					}
 				}
 			
 			});
 			
 		}); 
 			

 		
 		
 		
 		
 		
 		
 		
 	}); // end docu
 	
 	
 
 
 
  
  
 
  
  
  
  </script>
  
  
  
  
  
</body>
</html>