
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
	
	  <a href="#" class="but selectd">Home</a>
      <a href="doctorappoint.jsp" class="but">Appointment's</a>
      <a href="doctordiscription.jsp" class="but">Description</a>
      <a href="doctorprofile.jsp" class="but">Profile</a>
            
      <a href="index.html" class="but ">Logout</a>
      
      
    
	
   
</div>
</div>
<%
session=request.getSession(false);  
String name="";
if(session!=null){  
name=(String)session.getAttribute("name"); 
}%>


<br>
<br>
<div align="center" style="width: 15cm;">
<br><br>
<h2>Welcome Mr.  &nbsp<%=name%> </h2>

<img src="images/hos.png" alt=""/>
</div>
</body>
</html>