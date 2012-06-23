<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />

		<script language="JavaScript">
		function valid()
		{
		var a = document.f.name.value;
		
		
		if(a=="")
        {
        alert("Please search your File");
	    document.f.name.focus();
        return false;
         }
		
		}
		</script>
		

</head>
<body bgcolor="#306161">
<table align="center" width="1024" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">
<tr>
<td height="120" background="images/img01.jpg">
<font class="paragraping"><font size="+3">Secure and Practical Outsourcing of Linear Programming in Cloud Computing</font></font>
</td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#FFFFD7" style="border:1px solid #d2d2d2;">
<tr align="right" class="paragraping1">
<td width="520" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="userpage.jsp">Home</a></td>
<td width="173"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User Register</a></td>  
<td width="154"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="userlogin.jsp">User Login</a></td>
<td width="154"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#DFF4FF">
<tr>
    <td width="544" height="520" valign="top" bgcolor="#FFFFFF"> 
      <table align="center" width="535" style="border:1px solid #d2d2d2;" bgcolor="#FFFFCC">
        <form name="idpasschbox" method="get" action="datadelete.jsp" onsubmit="return validation()">
<tr>
<td width="527" align="center" background="images/pattern_bg.gif" class="paragraping">Encryption</td>			
</tr>
          <% 
		Thread.sleep(100);
	Connection con2=null;
	Statement st2=null;
	ResultSet rs2=null;
	String sql2="select * from text";
	try
	{
	   con2=databasecon.getconnection();
	    st2=con2.createStatement();
	    rs2=st2.executeQuery(sql2);
		while(rs2.next())
	     {
		 
		
		 
		 
			String s1=rs2.getString(1);
			%>
			
          
			<tr>
			 
			 <td height="46" class="paragraping1">&nbsp;&nbsp;<img src="images/img04.gif">&nbsp;&nbsp;<font color="#FF0000" size="+1"><% out.println(rs2.getString(2));%></font></td>
			</tr>
			
           <%
      
String query1=rs2.getString(1);

%>
         
          <%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st2.close();
	      con2.close();
	}
            %> 
        </form>
      </table>

    </td>
    <td width="468" height="520" valign="top">
	<table align="center" width="468" style="border:1px solid #d2d2d2;" bgcolor="#FFCCFF">
        <form name="idpasschbox" method="get" action="datadelete.jsp" onsubmit="return validation()">
<tr>
<td width="404" align="center" background="images/pattern_bg.gif" class="paragraping">Decryption</td>			
</tr>
          <% 
		Thread.sleep(100);
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select MD5(query),AES_DECRYPT(id,'key'),publish,author,cost,cdate,ctime from text";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {
		 
		
		 
		 
			String s1=rs1.getString(1);
			%>
			
          
			<tr>
			 
			 <td height="46" class="paragraping1">&nbsp;&nbsp;<img src="images/online.jpg">&nbsp;&nbsp;<font color="#006600" size="+1"><% out.println(rs1.getString(2));%></font></td>
			</tr>
			
           <%
      
String query1=rs1.getString(1);

%>
         
          <%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st1.close();
	      con1.close();
	}
            %> 
        </form>
      </table>
	
	</td>
  </tr>
       
</table>
<table width="1024" align="center" style="border:1px solid #d2d2d2">
<tr>
<td height="50" background="images/img01.jpg" align="center">
	<font class="paragraping"><font size="+1">Secure and Practical Outsourcing of Linear Programming in Cloud Computing</font></font>
</td>
</tr>
</table>
</body>
</html>
