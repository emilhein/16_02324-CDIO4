<%@ page language="java" import="controller.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import="java.util.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operator Controller</title>
</head>
<body>
<p>Creating operator...</p>
<% 
	String id = request.getParameter("Identification");
	String name = request.getParameter("Name");
	String init = request.getParameter("Initials");
	String cpr = request.getParameter("CPR");
	String pass = request.getParameter("Password");
	
	if (id.equals("")) { 
%>
<p>ERROR: You should specify operator ID.</p>
<% 
	} else if (name.equals("")) {
%>
<p>ERROR: You should specify operator Name.</p>
<% 
	} else if (init.equals("")) {
%>
<p>ERROR: You should specify operator Initials.</p>
<% 
	} else if (cpr.equals("")) {
%>
<p>ERROR: You should specify operator CPR.</p>
<% 
	} else if (pass.equals("")) {
%>
<p>ERROR: You should specify operator Password.</p>
<% 
	} else {
		int ID = Integer.parseInt(id);
		Operator operator = new Operator(ID, name, init, cpr, pass);
		Session s = new Session();
		s.addOperator(operator);
		%>
			<p>Operator (<%= name %>, <%= id %>, <%= cpr %>) was created!</p>
		<%
	}
%>
<p>&nbsp;</p>
	<div align="justify">
	<table width="420"bgcolor="#EEFFCA"> &nbsp;Current Time & Date is:&nbsp;
	<font color="#FF0000"> <%=new java.util.Date()%></font></b></td></tr>
	</table>
	</div>
<p>
	<a href="OperatorAdministration.jsp">Go Back</a>
</p>
</body>
</html>