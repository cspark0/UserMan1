<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>
<%@ include file="loginCheck.jsp" %>
<%
	String userId = request.getParameter("userId");
	
	UserManager manager = UserManager.getInstance();
	User user = manager.findUser(userId);
%>
<html>
<head>
<title>����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="css/user.css" type="text/css">
<script>
function userModify() {
	f.action = "user_modify_action.jsp";
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
  <input type="hidden" name="userId" value="<%= user.getUserId() %>"/>	  
  <table style="width: 100%">
	<tr>
	  <td width="20"></td>
	  <td>
        <!--contents-->
	    <table style="width: 100%">
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����� ����</b></td>
		  </tr>
	    </table>  
	    <br>
	  
	    <table style="background-color: YellowGreen">
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�����ID</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getUserId() %>
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��й�ȣ</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password" value="<%= user.getPassword() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��й�ȣ Ȯ��</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password2" value="<%= user.getPassword() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�̸�</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="name" value="<%= user.getName() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">�̸��� �ּ�</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="email" value="<%= user.getEmail() %>">
			</td>
		  </tr>	
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">��ȭ��ȣ</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="phone" value="<%= user.getPhone() %>">
			</td>
		  </tr>		  
	    </table>
	    <br>
	  
	    <table style="width: 100%">
		  <tr>
			<td align="left">
			<input type="button" value="����" onClick="userModify()"> &nbsp;
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