<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

<table>
<caption>받은 쪽지함</caption>
    <tr>
        <th>번호</th>
        <th>작성자</th>
        <th>내용</th>
        <th>받은 시간</th>
    </tr>
    

    <!-- model.addAttribute("allList", allList); -->
    <c:forEach var="vo" items="${allList}">
    <tr>
        <td>${x=x+1 }</td>
        <td>${vo.nickname }</td>
        <td><form id="form2" name="form2">
        <input type="hidden" name="postdata" size="10" maxlength="10" value="${vo.msg_no }"/>   
 	    
  	  	 		 	
 	  	   		
        </form>     
        <a href="javascript:OpenPop('', '', '', '');">${vo.msg_content }</a></td>
        <td>
      	   <fmt:formatDate value="${vo.msg_date }" 
	            pattern="yyyy-MM-dd HH:mm:ss"/>
        </td>
    </tr>
    
    </c:forEach>

</table>
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
<form id="pageForm">
    <input type="hidden" name="bno" />
    <input type="hidden" name="page" 
        value="${pageMaker.criteria.page }" />
    <input type="hidden" name="perPage"
        value="${pageMaker.criteria.perPage }" />
</form>


<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function() {
	

	
	var frm = $('#pageForm');
	
	var form2 = $('#form2');
		
		
	
	
	function OpenPop(url,name,width,height)
	{
		 alert('여기는 send Msg 입니다. alert');
	    window.open("", "pop", "width=600, height=400"); // 먼저 빈 창을 pop 라는 이름으로 열어놓고
	    form2.action = "testMyGet"; // '팝업주소.aspx' 를 form2이 실행될 action 으로 지정한다.
	    form2.target = "pop"; // 이 부분이 핵심! 열어놓은 빈 창(pop)을 form2가 날아갈 target으로 정한다.
	    form2.method = "get"; // target에 submit할 방식을 post 방식으로 지정한다.
		form2.submit(); // target에 쏜다.

	    
	}
	
	
	
	<%--
    // table 안의 tr 안의 td 안의 a 태그 click 커스터마이징
    $('table tr td a').click(function() {
    	event.preventDefault();
    	var bno = $(this).attr('href');
    	frm.find('[name="bno"]').val(bno);
    	frm.attr('action', 'detail');
    	frm.attr('method', 'get');
    	frm.submit();
    });
	
	// 클래스 pageLinks 안의 li 태그 안의 a 태그를 찾아서 click 이벤트를 커스터마이징
	$('.pageLinks li a').click(function() {
		event.preventDefault(); // 기본 이벤트 처리 방식을 방지(막음)
		// pageForm 안에 있는 name="page"인 요소를 찾아서
		// 이동할 페이지 번호를 세팅
		var targetPage = $(this).attr('href');
		frm.find('[name="page"]').val(targetPage);
		// 페이징 화면으로 보내기 위한 action 정보
		frm.attr('action', 'msglist-page');                     // 쪽지함 페이지 
		// 페이징 화면을 처리하는 Controller의 method(요청 처리 방식)
		frm.attr('method', 'get');
		// 폼 양식을 서버로 전송
		frm.submit();
	});
	
	

--%>

	
	
});//end docu


</script>


<script type="text/javascript">


function OpenPop(url,name,width,height)
{
	 alert('여기는 send Msg 입니다. alert');
    window.open("", "pop", "width=600, height=400"); // 먼저 빈 창을 pop 라는 이름으로 열어놓고
    document.form2.action = "testMyGet"; // '팝업주소.aspx' 를 form2이 실행될 action 으로 지정한다.
    document.form2.target = "pop"; // 이 부분이 핵심! 열어놓은 빈 창(pop)을 form2가 날아갈 target으로 정한다.
    document.form2.method = "get"; // target에 submit할 방식을 post 방식으로 지정한다.
    document.form2.submit(); // target에 쏜다.

    
}


</script>
	



</body>
</html>