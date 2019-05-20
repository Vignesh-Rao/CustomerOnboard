
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
<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
<title>Registration Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
// function validateForm() {
//    // var x = document.forms["myForm"]["question"].value;
//    var x = document.getElementById("question").value;
//     if (x == "") {
//         alert("Every field is mandatory");
//         return false;
//     }
// }
</script>
</head>
<body>

<div class="container">
  <h2>Questions</h2>                  
  <ul class="breadcrumb">
    <li class="active">Operating System</li>
    <li><a href="DataCenter.jsp">Data Center</a></li>
    <li><a href="Agility.jsp">Agility</a></li>
    <li ><a href="ApplicationAndDevelopment.jsp">Application And Development</a></li>  
    <li><a href="AuthenticationAndAuthorization.jsp">Authentication And Authorization</a></li>
    <li><a href="Infrastructure.jsp">Infrastructure</a></li>
    <li><a href="Network.jsp">Network</a></li>
    <li><a href="Virtualization.jsp">Virtualization</a></li>      
  </ul>

<form action="DataCenter.jsp" class="form-horizontal" name="myForm" >
<%
DBConnection dc = new DBConnection();
Connection conn = dc.getConn();
Map map = new HashMap();
Test te = new Test();
ResultSet rs = te.getQuestions1(conn);


 String os = "Operating System";
Map os1 = new HashMap();
int i = 1;

while (rs.next())
{

	String str = (String)rs.getString(2);
	
	
	if(rs.getString(2).equals(os))
	{
		os1.put(rs.getString(1), rs.getString(3));
	

	      }
			
	}

i=1;
%>
<h3 class="container-fluid">Operating System</h3>
<table>
<tr>
<% 

Iterator<Map.Entry<String, String>> iterator = os1.entrySet().iterator() ;
while(iterator.hasNext()){
	
	//sMap.Entry<String, String> osEntry = iterator.next();
	
    Map.Entry<String, String> osEntry = iterator.next();
    //System.out.println("name"+osEntry.getKey());
    //System.out.println(studentEntry.getKey() +" :: "+ studentEntry.getValue()); %>
    
    <tr>
    <div class="form-group">
    <td>
	<label for="<%=osEntry.getKey() %>" style=" width: 400px; height: 100px; margin-left: 130px; margin-top: 3px;"> Q<%=i%> : <%=osEntry.getValue() %></label> </td><td>
	<input type="text"  value="" id="question" name="<%=osEntry.getKey() %>" required size="150"  placeholder="Enter an answer" style=" width: 400px; height: 100px; margin-left: 100px; margin-top: 3px;">
	<br /><br /></td></div>
	

<%i++;

}
i=1;%>
</tr></table>

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
