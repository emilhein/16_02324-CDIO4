<jsp:useBean id="session" class="src.Session" scope="session" />
<jsp:setProperty name="session" property="*" />
<!DOCTYPE html>
<html>
	<head>
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
			<% for (Operator operator : session.getOperators()) { %>
			<form method="post" style="display:inline">
				<input type="hidden" value="<%= operator.getNumber() %>" name="Number">
				<tr>
					<td><input type="text" value="<%= operator.getIdentification() %>" name="Identification"></td>
					<td><input type="text" value="<%= operator.getName() %>" name="Name"></td>
					<td><input type="text" value="<%= operator.getInitials() %>" name="Initials"></td>
					<td><input type="text" value="<%= operator.getCPR() %>" name="CPR"></td>
					<td><input type="text" value="<%= operator.getPassword() %>" name="Password"></td>
					<td><input type="submit" value="Opdater"></td>
					<td><input type="submit" value="Fjern"></td>
				</tr>
			</form>
			<% } %>
			<form method="post" style="display:inline">
				<input type="hidden" name="Number">
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