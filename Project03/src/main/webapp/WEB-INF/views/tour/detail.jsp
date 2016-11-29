<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>같이가자</title>
<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value="../resources/theme/css/templatemo_style.css"/>">

		
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		<script src="../resources/theme/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
		<script src="../resources/theme/js/bootstrap.js"></script>
		<script src="../resources/theme/js/plugins.js"></script>
		<script src="../resources/theme/js/main.js"></script>


<style>
.main-header{
 top: 30px;
}
.menu{
  width:800px;
  margin: 0 auto;
  color: #F4511E;
  border-bottom:3px solid #F4511E;
  font-size: 17px;
  font-weight: bold;
  margin-bottom: 20px;
}
#content{
  width:800px;
  margin: 0 auto;
}
#content_title{
width:800px;
  margin: 0 auto;
  color: #F4511E;
  font-size: 30px;
  font-weight: bold;
}
#content_smalltitle{
	width:800px;
  margin: 0 auto;
   font-size: 15px;
}
#content_condition{
	width:800px;
 	margin: 0 auto;
 	border-top: 1px solid lightgray;
 	border-bottom: 1px solid lightgray;
 	text-align: center;
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
	margin-left:60px;
}
.btns{
	float: right;
	margin-right: 20px;
}
.regdate,.btn_div,.btn_reply,.btn_update,.btn_delete{
	font-size: 10pt;
	color:#757575;
	font-weight: normal;
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
	vertical-align: middle;
}
.applicant_panel{
	width: 100%;
	height: 100%;
	padding:0;
	overflow: auto;
	overflow-x:hidden;
	margin: 0;
}
.applicant_button{
width: 95%;
	height: 100%;
	font-weight:bold;
	padding:0;
	margin: 0;
	 border:0;
}

#applicants{
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
.apply_notdata{
	background-color: lightgray;
	border: 1px solid lightgray;
}

.table_check{
	width: 8%;
}
.table_name,.table_com{
	width: 30%;
}
.table_sex,.table_age{
	width: 16%;
}
.apply_panel_table{
	width: 490px;
	height: 100%;
	background-color: lightgray;
	padding: 0;

}
.apply_panel_btns{
	width: 80px;
	text-align: center;

}
.apply_panel{
	width: 700px;
	height: 180px;
}
.join{
	font-weight: 800;
}
#context_profile,#context_board{
	padding: 5px 0px 5px 5px;
    margin: 0px;
    border: 1px solid #d8d6d6;
    border-bottom: 1px solid #FFFFFF;
    font-size: 12px;
}
#context_msg{
	padding: 5px 0px 5px 5px;
    margin: 0px;
    border: 1px solid #d8d6d6;
    font-size: 12px;
}
#contextmenu{
	width: 90px;
	position: absolute;
	background-color: #FFFFFF;
}
#context_ul{
list-style:none;
padding: 0;
margin: 0;
}
.btn_nickname{
	color: #000000;
	text-decoration:none;
	font-weight: 800;
	font-size: 15px;
}
.btn_context{
text-decoration:none;
color: #000000;
}
#profilemenu{
width: 400px;
height: 120px;
	position: absolute;
	background-color: #FFFFFF;
	border:solid 1px #ccc; 
	position: absolute;
	box-shadow: 0px 1px 20px #333;
	z-index:100; 
}
#profilemenu table{
	width: 100%;
	height: 100%;
	padding: 10px;
}
#profile_image{
	width:30%;
	border: 1px solid #d8d6d6;
	padding-right: 5px;
	padding-bottom: 0;
	padding-left: 0;
	padding-top: 0;

}
#profile_button1{
border:#FFFFFF;
background-color: #FFFFFF;
color: #686767;
font-size: 12px;
}
#profile_button2{
border: 1px solid #d8d6d6;
background-color: #FFFFFF;
color: #686767;
font-size: 10px;
}
#profile_nickname{
color: #444343;
font-weight: 800;
font-size: 20px;
}
#profile_introduce{
color: #a8a6a6;
font-size: 12px;
}
#overlay{
	background-color: #000;
 	bottom: 0; left: 0;
	opacity: 0.5;
	filter: alpha(opacity = 50);
	position: fixed;
	right: 0; top: 0;
	z-index: 99; display:none;
}
#span_join{
	color:#6d6f70;
	font-weight: bold;
}

</style>
</head>
<body>
<div id="overlay"></div>

