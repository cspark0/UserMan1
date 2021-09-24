<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>

<jsp:useBean id="user" class="user.User"/>		       
<jsp:setProperty name="user" property="*"/>	      

<%
try {

//	String userId = request.getParameter("userId");
//	String password = request.getParameter("password");
	
	//모델에 로그인 작업을 위임한다.
	UserManager manager = UserManager.getInstance();
	manager.login(user.getUserId(), user.getPassword());	// manager 객체 호출
//	manager.login(userId, password);

	//정상적으로 로그인 되었을 경우 세션에 사용자 아이디 저장.
	session.setAttribute("userId", user.getUserId());

	//모든 작업 완료후 이동할 페이지를 결정.
	response.sendRedirect("user_list.jsp");
} catch (Exception e) {
%>
<!--
에러가 발생할 경우 alert 창을 띄우고 이전 페이지로 이동.
-->
<script>
alert("<%= e.getMessage() %>");
history.back();
</script>
<%
}
%>