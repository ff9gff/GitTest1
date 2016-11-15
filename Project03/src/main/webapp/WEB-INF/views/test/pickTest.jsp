<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>



<script>
    $(function() {
        $("#start_date, #end_date").datepicker({
            dateFormat: 'yy-mm-dd'
        });
    });

</script>


<p>지역:
	<form action="regionTest" method="POST">
    	<input type="text" id="region" name="region" placeholder="지역이름">
    	<input type="submit" value="검색" />
    </form>
    <c:forEach var="region" items="${regionList }">
    	<textarea rows="" cols="">${region.title}</textarea><br/>
    </c:forEach>
</p>


<p>여행기간:
	<form action="datepickTest" method="POST">
    	<input type="text" id="start_date" name="start_date"> ~ 
    	<input type="text" id="end_date" name="end_date">
    	<input type="submit" value="검색" />
    </form>
   
   <c:forEach var="period" items="${periodList }">
    <textarea rows="" cols="">${period.title}</textarea><br/>
   </c:forEach>
    
</p>




</body>
</html>