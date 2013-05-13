<jsp:useBean id="s" class="controller.Session" scope="session" />
<jsp:setProperty name="s" property="*" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Operatøradministration</title>
	</head>
	<body>
	<%
		String identification = request.getParameter("Identification");
		String name = request.getParameter("Name");
		String initials = request.getParameter("Initials");
		String cpr = request.getParameter("CPR");
		String password = request.getParameter("Password");
		if (!name.matches("^[0-9]{1,99999999}$")) {
	%>
	<p>Identifikation er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!name.matches("^[a-z]{2,20}$")) {
	%>
	<p>Navn er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!name.matches("^[a-z]{2,3}$")) {
	%>
	<p>Initialer er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!name.matches("^[0-9]{10}$")) {
	%>
	<p>CPR er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!name.matches("^[a-z0-9]{7,8}$")) {
	%>
	<p>Adgangskoden er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else {
			controller.Operator operator = new controller.Operator(Integer.parseInt(identification), name, initials, cpr, password);
			s.addOperator(operator);
			response.sendRedirect("OperatorAdministration.jsp");
		}
	%>
	</body>
</html>