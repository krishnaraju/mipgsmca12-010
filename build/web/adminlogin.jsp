<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
 <script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(2000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'check.jsp',
		          	data: 'un='+ $('#login_id').val() +'&pw=' + $('#password').val(),
		          	type: 'post',
		   			success: function(msg){
						if(msg != 'ERROR') // Message Sent, check and redirect
						{				// and direct to the success page
							
							$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                     //redirect to secure page
			                     document.location='login.jsp?user='+msg;
			                  });
	
						}
						else
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		                	{
			                  //add message and change the class of the box and start fading
			                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
			                });
	
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});

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
<td width="520" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="index.html">Home</a></td>
<td width="173"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="userregister.jsp">User Register</a></td>  
<td width="154"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="userlogin.jsp">User Login</a></td>
<td width="157"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="adminlogin.jsp">Admin Upload</a></td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#DFF4FF">
<tr>
<td width="660" height="477" valign="top" bgcolor="#FFFFFF">l
<table align="center" width="658" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">
<tr>
<td class="paragraping" background="images/pattern_bg.gif" align="center">Please Upload Your Data's</td>
</tr>
</table> 
<table align="center" width="658" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">

   <form name="login_frm" id="login_frm" action="check.jsp" method="post">
    <div id="login_box">
      <div id="login_header">
            Login
      </div>
      <div id="form_val">
        <div class="label">User Id :</div>
        <div class="control"><input type="text" name="login_id" id="login_id"/></div>
        
        <div class="label">Password:</div>
        <div class="control"><input type="password" name="password" id="password"/></div>
        <div style="clear:both;height:0px;"></div>
      
      	<div id="msgbox"></div>
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="Login" class="send_button" />
        </label>
      </div>
    </div>
</form>
</table>
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
<td width="293"><img src="images/user.jpg" width="25" height="25">&nbsp;&nbsp;<a href="adminlogin.jsp">Admin Upload</a></td>
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
