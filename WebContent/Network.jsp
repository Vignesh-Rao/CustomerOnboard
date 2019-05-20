 <%@ page language="java" import="java.util.*" %> 

<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="bean.*" %>
<%@ page language="java" import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Questions</h2>                  
  <ul class="breadcrumb">
    <li><a href="questions.jsp">>Operating System</a></li>
    <li><a href="DataCenter.jsp">Data Center</a></li>
    <li><a href="Agility.jsp">Agility</a></li>
    <li ><a href="ApplicationDevelopment.jsp">Application And Development</a></li>  
    <li><a href="AuthenticationAndAuthorization.jsp">Authentication And Authorization</a></li>
    <li><a href="Infrastructure.jsp">Infrastructure</a></li>
    <li class="active">Network</li>
    <li><a href="Virtualization.jsp">Virtualization</a></li>      
  </ul>

<form action="Virtualization.jsp">
<table style=width:"100%">
<!--  <tr><th colspan="10">QUESTION NO. :</th><th colspan="30">SECTION</th><th colspan="150">ANSWER</th></tr>-->
<table>

<%
DBConnection dc = new DBConnection();
Connection conn = dc.getConn();
Test t= new Test();
Map map = new HashMap();

ResultSet rs = t.getQuestions1(conn);

String nw = "Network";

Map nw1 = new HashMap();

int i = 1;

while (rs.next())
{

	String str = (String)rs.getString(2);
	
	
	 if(rs.getString(2).equals(nw))
		{
			nw1.put(rs.getString(1),rs.getString(3));
	
		}
	
	
		
	}

i=1;
%>

<h3 class="container-fluid">Network</h3>
<table>

<tr>

<% 


Iterator<Map.Entry<String, String>> iterator7 = nw1.entrySet().iterator() ;

while(iterator7.hasNext()){
	
	
	//sMap.Entry<String, String> osEntry = iterator.next();
	
    Map.Entry<String, String> nwEntry = iterator7.next();
    //System.out.println(studentEntry.getKey() +" :: "+ studentEntry.getValue()); 
    %>
    
   <tr>
   <div class="form-group">
    <td>

	<label for="<%=nwEntry.getKey() %>" style=" width: 400px; height: 100px; margin-left: 130px; margin-top: 3px;"> Q<%=i%> : <%=nwEntry.getValue() %> </td></label><td>
	<input type="text" value="" name="<%=nwEntry.getKey() %>" required size="150" placeholder="Enter an answer" style=" width: 400px; height: 100px; margin-left: 100px; margin-top: 3px;">
	<br /><br /></td></div>


<%i++;
}
i=1;%>


</tr>
	
</table>


<%  
dc.closeConn(conn);

session.setAttribute("ANSWERSMAP", map);
%>
<div class="form-group" style="margin-left: 50px; margin-top: 10px;">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn-danger col-sm-7">Next</button>
					</div>
				</div>

</form>
 </div>

</body>
</html>