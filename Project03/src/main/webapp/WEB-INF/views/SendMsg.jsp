<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

</style>
</head>
<body>

<div id="form-main">
  <div id="form-div">
    <form class="form" id="form1" action="sendMsgU" method="post" >
      
      <p class="name">
        <input name="sd_mno" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
      </p>
      
      <p class="userClass">
        <input name="nickname" type="text" class="validate[required,custom[email]] feedback-input" id="nickname" placeholder="받는 사람" />
       	<button id="user_search">찾기</button>
      </p>
      
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
  <input type="submit" id="nextPage" value="쪽지함으로 갑시다 이제">
  </form>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
 <script type="text/javascript">
  
 	$(document).ready(function(){
 		
 		
 		$('#nextPage').click(function(){
 			

 			
 			
 		});
 		
 		
 		
 		
 		
 		
 		
 	}); // end docu
 	
 	
 
 
 
  
  
 
  
  
  
  </script>
  
  
  
  
  
</body>
</html>