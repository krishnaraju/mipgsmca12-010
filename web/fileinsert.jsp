<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
</head>
<body>
<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Documents\\");
		String paramname=null;
		String name=null,key=null,limit=null,des=null,resumename=null;
		
		  File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("name"))
				{
					name=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("key"))
				{
					key=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("limit"))
				{
					limit=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("des"))
				{
					des=multi.getParameter(paramname);
				}
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			resumename = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Documents\\"+resumename);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO filestore VALUES(?, AES_ENCRYPT(?, 'key'),?,?,?,?)");
			//INSERT INTO user_aes VALUES (AES_ENCRYPT('?','pass'),?,? );
			//INSERT INTO filestore(pass, email, resumename)VALUES(AES_ENCRYPT('"File123"','pass'),'mani@gmail.com','blob');
       	
       			ps.setString(1,name);
       			ps.setString(2,key);
				ps.setString(3,limit);
				ps.setString(4,des);
				ps.setString(5,resumename);
				ps.setString(6,"offline");
				
       if(f == 0)
			ps.setObject(5,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(5,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("fileupload.jsp?message=success");
			}
			else
			{
				response.sendRedirect("fileupload.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>