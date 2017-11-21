<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a Car</title>
</head>
<body>
	<form action="../appointments/${appointment.id}" method="post">
	<table>
		<tr>
			<td>Session:</td>
			<td><input type="text" name="make" value="${appointment.session}" /> </td>
		</tr>
		<tr>
			<td>Person:</td>
			<td><input type="text" name="model" value="${appointment.person}" /> </td>
		</tr>
		
	</table>
	<input type="submit" value="update"/>
	</form>
	<form action="delete?appointmentId=${appointment.id}" method="post">
		<button type="submit">Delete</button>
	</form>
</body>
</html>