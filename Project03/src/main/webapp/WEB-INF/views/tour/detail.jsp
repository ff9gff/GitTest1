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
.reply_panel,.apply_panel{
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
#btn_Create{
	width: 90px;
	height: 50px;
		font-weight:bold;

}
.applicant_panel,.applicant_button{
	display: inline-block;
}
.applicant_panel{
	width: 450px;
	height: 150px;
	padding:0;
	overflow: auto;
	overflow-x:hidden;
	margin: 0;
}
.applicant_button{
width: 100px;
	height: 150px;
	padding:0;
}

#applicants table {ddddd
    width:100%;
    margin:0;
    border:0;
    padding:0;
    padding: 0;
}
#applicants th {
    background-color:#6d6f70;
    color:#FFFFFF
}
#applicants,#applicants th,#applicants td {
    font-size:0.95em;
    text-align:center;
    padding:4px;
    border-collapse:collapse;
}
#applicants th,#applicants td {
    border: 1px solid #6d6f70;
    border-width:1px 0 1px 0
}
#applicants tr {
	background-color:#fdfdfd;
    border: 1px solid #6d6f70;
}
.table_check{
	width: 30px;
}
.table_name,.table_com{
	width: 130px;
}
.table_sex,.table_age{
	width: 70px;
}
.apply_panel_table{
	width: 450px;
	background-color: lightgray;

}
.apply_panel_btns{
	width: 100px;
}
.apply_panel{
	width: 700px;
}


</style>
</head>
<body>

<h1>여행공고글</h1>
<div>여행 공고 내용 아직 업데이트안됨여</div>
<h1>신청 리스트 부분↓</h1>
<div class="menu">Apply for</div>
<table class="apply_panel">
	<tr>
		<td class="apply_panel_table">
			<div class="applicant_panel">
				<table id="applicants"></table>
			</div>
		</td>
		<td class="apply_panel_btns"><button type="button" class="applicant_button" id="apply_ok">수락하기</button></td>
		<td class="apply_panel_btns"><button type="button" class="applicant_button" id="trip_end">마감</button></td>
	</tr>
</table>


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

<%-- 댓글 부분 script --%>
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
								+'<a href="#this" class="btn_reply">답글</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#this" class="btn_update">수정</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#this" class="btn_delete">삭제</a>'
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
										+'<a href="#this" class="btn_reply">답글</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#this" class="btn_update">수정</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#this" class="btn_delete">삭제</a>'
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

