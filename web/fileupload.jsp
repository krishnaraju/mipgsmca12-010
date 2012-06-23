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
<script language="javascript">
		function validation()
		{  //var a=document.form3.key.value;
		    var b=document.form3.name.value;
			
			var c=document.form3.des.value;
			 var d=document.form3.resumename.value;
	
		    
		if(b=="")
		    {
		        alert("Please Enter File Name");
				document.form3.name.focus();
		        return false;
		    }
			
			if(c=="")
		    {
		        alert("Please Enter File Description");
				document.form3.des.focus();
		        return false;
		    }
		   
			if(document.form3.resumename.value=="")
			{
				alert("Please Upload your File");
				document.form3.resumename.focus();
				return false;
		
			}
			
		

		    else
		    {
		        return true;
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
<table align="center" width="552" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">
<FORM ENCTYPE="multipart/form-data" name="form3" ACTION="fileinsert.jsp" METHOD="POST" onsubmit="return validation();">
<tr>
<td  colspan="2" class="paragraping" background="images/pattern_bg.gif" align="center">File Upload Here</td>
</tr>
<tr>
<td width="237" height="53" class="paragraping1">File Name:</td>
<td width="303"><input type="text" name="name" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
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
<td height="48" class="paragraping1">Secret Key:</td>
<td><input type="text" name="key" value="File<%=hitsCount%>" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="24" class="paragraping1"></td>
<td class="paragraping1"><input type="hidden" name="limit" value="5" style="border:1px green solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="54" class="paragraping1">File Description:</td>
<td><input type="text" name="des" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
            <td height="61" class="paragraping1">Upload File:</td>
<td><INPUT NAME="resumename" TYPE="file" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="61" class="paragraping1"></td>
<td><input type="submit" name="sub" value="" class="submit">&nbsp;&nbsp;<input type="reset" name="clear" value="" class="clear">&nbsp;&nbsp;</td>
</tr>
</FORM>
</table>
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
