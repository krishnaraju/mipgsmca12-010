<%@ page import="java.sql.*,databaseconnection.*, java.util.HashSet, java.util.Iterator"%>

<%@ page import="java.lang.*"%>
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
		var a = document.f.query.value;
		var b = document.f.id.value;
		var c = document.f.publish.value;
		var d = document.f.author.value;
		var e = document.f.cost.value;
		var f = document.f.mess.value;
		if(a=="")
		{
		alert("Enter Book Name");
		document.f.query.focus();
		return false;
		}
		if(b=="")
		{
		alert("Enter Book ID");
		document.f.id.focus();
		return false;
		}
		if(c=="")
		{
		alert("Book Published By");
		document.f.publish.focus();
		return false;
		}
		if(d=="")
		{
		alert("Enter book Author Name");
		document.f.author.focus();
		return false;
		}
		if(e=="")
		{
		alert("Enter Book Price");
		document.f.cost.focus();
		return false;
		}
		if(f=="")
		{
		alert("Enter Book Description");
		document.f.mess.focus();
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
<td width="373" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td>
<td width="184"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="fileupload.jsp">File Upload</a></td>  
<td width="189"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="imageupload.jsp">Image Upload</a></td>
<td width="160"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="textdata.jsp">Text Upload</a></td>
<td width="94"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#DFF4FF">
<tr>
<td width="660" height="477" valign="top" style="border:1px solid #d2d2d2"><br><br>
<form action="queryinsert.jsp" method="get" name="f" onSubmit="return valid();">
 <table align="center" width="487" style="border:1px solid green;" bgcolor="#FFFFFF">
  
<tr>
<td colspan="2" bgcolor="#930000" align="center"><font class="paragraping1"><font color="#FFFFFF">Add Text Details</font></font></td>
</tr>			
<tr>
<td width="174" height="40" class="paragraping1">Book Name:</td>
<td width="301"><input type="text" name="query" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("!");
       hitsCount = 10;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount+10;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
<tr>
<td width="174" height="40" class="paragraping1">Book ID:</td>
<td width="301"><input type="text" name="id" value="File<%=hitsCount%>" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1">Published By:</td>
<td width="301"><input type="text" name="publish" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1">Author Name:</td>
<td width="301"><input type="text" name="author" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1">Book Price:</td>
<td width="301"><input type="text" name="cost" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1">Book Description:</td>
<td width="301"><textarea name="mess" cols="50" rows="7" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;"></textarea></td>
</tr>
<tr>
<td height="36" class="paragraping2"></td>
<td width="301"><input type="submit" name="sub" value="" class="submit">&nbsp;&nbsp;<input type="reset" name="clear" value="" class="clear"></td>
</tr>
 </table>
 </form>
</td>
<td width="345" valign="top">
<table width="349" height="302" bgcolor="#FFFFDF" class="post" align="center" style="border:1px solid #d2d2d2">
<tr>
<td valign="top" height="47" align="center" colspan="2" background="images/bg2.jpg" class="paragraping1">Admin Upload</td>
</tr>
<tr class="paragraping1">
<td width="48" height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td width="289">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td>
</tr>
<tr class="paragraping1">
<td height="41">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="fileupload.jsp">File Upload</a></td>
</tr>
<tr class="paragraping1">
<td height="36">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="imageupload.jsp">Image Upload</a></td>
</tr>
<tr class="paragraping1">
<td height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="textdata.jsp">Text Data</a></td>
</tr>
<tr class="paragraping1">
<td height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="details.jsp">User Details</a></td>
</tr>
<tr class="paragraping1">
<td height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
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
