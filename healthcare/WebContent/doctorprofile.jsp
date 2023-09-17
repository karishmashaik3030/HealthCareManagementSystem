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
      <a href="doctordiscription.jsp" class="but">Description</a>
      <a href="#" class="but">Profile</a>
            
      <a href="index.html" class="but ">Logout</a>
	
   
</div>
</div>

<%
String name=(String)session.getAttribute("name");
ArrayList details=new ArrayList();
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","root123");
st=con.createStatement();

		rs=st.executeQuery("select * from docregister where name='"+name+"'");
	while(rs.next()){
		details.add(rs.getString(1));
		details.add(rs.getString(3));
		details.add(rs.getString(4));
		details.add(rs.getString(5));
		details.add(rs.getString(6));
		
	}
 
%>

<br>
<br>
<div align="center" style="width: 15cm;">
<br><br>
<br><br>
<h2>Doctor Profile</h2>

<div class="form-style-3">
<form action="registerdoc" method="get">
<fieldset><legend>DOCTOR Profile</legend>
<label for="field1"><span>Doctor Name<span class="required">*</span></span><input type="text" class="input-field" id="field1" name="field1" value="<%=details.get(0).toString()%>" readonly/></label>
<label for="field3"><span>Doctor ID<span class="required">*</span></span><input type="text" class="input-field" id="field3"name="field3" value="<%=details.get(1).toString()%>" readonly/></label>
<label for="field4"><span>Speciality<span class="required">*</span></span><input type="text" class="input-field" id="field4" name="field4" value="<%=details.get(2).toString()%>" readonly/></label>
<label for="field5"><span>Mobile No<span class="required">*</span></span><input type="text" class="input-field" id="field5" name="field5" value="<%=details.get(3).toString()%>" readonly/></label>
<label for="field6"><span>Address<span class="required">*</span></span><input type="text" class="input-field" id="field6" name="field6" value="<%=details.get(4).toString()%>" readonly/></label>


</fieldset>

</form>
</div>

</div>


</body>
</html>