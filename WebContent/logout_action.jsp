<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>
<%
	//세션에 저장된 사용자 이이디 및 세션 삭제
	session.removeAttribute("userId");
	session.invalidate();

	//모든 작업 완료후 이동할 페이지를 결정.
	response.sendRedirect("user_list.jsp");
%>