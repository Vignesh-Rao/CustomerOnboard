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

String user = request.getParameter("Uname");    
String pwd = request.getParameter("Password");
String name = request.getParameter("Name");

String email = request.getParameter("Email");
String company = request.getParameter("Company");
//String crDate = request.getParameter("CreationDate");
//String crTime = request.getParameter("CreationTime");


	 DBConnection dc = new DBConnection();
	  Connection conn = dc.getConn();
	 

	    Statement st = conn.createStatement();
	   
	    ResultSet rs;
	    
	    
	   try{
		   PreparedStatement pst= conn.prepareStatement("Select * from user_details where Email =? ");
		   pst.setString(1,email);
		   rs=pst.executeQuery();
		 	
		 
		 while(rs.next()){
			 RequestDispatcher rd=request.getRequestDispatcher("Fail.jsp"); 
		    	rd.forward(request, response);
			 
		 }
		 
	    int i = st.executeUpdate("insert into user_details(Name, Email, Company, Password, CreationTime, Uname, CreationDate) values ('" + name + "','" + email + "','" + company + "','" + pwd + "',  CURTIME(), '" + user + "',  CURDATE()  )" );
	    System.out.println("i:::"+i);
	    if (i>0) {
	    	RequestDispatcher rd=request.getRequestDispatcher("Login.jsp"); 
	    	rd.forward(request, response);
	      %>   <%
	    } else {
	    	%>
	      <%   response.sendRedirect("index.jsp");
	    }}catch (SQLException e){
	    	e.printStackTrace();
	    	System.out.println("Exception:::"+e.getLocalizedMessage());
	    }

%>


</body>
</html>
