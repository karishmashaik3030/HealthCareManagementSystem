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
	
	  <a href="adminhome.html" class="but selectd">Home</a>
      <a href="admininbox.jsp" class="but">Inbox</a>
      <a href="#" class="but">Doctors List</a>
      <a href="patientqueue.jsp" class="but">Patient Queue</a>
      <a href="index.html" class="but ">Logout</a>
      
      
    
	
   
</div>
</div>



<br>
<br>

<%

String name=request.getParameter("name");
String patient=request.getParameter("patient");
String problem=request.getParameter("prob");
String date=request.getParameter("date");
ArrayList details=new ArrayList();
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root123");
st=con.createStatement();
System.out.println("Uname :"+name);
System.out.println("patient :"+patient);
System.out.println("problem :"+problem);
System.out.println("date :"+date);

int i=st.executeUpdate("Insert into doctorappointment Values('"+name+"','"+patient+"','"+problem+"','"+date+"')");
int j=st.executeUpdate("Insert into patientapp Values('"+name+"','"+patient+"','"+problem+"','"+date+"')");

st.executeUpdate("delete from apprequest where name='"+patient+"' and problem='"+problem+"' and dat='"+date+"'");
RequestDispatcher rd=request.getRequestDispatcher("/redirect.jsp?data=appoint");  
			    rd.forward(request, response);
%>

<div align="center" style="width: 15cm;">
<br><br>


</div>
</body>
</html>