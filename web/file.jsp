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
<td width="1016" height="477" valign="top" bgcolor="#FFFFFF">
<table align="center" width="996" bgcolor="#FFFFFF">
		<% 
		String email2=(String)session.getAttribute("email2");
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from server where email2='"+email2+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(9);
			%>	
			
        <td width="988" height="47"  colspan="4" align="right" class="paragraping1"><img src="images/online.jpg">&nbsp;&nbsp;Welcome <font color="#FF0000"><% out.println(rs.getString(9));%></font></td>
		
		
       
		</tr>
		
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
	     st.close();
	      con.close();
	}
            %>
</table><br>
<table align="center" width="768" style="border:1px solid #d2d2d2;">
<form action="file1.jsp" name="f" method="get" onSubmit="return valid();">
<tr>
<td colspan="3" class="paragraping1" align="center"><font color="#FF0000" size="+1">Search File Here</font></td>
</tr>
<tr>
<td width="148" height="74" class="paragraping1">Search Your Files:</td>
<td width="608"><input type="text" name="name" style="border:1px solid skyblue;font-family:verdana;color:red;padding:5px 5px 5px 5px;width:500px;height:25px;">&nbsp;&nbsp;
<input type="submit" name="sub" value="" class="search">
</td>
</tr>
<tr>
<td class="paragraping1" colspan="3" align="center">
<a href="image.jsp">Image</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="file.jsp">File</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="data.jsp">Text</a>
</td>
</tr>   
</form>    
</table><br>
     
<table align="center" width="650">
 <tr>
<td height="74" class="paragraping1"><img src="images/architect.JPG" width="767" height="380"></td>
</tr>   
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