<div id="contextmenu" hidden>
	<input hidden type="number" name="mno" id="context_mno"/>
	<input hidden type="number" name="listno" id="context_listno"/>
	<input hidden type="text" id="context_type"/>
	<ul id="context_ul">
		<li id="context_profile"><a href="#this" class="btn_context">프로필보기</a></li>
		<li id="context_board"><a href="#this" class="btn_context">게시글보기</a></li>
		<li id="context_msg"><a href="#this" class="btn_context">쪽지보내기</a></li>
	</ul>
</div>


<div id="profilemenu" hidden>
	<table>
	<tr>
		<td rowspan="3" id="profile_image">프로필 사진</td>
		<td id="profile_nickname" style="text-align: justify;">닉네임</td>
		<td colspan="2" style="text-align: right;"><button id="profile_button1">X</button></td>
	</tr>
	<tr><td colspan="2" id="profile_introduce" style="padding-top: 0;">자기소개</td></tr>
	<tr><td colspan="2" style="text-align: right;"><button id="profile_button2">자세히▶</button></td></tr>
</table>
</div>

<!-- 회원가입/로그인 부분 -->
	<%@ include file="../top_header.jspf"  %>


	<!-- 헤더 메인부분 -->
	<div class="main-header">
		<div class="container">
			<div id="menu-wrapper">
				<div class="row">
					<div class="logo-wrapper col-md-2 col-sm-2">
						<h1>
							<a href="#">hello </a>
						</h1>
					</div>
					<!-- /.logo-wrapper -->
					<div class="col-md-10 col-sm-10 main-menu text-right">
						<div class="toggle-menu visible-sm visible-xs">
							<i class="fa fa-bars"></i>
						</div>

						<ul class="menu-first">
							<li><a href="../index">메인</a></li>
							<li><a href="../admin">관리자</a></li>
							<li><a href="../login">로그인</a></li>
						</ul>
					</div>
					<!-- /.main-menu -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /#menu-wrapper -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.main-header -->
<div style="height: 150px;">안보여어</div>


<div id=content_title>${tourVO.title}</div>
<div id=content_smalltitle></div>
<table id=content_condition>
	<tr>
		<td id="betwwenDay"></td>
		<td>성별: ${tourVO.condition_sex}</td>
		<td>나이: ${tourVO.condition_age}</td>
	</tr>	
