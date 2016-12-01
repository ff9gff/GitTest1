<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>test 입니다.</h1>



	<input type="text" name="userid" id="userid" form="btnList"
		placeholder="찾을 유저검색">

	<input type="button" id="btnList" value="찾기 2">

	<table id="tableTest2" border="1px">
		<caption>유저 찾기</caption>
		<colgroup>
			<col width="100px">
			<col width="100px">
			<col width="200px">
		</colgroup>


		<tr>
			<th>유저 번호</th>
			<th>유저 아이디</th>
			<th>구분</th>


		</tr>

		<tbody id="c">

		</tbody>


	</table>

		<input type="button" id="btnUpdate" value="테스트" >
		






<div id="wrapper">


<table align='center' cellspacing=2 cellpadding=5 id="data_table" border=1>
<tr>
<th>Name</th>
<th>Country</th>
<th>Age</th>
</tr>

<tr>
<td><input type="text" id="new_name"></td>
<td><input type="text" id="new_country"></td>
<td><input type="text" id="new_age"></td>
<td></td>
</tr>
</table>
<input type="button" class="add" onclick="add_row();" value="Add Row">
</div>



<input type="button" id="btnTest" value="테스트" >
		



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
 			   	 			+'<input type="button" id="delete" value="강퇴" onclick="delete_row('+table_len+')"/></td>'	
 		 			    +'</tr>';
 			  }); /*반복문 끝 */
 			
 			$('#c').html(list);
 			  
 			  
 		   });// end getJSON()


 		   
 	   };//end of getMyUser()
 	   

 	   
	 function upgrade_member(){
		 
		 alert("안녕하세요 .");
		 
	 };
 				 
 	   
 	   
 	   
 	   
 	   
 	   
 		
 		
 	});//end docu
 	
 	
 	
 	
 	</script>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 	
 	<script type="text/javascript">
 	
 	function delete_row22(no){
 		var name=document.getElementById("mno_id("+no+")").value();
 		
 		
 		 alert(":s" +no+"제발 값 나와라,,."+ name);
 
 		
 		
 		
 	};
 	
 	<%--
 	var name_data=name.innerHTML;
 		name.innerHTML="<input type='text' id='mno_id("+no+")' value='"+name_data+"'>";
 		var name_val=document.getElementById("mno_id("+no+')').value;
 		document.getElementById("mno_id("+no+")").innerHTML=name_val;
 	
 	
 	--%>
 	

 	function delete_row111(no)
 	{
 		
 	var name=document.getElementById("mno_id("+no+")");
 	
 	 var name_data=name.innerHTML;

 		
 	name.innerHTML="<input type='text' id='mno_id("+no+")' value='"+name_data+"'>";
 	
 	  save_row(no);
 	}

 	
 	
 	function save_row(no)
 	{
 	
 		var name_val=document.getElementById("mno_id("+no+')').value;
 	
 		var ss = $("#mno_id("+no+')').val();
 	document.getElementById("mno_id("+no+")").innerHTML=name_val;
 
 
 	 alert("test" + name_val + ss );
 	}
 	
 	
 	
 	
 	function delete_row(no)
 	{
 	 	
 	var name=document.getElementById("mno_id("+no+")");
 		
 	 var name_data=name.innerHTML;
 
 		
 	 name.innerHTML="<input type='text' id='mno_id("+no+")' value='"+name_data+"'>";
 	

 	test(no);
 	}
 	
 	
 	function test(no){
 		
 		var name_val=document.getElementById("mno_id("+no+')').value;
 		document.getElementById("mno_id("+no+")").innerHTML=name_val;
 		alert("test" + ss);
 	}

 	function save_row12(no)
 	{
 	 var name_val=document.getElementById("name_text"+no).value;
 	 var country_val=document.getElementById("country_text"+no).value;
 	 var age_val=document.getElementById("age_text"+no).value;

 	 document.getElementById("name_row"+no).innerHTML=name_val;
 	 document.getElementById("country_row"+no).innerHTML=country_val;
 	 document.getElementById("age_row"+no).innerHTML=age_val;

 	 document.getElementById("edit_button"+no).style.display="block";
 	 document.getElementById("save_button"+no).style.display="none";
 	 
 	 alert("test" + name_val);
 	}

 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	</script>
	
 	
 

</body>
</html>