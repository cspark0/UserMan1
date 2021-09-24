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

	//모델을 이용하여 사용자 리스트를 가져온다.
	UserManager manager = UserManager.getInstance();
	List<User> userList = manager.findUserList(currentPage, countPerPage);
%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="css/user.css" type="text/css">

</head>
<body>
<br>
<form name="f" method="POST" action="user_write.jsp">
<table style="width: 100%">
  <tr>
  	<td width="20"></td>
    <td><a href="logout_action.jsp">로그아웃(&nbsp;<%=curUserId%>&nbsp;)</a><br/></td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr>
	<td width="20"></td>
	<td>
	  <!--contents-->
	  <table style="width:100%">
		<tr>
			<td class="title">&nbsp;&nbsp;<b>사용자 관리 - 리스트</b></td>
		</tr>
	  </table>  
	  <br>	
	  
	  <!-- list -->
	  <table style="width: 100%; background-color: YellowGreen">
		<tr>
			<td width="190" align="center" bgcolor="E6ECDE" height="22">사용자ID</td>
			<td width="200" align="center" bgcolor="E6ECDE">이름</td>
			<td width="200" align="center" bgcolor="E6ECDE">이메일</td>
		</tr>
<%
	if (userList != null) {	
	  Iterator<User> userIter = userList.iterator();
	
	  //사용자 리스트를 클라이언트에게 보여주기 위하여 출력.
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
				<input type="submit" value="사용자 추가"/>
			</td>
		</tr>
	  </table>		
	</td>
  </tr>
</table>  
</form>
</body>
</html>