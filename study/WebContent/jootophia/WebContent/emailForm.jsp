<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.*" %>

<%
// �����ڵ带 �����Ѵ�.
String key = new TempKey().getKey(5, false); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
</head>
<body>

<form name="form" method="post" action="/signUp.jsp">
<input type="hidden" name="emailYn" id="emailYn" value="N">

<input type="text" name="email" id="email">
<input type="button" name="bt_send" id="bt_send" value="�̸�������������" onclick="sendEmailAuth()"><br/>

<input type="text" name="confirmCode" id="confirmCode">
<input type="button" name="bt_email_confirm" id="bt_email_confirm" value="����Ȯ��" onclick="confirmEmailAuth()"><br/>

<input type="button" name="bt_join_confirm" id="bt_join_confirm" value="�����ϱ�" onclick="confirmSignUp()">

</form>

<script type="text/javascript">

	var code = "<%= key%>";
	
	
	// �̸������������� ��ư
	function sendEmailAuth(){
		
		var email = $('#email').val();
		
/* 		
		$.post(
				'/emailAuth.do', 
				{code: code, email: email}, 
				function(data){
					
					data.result;
			
				});
		 */
		$.get(
				'/jootophia/emailAuth.jsp?email='+email+'&code='+code,
				function(data){
					
					data.result;
			
				});
		
	}
	
	// ����Ȯ�ι�ư
	function confirmEmailAuth(){
		
		var confirmCode =  $('#confirmCode').val();
		
		if (code != confirmCode) {
			alert("�̸��� ������ �߸��Ǿ����ϴ�.");
		} else {
			$('#emailYn').val('Y');
			alert("�̸��� ���� �Ǿ����ϴ�.");
		}
		
	}
	
	// ���Թ�ư
	function confirmSignUp(){
		
		var emailYn = $('#emailYn').val();
		
		if (emailYn == 'N') {
			alert("�̸��� ������ �߸��Ǿ����ϴ�. ������������.");
			return;
		} 
		
		alert("���ԵǾ����ϴ�.");
		
		//document.form.submit();
	}
	
</script>
</body>


</html>