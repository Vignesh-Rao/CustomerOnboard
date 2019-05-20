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

<style type="text/css">
.jumbotron {
	background-color: #0c0c0c; /* Black */
	color: #ffffff;
	padding: 100px 25px;
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
.container-fluid {
	padding: 60px 50px;
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
				<li><a href="#vision">VISION</a></li>
				<li><a href="Registration.jsp">SIGN UP</a></li>
				<li><a href="Login.jsp">SignIN</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="jumbotron text-center">
		<h1>DXC TECHNOLOGIES</h1>
		<p>We appriciate C L E A R values</p>
	</div>
	<div class="container-fluid text-center bg-grey">
		<h2>VISION</h2>
		<h4>What we follow</h4>
		<div class="row text-center">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="thumbnail">
					<p>
						<strong><span>C</span></strong>
					</p>
					<p>Client Focused</p>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="thumbnail">

					<p>
						<strong>L</strong>
					</p>
					<p>Leadership</p>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="thumbnail">

					<p>
						<strong>E</strong>
					</p>
					<p>Execution Excellence</p>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="thumbnail">

					<p>
						<strong>A</strong>
					</p>
					<p>Aspiration</p>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="thumbnail">

					<p>
						<strong>R</strong>
					</p>
					<p>Results</p>
				</div>
			</div>

		</div>
		<footer class="container-fluid text-center"> <a
			href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>Developed by Mohammad Raghib</p>
		</footer>
</body>
	</html>
