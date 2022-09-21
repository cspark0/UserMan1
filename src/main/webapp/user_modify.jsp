<%@page contentType="text/html; charset=utf-8" %>
<%@page import="user.*" %>
<%@ include file="loginCheck.jsp" %>
<%
	String userId = request.getParameter("userId");
	
	UserManager manager = UserManager.getInstance();
	User user = manager.findUser(userId);
%>
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 - 사용자 수정</b></td>
		  </tr>
	    </table>  
	    <br>
	  
	    <table style="background-color: YellowGreen">
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">사용자ID</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<%= user.getUserId() %>
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password" value="<%= user.getPassword() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호 확인</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="password" style="width: 240" name="password2" value="<%= user.getPassword() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">이름</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="name" value="<%= user.getName() %>">
			</td>
		  </tr>
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">이메일 주소</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="email" value="<%= user.getEmail() %>">
			</td>
		  </tr>	
		  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">전화번호</td>
			<td width="250" bgcolor="ffffff" style="padding-left: 10">
				<input type="text" style="width: 240" name="phone" value="<%= user.getPhone() %>">
			</td>
		  </tr>		  
	    </table>
	    <br>
	  
	    <table style="width: 100%">
		  <tr>
			<td align="left">
			<input type="button" value="수정" onClick="userModify()"> &nbsp;
			<input type="button" value="목록" onClick="userList()">
			</td>
		  </tr>
	    </table>
	  </td>
	</tr>
  </table>  
</form>
</body>
</html>