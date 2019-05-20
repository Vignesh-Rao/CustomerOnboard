<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CustomerOnBoarding</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

function formValidation()  
{  
var Name = document.registration.Name;  
var Uname = document.registration.Uname;  
var Email = document.registration.Email;  
var Company = document.registration.Company;  
var Password = document.registration.Password;  

if(PasswordValidation(Password,7,12))  
{  
 
if(ValidateEmail(Email))  
{  

}  
}  
return false;  
}  

function PasswordValidation(Password,mx,my)  
{  
var passid_len = Password.value.length;  
if (passid_len == 0 ||passid_len >= my || passid_len < mx)  
{  
alert("Password should not be empty / length be between "+mx+" to "+my);  
Password.focus();  
return false;  
}  
return true;  
} 





function ValidateEmail(Email)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(Email.value.match(mailformat))  
{  
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
Email.focus();  
return false;  
}  
}
</script>
<style type="text/css">
	form{
		padding-top: 10px;
		padding-left: 150px;
	}
	.navbar {
	margin-bottom: 0;
	background-color: #0c0c0c;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #0c0c0c !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}
</style>	
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><img alt="LOGO"
				src="images/dxclogo.png" width="140px" height="30px"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="Login.jsp">LOGIN</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
		<div >
			<!--  <img src="images/DXC-icon.png" alt="DXC Technology" class="img-rounded" width=100% height="250">
			-->
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/DXC-icon.png" alt="DXC Technology">
					</div>

					<div class="item">
						<img src="images/DXC-logo2.png" alt="DXC Technology">
					</div>

					<div class="item">
						<img src="images/DXC-logo3.png" alt="DXC Technology">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class = "form">
			<form action="Process.jsp" class="form-horizontal" onsubmit="return formValidation()">
				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="name" name="Name"
							placeholder="John Carter">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="userName">User
						Name:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="userName" name="Uname"
							placeholder="jcarter25">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="email" name="Email"
							placeholder="jcarter25@gmail.com">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="company">Company:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="company" name="Company"
							placeholder="DXC technology">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="passowrd">Password:</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="password" name="Password"
							placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn-danger col-sm-7">Submit</button>
					</div>
				</div>

			</form>
		</div>
	


</body>
</html>