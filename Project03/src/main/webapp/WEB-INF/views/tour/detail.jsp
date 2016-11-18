<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>같이가자</title>
</head>
<body>

<h1>여행공고글</h1>
<div>여행 공고 내용 아직 업데이트안됨여</div>

<h1>댓글 부분↓</h1>


<div>
	<input type="text" name="rcontent" id="rcontent"
		placeholder="댓글을 입력하세요" required/>
	<input hidden type="number" name="mno" id="mno"
		value="1" required/>
	<button type="button" id="btnCreate">댓글 입력</button>
</div>


<h2>댓글 리스트부분</h2>
<div id="reply-panel">
	<ul id="replies"></ul>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var trip_no = 1;
	
	getAllReplies();
	
	// DB에서 해당 글번호(trip_no)의 모든 댓글을 읽어오는 함수 정의
	function getAllReplies(){
		var url = '/project03/tour/detail/all/'+trip_no;
		
		$.getJSON(url, function(data){
			var list= '';
			/*data의 개수만큼 function()의 내용을 반복해서 수행*/
			$(data).each(function(){
				// date 타입으로 변환
				var date = new Date(this.regdate);
				var dateString = date.toLocaleDateString();
				
				if(this.parentrno == 'null'){
				// list에 html추가 - 댓글만
				list +='<li class="reply_list" data-rno="'+this.rno+'">'
					+'<dl class="reply_body">'
						+'<dt class="icno">'+'</dt>'
						+'<dt class="reply_header">'
							+'<strong class="nickname">'+this.mno+'번째회원</strong>'
							+'<span class="regdate">'+dateString+'</span>'
							+'<span class="btns">'+
								+'<button class="btn_reply">답글</button>'
								+'<button class="btn_up_start">수정</button>'
								+'<button class="btn_del">삭제</button>'
								+'<button class="btn_cancel">취소</button>'
							+'</span>'
						+'</dt>'
						+'<dd class="rcontent">'+this.rcontent+'</dd>'
					+'</dl>'
				+'</li>'
				} // end if(this.parentrno == 'null')
				
				
			});// end data.each();
			
			$('#replies').html(list);
			
		});// end getJSON
		
		
	}; // end getAllReplies()
}); // end document.ready
</script>



</body>
</html>