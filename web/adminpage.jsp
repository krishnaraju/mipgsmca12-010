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
<td width="373" height="30"><img src="images/home.jpg">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td>
<td width="184"><img src='images/pass.jpg'>&nbsp;&nbsp;<a href="fileupload.jsp">File Upload</a></td>  
<td width="189"><img src="images/user.gif" width="24" height="24" />&nbsp;&nbsp;<a href="imageupload.jsp">Image Upload</a></td>
<td width="160"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="textdata.jsp">Text Upload</a></td>
<td width="94"><img src="images/user.jpg" width="24" height="24" />&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
</tr>
</table>
<table align="center" width="1024" class="post" bgcolor="#DFF4FF">
<tr>
<td width="660" height="477" valign="top" bgcolor="#FFFFFF">
<table align="center" width="658" bgcolor="#FFFFFF" style="border:1px solid #d2d2d2">
<tr>
<td class="paragraping"><font color="#FF0000" size="+1">User Upload</font></td>
</tr>
<tr>
<td><img src="images/admin.JPG" width="645" height="345" /></td>
</tr>
<tr>
<td class="paragraping2" align="justify">
We propose to apply problem transformation for mechanism design. The general framework is adopted from a generic approach, 
while our instantiation is completely different and novel. In this framework, the process on cloud server can be represented 
by algorithm ProofGen and the process on customer can be organized into three algorithms (KeyGen, ProbEnc, ResultDec). 
These four algorithms are summarized below and will be instantiated later.<br><br>

• KeyGen(1k) ? {K}. This is a randomized key generation algorithm which takes a system security parameter k, and returns a secret key K 
that is used later by customer to encrypt the target LP problem.<br><br>
 
• ProbEnc(K,_) ? {_K}. This algorithm encrypts the input tuple _ into _K with the secret key K. According to problem transformation, 
the encrypted input _K has the same form as _, and thus defines the problem to be solved in the cloud.<br><br>

• ProofGen(_K) ? {(y, ??)}. This algorithm augments a generic solver that solves the problem _K to produce both the output y and a proof ??. The output y later
decrypts to x, and ?? is used later by the customer to verify the correctness of y or x.<br><br>
• ResultDec(K,_, y, ??) ? {x,?}. This algorithm may choose to verify either y or x via the proof ??. In any case, a correct output x is produced by decrypting y using the secret K. The algorithm outputs ? when the validation fails, indicating the cloud server was not performing the computation faithfully.

</td>
</tr>
</table>
</td>
<td width="345" valign="top">
<table width="349" height="302" bgcolor="#FFFFDF" class="post" align="center" style="border:1px solid #d2d2d2">
<tr>
<td valign="top" height="47" align="center" colspan="2" background="images/bg2.jpg" class="paragraping1">User Upload</td>
</tr>
<tr class="paragraping">
<td width="48" height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td width="289">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td>
</tr>
<tr class="paragraping">
<td height="41">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="fileupload.jsp">File Upload</a></td>
</tr>
<tr class="paragraping">
<td height="36">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="imageupload.jsp">Image Upload</a></td>
</tr>
<tr class="paragraping">
<td height="39">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/online.jpg"></td>
<td>&nbsp;&nbsp;<a href="textdata.jsp">Text Data</a></td>
</tr>

<tr class="paragraping">
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
