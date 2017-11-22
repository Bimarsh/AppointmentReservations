
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link href="resources/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<link href="resources/blue.css" rel="stylesheet" type="text/css" />
<link href="resources/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="resources/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/dataTables.bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/_all-skins.css" rel="stylesheet" type="text/css" />
<title>Session</title>
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<section>
		<div class="jumbotron">
			<div class="container">
				<!-- <h1>Valued Members</h1> -->
				<h3>Add User</h3>
			</div>
		</div>
	</section>

	<form:form method="post" commandName="person">

		<table align="center" cellpadding="5">

			<tr>
				<td><form:label path="firstname">First Name
				:</form:label></td>
				<td><form:input path="firstname" /></td>
				<td><form:errors path="firstname" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">Last Name
				:</form:label></td>
				<td><form:input path="lastname" /></td>
				<td><form:errors path="lastname" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email
				:</form:label></td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="user.username">User Name
				:</form:label></td>
				<td><form:input path="user.username" /></td>
				<td><form:errors path="user.username" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="user.password">Password
				:</form:label></td>
				<td><form:input path="user.password" /></td>
				<td><form:errors path="user.password" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="user.enabled">Enabled
				:</form:label></td>
				<td><form:select path="user.enabled">
						<form:option value="false" label="false" selected="true" />
						<form:option value="true" label="true" />
					</form:select></td>
				<td><form:errors path="user.enabled" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td><form:label path="user.userRoles">User Roles
				:</form:label></td>
				<td><form:select path="user.userRoles" items="${roles}"
						multiple="true" /></td>
				<td><form:errors path="user.userRoles" cssStyle="color:red;" /></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" align="center"><form:button
						class="btn btn-primary" name="add">Add</form:button></td>
			</tr>
		</table>

	</form:form>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

</body>
</html>