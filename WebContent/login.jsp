<%@page contentType="text/html; charset=euc-kr" %>
<html>
<head>
<title>사용자 관리(UserMan1)</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="${pageContext.request.contextPath}/css/user.css" type="text/css">
<script>
function userCreate() {
	f.action = "user_write.jsp";
	f.submit();
}

function login() {
	if ( f.userId.value == "" ) {
		alert("사용자 아이디를 입력하십시요.");
		f.userId.focus();
		return false;
	} 
	if ( f.password.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.password.focus();
		return false;
	}	
	
	f.action = "login_action.jsp";
	f.submit();
}
</script>
</head>
<body>
<br>
<!-- write Form  -->
<form name="f" method="POST">
  <table style="width:100%">
	<tr>
	  <td width="20"></td>
	  <td>
      <!--contents-->
	  <b>UserMan1</b><br><br>
	  <table>
		  <tr>
			<td class="title">&nbsp;&nbsp;사용자 관리 - 로그인&nbsp;&nbsp;</td>
		  </tr>
	  </table>  
	  <br>
	  <table style="background-color: YellowGreen">
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">사용자 아이디</td>
			<td width="250" bgcolor="ffffff" style="padding-left:10">
				<input type="text" style="width:240" name="userId">
			</td>
		  </tr>
	  	  <tr height="40">
			<td width="150" align="center" bgcolor="E6ECDE">비밀번호</td>
			<td width="250" bgcolor="ffffff" style="padding-left:10">
				<input type="password" style="width:240" name="password">
			</td>
		  </tr>
	  </table>
	  <br>
	  
	  <table style="width:100%">
		  <tr>
			<td align="left">
			<input type="button" value="로그인" onClick="login()"> &nbsp;
			<input type="button" value="회원가입" onClick="userCreate()">
			</td>
		  </tr>
		  <tr height="40"><td>(관리자 로그인: admin/admin)</td></tr>		  
	  </table>

	  </td>
	</tr>
  </table>  
</form>
</body>
</html>