<%@page contentType="text/html; charset=euc-kr" %>
<html>
<head>
<title>����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="css/user.css" type="text/css">
<script>
function userCreate() {
	if ( f.userId.value == "" ) {
		alert("����� ���̵� �Է��Ͻʽÿ�.");
		f.userId.focus();
		return false;
	} 
	if ( f.password.value == "" ) {
		alert("��й�ȣ�� �Է��Ͻʽÿ�.");
		f.password.focus();
		return false;
	}
	if ( f.name.value == "" ) {
		alert("�̸��� �Է��Ͻʽÿ�.");
		f.name.focus();
		return false;
	}
	
	f.action = "user_write_action.jsp";
	f.submit();
}

function userList() {
	f.action = "user_list.jsp";
	f.submit();
}
</script>
</head>
<body>
<br>
<!-- write Form  -->
<form name="f" method="POST">
<table style="width: 100%">
  <tr>
    <td width="20"></td>
	<td>
      <!--contents-->
	  <table style="width: 100%">
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ȸ�� ����</b></td>
		  </tr>
	  </table>  
	  <br>
	  
	  <table style="background-color: YellowGreen">
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�����ID</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240;" name="userId">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��й�ȣ</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��й�ȣ Ȯ��</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password2">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�̸�</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="name">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�̸��� �ּ�</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="email">
			</td>
		  </tr>	
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��ȭ��ȣ</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="phone">
			</td>
		  </tr>		  
	  </table>
	  <br>
	  
	  <table style="width: 100%">
		  <tr>
			<td align="left">
			<input type="button" value="ȸ�� ����" onClick="userCreate()"> &nbsp;
			<input type="button" value="���" onClick="userList()">
			</td>
		  </tr>
	  </table>
	</td>
  </tr>
</table>  
</form>
</body>
</html>