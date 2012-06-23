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
<td width="247" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="userpage.jsp">Home</a></td>
<td width="186"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User Register</a></td>  
<td width="169"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="userlogin.jsp">User Login</a></td>
<td width="179"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
<td width="219"><img src="images/arrow.jpg" width="16" height="16" />&nbsp;&nbsp;<a href="encryption.jsp">Encryption/Decryption</a></td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#DFF4FF">
<tr>
<td width="601" height="520" valign="top" bgcolor="#FFFFFF">
<table align="center" width="577" bgcolor="#FFFFFF">
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
			<tr>
        <td width="569" height="47"  colspan="4" align="center" class="paragraping1"><img src="images/online.jpg">&nbsp;&nbsp;Welcome <font color="#FF0000"><% out.println(rs.getString(9));%></font></td>
		
		
       
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
</table>
<table align="center" width="578" style="border:1px solid #d2d2d2;" bgcolor="#FFFFFF">
<tr>
<td background="images/pattern_bg.gif" class="paragraping" align="center">View your Information</td>
</tr>
</table>
<table align="center" width="578" style="border:1px solid #d2d2d2;" bgcolor="#FFFFFF">
        <form name="idpasschbox" method="get" action="datadelete.jsp" onsubmit="return validation()">

          <% 
		Thread.sleep(100);
	String name = request.getParameter("name");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from image where name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {
		 

			%>
          <tr> 
		   <td width="185" align="left" class="paragraping1">Image Name</td>
		   <td width="63">:</td>
            <td width="314" height="63" class="paragraping1"><font color="#FF0000"><% out.println(rs1.getString(1));%></font></td>
			</tr>
			<tr>


			 <td width="185"  align="left" class="paragraping1">Key</td>
			  <td>:</td>
			 <td height="68" class="paragraping1"><font color="#FF0000"><% out.println(rs1.getString(2));%></font></td>
			</tr>
			
			  <tr>
			  <td width="185" height="76" align="left" class="paragraping1">Description</td>
			   <td>:</td>
            <td class="paragraping1"><font color="#FF0000"><% out.println(rs1.getString(3));%></font></td>
			  </tr>
			  <tr>
			  <td width="185" height="66" align="left" class="paragraping1"><img src="images/File.jpg"></td>
			   <td>:</td>
            <td class="paragraping1"><a href="imageview.jsp?name=<%=name%>"><font color="#FF0000"><img src="images/img.jpg"></font></a></td>
			  </tr>
			 
           <%
      
String name1=rs1.getString(1);

%>
         
         
        </form>
      </table>

    </td>
<td width="411" height="520" valign="top">
<table align="center" bgcolor="#FFFFFF">
<tr> 
		   <td width="131" align="left" class="paragraping1">Image Name</td>
		   <td width="14">:</td>
            <td width="250" height="46" class="paragraping1"><% out.println(rs1.getString(1));%></td>
			</tr>
			<tr> 
			<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("");
       hitsCount = 0;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount-1;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
		   <td width="131" align="left" class="paragraping1">File Speed</td>
		   <td width="14">:</td>
            <td width="250" height="46" class="paragraping1"><font color="#FF0000"><%=hitsCount%>.10666577&nbsp;&nbsp;KB/s</font></td>
			</tr>
</table>
</td></tr>
    
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
