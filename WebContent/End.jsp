<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer OnBoarding</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
	a{
		padding-top: 200px;
		padding-left: 300px;
	}
	</style>
	<script type="text/javascript">
	$().ready(function() {
		    history.pushState(null, null, 'Login.jsp');
	        window.addEventListener('popstate', function () {
	            history.pushState(null, null, 'Login.jsp');
	        });
	});
	</script>
</head>
<body>
<div class="alert alert-success">
  <strong>Successfully!</strong> recorded your answers !!
  
  <a href="Login.jsp"><button type="button" class="btn btn-danger">Logout</button></a>
</div>
</body>
</html>