<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*"%>
  
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="ownstyle.css" rel="stylesheet" type="text/css"/>
</head>
<body bgcolor="#33ffff">
<div id="main">
<div id="header">

<div><img src="images/logo.png"/></div>
	<div id="buttons">
	
	<a href="userhome.jsp" class="but selectd">Home</a>
      <a href="request.jsp" class="but">Appointment Request</a>
      <a href="#" class="but">Inbox</a>
      <a href="patientstatus.jsp" class="but">Status</a>
       
               <a href="profile.jsp" class="but">Profile</a>      
      <a href="index.html" class="but ">Logout</a>
      
      
      
    
	
   
</div>
</div>

<%
 
String name="";

name=(String)session.getAttribute("uName"); 
%>

<br>
<br>
<table cellpadding="20" cellspacing="10" style="border:2px solid #000; border-radius:3px;border-collapse:collapse;margin-left:150px;">
<tr style="border-bottom:2px solid #000; background-color:#000; color:#fff; font-weight:bold;"><td>Doctor Name</td><td>Patient Name</td><td>Problem</td><td>Date</td></tr>
<%
ArrayList details=new ArrayList();
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root123");
st=con.createStatement();
System.out.println("Checkkkkkk : "+name);
		rs=st.executeQuery("select * from patientapp where patient='"+name+"'");
	while(rs.next()){
		details.add(rs.getString(1));
		details.add(rs.getString(2));
		details.add(rs.getString(3));
		details.add(rs.getString(4));
		
	}
		for(int val=0;val<details.size();val=val+4){
			%>
			<tr style="border-bottom:2px solid #000;">
			<td><%=details.get(val).toString() %></td>
			<td><%=details.get(val+1).toString() %></td>
			<td><%=details.get(val+2).toString() %></td>
			<td><%=details.get(val+3).toString() %></td>
				<% 
		}
 
%>
</table>
<div align="center" style="width: 15cm;">
<br><br>


</div>
</body>
</html>