<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.util.*" %>
<%@page import="user.*" %>

<%@ include file="loginCheck.jsp" %>
<%
	String curUserId = (String)session.getAttribute("userId");
	String currentPageStr = request.getParameter("currentPage");
	
	int currentPage = 1;
	
	if ( (currentPageStr != null) && (!currentPageStr.equals("")) ) {
		currentPage = Integer.parseInt(currentPageStr);
	}
	
	int countPerPage = 10;

	//���� �̿��Ͽ� ����� ����Ʈ�� �����´�.
	UserManager manager = UserManager.getInstance();
	List<User> userList = manager.findUserList(currentPage, countPerPage);
%>
<html>
<head>
<title>����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="css/user.css" type="text/css">

</head>
<body>
<br>
<form name="f" method="POST" action="user_write.jsp">
<table style="width: 100%">
  <tr>
  	<td width="20"></td>
    <td><a href="logout_action.jsp">�α׾ƿ�(&nbsp;<%=curUserId%>&nbsp;)</a><br/></td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr>
	<td width="20"></td>
	<td>
	  <!--contents-->
	  <table style="width:100%">
		<tr>
			<td class="title">&nbsp;&nbsp;<b>����� ���� - ����Ʈ</b></td>
		</tr>
	  </table>  
	  <br>	
	  
	  <!-- list -->
	  <table style="width: 100%; background-color: YellowGreen">
		<tr>
			<td width="190" align="center" bgcolor="E6ECDE" height="22">�����ID</td>
			<td width="200" align="center" bgcolor="E6ECDE">�̸�</td>
			<td width="200" align="center" bgcolor="E6ECDE">�̸���</td>
		</tr>
<%
	if (userList != null) {	
	  Iterator<User> userIter = userList.iterator();
	
	  //����� ����Ʈ�� Ŭ���̾�Ʈ���� �����ֱ� ���Ͽ� ���.
	  while ( userIter.hasNext() ) {
		User user = (User)userIter.next();
%>		  	
		<tr>
			<td width="190" align="center" bgcolor="white" height="20">
				<%= user.getUserId() %>
			</td>
			<td width="200" bgcolor="white" style="padding-left: 10">
				<a href="user_view.jsp?userId=<%= user.getUserId() %>" class="user">
					<%= user.getName() %>
				</a>
			</td>
			<td width="190" align="center" bgcolor="white" height="20">
				<%= user.getEmail() %>
			</td>
		</tr>
<%
	  }
	}
%>		  	
	  </table>
 	  <!-- /list -->	 
	  <br>
	  
	  <!-- button -->
	  <table style="width: 100%">
		<tr>
			<td align="left">
				<input type="submit" value="����� �߰�"/>
			</td>
		</tr>
	  </table>		
	</td>
  </tr>
</table>  
</form>
</body>
</html>