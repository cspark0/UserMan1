<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>
<%
	//���ǿ� ����� ����� ���̵� �� ���� ����
	session.removeAttribute("userId");
	session.invalidate();

	//��� �۾� �Ϸ��� �̵��� �������� ����.
	response.sendRedirect("user_list.jsp");
%>