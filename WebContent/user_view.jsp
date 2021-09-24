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
function userList() {
	f.action = "user_list.jsp";
	f.submit();
}

function userModify() {
	f.action = "user_modify.jsp";
	f.submit();
}

function userRemove() {
	if ( confirm("���� �����Ͻðڽ��ϱ�?") ) {
		f.action = "user_remove_action.jsp";
		f.submit();
	}
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
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����� ��������</b></td>
		  </tr>
	    </table>  
	    <br>	  
	    
	  	<table style="width: 100%; background-color: YellowGreen">
	  	  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">�����ID</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getUserId() %>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">�̸�</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getName() %>
			</td>
		  </tr>
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">�̸��� �ּ�</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getEmail() %>
			</td>
		  </tr>		  
		  <tr>
			<td width="120" align="center" bgcolor="E6ECDE" height="22">��ȭ��ȣ</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getPhone() %>
			</td>
		  </tr>	
	 	</table>
	    <br>
	    
 	    <table style="width: 100%">
		  <tr>
			<td align="left">
			<input type="button" value="����" onClick="userModify()"> &nbsp;
			<input type="button" value="����" onClick="userRemove()"> &nbsp;
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