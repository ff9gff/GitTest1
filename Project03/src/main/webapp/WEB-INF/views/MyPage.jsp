<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/theme/css/templatemo_style.css"/>">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style type="text/css">
#dropDownType {
	width: 50px
}

#selectOption {
	padding-left: 655px
}

ul {
	list-style-type: none;
}
.personal {
	border:none;
	width: 300px;
	height: 50px;
}

.content_profile_img{
	width: 200px;
	height: 200px;
	vertical-align: middle;
	display: inline-block;
	border-radius: 70px;
	-moz-border-radius: 70px;
	-khtml-border-radius: 70px;
	-webkit-border-radius: 70px;
	margin: auto;
}

#tourchoose {
	
}
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">

</head>

<body>
	<header style="background-color: #F79F12; height: 60px">
		<p style="font-weight: bold; color: white; font-size: 25px;">같이 가자</p>
		<p><a href="index" style="font-weight: bolder; color: white; font-size: 18px;">마이페이지 TEST 화면입니다</a></p>
	</header>


	<div Class="wrapper">
		<div style="background-color: #F79F12; height: 520px;">
			<div
				style="width: 1026px; height: 200px; text-align: center; vertical-align: center; margin: auto;">
				<div
					style="display: block; width: 100%; height: 100%; margin-top: 20px; margin: 10px; vertical-align: center; text-align: center;">

					<div id="content_profile"
						style="display: inline-block; text-align: center; vertical-align: middle; padding-top: 14px;">

					</div>

				</div>

			</div>



			<div
				style="display: block; width: 1026px; height: 260px; margin: auto; vertical-align: center; text-align: center; padding-top: 30px">
				<div>
					<input type="text" Class="personal" value="${vo.nickname }" readonly="readonly" style="background-color: transparent; color: white; font-size: 20px; font-weight: bold; text-align: center;" /> 
					<input type="text" Class="personal" value="${vo.age }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
				</div>
				<div>
					<input type="text" Class="personal" value="${vo.sex }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
					<input type="text" Class="personal" value="${vo.email }" readonly="readonly" style="background-color: transparent; color: white; font-weight: bold; text-align: center;"/>
				</div>
				<textarea rows="" cols="" readonly="readonly" style="width: 600px; height: 120px; border: none; margin-top: 20px; background-color: #F19A0D; color: white; font-weight: bold; font-size: 25px">${vo.introduce }
				</textarea>
				
			</div>
				<input type="button" id="updatePersonal" value="수정" style="text-align: right; vertical-align: right; float: right; font-weight: bold; color: white; background-color: transparent;" /><br />
		</div>	

			<div style="display: block; width: 100%; margin-top: 16px; text-align: left; margin-left: auto; margin-right: auto">
				<p></p>
				<input type="hidden" id="mytour_mno" name="mytour_mno" value="${mno}" />
				<button type="button" id="mytour" style="font-weight: bold; background-color: transparent;">내 여행 리스트</button>
				<button type="button" id="mytourReview" style="font-weight: bold; background-color: transparent;">내 후기 리스트</button>
				<button type="button" id="tourchoose" style="font-weight: bold; background-color: transparent;">내 선택 리스트</button>
				
				<div class="row" id="toursearch" style="width: 97%; margin-top: 30px; margin-left: auto; margin-right: auto"></div>
				


			</div>
		
	</div>


	<!-- <script type="text/javascript">
		$('#checkboxTestTbl > tr > th >input: checked').each(function(index) {
			alert($(this).val());
		})
	</script> -->

			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<script>
	
		$(document).ready(function() {
			
			
			getThumnails_By_Mno();

			// 지역 검색: 해당 지역의 여행정보 썸네일들을 읽어오는 함수 정의 
			function getThumnails_By_Mno() {
				
				// 등록된 게시물 리스트
				List = [];
				// wm_tour 리스트(제목)
				titleList = [];
				// wm_tour_region 리스트(지역)
				regionList = [];
				
				var url = '/project03/MyPage/list/' + ${mno};
				$.getJSON(url, function(datalist) {
					$(datalist).each(function() {
						List.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}})
							
					
						var urltitle = '/project03/MyPage/title/' + ${mno};
						$.getJSON(urltitle, function(datatitle) {
							$(datatitle).each(function() {
								titleList.push({trip_no: this.trip_no, title: this.title});
								
							});
							
							
							var urlregion = '/project03/MyPage/region/' + ${mno};
							$.getJSON(urlregion, function(dataregion) {
								$(dataregion).each(function() {
									var name = this.region_name.split(",");
									var tagname = '';
									for(var i=0; i<name.length; i++){
										tagname +="#"+name[i]+" ";
									}									
									regionList.push({region_name: tagname, trip_no: this.trip_no});	
								});
							
								for (var i = 0; i < List.length; i++) {
									for (var j = 0; j < titleList.length; j++) {
										if (List[i].content_no == titleList[j].trip_no) {
											List[i].tour = titleList[j].title;
										} 
										for (var k = 0; k < regionList.length; k++) {
											if (List[i].content_no == regionList[k].trip_no) {
												List[i].city = regionList[k].region_name;
											} 
										}	
									}	
								}
								
							});
								
							
						});
				
				});
					
					getThumnail();
					
				});// end getJSON()
			
			};//end of getThumnails()
			
			
			function getThumnails_By_ChooseMno() {
												
				// 선택한 게시물 리스트
				JoinList = [];
				// wm_tour 리스트(제목)
				titleList = [];
				// wm_tour_region 리스트(지역)
				regionList = [];

								
				var url2 = '/project03/MyPage/joinlist/' + ${mno};
				$.getJSON(url2, function(data2){
					alert("joinlist 동작");
					$(data2).each(function() {
						alert("???");
						JoinList.push({img_url: this.img_url, content_no: this.content_no, tour: {}, city: {}})
						
						var urltitle = '/project03/MyPage/jointitle/' + ${mno};
						$.getJSON(urltitle, function(datatitle) {
							$(datatitle).each(function() {
								titleList.push({trip_no: this.trip_no, title: this.title});
								
							});
							
							
							var urlregion = '/project03/MyPage/joinregion/' + ${mno};
							$.getJSON(urlregion, function(dataregion) {
								$(dataregion).each(function() {
									var name = this.region_name.split(",");
									var tagname = '';
									for(var i=0; i<name.length; i++){
										tagname +="#"+name[i]+" ";
									}									
									regionList.push({region_name: tagname, trip_no: this.trip_no});	
								});
							
								for (var i = 0; i < JoinList.length; i++) {
									for (var j = 0; j < titleList.length; j++) {
										if (JoinList[i].content_no == titleList[j].trip_no) {
											JoinList[i].tour = titleList[j].title;
										} 
										for (var k = 0; k < regionList.length; k++) {
											if (JoinList[i].content_no == regionList[k].trip_no) {
												JoinList[i].city = regionList[k].region_name;
											} 
										}	
									}	
								}
								
							});
								
							
						});
				
				});
					
					getChooseThumnail();
					
				});// end getJSON()
			
			};//end of getThumnails()
			
			function getThumnail() {
				
				var list = '';
				
				for(var i = 0; i<List.length; i++){

					list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<figure>'
						+ '<a href="tour/detail?trip_no=' + List[i].content_no + '"><img src="' + List[i].img_url + '" width="300" height="200">'
						+ '<div>제목: ' + List[i].tour + '</div>'
						+ '<div>지역: ' + List[i].city + '</div>'		
						+ '</figure>'
						+ '</div>'
						+ '</div>';
				}
				
				$('#toursearch').html(list);				
	
				//end of getThumnails()
			};
			
			function getChooseThumnail() {
				
				var list = '';
				
				for(var i = 0; i<JoinList.length; i++){

					list += '<div class="portfolio-item col-md-3 col-sm-6">'
						+ '<div class="portfolio-thumb">'
						+ '<figure>'
						+ '<a href="tour/detail?trip_no=' + JoinList[i].content_no + '"><img src="' + JoinList[i].img_url + '" width="300" height="200">'
						+ '<div>제목: ' + JoinList[i].tour + '</div>'
						+ '<div>지역: ' + JoinList[i].city + '</div>'			
						+ '</figure>'
						+ '</div>'
						+ '</div>';
				}
				
				
				$('#toursearch').html(list);				
	
				//end of getThumnails()
			};
			
			// mno 검색 버튼 처리
			$('#mytour').click(function() {

				var mytour_mno = ${mno};
	
				if (mytour_mno == "") {
					alert('검색할 mno을 입력하세요');
				} else {
					getThumnails_By_Mno();
				}
	
			});
			
			$('#tourchoose').click(function() {

				var tourchoose_mno = ${mno};
	
				if (tourchoose_mno == "") {
					alert('검색할 mno을 입력하세요');
				} else {
					getThumnails_By_ChooseMno();
				}
	
			});
		});		
		
		var mno_img = '${inserterImg}';
		
		$('#content_profile').html('<img src="'+mno_img+'" class="content_profile_img"/>');
		
		</script>
	
	




		</body>
</html>