<%-- 신청부분 --%>
<script>
$(document).ready(function(){
	var trip_no = 1;
	
	// wm_tour_join 리스트
	var applylist = [];
	// wm_personal 리스트
	var personlist = [];

	getAlldata();
	
	// DB에서 해당 글번호(trip_no)의 모든 신청자들을 읽어오는 함수 정의
	function getAlldata(){
		// wm_tour_join 리스트
		applylist = [];
		// wm_personal 리스트
		personlist = [];
		
		var url1 = '/project03/tour/detail/apply/all/'+trip_no;
		$.getJSON(url1, function(data){
			$(data).each(function(){
				applylist.push({list_no: this.list_no, mno: this.mno, approval: this.approval, person:{}});	
				
			});
			
			var url2 = '/project03/tour/detail/apply/person/'+trip_no;
			$.getJSON(url2, function(data){
				$(data).each(function(){
					personlist.push({mno: this.mno, name: this.name, sex: this.sex, age: this.age, nickname: this.nickname, introduce:this.introduce})
				
				
				});
				for(var i=0; i<applylist.length; i++){
					for(var j=0; j<personlist.length; j++){
						if(applylist[i].mno == personlist[j].mno){
							applylist[i].person = personlist[j];	
						}
					}// end for(j)
				}// end for(i)
				getAllApply();
			}); // end getJSON
		}); // end getJSON
	}// end getAllApply()
	
	function getAllApply(){
		var tr ='<tr class="apply_th">'
					+'<th class="table_check"><input id="allCheck" type="checkbox"/></th>'
					+'<th class="table_name">신청자</th>'
					+'<th class="table_sex">성별</th>'
					+'<th class="table_age">나이</th>'
					+'<th class="table_com">수락여부</th>'
				+'</tr>' 
		
		for(var i=0; i<applylist.length; i++){
			if(applylist[i].approval == 0){
					tr+= '<tr class="apply_td">';
					tr+='<td class="table_check"><input class="check" name="rowCheck" type="checkbox" value="'+applylist[i].list_no+'"></td>';
			}else{
				tr+= '<tr class="apply_td" style="background-color:#DBD9D9 ">';
				tr+='<td class="table_check"><input class="test" name="comCheck" type="checkbox" checked="checked" onclick="return false;" value="'+applylist[i].list_no+'"></td>';
			}
					tr+='<td class="table_name">'+applylist[i].person["nickname"]+'</td>'
					+'<td class="table_sex">';
					if(applylist[i].person["sex"] == 0){
						tr+='여자'+'</td>';
					}else{
						tr+='남자'+'</td>';
					}
					tr+='<td class="table_age">'+applylist[i].person["age"]+'</td>';
					if(applylist[i].approval == 0){
						tr+='<td class="table_com"></td></tr>';
					}else{
						tr+='<td class="table_com">수락완료</td></tr>';
					}
		}// end for(i)
	
		$('#applicants').html(tr);
				
	}// end getAllApply()
	
	
	// 체크박스 전체 선택
	$('#applicants').on('click','#allCheck',function(){
		var chkObj = document.getElementsByName("rowCheck");
	      var rowCnt = chkObj.length - 1;
	      var check = $(this).context.checked;
	  
	      if (check) {﻿
	          for (var i=0; i<=rowCnt; i++){
	           if(chkObj[i].type == "checkbox")
	               chkObj[i].checked = true; 
	           var styletr = chkObj[i].parentNode.parentNode;
	           styletr.style.backgroundColor='#DBD9D9';
	          }
	      } else {
	          for (var i=0; i<=rowCnt; i++) {
	           if(chkObj[i].type == "checkbox"){
	               chkObj[i].checked = false;
	               var styletr = chkObj[i].parentNode.parentNode;
		           styletr.style.backgroundColor='#FFFFFF';
	           }
	          }
	      }
	 
	}); // 체크박스 전체선택 끝
	
	
	// 체크박스 선택시 색깔바꾸기 
	$('#applicants').on('click','.apply_td .table_check .check',function(){
		var obj = document.getElementsByName("rowCheck");
		for(var i=0; i<obj.length; i++){
			if(obj[i].checked == true){
				var styletr = obj[i].parentNode.parentNode;
				styletr.style.backgroundColor='#DBD9D9';
			}else{
				var styletr = obj[i].parentNode.parentNode;
				styletr.style.backgroundColor='#FFFFFF';
			}
		}
	});
		
	
	// 수락하기
	$('#apply_ok').on('click',$(this),function(){
		var chkObj = document.getElementsByName("rowCheck");
		var rowCnt = chkObj.length - 1;
		var test= false;
		for(var i=0; i<=rowCnt; i++){
			if(chkObj[i].checked == true){
				var no = chkObj[i].value;
				$.ajax({
					type:'put',
					url:'/project03/tour/detail/apply/'+1+'/'+no,
					headers:{
						'Content-Type':'application/json',
						'X-Http-Method-Ovveride':'PUT'
					},
					data: JSON.stringify({
						approval: 1,
						list_no: no
					}),
					success: function(result){
							if(result == 'success'){
								
							}
					}
				});// end ajax
			}// end if
			test = true;
		}// end for

		if(test){
			alert('수락이 완료되었습니다.');
			getAlldata();
		}

	}); // end apply_ok click

	
	
}); // end document.ready();
</script>



</body>
</html>