</table>
<div class="menu">Content</div>
<input hidden id="start_date" value="${tourVO.start_date}"/>
<input hidden id="end_date" value="${tourVO.end_date}"/>
<div id="content">
${tourVO.content}
</div>
<div class="menu">Apply for</div>
<table class="apply_panel">
	<tr style="padding: 0; height: 30px; text-align: center;"><td colspan="3" ><span id="span_join"></span></td></tr>
	<tr style="padding: 0;height: 150px;">
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
	var trip_no = ${tourVO.trip_no};
	
	// wm_tour_reply 리스트
	replylist=[];
	// wm_personal 리스트
	reply_personlist=[];
	 getReplyAlldata();
	
	// 댓글 리스트+개인정보 리스트 합체
	function getReplyAlldata(){
		// wm_tour_reply 리스트
		replylist=[];
		// wm_personal 리스트
		reply_personlist=[];
		
		var url1= '/project03/tour/detail/reply/all/'+trip_no;
		$.getJSON(url1, function(data1){
			$(data1).each(function(){
				replylist.push({rno:this.rno, parentrno:this.parentrno, trip_no:this.trip_no, mno: this.mno, rcontent:this.rcontent, regdate:this.regdate, person:{}});
			});// end data.each();
			
			var url2= '/project03/tour/detail/reply/person/'+trip_no;
			$.getJSON(url2, function(data2){
				$(data2).each(function(){
				reply_personlist.push({mno: this.mno, name: this.name, sex: this.sex, age: this.age, nickname: this.nickname, introduce:this.introduce});
				});// end data.each();
			
			for(var i=0; i<replylist.length; i++){
				for(var j=0; j<reply_personlist.length; j++){
					if(replylist[i].mno == reply_personlist[j].mno){
						replylist[i].person = reply_personlist[j];	
					};
				};// end for(j)
			};// end for(i)
			getAllReplies();
			});// end getJSON url2
		});// end getJSON url1
	};// getReplyAlldata();

	// DB에서 해당 글번호(trip_no)의 모든 댓글을 읽어오는 함수 정의
	function getAllReplies(){
			var list= '';
			/*data의 개수만큼 function()의 내용을 반복해서 수행*/

			for(var i = 0; i<replylist.length; i++){
				// date 타입으로 변환
				var date = new Date(replylist[i].regdate);
				var dateString = date.toLocaleDateString();
				var parentrno = replylist[i].rno;
				
				if(replylist[i].parentrno == 0){
				// list에 html추가 - 댓글만
				list +='<li class="reply_list" data-rno="'+replylist[i].rno+'" data-parent="'+replylist[i].parentrno+'">'
					+'<dl class="reply_body">'
						+'<dt class="icno">'+'</dt>'
						+'<dt class="reply_header">'
							+'<strong class="nickname"><a href="#this" class="btn_nickname" data-rno="'+replylist[i].mno+'" data-listno="'+i+'">'+replylist[i].person["nickname"]+'</a></strong>'
							+'<span class="regdate">'+dateString+'</span>'
							+'<span class="btns">'
								+'<a href="#this" class="btn_reply">답글</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#this" class="btn_update">수정</a>'
								+'<span class="btn_div">|</span>'
								+'<a href="#this" class="btn_delete">삭제</a>'
							+'</span>'
						+'</dt>'
						+'<dd class="rcontent">'+replylist[i].rcontent+'</dd>'
						+'<dd>'
							+'<div class="rcon_modify" style="display: none;">'
								+'<input type="hidden" class="update_rno" value="'+replylist[i].rno+'"/>'
								+'<table class="update_table">'
									+'<tbody>'
										+'<tr>'
											+'<td><textarea cols="90" rows="3" class="update_textarea">'+replylist[i].rcontent+'</textarea></td>'
											+'<td><input type="button" class="update_commit" value="수정완료"/></td>'
										+'</tr>'
									+'</tbody>'
								+'</table>'
							+'<div>'
						+'</dd>'
					+'</dl>'
				+'</li>'
				+'<li class="reply_insert" style="display: none;" id="'+replylist[i].rno+'">'
					+'<div class="re_reply_body">'
						+'<input type="hidden" class="parent_rno" value="'+replylist[i].rno+'"/>'
						+'<table class="reply_table">'
							+'<tbody>'
								+'<tr>'
									+'<td><strong class="nickname"><a href="#this" class="btn_nickname" data-rno="'+replylist[i].mno+'" data-listno="'+i+'">'+replylist[i].person["nickname"]+'</a></strong></td>'
									+'<td><textarea cols="90" rows="3" class="reply_textarea"></textarea></td>'
									+'<td><input type="button" class="reply_commit" value="답글달기"/></td>'
								+'</tr>'
							+'</tbody>'
						+'</table>'
					+'</div>'
				+'</li>';
		
					// 대댓글
					for(var j=0; j<replylist.length; j++){
						// date 타입으로 변환
						var date = new Date(replylist[j].regdate);
						var dateString = date.toLocaleDateString();
						
						if(replylist[j].parentrno == parentrno){
							list +='<li class="reply_list" data-rno="'+replylist[j].rno+'" data-parent="'+replylist[j].parentrno+'">'
							+'<dl class="re_reply_body">'
								+'<dt class="icno">'+'</dt>'
								+'<dt class="reply_header">'
									+'<strong class="nickname"><a href="#this" class="btn_nickname" data-rno="'+replylist[j].mno+'" data-listno="'+j+'">'+replylist[j].person["nickname"]+'</a></strong>'
									+'<span class="regdate">'+dateString+'</span>'
									+'<span class="btns">'
										+'<a href="#this" class="btn_reply">답글</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#this" class="btn_update">수정</a>'
										+'<span class="btn_div">|</span>'
										+'<a href="#this" class="btn_delete">삭제</a>'
									+'</span>'
								+'</dt>'
								+'<dd class="rcontent">'+replylist[j].rcontent+'</dd>'
								+'<dd>'
									+'<div class="rcon_modify" style="display: none;">'
										+'<input type="hidden" class="update_rno" value="'+replylist[j].rno+'"/>'
										+'<table class="update_table">'
											+'<tbody>'
												+'<tr>'
													+'<td><textarea cols="90" rows="3" class="update_textarea">'+replylist[j].rcontent+'</textarea></td>'
													+'<td><input type="button" class="update_commit" value="수정완료"/></td>'
												+'</tr>'
											+'</tbody>'
										+'</table>'
									+'<div>'
								+'</dd>'
							+'</dl>'
						+'</li>'
						+'<li class="reply_insert" style="display: none;" id="'+replylist[j].rno+'">'
							+'<div class="re_reply_body">'
								+'<input type="hidden" class="parent_rno" value="'+replylist[j].parentrno+'"/>'
								+'<table class="reply_table">'
									+'<tbody>'
										+'<tr>'
											+'<td><strong class="nickname"><a href="#this" class="btn_nickname" data-rno="'+replylist[j].mno+'" data-listno="'+j+'">'+replylist[j].person["nickname"]+'</a></strong></td>'
											+'<td><textarea cols="90" rows="3" class="reply_textarea"></textarea></td>'
											+'<td><input type="button" class="reply_commit" value="답글달기"/></td>'
										+'</tr>'
									+'</tbody>'
								+'</table>'
							+'</div>'
						+'</li>';
						};// end if
					};// end for(j); 
				
				}; // end if(this.parentrno == 'null')
				
			};// end for(i)
			
			$('#replies').html(list);
			
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
				url: '/project03/tour/detail/reply',
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
					getReplyAlldata();
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
			url:'/project03/tour/detail/reply/'+update_rno,
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
					getReplyAlldata();
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
			url: '/project03/tour/detail/reply',
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
					getReplyAlldata();
				}
				
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
				url:'/project03/tour/detail/reply/'+rno+'/'+parent,
				headers:{
					'Content-Type':'application/json',
					'X-HTTP-Method-Override':'DELETE'
				},
				success: function(result){
					if(result == 'success'){
						alert('댓글이 삭제됐습니다.');
						getReplyAlldata();
					}
				}
			});
		}// end if
	});// end reply delete
		
	<%-- 신청부분 --%>
	// wm_tour_join 리스트
	var applylist = [];
	// wm_personal 리스트
	var personlist = [];
	// 수락한 인원
	var joincount=0;

	getAlldata();
	
	// DB에서 해당 글번호(trip_no)의 모든 신청자들을 읽어오는 함수 정의
	function getAlldata(){
		// wm_tour_join 리스트
		applylist = [];
		// wm_personal 리스트
		personlist = [];
		joincount=0;
		
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
	}// end getAlldata()
	
	function getAllApply(){
		var tr ='<tr class="apply_th">'
					+'<th class="table_check"><input id="allCheck" type="checkbox"/></th>'
					+'<th class="table_name">신청자</th>'
					+'<th class="table_sex">성별</th>'
					+'<th class="table_age">나이</th>'
					+'<th class="table_com">수락여부</th>'
				+'</tr>' 
		if(applylist[0] == null){
			tr+= '<tr class="apply_notdata" style="height:130px;"><td colspan="5" class="apply_notdata">신청자가 없습니다.</td></tr>';
		}else{
		for(var i=0; i<applylist.length; i++){
			if(applylist[i].approval == 0){
					tr+= '<tr class="apply_td">';
					tr+='<td class="table_check"><input class="check" name="rowCheck" type="checkbox" value="'+applylist[i].list_no+'"></td>';
			}else{
				joincount++;
				tr+= '<tr class="apply_td" style="background-color:#DBD9D9 ">';
				tr+='<td class="table_check"><input class="test" name="comCheck" type="checkbox" checked="checked" onclick="return false;" value="'+applylist[i].list_no+'"></td>';
			}
					tr+='<td class="table_name"><a href="#this" class="btn_nickname" data-rno="'+applylist[i].mno+'" data-listno="'+i+'">'+applylist[i].person["nickname"]+'</a></td>'
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
						tr+='<td class="table_com"><span class="join">수락완료</span></td></tr>';
					}
		}// end for(i)
		}
		$('#applicants').html(tr);
		$('#span_join').html("현재까지 "+joincount+"명 수락완료");
				
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
		var success= false;
		var fail = 0;
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
				success = true;
			}// end if
			if(chkObj[i].checked == false){
				fail++;
			}
		}// end for

		if(success){
			alert('수락이 완료되었습니다.');
			getAlldata();
		}
		if(fail > rowCnt){
			alert('신청자를 체크해주세요');
		}

	}); // end apply_ok click

	


