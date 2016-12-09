<%@page import="edu.spring.project03.domain.MsgVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, th, td {
    border: 1px solid gray;
    border-collapse: collapse;
}

th {
    background-color: lightpink;
    border-left: 1px solid white;
}

ul {
    list-style-type: none;
}

li {
    display: inline-block;
}

</style>
</head>
<body>



<table id="msgTable">
<caption>보낸 쪽지함</caption>
    <tr>
    	<th><input type="checkbox" name="rowCheck"></th>
        <th>번호</th>
        <th>작성자</th>
        <th>내용</th>
        <th>받은 시간</th>
    </tr>
    

    <c:forEach var="vo" items="${allList}">
  
    <tr Class="selectAll">
    	
    	<td><input type="checkbox" name="rowCheck" value="${vo.msg_no }"></td>
    
  	
        <td>${x=x+1 }</td>
        <td>${vo.nickname }${vo.msg_no }</td>
        	<td>
        <form id="form2" name="form2" method='post' action="MiniMsg" target="pop">
 		 <input type="hidden" name="postdata"  id ="postdata${x}"  value="${vo.nickname }"/> 
 		 <input type="hidden"  id="value" name= "value" />
 		 <input type="hidden" id ="getname" name ="getname"/> 		 	
        <input type="hidden" name="msg_no"  id ="msg_no${x}"  value="${vo.msg_no }"/>       
        </form>       

       
        <a href="javascript:OpenPop('${x }');">${vo.msg_content }  </a>
        
  
        
        
        	</td>
        <td>
      	   <fmt:formatDate value="${vo.msg_date }" 
	            pattern="yyyy-MM-dd HH:mm:ss"/>
        </td>
    </tr>
    
    </c:forEach>
</table>
<br/>

<%--
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
pageLinks


 --%>

<ul class="pagination">
    <c:if test="${pageMaker.hasPrev }">
    <li><a href="${pageMaker.startPageNum - 1 }"><b>&laquo;이전</b></a></li>
    </c:if>
    
    <c:forEach begin="${pageMaker.startPageNum }"
        end="${pageMaker.endPageNum }"
        var="num">
    <li><a href="${num }"><b>${num }</b></a></li>
    </c:forEach>
    
    <c:if test="${pageMaker.hasNext }">
    <li><a href="${pageMaker.endPageNum + 1 }"><b>다음&raquo;</b></a></li>
    </c:if>
    
</ul>

<%-- 현재 페이지, 페이지 당 보여줄 게시글 개수를 서버로 보내주기 위해서,
사용자에게는 보이지 않지만, 서버로 보낼 정보를 양식 데이터로 저장하는 form --%>
<form id="pageForm">
    <input type="hidden" name="bno" />
    <input type="hidden" name="page" 
        value="${pageMaker.criteria.page }" />
    <input type="hidden" name="perPage"
        value="${pageMaker.criteria.perPage }" />
</form>

<!--  //////////////////////////////////////////////// -->
<form >
	<input type="button" id="deleteMSGbtn" value="삭제"> 

</form>
	<br/>
	
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
var frm = $('#pageForm');

function OpenPop(no)
{ 
	
	var getdata = document.getElementById("postdata"+no+"").value;
	var getno = document.getElementById("msg_no"+no+"").value;
	// <input type="hidden" name="msg_no"  id ="msg_no${x}"  value="${vo.msg_no }"/> 
	$("#value").val(getno); 
	$('#getname').val(getdata);
	
	
	//alert(getdata+getcontent);

	var f = document.getElementById('form2');
	window.open("", "pop", "width=600, height=400");
	f.submit(); 

	
	
	
	
	
}//end 분노 


//<input type="button" id="deleteMSGbtn"> 

 $('#deleteMSGbtn').click(function(){
	var oTbl = document.getElementById("msgTable");
	var chkObj = document.getElementsByName("rowCheck");
	var rowCnt = chkObj.length - 1;
	// var check = $(this).context.checked;
	
	alert('rowCnt' + chkObj.length);  //21로 출력 된다 .
	var success= false;
	var fail = 0;
	
	for(var i=0 ; i <= rowCnt; i++){
		if(chkObj[i].checked == true){
		var no = chkObj[i].value;
		 $.ajax({
			 type:"delete",
				url:'/project03/msg/numText/' +no,
				headers:{
					'Content-Type':'application/json',
					'X-Http-Method-Ovveride':'DELETE'
				}//headers
			 
			 
		 })//end ajax
		
		}//end if
		
		
		
	}; //end for 
	
	getAll();
 });
 





	// 클래스 pageLinks 안의 li 태그 안의 a 태그를 찾아서 click 이벤트를 커스터마이징
	$('.pagination li a').click(function() {
		event.preventDefault(); // 기본 이벤트 처리 방식을 방지(막음)
		// pageForm 안에 있는 name="page"인 요소를 찾아서
		// 이동할 페이지 번호를 세팅
		var targetPage = $(this).attr('href');
		frm.find('[name="page"]').val(targetPage);
		// 페이징 화면으로 보내기 위한 action 정보
		frm.attr('action', 'MySendMsg');
		// 페이징 화면을 처리하는 Controller의 method(요청 처리 방식)
		frm.attr('method', 'get');
		// 폼 양식을 서버로 전송
		frm.submit();
	});
	
	
	function getAll(){
		event.preventDefault(); // 기본 이벤트 처리 방식을 방지(막음)
		// pageForm 안에 있는 name="page"인 요소를 찾아서
		// 이동할 페이지 번호를 세팅
		var targetPage = $(this).attr('href');
		frm.find('[name="page"]').val(targetPage);
		// 페이징 화면으로 보내기 위한 action 정보
		frm.attr('action', 'MySendMsg');
		// 페이징 화면을 처리하는 Controller의 method(요청 처리 방식)
		frm.attr('method', 'get');
		// 폼 양식을 서버로 전송
		frm.submit();
		
	};
	
	
	
	 var tbl = $("#msgTable");
     // 테이블 헤더에 있는 checkbox 클릭시
     $(":checkbox:first", tbl).click(function(){
         // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
         if( $(this).is(":checked") ){
             $(":checkbox", tbl).attr("checked", "checked");
         }
         else{
             $(":checkbox", tbl).removeAttr("checked");
         }

         // 모든 체크박스에 change 이벤트 발생시키기                
         $(":checkbox", tbl).trigger("change");
     });
      
     // 헤더에 있는 체크박스외 다른 체크박스 클릭시
     $(":checkbox:not(:first)", tbl).click(function(){
         var allCnt = $(":checkbox:not(:first)", tbl).length;
         var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;
          
         // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
         if( allCnt==checkedCnt ){
             $(":checkbox:first", tbl).attr("checked", "checked");
         }
         else{
             $(":checkbox:first", tbl).removeAttr("checked");
         }
     }).change(function(){
         if( $(this).is(":checked") ){
             // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
             $(this).parent().parent().addClass("selected");
         }
         else{
             $(this).parent().parent().removeClass("selected");
         }
     });

	
	
	
	
	
	
	
	
</script>
	



</body>
</html>