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
		Integer index;
		Integer identification = request.getParameter("Identification");
		String name = request.getParameter("Name");
		String initials = request.getParameter("Initials");
		String cpr = request.getParameter("CPR");
		String password = request.getParameter("Password");
		try {
			index = Integer.parseInt(request.getParameter("Index"));
		} catch (Exception e) {
	%>
	<p>Indeks er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
			return;
		}
		if (!identification.matches("^[0-9]{1,8}$")) { //# TODO: 0 er ikke tilladt!
	%>
	<p>Identifikation er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!name.matches("^.{2,20}$")) {
	%>
	<p>Navn er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!initials.matches("^.{2,3}$")) {
	%>
	<p>Initialer er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!cpr.matches("^[0-9]{10}$")) {
	%>
	<p>CPR er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else if (!password.matches("^.{7,8}$")) {
	%>
	<p>Adgangskoden er ugyldig.</p>
	<p><a href="OperatorAdministration.jsp">Tilbage</a></p>
	<%
		} else {
			if (index >= 0) {
				s.updateOperator(index, identification, name, initials, cpr, password);
			} else {
				s.addOperator(identification, name, initials, cpr, password);
			}
			response.sendRedirect("OperatorAdministration.jsp");
		}
	%>
	</body>
</html>