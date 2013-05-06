<jsp:useBean id="session" class="src.Session" scope="session" />
<jsp:setProperty name="session" property="*" />
<!DOCTYPE html>
<html>
	<head>
		<title>Operat�radministration</title>
	</head>
	<body>
		<h1>Operat�rer</h1>
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
			<% for (int i = 0; i < session.getOperators().length; i++) { %>
			<form method="post" style="display:inline">
				<input type="hidden" value="<%= i %>" name="Index">
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
				<input type="hidden" value="-1" name="Index">
				<tr>
					<td><input type="text" name="Identification"></td>
					<td><input type="text" name="Name"></td>
					<td><input type="text" name="Initials"></td>
					<td><input type="text" name="CPR"></td>
					<td><input type="text" name="Password"></td>
					<td><input type="submit" value="Tilf�j"></td>
					<td></td>
				</tr>
			</form>
		</table>
	</body>
</html>