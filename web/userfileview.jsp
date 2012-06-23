<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>
<body background="Images/clouds_background.jpg">
<%
     Thread.sleep(10000);
	session.removeAttribute("resumeBlob");
	String name = request.getParameter("name");
	Blob resume = null;
	
	Connection con1 = null;
	PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	String sql1 = "select resumename from filestore where name = ?";
	try
	{
		con1 = databasecon.getconnection();
		ps1 = con1.prepareStatement(sql1);
		ps1.setString(1,name);
		rs1 = ps1.executeQuery();
		rs1.next();
		resume = rs1.getBlob(1);
	}
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con1 != null)
			con1.close();
		if(ps1 != null)
			ps1.close();
		if(rs1 != null)
			rs1.close();
	}
	session.setAttribute("resumeBlob",resume);
%>
<jsp:forward page="userview.jsp"/>
</body>
</html>