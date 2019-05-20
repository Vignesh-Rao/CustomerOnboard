<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="bean.*" %>


<%@ page import ="java.sql.*" %>
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

</head>
<body>
<%

    
String pwd = request.getParameter("password");
String name = request.getParameter("Uname");



DBConnection dc = new DBConnection();
Connection conn = dc.getConn();
	 

	    Statement st = conn.createStatement();
	   
	    ResultSet rs;
	    
	    
	   try{
		   PreparedStatement pst= conn.prepareStatement("Select * from user_details where Uname=? and Password=?  ");
		   pst.setString(1,name);
		   pst.setString(2,pwd);
		   rs=pst.executeQuery();
		 	
		 
		 if(rs.next()){
			 RequestDispatcher rd=request.getRequestDispatcher("questions.jsp"); 
		    	rd.forward(request, response);
			 
		 }
		 else{
			 RequestDispatcher rd=request.getRequestDispatcher("Fail.jsp"); 
		    	rd.forward(request, response);
		 }
		 
	    }catch (SQLException e){
	    	e.printStackTrace();
	    	System.out.println("Exception:::"+e.getLocalizedMessage());
	    }

%>


</body>
</html>
