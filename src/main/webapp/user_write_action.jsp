<%@page contentType="text/html; charset=utf-8" %>
<%@page import="user.*" %>
<jsp:useBean id="user" class="user.User"/>		       
<jsp:setProperty name="user" property="*"/>	      
<%
try {
/*
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	User user = new User();
	user.setUserId(userId);
	user.setPassword(password);
	user.setName(name);
	user.setEmail(email);
*/
	UserManager.getInstance().create(user);
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