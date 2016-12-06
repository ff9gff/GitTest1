<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>






<table id="msgAdminMSG" border="1px">
		<caption>관리자 지난 공지함 </caption>
		<colgroup>
		<col width="40px">
		<col width="40px">
		<col width="300px">

		</colgroup>

	<tr>
		<th>번호</th>
		<th>번호</th>
		<th>공지사항</th>
	</tr>
	

	<c:forEach var ="vo" items="${msgContext }">
		<tr>
			<td><input type="checkbox"></td>
			<td>${x=x+1 }</td>
			<td>${vo }</td>
		</tr>
	
	
	
	
	
	</c:forEach>






</table>








</body>
</html>