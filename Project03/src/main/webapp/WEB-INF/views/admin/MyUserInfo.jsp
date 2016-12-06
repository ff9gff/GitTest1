<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#top{
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
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">






<body>
	<header id="top">
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
				
				<li Class="menuItem"><a Class="mylink" href="index">메인</a>
				</li>



			</ul>

		</nav>



		<section id="main">


	<input type="text" name="userid" id="userid" form="btnList"
		placeholder="찾을 유저검색">

	<input type="button" id="btnList" value="유저 검색">

<br>
<br>

	<table id="tableTest2" border="1px">
		<!--<caption>유저 찾기</caption>-->
		<colgroup>
			<col width="100px">
			<col width="100px">
			<col width="110px">
		</colgroup>


		<tr>
			<th>유저 번호</th>
			<th>유저 아이디</th>
			<th>구분</th>


		</tr>

		<tbody id="c">

		</tbody>


	</table>

	
		</section>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript">
$(document).ready(function(){
	
		//var table= $('#tableTest2');
	   // var tabel_len =(table.rows.length)-1;
		//alert(table_len)
	
	var table=document.getElementById("tableTest2");
 	var table_len=(table.rows.length)-1;
 	//alert(table_len); //-> 기본으로 1이므로 -1 했으므로 0 이 alert 창에 나온다. 
		

		$('#btnUpdate').click(function(){
			
			
			
			
			upgrade_member();
			
			
		});
 	
 	
 	
 	
 	
 	
 	
 	
 	   $('#btnList').click(function() {
 	    	//location = 'list';
 	    	//location = "list-page?page=${page}"
 	    			
 	    			//searchUserid
 	    var userid = $('#userid').val();		
 		// alert('안녕하세요 '+ userid );
 		//  $('#userid').val("");
 		
 		
		getMyUser();
		
 	  });

 	  
 	   
 	   //DB에서 해당 유저 아이디를 읽어오는 함수 정의 
 	   
 	   //$.getJSON(url,data, callback): HTTP GET 요청을 사용해서 Json 
 	   //데이터를 로드하는 ajax 함수를 말한다,.  get 방식만 가능 
 	   
 	   function getMyUser(){
 		   //$.getJSON 
 		    alert('메소드 호출 ');
 		   
 		   var url =
 			   '/project03/users/all/'+$('#userid').val();
 		 
 		   $.getJSON(url,function(data){
				 			

 			  var list= '';
 			  
 			  $(data).each(function(){
 				
 				table_len += 1;
 			   	<%--$('#c').append(--%>
 			   	 list+= '<tr>'
 		 			    	+'<td id="mno_id('+table_len+')" value='+this.mno+'>' +this.mno+'</td>'
 		 			    	+'<td id="userid_id('+table_len+')">' +this.userid+'</td>'
 			   	 			+'<td><input type="button" id="upgrade" value="관리자" onclick="upgrade_row('+table_len+')"/>'
 			   	 			+'<input type="button" id="delete('+table_len+')" value="강퇴" onclick="delete_row('+table_len+')"/></td>'	
 		 			    +'</tr>';
 			  }); /*반복문 끝 */
 			
 			$('#c').html(list);
 			  
 			  
 		   });// end getJSON()


 		   
 	   };//end of getMyUser()
 	   


 	});//end docu
 	

 	
 	</script>



	
 	<script type="text/javascript">
 	
 	
 	function delete_row(no){
		 
 		
 		
		 alert("하이 " + no);
		 var url1 =
			   '/project03/users/deluser/'+no;
//url: '/ex03/replies/' + rno,
		 
		 $.ajax({
			 type:'get',
			 url : url1,
			 headers:{
				 'Content-Type': 'application/json',
					'X-HTTP-Method-Override': 'GET'
			 },
			 data: JSON.stringify({
					no: no,
				})
			 
			 
			 
			 
			 
		 });
		 
		 alert('강퇴했습니다.');
		 
	 }//end delete _ row 
 	   
 	
 	
	 function upgrade_row(no){
		 
	 		
	 		
		 alert("하이 " + no);
		 var url1 =
			   '/project03/users/num/'+no;
//url: '/ex03/replies/' + rno,
		 
		 $.ajax({
			 type:'get',
			 url : url1,
			 headers:{
				 'Content-Type': 'application/json',
					'X-HTTP-Method-Override': 'GET'
			 },
			 data: JSON.stringify({
					no: no,
				})
			 
			 
			 
			 
			 
		 });
		 
		alert('선택하신 유저를 관리자로 임명하셨습니다.');
		 
	 }//end delete _ row 
 	   
 	

 	
 	</script>
	
 

</body>
</html>