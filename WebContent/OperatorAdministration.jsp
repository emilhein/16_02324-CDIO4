<jsp:useBean id="s" class="controller.Session" scope="session" />
<jsp:setProperty name="s" property="*" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Operatøradministration</title>
	</head>
	<body>
		<h1>Operatører</h1>
		<table>
			<tr>
				<th>Identifikation</th>
				<th>Navn</th>
				<th>Initialer</th>
				<th>CPR</th>
				<th>Adgangskode</th>
				<th></th>
				<th></th>
			</tr>
			<%
				controller.Operator[] operators = s.getOperators();
				for (int i = 0; i < operators.length; i++) {
			%>
			<form method="post" style="display:inline">
				<input type="hidden" value="<%= i %>" name="Index">
				<tr>
					<td><input type="text" value="<%= operators[i].getIdentification() %>" name="Identification"></td>
					<td><input type="text" value="<%= operators[i].getName() %>" name="Name"></td>
					<td><input type="text" value="<%= operators[i].getInitials() %>" name="Initials"></td>
					<td><input type="text" value="<%= operators[i].getCPR() %>" name="CPR"></td>
					<td><input type="text" value="<%= operators[i].getPassword() %>" name="Password"></td>
					<td><input type="submit" value="Opdater"></td>
					<td><input type="submit" value="Fjern"></td>
				</tr>
			</form> 
			<%
				}
			%>
			<form action="AddOperator.jsp" method="post" style="display:inline">
				<tr>
					<td><input type="text" name="Identification"></td>
					<td><input type="text" name="Name"></td>
					<td><input type="text" name="Initials"></td>
					<td><input type="text" name="CPR"></td>
					<td><input type="text" name="Password"></td>
					<td><input type="submit" value="Tilføj"></td>
					<td></td>
				</tr>
			</form>
		</table>
	</body>
</html>