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
</head>
<body>

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
			
<h2 style="text-align: center">Health Card</h2>

<TABLE BORDER="1" align="center">
  <TR>
    <TD>Patient Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="name" SIZE="25" value="<%=details.get(0).toString()%>" readonly>
    </TD>
  </TR>
  <TR>
    <TD>Emp ID</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(1).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Age</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(2).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Sex</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(3).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Mobile No.</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(4).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Address</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(5).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Card No.</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(6).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Issue Date</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(7).toString()%>" readonly></TD>
  </TR>
   <TR>
    <TD>Valid Upto</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" value="<%=details.get(8).toString()%>" readonly></TD>
  </TR>
</TABLE>

</body>
</html>