<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

		Blob b = (Blob)session.getAttribute("resumeBlob");
		if(b != null)
		{
			String fileName = "image";
			byte[] ba = b.getBytes(1, (int)b.length());
			 response.setContentType("image/jpg");
			response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");
			
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
		}
		else
		{
			response.sendRedirect("userpage.jsp");
		}
%>

</body>
</html>