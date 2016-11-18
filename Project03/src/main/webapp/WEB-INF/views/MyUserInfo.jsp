<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> test 입니다. </h1>


 <form action="searchMyuser2" method="post">
 <input type="text" name="userid" id="userid" placeholder="찾을 유저검색">
 <input type="submit" value="찾기" > 	
 </form>
 <input type="button" id="btnList" value="찾기 2">

 	<table id="tableTest2" border="1px" >
 	<caption>유저 찾기 </caption>
 	<colgroup>
 		<col width="50px">
 		<col width="100px">
 		<col width="100px">
 	</colgroup>
 	

 	<tr>
 		<th></th>
 		<th>유저 번호 </th>
 		<th>유저 아이디</th>
 	</tr>
 	
	<tbody id="c">

	</tbody>


 	</table>
 	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
<script type="text/javascript">
$(document).ready(function(){
 	   $('#btnList').click(function() {
 	    	//location = 'list';
 	    	//location = "list-page?page=${page}"
 	    			
 	    			//searchUserid
 	    var userid = $('#userid').val();		
 		 alert('안녕하세요 '+ userid );
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
 				
 			
 			   	<%--$('#c').append(--%>
 			   	 list+= '<tr>'
 			   	 			+'<td><input type="checkbox"/></td>'
 		 			    	+'<td>' +this.mno+'</td>'
 		 			    	+'<td>' +this.userid+'</td>'
 		 			    +'</tr>';
 				 
 			  }); /*반복문 끝 */
 			  
 			$('#c').html(list);
 			  
 			  
 		   });// end getJSON()

 	   };//end of getMyUser()
 	   
 	   

 		
 		
 		
 	});
 	
 	
 	
 	
 	</script>
 	
 	
 	
 	
</body>
</html>