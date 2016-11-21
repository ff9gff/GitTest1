<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>같이가자</title>
<style>
#reply-panel{
  width:800px;
  margin: 0 auto;
}
#replies{
	margin:0;
	padding:0;
	list-style:none;
}
#replies li{
	margin-bottom:10px;
	padding-bottom:5px;
	border-bottom:1px dotted #999999;
}
.reply_body{
	margin-left:20px;
}
.re_reply_body{
	margin-left:80px;
}
.btns{
	float: right;
	margin-right: 20px;
}

</style>
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
	<button type="button" id="btn_Create">댓글 입력</button>
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
				var parentrno = this.rno;
				
				if(this.parentrno == 0){
				// list에 html추가 - 댓글만
				list +='<li class="reply_list" data-rno="'+this.rno+'">'
					+'<dl class="reply_body">'
						+'<dt class="icno">'+'</dt>'
						+'<dt class="reply_header">'
							+'<strong class="nickname">'+this.mno+'번째회원</strong>'
							+'<span class="regdate">'+dateString+'</span>'
							+'<span class="btns">'
								+'<a href="#" class="btn_reply">답글</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#" class="btn_update">수정</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#" class="btn_delete">삭제</a>'
							+'</span>'
						+'</dt>'
						+'<dd class="rcontent">'+this.rcontent+'</dd>'
						+'<dd>'
							+'<div class="rcon_modify" style="display: none;">'
								+'<input type="hidden" class="update_rno" value="'+this.rno+'"/>'
								+'<table class="update_table">'
									+'<tbody>'
										+'<tr>'
											+'<td><textarea cols="90" rows="3" class="update_textarea">'+this.rcontent+'</textarea></td>'
											+'<td><input type="button" class="update_commit" value="수정완료"/></td>'
										+'</tr>'
									+'</tbody>'
								+'</table>'
							+'<div>'
						+'</dd>'
					+'</dl>'
				+'</li>'
				+'<li class="reply_insert" style="display: none;" id="'+this.rno+'">'
					+'<div class="re_reply_body">'
						+'<input type="hidden" class="parent_rno" value="'+this.rno+'"/>'
						+'<table class="reply_table">'
							+'<tbody>'
								+'<tr>'
									+'<td><strong class="nickname">'+this.mno+'번째회원</strong></td>'
									+'<td><textarea cols="90" rows="3" class="reply_textarea"></textarea></td>'
									+'<td><input type="button" class="reply_commit" value="답글달기"/></td>'
								+'</tr>'
							+'</tbody>'
						+'</table>'
					+'</div>'
				+'</li>';
		
					// 대댓글
					$(data).each(function(){
						// date 타입으로 변환
						var date = new Date(this.regdate);
						var dateString = date.toLocaleDateString();
						
						if(this.parentrno == parentrno){
							list +='<li class="reply_list" data-rno="'+this.rno+'">'
							+'<dl class="re_reply_body">'
								+'<dt class="icno">'+'</dt>'
								+'<dt class="reply_header">'
									+'<strong class="nickname">'+this.mno+'번째회원</strong>'
									+'<span class="regdate">'+dateString+'</span>'
									+'<span class="btns">'
										+'<a href="#" class="btn_reply">답글</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#" class="btn_update">수정</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#" class="btn_delete">삭제</a>'
									+'</span>'
								+'</dt>'
								+'<dd class="rcontent">'+this.rcontent+'</dd>'
								+'<dd>'
									+'<div class="rcon_modify" style="display: none;">'
										+'<input type="hidden" class="update_rno" value="'+this.rno+'"/>'
										+'<table class="update_table">'
											+'<tbody>'
												+'<tr>'
													+'<td><textarea cols="90" rows="3" class="update_textarea">'+this.rcontent+'</textarea></td>'
													+'<td><input type="button" class="update_commit" value="수정완료"/></td>'
												+'</tr>'
											+'</tbody>'
										+'</table>'
									+'<div>'
								+'</dd>'
							+'</dl>'
						+'</li>'
						+'<li class="reply_insert" style="display: none;" id="'+this.rno+'">'
							+'<div class="re_reply_body">'
								+'<input type="hidden" class="parent_rno" value="'+this.parentrno+'"/>'
								+'<table class="reply_table">'
									+'<tbody>'
										+'<tr>'
											+'<td><strong class="nickname">'+this.mno+'번째회원</strong></td>'
											+'<td><textarea cols="90" rows="3" class="reply_textarea"></textarea></td>'
											+'<td><input type="button" class="reply_commit" value="답글달기"/></td>'
										+'</tr>'
									+'</tbody>'
								+'</table>'
							+'</div>'
						+'</li>';
						}// end if
					});// end data.each(); 
				
				} // end if(this.parentrno == 'null')
				
			});// end data.each();
			
			$('#replies').html(list);
			
		});// end getJSON
		
	}; // end getAllReplies()
	
	// 댓글 입력 버튼 처리
	$('#btn_Create').click(function(){
		var rtextString = $('#rcontent').val();
		var mnoString = $('#mno').val();
		
		$.ajax({
			type: 'post',
			url: '/project03/tour/detail',
			headers:{
				'Content-Type':'application/json',
				'X-HTTP-Method-Override':'POST'
			},
			data: JSON.stringify({
				parentrno: null,
				trip_no: trip_no,
				mno: mnoString,
				rcontent: rtextString
			}),
			success: function(result){
				if(result == 1){
					alert('댓글 입력 성공');
				}
				getAllReplies();
				$('#rcontent').val('');
			}
		});// end ajax
		
	});// end btn_create()
	
	// 댓글 수정 처리
	$('#replies').on('click','.reply_list .btn_update',function(){
		// 해당 reply_body 찾기
		var targetbody = $(this).parent().parent().parent();
		// 기존 rcontent 숨기기
		targetbody.children('.rcontent').hide();
		// 수정글씨를 수정 취소로 바꾸기
		$(this).text('수정 취소');
		// 수정하는 textarea 나타내기
		var targetdiv = targetbody.children().children('.rcon_modify');
		targetdiv.show();
		
		
		// 수정 취소버튼
		targetbody.children().children().children('.btn_update').click(function(){
			console.log('안된다!!');
	
		});// end this onclick;
		
		// 수정 완료하기
		var update_rno = targetdiv.children('.update_rno').val();
		targetdiv.children('.update_table').children().children().children().children('.update_commit').click(function(){
			var updatetext = targetdiv.children('.update_table').children().children().children().children('.update_textarea').val();
			
			$.ajax({
				type:'put',
				url:'/project03/tour/detail/'+update_rno,
				headers:{
					'Content-Type':'application/json',
					'X-Http-Method-Ovveride':'PUT'
				},
				data: JSON.stringify({
					rno: update_rno,
					rcontent: updatetext
				}),
				success: function(result){
					if(result == 'success'){
						alert('댓글이 수정되었습니다.');
						getAllReplies();
					}
				}
			});// end ajax
			
		}); // end 수정완료하기
	});// end update
	
	// 대댓글 입력
	$('#replies').on('click','.reply_list .btn_reply',function(){
		var rno = $(this).parent().parent().parent().parent().attr('data-rno');
		
		
		var targetinsert = $('#replies').children('#'+rno);
		targetinsert.show();
		targetinsert.children('.re_reply_body').children('.reply_table').children().children().children().children('.reply_commit').click(function(){
			var replycontent = targetinsert.children('.re_reply_body').children('.reply_table').children().children().children().children('.reply_textarea').val();
			var targetparent = targetinsert.children('.re_reply_body').children('.parent_rno').val();
			var mnoString = $('#mno').val();
			
			$.ajax({
				type: 'post',
				url: '/project03/tour/detail',
				headers:{
					'Content-Type':'application/json',
					'X-HTTP-Method-Override':'POST'
				},
				data: JSON.stringify({
					parentrno: targetparent,
					trip_no: trip_no,
					mno: mnoString,
					rcontent: replycontent
				}),
				success: function(result){
					if(result == 1){
						alert('답글 입력 성공');
					}
					getAllReplies();
				}
			});// end ajax
			
			
			
		});
		
	});// end btn_reply

	
}); // end document.ready
</script>



</body>
</html>