// menu에 마우스가 올라갔을때 색 바꾸기
$('#context_ul').on('mouseover','li',function(){
	$(this).context.style.backgroundColor='#ffdfaf';
});
$('#context_ul').on('mouseout','li',function(){
	$(this).context.style.backgroundColor='#FFFFFF';
});

// 다른 곳 클릭시 메뉴 사라지기
$(document).click(function(e){		
	if(!$('#applicants .apply_td .table_name ').has(e.target).length &&
		!$('#applicants .apply_td .table_name .btn_nickname').has(e.target).length &&
		!$('#replies .reply_list .nickname').has(e.target).length &&
		!$('#replies .reply_list .nickname .btn_nickname').has(e.target).length){
			$('#contextmenu').hide();
			$('#context_mno').val(null);
	} 
});

// 수락에서 - 닉네임 클릭시 메뉴 보이기
$('#applicants').on('click','.apply_td .table_name .btn_nickname',function(){
	// e.pageX
	// a 태그안의 mno 불러오기
	var amno = $(this).attr('data-rno');
	var alistno = $(this).attr('data-listno');
	// 메뉴 input에 mno숨겨넣기
	$('#context_mno').val(amno);
	$('#context_listno').val(alistno);
	$('#context_type').val("apply");
	// a 태그의 위치
	var atag = $(this).offset();
	var menubox = $('#contextmenu');
	menubox.css("left", (atag.left+30) +"px");
	menubox.css("top", (atag.top+10) +"px");
	menubox.show();
			 
});	

