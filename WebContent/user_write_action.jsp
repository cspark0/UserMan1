<%@page contentType="text/html; charset=euc-kr" %>
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
������ �߻��� ��� alert â�� ���� ���� �������� �̵�.
-->
<script>
alert("<%= e.getMessage() %>");
history.back();
</script>
<%
}
%>