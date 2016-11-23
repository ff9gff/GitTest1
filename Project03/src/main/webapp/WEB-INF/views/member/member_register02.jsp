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
	<form name="register_form" role="form">
		<label for="userid">아이디</label><br>
		<input type="text" style="ime-mode:" id="userid" name="userid" placeholder="아이디" /><br><br>
		<div id="result_id"></div>
		
		<label for="pwd">비밀번호</label><br>
		<input type="password" id="pwd" placeholder="비밀번호" /><br><br>
		
		<label for="pwd2">비밀번호 확인</label><br>
		<input type="password" id="pwd2" placeholder="비밀번호 확인"><br>
		<p id="check-pwd">비밀번호 확인을 위해 다시한번 입력 해 주세요</p><br>	
		<br><br>
		
		<label for="username">이름</label><br>
		<input type="text" id="username" placeholder="이름을 입력해 주세요"><br><br>
		
		<label for="sex">성별</label><br>
		<input type="checkbox" id="male" name="sexinfo" value="1">
		<label for="male">남자 </label>
		<input type="checkbox" id="female" name="sexinfo" value="0">
		<label for="female">여자 </label>
		<br><br>
		
		<label for="nickname">넥네임이름</label><br>
		<input type="text" id="nickname" placeholder="닉네임을 입력해 주세요"><br><br>
		<div id="result_nick"></div><br><br>
		
		<label for="mobile">핸드폰 번호</label><br>
		<input type="text" id="mobile" name="mobile" placeholder="핸드폰 번호"><br><br>
		
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
	
	// userid 중복 체크
	$('#userid').change(function() {	
		$.ajax({
			type: 'post',
			url: 'checkid',
			headers: {
				'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'POST'
			},
			data: JSON.stringify({
				userid: $('#userid').val()
			}),
			success: function(response) {
				if (response == 'NOK') {
					$('#result_id').html('이미 사용 중인 아이디입니다.');
					$('#result_id').css('color', 'red');	
				} else {					
					$('#result_id').html('사용 가능한 아이디입니다.');
					$('#result_id').css('color', 'blue');	
				}
			}
		
		});
		
	}); 
	
	// pwd 동일 체크		
	$('#pwd2').change(function() {
		if($('#pwd').val() != $('#pwd2').val()) {
			$('#check-pwd').html('비밀번호가 일치하지 않습니다');
			$('#check-pwd').css('color', 'red');
			$('#pwd').val('');
			$('#pwd2').val('');
		} else {			
			$('#check-pwd').html('비밀번호가 일치합니다');
			$('#check-pwd').css('color', 'blue');	
			
		}
	});
	
    //라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
    $('input[type="checkbox"][name="sexinfo"]').click(function(){
        //클릭 이벤트 발생한 요소가 체크 상태인 경우
        if ($(this).prop('checked')) {
            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
            $('input[type="checkbox"][name="sexinfo"]').prop('checked', false);
            $(this).prop('checked', true);
        }
    });
    
	// 닉네임 중복 체크
	$('#nickname').change(function() {	
		$.ajax({
			type: 'post',
			url: 'checknick',
			headers: {
				'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'POST'
			},
			data: JSON.stringify({
				nickname: $('#nickname').val()
			}),
			success: function(response) {
				if (response == 'NOK') {
					$('#result_nick').html('이미 사용 중인 nick입니다.');
					$('#result_nick').css('color', 'red');	
				} else {					
					$('#result_nick').html('사용 가능한 nick입니다.');
					$('#result_nick').css('color', 'blue');	
				}
			}
		
		});
		
	}); 
	
	// 휴대폰 번호
	function autoHypenPhone(str){
        str = str.replace(/[^0-9]/g, '');
        var tmp = '';
        if( str.length < 4){
            return str;
        }else if(str.length < 7){
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3);
            return tmp;
        }else if(str.length < 11){
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 3);
            tmp += '-';
            tmp += str.substr(6);
            return tmp;
        }else{              
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 4);
            tmp += '-';
            tmp += str.substr(7);
            return tmp;
        }
        return str;
    }
	
//	var cellPhone = $('#mobile'); // 왜 이걸로 하면 안되는걸까요?
	var cellPhone = document.getElementById('mobile');
	cellPhone.onkeyup = function(event){
	        event = event || window.event;
	        var _val = this.value.trim();
	        this.value = autoHypenPhone(_val) ;
	}	
	
	// 우편번호 API : https://postcodify.poesis.kr
	// 우편번호 API 다음 서비스 : http://postcode.map.daum.net/guide#sample
	$("#postcodify_search_button").postcodifyPopUp();
	

	$("#submit_Cancel").click(function() {
		location = 'index';
	});
	
	
	// 이메일 인증
	
	
	
	
	
	
	
	

});
</script>


</body>
</html>