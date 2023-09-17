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
<title>User Profile</title>
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
            
               <a href="#" class="but">Profile</a> 
      <a href="index.html" class="but ">Logout</a>
      
      
    
	
   
</div>
</div>



<br>
<br>
<div align="center" style="width: 15cm;">
<br><br>
<br><br>
<h2>User Profile</h2>

 <%
 String uName=(String)session.getAttribute("uName");
ArrayList details=new ArrayList();
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root123");
st=con.createStatement();

		rs=st.executeQuery("select * from userregister where name='"+uName+"'");
	while(rs.next()){
		details.add(rs.getString(1));
		details.add(rs.getString(2));
		details.add(rs.getString(4));
		details.add(rs.getString(5));
		details.add(rs.getString(6));
		details.add(rs.getString(7));
		details.add(rs.getString(8));
		details.add(rs.getString(9));
		details.add(rs.getString(10));
		
	}
			%>

<div class="form-style-3">
<form action="#" method="get">
<fieldset><legend>Profile</legend>
<label for="field1"><span>Patient Name<span class="required">*</span></span><input type="text" class="input-field" id="field1" name="field1" value="<%=details.get(0).toString()%>" readonly/></label>
<label for="field8"><span>Emp Id.<span class="required">*</span></span><input type="text" class="input-field" id="field8" name="field8" value="<%=details.get(1).toString()%>" readonly/></label>
<label for="field2"><span>Age<span class="required">*</span></span><input type="text" class="input-field" id="field2"name="field2" value="<%=details.get(2).toString()%>" readonly/></label>
<label for="field3"><span>Sex<span class="required">*</span></span><input type="text" class="input-field" id="field3" name="field3" value="<%=details.get(3).toString()%>" readonly/></label>
<label for="field4"><span>Mobile No<span class="required">*</span></span><input type="text" class="input-field" id="field4" name="field4" value="<%=details.get(4).toString()%>" readonly/></label>
<label for="field5"><span>Address<span class="required">*</span></span><input type="text" class="input-field" id="field5" name="field5" value="<%=details.get(5).toString()%>" readonly/></label>
<label for="field5"><span>Card No <span class="required">*</span></span><input type="text" class="input-field" id="field6" name="field6" value="<%=details.get(6).toString()%>" readonly/></label>
<label for="field7"><span>Issue Date<span class="required">*</span></span><input type="text" class="input-field" id="field7" name="field7" value="<%=details.get(7).toString()%>" readonly/></label>
<label for="field8"><span>Valid Upto<span class="required">*</span></span><input type="text" class="input-field" id="field8" name="field8" value="<%=details.get(8).toString()%>" readonly/></label>

<label><span>&nbsp;</span><a href="profileprint.jsp" target="_blank">Print</a> </label>


</fieldset>

</form>
</div>

</div>


</body>
</html>