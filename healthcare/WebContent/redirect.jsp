<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
String data=request.getParameter("data");

if(data.equals("reg"))
{
%>
<script>
		var s=confirm("Registeration Success!");
		if(s==true)
			{
			window.location.href="user.html";
			}
		else
			{
			window.location.href="user.html";
			}
		</script>
		<%
		}
else if(data.equals("regFail"))
{
	%>
	<script>
			var s=confirm("Sorry Patient Name already exist!");
			if(s==true)
				{
				window.location.href="register.html";
				}
			else
				{
				window.location.href="register.html";
				}
			</script>
			<%
}
else if(data.equals("docreg"))
{
%>
<script>
		var s=confirm("Registeration Success!");
		if(s==true)
			{
			window.location.href="about.html";
			}
		else
			{
			window.location.href="about.html";
			}
		</script>
		<%
		}
else if(data.equals("docregFail"))
{
	%>
	<script>
			var s=confirm("Sorry Doctor Id already exist!");
			if(s==true)
				{
				window.location.href="registerdoc.html";
				}
			else
				{
				window.location.href="registerdoc.html";
				}
			</script>
			<%
}
else if(data.equals("req"))
{
%>
<script>
		var s=confirm("Your Request sent to Admin, Thank You!");
		if(s==true)
			{
			window.location.href="userhome.jsp";
			}
		else
			{
			window.location.href="userhome.jsp";
			}
		</script>
		<%
}
else if(data.equals("appoint"))
{
%>
<script>
		var s=confirm("Apointment sent successfully...!");
		if(s==true)
			{
			window.location.href="adminhome.html";
			}
		else
			{
			window.location.href="adminhome.html";
			}
		</script>
		<%
}
else if(data.equals("medi"))
{
%>
<script>
		var s=confirm("Medicine updated successfully...!");
		if(s==true)
			{
			window.location.href="dochome.jsp";
			}
		else
			{
			window.location.href="dochome.jsp";
			}
		</script>
		<%
}
else
{
	%>
	<script>
			var s=confirm("Mail sent successfully");
			if(s==true)
				{
				window.location.href="memberview.jsp";
				}
			else
				{
				window.location.href="memberview.jsp";
				}
			</script>
			<%
}
%>
</body>
</html>