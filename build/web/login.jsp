<%@page session="true"%>
<%
		String user=request.getParameter("user");
		session.setMaxInactiveInterval(24 * 60 * 60);
		session.setAttribute("user",user);
		response.sendRedirect("adminpage.jsp");
%>