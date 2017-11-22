
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Users</title>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link href="<c:url value="/resources/AdminLTE.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/blue.css" />" rel="stylesheet"
	type="text/css" />
<!-- <link href="resources/bootstrap.min.css" rel="stylesheet" -->
<!-- 	type="text/css" /> -->
<link href="<c:url value="/resources/ionicons.min.css" />"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/dataTables.bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/_all-skins.css" />"
	rel="stylesheet" type="text/css" />
<title>Person</title>
</head>

<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">


		<header class="main-header">
			<!-- Logo -->
			<a class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>TM Checking</b> Appointment</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu"></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <span
								class="hidden-xs">Hi, User</span>
						</a></li>
						<li><a href="<c:url value="/logout" />"
							data-toggle="control-sidebar"><i class="fa fa-gears"></i>
								Logout</a></li>
					</ul>
				</div>
			</nav>
		</header>


		<aside class="main-sidebar">
			<section class="sidebar">
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu tree" data-widget="tree">

					<li><a href="<c:url value = "/appointment"/>"
						class="<c:if test="${fn:contains(pageContext.request.requestURI, 'appointment')}">active</c:if>">
							<i class="fa fa-calendar"></i> <span>Appointments</span>
					</a></li>
					<li><a href="<c:url value = "/user"/>"
						class="<c:if test="${fn:contains(pageContext.request.requestURI, 'user')}">active</c:if>">
							<i class="fa fa-users"></i> <span>Users</span>
					</a></li>
					<li><a href="<c:url value = "/session"/>"
						class="<c:if test="${fn:contains(pageContext.request.requestURI, 'session')}">active</c:if>">
							<i class="fa fa-envelope"></i> <span>Sessions</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>


		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<section class="content-header">
							<h1>Add user form</h1>

						</section>

						<c:choose>
							<c:when test="${mode!='EDIT_PERSON'}">

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
											<td><form:errors path="user.username"
													cssStyle="color:red;" /></td>
										</tr>
										<tr>
											<td><form:label path="user.password">Password
										:</form:label></td>
											<td><form:input path="user.password" /></td>
											<td><form:errors path="user.password"
													cssStyle="color:red;" /></td>
										</tr>
										<tr>
											<td><form:label path="user.enabled">Enabled
										:</form:label></td>
											<td><form:select path="user.enabled">
													<form:option value="false" label="false" selected="true" />
													<form:option value="true" label="true" />
												</form:select></td>
											<td><form:errors path="user.enabled"
													cssStyle="color:red;" /></td>
										</tr>
										<tr>
											<td><form:label path="user.userRoles">User Roles
										:</form:label></td>
											<td><form:select path="user.userRoles" items="${roles}"
													multiple="true" /></td>
											<td><form:errors path="user.userRoles"
													cssStyle="color:red;" /></td>
										</tr>
										<tr>
											<td></td>
											<td colspan="2" align="center"><form:button
													class="btn btn-primary" name="add">Add</form:button></td>
										</tr>
									</table>

								</form:form>
							</c:when>
							<c:otherwise>
							</c:otherwise>

						</c:choose>






					</div>
				</div>
			</section>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
</body>
</html>