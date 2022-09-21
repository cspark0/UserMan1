<%
	session = request.getSession();

	if ((session == null) || (session.getAttribute("userId") == null)) {
		response.sendRedirect("login.jsp");
	}
%>