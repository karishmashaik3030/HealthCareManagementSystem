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

	 <a href="userhome.jsp" class="but selectd">Home</a>
      <a href="request.jsp" class="but">Appointment Request</a>
      <a href="userinbox.jsp" class="but">Inbox</a>
      <a href="patientstatus.jsp" class="but">Status</a>
            
               <a href="profile.jsp" class="but">Profile</a> 
      <a href="index.html" class="but ">Logout</a>
      
      
    
	
   
</div>
</div>



<br>
<br>
<div align="center" style="width: 15cm;">
<br><br>
<br><br>
<h2>Appointment Request</h2>

 <%
            session=request.getSession(false);  
            String uName,uAge,uSex,uMobi,uAdd="";
            	uName=(String)session.getAttribute("uName"); 
            	uAge=(String)session.getAttribute("uAge"); 
            	uSex=(String)session.getAttribute("uSex"); 
            	uMobi=(String)session.getAttribute("uMobi"); 
            	uAdd=(String)session.getAttribute("uAdd"); 
            	String card=(String)session.getAttribute("card"); 
            	String issue=(String)session.getAttribute("issue"); 
            	String valid=(String)session.getAttribute("valid"); 
            
            %>

<div class="form-style-3">
<form action="request" method="get">
<fieldset><legend>Appointment Request</legend>
<label for="field1"><span>Patient Name<span class="required">*</span></span><input type="text" class="input-field" id="field1" name="field1" value="<%=uName%>" readonly/></label>
<label for="field8"><span>Card No.<span class="required">*</span></span><input type="text" class="input-field" id="field8" name="field8" value="<%=card%>" readonly/></label>
<label for="field2"><span>Age<span class="required">*</span></span><input type="text" class="input-field" id="field2"name="field2" value="<%=uAge%>" readonly/></label>
<label for="field3"><span>Sex<span class="required">*</span></span><input type="text" class="input-field" id="field3" name="field3" value="<%=uSex%>" readonly/></label>
<label for="field4"><span>Mobile No<span class="required">*</span></span><input type="text" class="input-field" id="field4" name="field4" value="<%=uMobi%>" readonly/></label>
<label for="field5"><span>Address<span class="required">*</span></span><input type="text" class="input-field" id="field5" name="field5" value="<%=uAdd%>" readonly/></label>
<label for="field6"><span>Problem<span class="required">*</span></span>
<select id="field6" name="field6">
  <option value="General CheckUp">General CheckUp</option>
  <option value="Heart">Heart</option>
  <option value="ENT(Ear, Nose & Throat)">ENT(Ear, Nose & Throat)</option>
  <option value="Eye">Eye</option>
  <option value="Cancer">Cancer</option>
  <option value="Asthma">Asthma</option>
  <option value="Hair Care">Hair Care</option>
  <option value="Child Care">Child Care</option>
</select></label>
<label for="field7"><span>Date<span class="required">*</span></span><input type="date" class="input-field" id="field7" name="field7" value="" required/></label>

<label><span>&nbsp;</span><input type="submit" value="Submit" onclick="return validate()"/></label>


</fieldset>

</form>
</div>

</div>


</body>
</html>