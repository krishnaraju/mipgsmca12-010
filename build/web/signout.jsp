<%@ page import="java.sql.*"%>
<html>
    <head>
	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<head><title>User</title>
    </head>
    <body>
	<form>
	<% 
		String email=(String)session.getAttribute("email");
		session.removeAttribute("email");
		session.invalidate();
    %>	
	<jsp:forward page="index.html"/>
	</form>
       </body> 	
</html>