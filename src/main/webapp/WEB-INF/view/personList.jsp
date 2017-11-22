<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
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
						<li><a href="logout" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i> Logout</a></li>
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
					<li><a href="<c:url value = "/test"/>"> <i
							class="fa fa-calendar"></i> <span>Appointments</span>
					</a></li>
					<li><a href="<c:url value = "/test"/>"> <i
							class="fa fa-users"></i> <span>Users</span>
					</a></li>
					<li><a href="<c:url value = "/test"/>"> <i
							class="fa fa-envelope"></i> <span>Sessions</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Users</h1>

			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">

								<sec:authorize url="/addPerson">

									<a href="addPerson"><button class="btn btn-primary pull-right">Add
											New User</button></a>
								</sec:authorize>
							</div>

							<!-- /.box-header -->
							<div class="box-body">
								<div id="example2_wrapper"
									class="dataTables_wrapper form-inline dt-bootstrap">
									<div class="row">
										<div class="col-sm-6"></div>
										<div class="col-sm-6"></div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<table id="example2"
												class="table table-bordered table-hover dataTable"
												role="grid" aria-describedby="example2_info">
												<thead>
													<tr role="row">
														<th>First Name</th>
														<th>Last Name</th>
														<th>Email</th>
														<th>User Name</th>
														<th>Enabled</th>
														<th>User Roles</th>

														<th>Edit</th>
														<th>Delete</th>
													</tr>

												</thead>
												<tbody>
													<c:forEach var="person" items="${personsList}">
														<tr>
															<td><c:out value="${person.firstname} " /></td>
															<td><c:out value="${person.lastname}" /></td>
															<td><c:out value="${person.email}" /></td>
															<td><c:out value="${person.user.username}" /></td>
															<td><c:out value="${person.user.enabled}" /></td>
															<td><c:out value="${person.user.userRoles}" /></td>

															<td><a
																href="<spring:url value="/persons/update/${person.id}" />">
																	<span class="glyphicon glyphicon-pencil"></span>
															</a></td>
															<td><a
																href="<spring:url value="/persons/delete/${person.id}" />">
																	<span class="glyphicon glyphicon-trash"></span>
															</a></td>
														</tr>
													</c:forEach>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>