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
<caption>���� ������</caption>
    <tr>
        <th>��ȣ</th>
        <th>�ۼ���</th>
        <th>����</th>
        <th>���� �ð�</th>
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
    <li><a href="${pageMaker.startPageNum - 1 }">&laquo;����</a></li>
    </c:if>
    
    <c:forEach begin="${pageMaker.startPageNum }"
        end="${pageMaker.endPageNum }"
        var="num">
    <li><a href="${num }">${num }</a></li>
    </c:forEach>
    
    <c:if test="${pageMaker.hasNext }">
    <li><a href="${pageMaker.endPageNum + 1 }">����&raquo;</a></li>
    </c:if>
    
</ul>

		
<%-- ���� ������, ������ �� ������ �Խñ� ������ ������ �����ֱ� ���ؼ�,
����ڿ��Դ� ������ ������, ������ ���� ������ ��� �����ͷ� �����ϴ� form --%>
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
		 alert('����� send Msg �Դϴ�. alert');
	    window.open("", "pop", "width=600, height=400"); // ���� �� â�� pop ��� �̸����� �������
	    form2.action = "testMyGet"; // '�˾��ּ�.aspx' �� form2�� ����� action ���� �����Ѵ�.
	    form2.target = "pop"; // �� �κ��� �ٽ�! ������� �� â(pop)�� form2�� ���ư� target���� ���Ѵ�.
	    form2.method = "get"; // target�� submit�� ����� post ������� �����Ѵ�.
		form2.submit(); // target�� ���.

	    
	}
	
	
	
	<%--
    // table ���� tr ���� td ���� a �±� click Ŀ���͸���¡
    $('table tr td a').click(function() {
    	event.preventDefault();
    	var bno = $(this).attr('href');
    	frm.find('[name="bno"]').val(bno);
    	frm.attr('action', 'detail');
    	frm.attr('method', 'get');
    	frm.submit();
    });
	
	// Ŭ���� pageLinks ���� li �±� ���� a �±׸� ã�Ƽ� click �̺�Ʈ�� Ŀ���͸���¡
	$('.pageLinks li a').click(function() {
		event.preventDefault(); // �⺻ �̺�Ʈ ó�� ����� ����(����)
		// pageForm �ȿ� �ִ� name="page"�� ��Ҹ� ã�Ƽ�
		// �̵��� ������ ��ȣ�� ����
		var targetPage = $(this).attr('href');
		frm.find('[name="page"]').val(targetPage);
		// ����¡ ȭ������ ������ ���� action ����
		frm.attr('action', 'msglist-page');                     // ������ ������ 
		// ����¡ ȭ���� ó���ϴ� Controller�� method(��û ó�� ���)
		frm.attr('method', 'get');
		// �� ����� ������ ����
		frm.submit();
	});
	
	

--%>

	
	
});//end docu


</script>


<script type="text/javascript">


function OpenPop(url,name,width,height)
{
	 alert('����� send Msg �Դϴ�. alert');
    window.open("", "pop", "width=600, height=400"); // ���� �� â�� pop ��� �̸����� �������
    document.form2.action = "testMyGet"; // '�˾��ּ�.aspx' �� form2�� ����� action ���� �����Ѵ�.
    document.form2.target = "pop"; // �� �κ��� �ٽ�! ������� �� â(pop)�� form2�� ���ư� target���� ���Ѵ�.
    document.form2.method = "get"; // target�� submit�� ����� post ������� �����Ѵ�.
    document.form2.submit(); // target�� ���.

    
}


</script>
	



</body>
</html>