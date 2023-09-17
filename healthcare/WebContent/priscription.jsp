<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<link href="ownstyle.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">

function validate()
{
	//alert("hello");
	var a=document.getElementById("field1").value;
	
}

</script>
</head>
<body bgcolor="#33ffff">
<div id="main">
<div id="header">

<div><img src="images/logo.png"/></div>
	<div id="buttons">

	  <a href="dochome.jsp" class="but selectd">Home</a>
      <a href="doctorappoint.jsp" class="but">Appointment's</a>
      <a href="#" class="but">Description</a>
      <a href="doctorprofile.jsp" class="but">Profile</a>
            
      <a href="index.html" class="but ">Logout</a>
      
      
    
	
   
</div>
</div>



<br>
<br>
<div align="center" style="width: 15cm;">
<br><br>
<br><br>
<h2>Priscription</h2>

 <%
	String name=request.getParameter("name"); 
	String patient=request.getParameter("patient"); 
	String prob=request.getParameter("problem"); 
	String date=request.getParameter("date"); 
            
   %>

<div class="form-style-3">
<form action="priscrip" method="get">
<fieldset><legend>Priscription</legend>
<label for="field1"><span>Doctor Name<span class="required">*</span></span><input type="text" class="input-field" id="field1" name="field1" value="<%=name%>" readonly/></label>
<label for="field2"><span>Patient Name<span class="required">*</span></span><input type="text" class="input-field" id="field2"name="field2" value="<%=patient%>" readonly/></label>
<label for="field3"><span>Problem<span class="required">*</span></span><input type="text" class="input-field" id="field3" name="field3" value="<%=prob%>" readonly/></label>
<label for="field4"><span>Date<span class="required">*</span></span><input type="text" class="input-field" id="field4" name="field4" value="<%=date%>" readonly/></label>
<label for="field5"><span>Medicine<span class="required">*</span></span><input type="text" class="input-field" id="field5" name="field5" value="" required/></label>

<label><span>&nbsp;</span><input type="submit" value="Submit" onclick="return validate()"/></label>


</fieldset>

</form>
</div>

</div>


</body>
</html>