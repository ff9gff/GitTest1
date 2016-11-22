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
.menu{
  width:800px;
  margin: 0 auto;
  color: #F4511E;
  border-bottom:3px solid #F4511E;
  font-size: 30px;
  font-weight: bold;
  margin-bottom: 20px;
}
.reply_panel{
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
.regdate,.btn_div,.btn_reply,.btn_update,.btn_delete{
	font-size: 10pt;
	color:#757575;
}
.btn_reply,.btn_update,.btn_delete{
	text-decoration:none;
}
#rcontent{
	width: 700px;
	height: 50px;
	padding:0;
}
#btn.Create{
	width: 100px;
	height: 50px;
	padding:0;
}

</style>
</head>
<body>

<h1>여행공고글</h1>
<div>여행 공고 내용 아직 업데이트안됨여</div>

<h1>댓글 부분↓</h1>
<div class="menu">Comment</div>
<div class="reply_panel">
	<input type="text" name="rcontent" id="rcontent" placeholder="댓글을 입력하세요" required/>
	<input hidden type="number" name="mno" id="mno" value="1" required/>
	<button type="button" id="btn_Create">댓글 입력</button>
</div>
<div class="reply_panel">
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
				list +='<li class="reply_list" data-rno="'+this.rno+'" data-parent="'+this.parentrno+'">'
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
							list +='<li class="reply_list" data-rno="'+this.rno+'" data-parent="'+this.parentrno+'">'
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
		if(rtextString == ""){
			alert('댓글 내용을 입력하세요');
		}else{
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
		}
		
	});// end btn_create()
	


	// 댓글 수정 처리 - 수정 눌렀을때 보이기/숨기기/글자바꾸기
	$('#replies').on('click','.reply_list .btn_update',function(){

		if($(this).text()=='수정'){ // 수정 버튼 눌렀을 때
			// 해당 reply_body 찾기
			var targetbody = $(this).parent().parent().parent();
			// 기존 rcontent 숨기기
			targetbody.children('.rcontent').hide();
			// 수정글씨를 수정 취소로 바꾸기
			$(this).text('수정 취소');
			// 수정하는 textarea 나타내기
			var targetdiv = targetbody.children().children('.rcon_modify');
			targetdiv.show();
			
		}else{
			// 해당 reply_body 찾기
			var targetbody = $(this).parent().parent().parent();
			// 기존 rcontent 숨기기
			targetbody.children('.rcontent').show();
			// 수정글씨를 수정 취소로 바꾸기
			$(this).text('수정');
			// 수정하는 textarea 나타내기
			var targetdiv = targetbody.children().children('.rcon_modify');
			targetdiv.hide();

		}// end if
		
	});// end update
	
	// 수정 완료하기
	
	$('#replies').on('click','.reply_list .update_commit',function(){
		var update_rno = $(this).parent().parent().parent().parent().parent().children('.update_rno').val();
		var update_text = $(this).parent().parent().children().children('.update_textarea').val();
	
		$.ajax({
			type:'put',
			url:'/project03/tour/detail/'+update_rno,
			headers:{
				'Content-Type':'application/json',
				'X-Http-Method-Ovveride':'PUT'
			},
			data: JSON.stringify({
				rno: update_rno,
				rcontent: update_text
			}),
			success: function(result){
				if(result == 'success'){
					alert('댓글이 수정되었습니다.');
					getAllReplies();
				}
			}
		});// end ajax
		
	});// end 수정완료

	
	// 대댓글 처리 - 답글 눌렀을때 보이기/숨기기/글자바꾸기
	$('#replies').on('click','.reply_list .btn_reply',function(){
		var rno = $(this).parent().parent().parent().parent().attr('data-rno');
		var targetinsert = $('#replies').children('#'+rno);
		
		if($(this).text()=='답글'){
			targetinsert.show();
			$(this).text('답글 취소');
		}else{
			targetinsert.hide();
			$(this).text('답글');
		}
	});// end 대댓글 처리
	
	// 대댓글 입력 완료
	$('#replies').on('click','.reply_insert .re_reply_body .reply_table .reply_commit',function(){
		var targetdiv = $(this).parent().parent().parent().parent().parent();
		var targetparent = targetdiv.children('.parent_rno').val();
		var replycontent = targetdiv.children('.reply_table').children().children().children().children('.reply_textarea').val();
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
		
	}); // end 대댓글 입력


	// 댓글 삭제
	$('#replies').on('click','.reply_list .btn_delete',function(){
		var targetli = $(this).parent().parent().parent().parent();
		var rno = targetli.attr('data-rno');
		var parent = targetli.attr('data-parent');
		console.log(parent);
		var check = confirm('정말 삭제하시겠습니까?');
		if(check == true){
			$.ajax({
				type:'delete',
				url:'/project03/tour/detail/'+rno+'/'+parent,
				headers:{
					'Content-Type':'application/json',
					'X-HTTP-Method-Override':'DELETE'
				},
				success: function(result){
					if(result == 'success'){
						alert('댓글이 삭제됐습니다.');
						getAllReplies();
					}
				}
			});
		}// end if
	});// end reply delete
	
}); // end document.ready
</script>



</body>
</html>