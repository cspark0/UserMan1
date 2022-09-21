<%@page contentType="text/html; charset=utf-8" %>
<%@page import="user.*" %>
<%@ include file="loginCheck.jsp" %>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	User user = new User();
	user.setUserId(userId);
	user.setPassword(password);
	user.setName(name);
	user.setEmail(email);
	user.setPhone(phone);

	UserManager manager = UserManager.getInstance();
	manager.update(user);

	response.sendRedirect("user_list.jsp");
%>