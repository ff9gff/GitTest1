<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>같이가자</title>
</head>
<body>



   <h1>member_register02.jsp</h1>
   <h2></h2>
   <form id ="register_form" name="register_form" action="sign_up" method="post" enctype="multipart/form-data">
      
      <label for="userid">아이디</label><br>
      <input type="text" pattern="[A-Za-z0-9]*" style="ime-mode: disabled;" id="userid" name="userid" placeholder="아이디" />
      <div id="result_id"></div>
      <br><br>
      
      <label for="pwd">비밀번호</label><br>
      <input type="password" id="pwd" placeholder="비밀번호" /><br><br>
      
      <label for="pwd2">비밀번호 확인</label><br>
      <input type="password" id="pwd2" name="pwd" placeholder="비밀번호 확인"><br>
      <div id="check-pwd">비밀번호 확인을 위해 다시한번 입력 해 주세요</div>
      <br>
      
      <label for="username">이름</label><br>
      <input type="text" id="name" name="name" placeholder="이름을 입력해 주세요"><br><br>
      
      <label for="sex">성별</label><br>
      <input type="checkbox" id="male" name="sex" value="1">
      <label for="male">남자 </label>
      <input type="checkbox" id="female" name="sex" value="0">
      <label for="female">여자 </label>
      <br><br>
      
      <label for="age">나이</label><br>
      <input type="text" pattern="[0-9]*" id="age" name="age" placeholder="나이" /><br><br>
      
      <label for="nickname">넥네임이름</label><br>
      <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력해 주세요">
      <div id="result_nick"></div><br><br>
      
      <label for="phone">핸드폰 번호</label><br>
      <input type="text" id="phone" name="phone" placeholder="핸드폰 번호"><br><br>
      
      <input type="text" id="postcode" class="postcodify_postcode5" placeholder="우편번호">
      <input type="button" id="postcodify_search_button" value="우편번호 찾기"><br>
      <input type="text" id="address1" name="address1" class="postcodify_address" placeholder="지번/도로명 "><br>
      <input type="text" id="address2" name="address2" placeholder="상세주소">
      <input type="hidden" id="address" name="address" readonly="readonly"/>
      <br><br>      
      
      <label for="email">이메일</label><br/>
      <input type="email" id="email" name="email" placeholder="이메일 입력" />
      <button type="button" id="btn_send_certification" name="btn_send_certification">인증번호 전송</button><br><br>
      
      <label for="email_certification">인증번호 입력</label><br/>
      <input type="text" id="email_certification" placeholder="인증번호">
      <button type="button" id="btn_check_certification">인증번호 확인</button><br><br>
      
      <!-- TODO : 이미지 (프로필 사진) 넣기 첨부! -->
      
      <label for="imageFile">프로필 이미지</label><br/>       
      <input type="file" id="imageFile" name="imageFile" value="<img src='${pageContext.request.contextPath}/image/${imageFile.id}' width='100' height='100'>"><br>
            
      <div id="image_preview">
      <!-- <img src="#" id="profile-image" width="300px" height="400px"/><br/> -->
      <img src="#" id="profile-image" style="display: none;" /><br/>
      <!-- <button type="button" id="btn_profile-image_remove" style="display: none;">Remove</button> -->
      <a href="#" id="btn_profile-image_remove" style="display: none;">Remove</a>
      </div><br/>      
      
      <label for="introduce">자기소개</label><br/>
      <textarea id="introduce" name="introduce" cols="100" rows="15"></textarea><br><br>         

      <button type="button" id="submit_OK">회원가입</button>      
      <button type="button" id="submit_Cancel">가입취소</button>
   </form>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
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
    $('input[type="checkbox"][name="sex"]').click(function(){
        //클릭 이벤트 발생한 요소가 체크 상태인 경우
        if ($(this).prop('checked')) {
            //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
            $('input[type="checkbox"][name="sex"]').prop('checked', false);
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
   
//   var cellPhone = $('#mobile'); // document.getElementById('mobile') 와 완벽한 같은 객체는 아니다.
   var cellPhone = document.getElementById('phone');
   cellPhone.onkeyup = function(event){
           event = event || window.event;
           var _val = this.value.trim();
           this.value = autoHypenPhone(_val) ;
   }   
   
   // 우편번호 API : https://postcodify.poesis.kr
   // 우편번호 API 다음 서비스 : http://postcode.map.daum.net/guide#sample
   $("#postcodify_search_button").postcodifyPopUp();
   
   // 이메일 인증
   var auth_code;
   $('#btn_send_certification').click(function() {
      var email = $('#email').val();
      
      $.ajax({
         type: 'post',
         url: 'email_auth',
         headers: {
            'Content-Type': 'application/json',
            'X-HTTP-Method-Override': 'POST'
         },
/*           data: JSON.stringify({
            email: $('#email').val()
         }), */
         data : $('#email').val(),
         success: function(response) {
            if (response != null) {
               auth_code = response;
            }
         }      
      });      
   });
   
   var final_check = 0; // 인증번호 입력시 회원가입이 되기 위하여...
   
   // 인증번호 입력 확인
   $('#btn_check_certification').click(function() {      
      if($('#email_certification').val() == auth_code) {
         alert('인증번호가 동일!');
         final_check = 1;
         alert(final_check);
         
      } else {
         alert('인증번호 다시 확인 해!');
      }      
   });
   
   $('#submit_OK').click(function() {
      if(final_check == 1) {
         alert('인증번호 확인 ok!');
         var address = $('#address1').val() + " " + $('#address2').val();
         $('#address').val(address);
         
         $("#register_form").submit();         
      } else {
         alert('이메일 인증 및 이메일 인증번호 확인을 해 주세요!');
      }       
   });   
   $("#submit_Cancel").click(function() {
      location = '../index';
   });
   
   /** 
   onchange event handler for the file input field.
   It emplements very basic validation using the file extension.
   If the filename passes validation it will show the image using it's blob URL and will hide the input field and show a delete button to allow the user to remove the image
   */
   $('#imageFile').on('change', function() {
      
      ext = $(this).val().split('.').pop().toLowerCase(); //확장자
      
      //배열에 추출한 확장자가 존재하는지 체크
      if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
         resetFormElement($(this)); //폼 초기화
         window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
      } else {
         file = $('#imageFile').prop("files")[0];
         blobURL = window.URL.createObjectURL(file);
         $('#image_preview img').attr('src', blobURL);
         document.getElementById("profile-image").style.display = "inline";
         $('#image_preview img').attr('width', '300px');
         $('#image_preview img').attr('height', '400px');
         document.getElementById("btn_profile-image_remove").style.display = "inline";
         //$('#image_preview').slideDown(); //업로드한 이미지 미리보기
         $('#image_preview').show(); //업로드한 이미지 미리보기
      }
   });
   
   /**
   onclick event handler for the delete button.
   It removes the image, clears and unhides the file input field.
   */
   $('#image_preview a').bind('click', function() {
      resetFormElement($('#imageFile'));
      //$('#image').slideDown(); //파일 양식 보여줌
      $(this).parent().slideUp(); //미리 보기 영역 감춤
      //return false; //기본 이벤트 막지
   });
      

   /** 
   * 폼요소 초기화 
   * Reset form element
   * 
   * @param e jQuery object
   */
   function resetFormElement(e) {
      e.wrap('<form>').closest('form').get(0).reset(); 
      //리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
      //감싼 폼 ( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
      //DOM에서 제공하는 초기화하는 메서드 reset()을 호출
      e.unwrap(); //감싼 <form> 태그를 제거
   }

   
   
   
});
</script>


</body>
</html>