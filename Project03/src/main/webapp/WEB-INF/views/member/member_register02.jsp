<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>같이가자</title>

</head>
<body>

	<h1>member_register02.jsp</h1>
	<h2></h2>
	<form role="form">
		<label for="userid">아이디</label><br>
		<input type="text" id="userid" placeholder="아이디"><br><br>
		
		<label for="pwd">비밀번호</label><br>
		<input type="password" id="pwd" placeholder="비밀번호"><br><br>
		
		<label for="pwd2">비밀번호 확인</label><br>
		<input type="password" id="pwd2" placeholder="비밀번호 확인"><br>
		<p id="check-pwd">비밀번호 확인을 위해 다시한번 입력 해 주세요</p><br><br>
		
		<label for="username">이름</label><br>
		<input type="text" id="username" placeholder="이름을 입력해 주세요"><br><br>
		
		<label for="sex">성별</label><br>
		<input type="checkbox" name="sexinfo" value="1">남자 
		<input type="checkbox" name="sexinfo" value="0">여자
		<br>
		
		<label for="nickname">넥네임이름</label><br>
		<input type="text" id="nickname" placeholder="닉네임을 입력해 주세요"><br><br>
		
		<label for="mobile">핸드폰 번호</label><br>
		<input type="text" id="mobile" placeholder="핸드폰 번호"><br><br>
		
		<input type="text" id="postcode" class="postcodify_postcode5" placeholder="우편번호">
		<input type="button" id="postcodify_search_button" value="우편번호 찾기"><br>
		<input type="text" id="address" class="postcodify_address" placeholder="주소"><br>
		<input type="text" id="address2" placeholder="상세주소"><br><br>
		
		
		
		<label for="useremail">이메일</label><br/>
		<input type="text" id="useremail" placeholder="이메일 입력"/>
		<span><button class="btn_email_certification">인증번호 전송</button></span><br><br>
		
		
		<label for="email_certification">인증번호 입력</label><br/>
		<input type="text" id="email_certification" placeholder="인증번호">
		<span><button class="btn_check_certificationbtn">인증번호 확인</button></span><br><br>


		<button type="submit" id="submit_OK">회원가입</button>		
		<button type="button" id="submit_Cancel">가입취소</button>
	</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<script>
$(document).ready(function() {
	// 우편번호 API : https://postcodify.poesis.kr
	// 우편번호 API 다음 서비스 : http://postcode.map.daum.net/guide#sample
	$("#postcodify_search_button").postcodifyPopUp();
	

	$("#submit_Cancel").click(function() {
		location = 'index';
	});	

});
</script>


</body>
</html>