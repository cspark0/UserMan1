<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>
<%@ include file="loginCheck.jsp" %>
<%
	String userId = request.getParameter("userId");

	UserManager manager = UserManager.getInstance();
	String loginId = (String)request.getSession().getAttribute("userId");
	if (!userId.equals("admin") && 
		(loginId.equals("admin") || loginId.equals(userId))) {
		manager.remove(userId);
	}

	if (loginId.equals(userId)) {
		// logout
		session.removeAttribute("userId");
		session.invalidate();
	}
	response.sendRedirect("user_list.jsp");
%>