<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Secure 
      and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#006CD9">
<table align="center" width="1024" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">
  <tr> 
    <td height="120" background="images/img01.jpg"> <font class="paragraping"><font size="+3">Secure 
      and Practical Outsourcing of Linear Programming in Cloud Computing</font></font> 
    </td>
  </tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#FFFFD7" style="border:1px solid #d2d2d2;">
  <tr align="right" class="paragraping1"> 
    <td width="247" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="userpage.jsp">Home</a></td>
    <td width="186"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User 
      Register</a></td>
    <td width="169"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="userlogin.jsp">User 
      Login</a></td>
    <td width="179"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
    <td width="219"><img src="images/arrow.jpg" width="16" height="16" />&nbsp;&nbsp;<a href="encryption.jsp">Encryption/Decryption</a></td>
  </tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#FFE8FF">
<tr>
<td width="652" height="489" valign="top" bgcolor="#FFFFFF">
<table align="center" width="652" style="border:1px solid #d2d2d2">
 <tr bgcolor="#0075EA">
<td height="31" colspan="2" class="paragraping"  style="color:white;" align="center">Unlock Files</td>
</tr>

<% 
    String name=request.getParameter("name");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from filestore where status= \'offline\' and name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			<tr>
			<td width="215" height="31" class="paragraping"  style="color:red;">File Name</td>
			<td width="425" height="61"  class="paragraping1"><% out.println(rs1.getString(1));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Key</td>
			<td width="425" height="61"  class="paragraping1"><% out.println(rs1.getString(2));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Description</td>
			<td width="425" height="61"  class="paragraping1"><% out.println(rs1.getString(4));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;"><img src="images/File.jpg"></td>
			 <td width="425"  class="paragraping1"><a href="userfileview.jsp?name=<% out.println(rs1.getString(1));%>"><img src="images/down.jpg"></a></td>
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">File Name</td>
			<td width="425"  class="paragraping1"><a href="filelock.jsp?name=<% out.println(rs1.getString(1));%>">File Lock</a></td>
			</tr>
		
       						
	 <%
      
String name1=rs1.getString(1);

%>

	    	<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("OOP'S");
		System.out.println(e1);
	
	 }

	
            %> 
			
			
 </table>
 <br><br>
 <table align="center" width="640" style="border:1px solid #d2d2d2">
 <tr bgcolor="#910000">
<td height="31" colspan="2" class="paragraping"  style="color:white;" align="center">Locked Files</td>
</tr>
<% 
    
	
	String sql="select * from filestore where status= \'online\' and name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql);
		while(rs1.next())
	     {

			%>
		<tr>
			<td width="342" height="31" class="paragraping"  style="color:red;">File Name</td>
			<td width="286" height="61"  class="paragraping1"><% out.println(rs1.getString(1));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Key</td>
			<td width="286" height="61"  class="paragraping1"><% out.println(rs1.getString(2));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Description</td>
			<td width="286" height="61"  class="paragraping1"><% out.println(rs1.getString(4));%></td>	
			</tr>
			
			<tr>
			<td height="45" class="paragraping"  style="color:red;">File Name</td>
			<td width="286"  class="paragraping1"><a href="fileunlock.jsp?name=<% out.println(rs1.getString(1));%>">File Unlock</a></td>
			</tr>
						
	 <%
      
String name1=rs1.getString(1);
%>

	    	<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("OOP'S");
		System.out.println(e1);
	
	 }


	
            %> 
			
			
 </table>
</td>
<td width="360" valign="top">
<table align="center" width="346" bgcolor="#FFFFFF">
<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("!");
       hitsCount = 0;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount-1;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
<tr bgcolor="#0075EA">
<td height="31" colspan="2" class="paragraping"  style="color:white;" align="center">File Status</td>
</tr>
<tr>
<td width="172" height="43" class="paragraping1">File Speed:</td>
<td width="162" class="paragraping1"><font color="#FF0000"><%=hitsCount%>.65376&nbsp;&nbsp;KB/s</font></td>
</tr>
<tr>
<td width="172" height="52" class="paragraping1">Download Limit:</td>
<td width="162" class="paragraping1"><font color="#FF0000">4 Times</font></td>
</tr>
<tr>
<td height="32"></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="1024" align="center" style="border:1px solid #d2d2d2">
  <tr> 
    <td height="50" background="images/img01.jpg" align="center"> <font class="paragraping"><font size="+1">Secure 
      and Practical Outsourcing of Linear Programming in Cloud Computing</font></font> 
    </td>
  </tr>
</table>
</body>
</html>
