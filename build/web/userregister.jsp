<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript"></script>
		<script src="JS/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src='JS/jquery.validationEngine.js'type="text/javascript"></script>

		
		<!-- AJAX SUCCESS TEST FONCTION	
			<script>function callSuccessFunction(){alert("success executed")}
					function callFailFunction(){alert("fail executed")}
			</script>
		-->
		
		<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
	</script>
	<style type="text/css">
	#font
	{
	font-family:verdana;
	font-size:12px;
	font-color:green;
	padding:3px 3px 3px 3px;
	}
	</style>
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
    <td width="520" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="index.html">Home</a></td>
    <td width="173"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User 
      Register</a></td>
    <td width="154"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="userlogin.jsp">User 
      Login</a></td>
    <td width="157"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="adminlogin.jsp">Admin 
      Login</a></td>
  </tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#FFE8FF">
<tr>
<td width="660" valign="top" bgcolor="#FFFFFF">
<div style="border:1px solid #d2d2d2">
 <div align="center" class="post"><font size="+1" color="#FF0000">Server Registration</font></div> 
          <form id="formID" class="formular" method="post" action="insert.jsp">
			<fieldset>
				<legend>User informations</legend>
				<label>
					<span>Desired username : </span>
					<input value="" class="validate[required,custom[noSpecialCaracters],length[0,20]]" type="text" name="user" id="user" />
				</label><br>
				<label>
					<span>First name (optional)</span>
					<input value=""  class="validate[optional,custom[onlyLetter],length[0,100]] text-input" type="text" name="firstname" id="firstname" />
				</label><br>
				<label>
					<span>Last name : </span>
					<input value=""  class="validate[required,custom[onlyLetter],length[0,100],funcCall[validate2fields]] text-input" type="text" id="lastname" name="lastname"  />
				</label><br>
				<div>
					<span><font color="#FF0000">Gender :</font> <br /></span><br>
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio1"  value="5">&nbsp;<font color="#006600">Male</font> 
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio2"  value="3"/>&nbsp;<font color="#006600">Female</font>
					
				</div><br>
				<div>
					<span><font color="#FF0000">Interested In : </font><br /></span><br>
				
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox"  name="data[User3][preferedColor]" id="data[User3][preferedColor]" value="5">&nbsp;<font color="#006600">File</font>
					
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox" name="data[User3][preferedColor]" id="maxcheck2"  value="3"/>&nbsp;<font color="#006600">Image</font>
				
					<input class="validate[minCheckbox[2]] checkbox" type="checkbox" name="data[User3][preferedColor]" id="maxcheck3"  value="9"/>&nbsp;<font color="#006600">Text</font>
				</div><br>
				<label>
					<span>Date : (format YYYY-MM-DD)</span>
					<input value="1988-12-10"  class="validate[required,custom[date]] text-input" type="text" name="date"  id="date" />
				</label>
				<br>
				<label>
					<span>Ranking Area 1:</span>
				<select name="sport" class="validate[required]"  id="sport" style="font-family:verdana;" >
					<option value="">Choose a Area</option>
					<option value="File">File</option>
					<option value="Image">Image</option>
					<option value="Text">Text</option>
				</select>
				</label>
				<br>
				<label>
					<span>Age : </span>
					<input value=""  class="validate[required,custom[onlyNumber],length[0,3]] text-input" type="text" name="age"  id="age" />
				</label>
					<br>
				<label>
					<span>Telephone : </span>
					<input value=""  class="validate[required,custom[telephone]] text-input" type="text" name="telephone"  id="telephone" />
				</label><br>
			</fieldset>
			<fieldset>
				<legend>Password</legend>
				<label>
					<span>Password : </span>
					<input value=""  class="validate[required,length[6,11]] text-input" type="password" name="password"  id="password" />
				</label>
				<label>
					<span>Confirm password : </span>
					<input value=""  class="validate[required,confirm[password]] text-input" type="password" name="password2"  id="password2" />
				</label>
			</fieldset>
			<fieldset>
				<legend>Email</legend>
				<label>
					<span>Email address : </span>
					<input value=""  class="validate[required,custom[email]] text-input" type="text" name="email" id="email"  />
				</label>
				<label>
					<span>Confirm email address : </span>
					<input value="" class="validate[required,confirm[email]] text-input" type="text" name="email2"  id="email2" />
				</label>
			</fieldset>
			<fieldset>
				<legend>Comments</legend>
				<label>
					<span>Description : </span>

					<textarea value="ced@hotmail.com" class="validate[required,length[6,300]] text-input" name="comments" id="comments" /> </textarea>
				</label>

			</fieldset>
			<fieldset>
				<legend>Conditions</legend>
				<div class="infos">Checking this box indicates that you accept terms of use. If you do not accept these terms, do not use this website : </div>
				<label>
					<span class="checkbox">I accept terms of use : </span>
					<input class="validate[required] checkbox" type="checkbox"  id="agree"  name="agree"/>
				</label>
			</fieldset>
<input class="submit" type="submit" value="Registration!" style="font-family:verdana;font-size:12px;color:red;border:1px solid green;"/>
<hr/>
</form>
</div>
<%
 	String temp=null;
 	
 	temp=request.getParameter("message");
 	
 	if(temp!=null && temp.equalsIgnoreCase("success"))
 	{
 %>
 <br>

 		<table align="left" width="400" cellspacing="1" cellpadding="1" style="border: 1px #A0A0A0 solid;">
 			<tr>
 				<td align="left" class="paragraping">
 					<font color="green" face="verdana" size="2">
 						Server Successfully Registred! <br>
						
 					</font>
 				</td>
 			</tr>
 		</table>
		</td>
</tr>
</table>
<%
 	}
  %>
</td>
<td width="345" valign="top">
<table width="353" height="279" bgcolor="#FFFFDF" class="post" align="center" style="border:1px solid #d2d2d2">
<tr>
<td valign="top" height="20" align="center" colspan="2" background="images/bg2.jpg" class="paragraping1">Registration</td>
</tr>
<tr class="paragraping">
<td width="48" height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/img04.gif"></td>
<td><img src="images/home.jpg">&nbsp;&nbsp;<a href="index.html">Home</a></td>
</tr>
<tr class="paragraping">
<td height="41">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/img04.gif"></td>
<td><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User Register</a></td>
</tr>
<tr class="paragraping">
<td height="36">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/img04.gif"></td>
<td width="293"><img src="images/user.gif" width="25" height="25">&nbsp;&nbsp;<a href="userlogin.jsp">User Login</a></td>
</tr>
<tr class="paragraping">
<td height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/img04.gif"></td>
<td width="293"><img src="images/user.jpg" width="25" height="25">&nbsp;&nbsp;<a href="adminlogin.jsp">Admin Login</a></td>
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
