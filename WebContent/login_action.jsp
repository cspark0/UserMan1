<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="user.*" %>

<jsp:useBean id="user" class="user.User"/>		       
<jsp:setProperty name="user" property="*"/>	      

<%
try {

//	String userId = request.getParameter("userId");
//	String password = request.getParameter("password");
	
	//�𵨿� �α��� �۾��� �����Ѵ�.
	UserManager manager = UserManager.getInstance();
	manager.login(user.getUserId(), user.getPassword());	// manager ��ü ȣ��
//	manager.login(userId, password);

	//���������� �α��� �Ǿ��� ��� ���ǿ� ����� ���̵� ����.
	session.setAttribute("userId", user.getUserId());

	//��� �۾� �Ϸ��� �̵��� �������� ����.
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