// 댓글에서 - 닉네임 클릭시 메뉴 보이기
$('#replies').on('click','.reply_list .btn_nickname',function(){
	// e.pageX
	// a 태그안의 mno 불러오기
	var amno = $(this).attr('data-rno');
	var alistno = $(this).attr('data-listno');
	// 메뉴 input에 mno숨겨넣기
	$('#context_mno').val(amno);
	$('#context_listno').val(alistno);
	$('#context_type').val("reply");
	// a 태그의 위치
	var atag = $(this).offset();
	var menubox = $('#contextmenu');
	menubox.css("left", (atag.left+30) +"px");
	menubox.css("top", (atag.top+10) +"px");
	menubox.show();
			 
});	

$('#context_profile').on('click','.btn_context',function(){
	
	var alistno = $('#context_listno').val();
	var atype = $('#context_type').val();
	if(atype=='reply'){
		$('#profile_nickname').text(replylist[alistno].person["nickname"]);
		$('#profile_introduce').text(replylist[alistno].person["introduce"]);
	}else{
		$('#profile_nickname').text(applylist[alistno].person["nickname"]);
		$('#profile_introduce').text(applylist[alistno].person["introduce"]);
	}
	$('#overlay, #profilemenu').show();

	$('#profilemenu').css("top",  Math.max(0, (($(window).height() - $('#profilemenu').outerHeight()) / 2) + $(window).scrollTop())+ "px"); 
	$('#profilemenu').css("left", Math.max(0, (($(window).width() - $('#profilemenu').outerWidth()) / 2) + $(window).scrollLeft())+ "px");
});

// 프로필 창 닫기
$('#overlay, #profile_button1').click(function(e){ 
    e.preventDefault(); 
    $('#profilemenu, #overlay').hide(); 
}); 


$('#context_board').on('click','.btn_context',function(){
	var amno = $('#context_mno').val();
	alert(amno+'번째 회원 게시글 보기');
});

$('#context_msg').on('click','.btn_context',function(){
	var amno = $('#context_mno').val();
	alert(amno+'번째 회원 쪽지보내기');
});

var date1 = $('#start_date').val();
var date2 = $('#end_date').val();

var dateArray1 = date1.split(" ");
var dateArray2 = date2.split(" ");

$('#content_smalltitle').text(dateArray1[0]+" ~ "+dateArray2[0]);

var startArray = dateArray1[0].split("-");
var endArray = dateArray2[0].split("-");

var startObj = new Date(startArray[0], Number(startArray[1])-1, startArray[2]);
var endObj = new Date(endArray[0], Number(endArray[1])-1, endArray[2]);

var betweenDay = (endObj.getTime() - startObj.getTime())/1000/60/60/24;

$('#betwwenDay').text(betweenDay+"박 "+(betweenDay+1)+"일");
console.log("betweenDay:"+betweenDay);



}); // end document.ready();
</script>


</body>
</html>