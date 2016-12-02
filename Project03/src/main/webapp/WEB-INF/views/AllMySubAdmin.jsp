<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">



#dropDownType {
	width: 50px
}

#selectOption {
	padding-left: 655px
}
</style>

<link rel="stylesheet" href="<c:url value="/resources/theme/css/mystyle1.css"/>">

</head>

<body>
	<header id="top">
		<h1>�����ڴ� �ȳ��ϼ���</h1>
		<p>Test ȭ���Դϴ�.</p>
	</header>


	<div Class="wrapper">

		<nav id="menuBar">
			<ul id="menuList">
				<li Class="menuItem"><a Class="mylink" href="callbackAdmin">���Խ���</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="AdminMsg">��������</a>
				</li>

				<li Class="menuItem"><a Class="mylink" href="MyUserInfo">���� ���</a></li>

				<li Class="menuItem"><a Class="mylink" href="SendMsg">Ȩ(����)</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMyUser">��ü ����</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMySubAdmin">������ ����</a>
				</li>
				
				<li Class="menuItem"><a Class="mylink" href="index">����</a>
				</li>



			</ul>

		</nav>


		<section id="main">

	<form action="">
		<table id="checkboxTestTbl" border="1px">
				<caption>������ ���� ���� Ȯ��</caption>
				<colgroup>
					<col width="40px">
					<col width="100px">
					<col width="200px">
					<col width="200px">
					<col width="200px">
					<col width="200px" />
					<col width="200px" />
					<col width="70px">
				</colgroup>
	
				<tr>
					<th>��ȣ</th>
					<th>���� ��ȣ</th>
					<th>���� ���̵�</th>
					<th>���� �г���</th>
					<th>���� ����ó</th>
					<th>���� �̸���</th>
					<th>���� ���Գ�¥</th>
					<th>����</th>
				</tr>

			
			

					<c:forEach var="vo" items="${newMemberList}">
				
					<tr class= "select0">
						<td >${x=x+1 }</td>
						<td id="mno_${x }" value="${vo.mno }">${vo.mno }</td>
						<td>${vo.userid }</td>
						<td>${vo.nickname }</td>
						<td>${vo.phone }</td>
						<td>${vo.email }</td>
					        <td>
	       						 <fmt:formatDate value="${vo.joindate }" 
	          						  pattern="yyyy-MM-dd HH:mm:ss"/>
        					</td>
						<td><input type="button" value="�Ϲ�ȸ��" onclick="update('${x}')"></td>
					</tr>


						</c:forEach>

			</table>
  
					</form>
		</section>

		<aside id="sidebar">
			<img alt="�����" src="resources/theme/images/css_cat.jpg" style="width: 170px" /> 
			<img alt="������" src="resources/theme/images/css_dog.jpg" style="width: 170px" />
			<img alt="����" src="resources/theme/images/css_swan.jpg" style="width: 170px" />
		</aside>

	</div>

<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

function update(x){
	var val = $('#mno_x').val();
	//var val=$('#mno').val();
	alert("ss" +  x + val);
	
	 oTbl = document.getElementById("checkboxTestTbl");
	 oTbl.deleteRow(x);
	
	 
	 $.ajax({
		 type:'get',
		 url : '/project03/users/adTouser/'+x,
		 headers:{
			 'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'GET'
		 },
		 data: JSON.stringify({
				no: x,
			})
		 
		 
		 
		 
		 
	 });//end ajax 
	 
	 
	 
	 
	 
	
}//end 

/*function removeRow() {
  oTbl.deleteRow(oTbl.clickedRowIndex);
 * 
 function insRow() {
	  oTbl = document.getElementById("regionTable");
	  var oRow = oTbl.insertRow();
	  oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - Ŭ���� Row�� ��ġ�� Ȯ��;
	  var oCell = oRow.insertCell();
	  
	  //���Ե� Form Tag
	  var frmTag = "<input type=text name=region_name placeholder=����>";
	  frmTag += " <input type=button value='����' onClick='removeRow()' style='cursor:hand'>";
	  oCell.innerHTML = frmTag;
	}

	//Row ����
	function removeRow() {
	  oTbl.deleteRow(oTbl.clickedRowIndex);
	}
 
 */

</script>


</body>
</html>