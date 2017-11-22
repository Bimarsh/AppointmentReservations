
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link href="<c:url value="/resources/AdminLTE.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/blue.css" />" rel="stylesheet" type="text/css" />
<!-- <link href="resources/bootstrap.min.css" rel="stylesheet" -->
<!-- 	type="text/css" /> -->
<link href="<c:url value="/resources/ionicons.min.css" />" rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/font-awesome.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/dataTables.bootstrap.min.css" />" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/_all-skins.css" />" rel="stylesheet" type="text/css" />
<title>Session</title>
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

					<li><a href="<c:url value = "/appointment"/>" class="<c:if test="${fn:contains(pageContext.request.requestURI, 'appointment')}">active</c:if>"> <i
							class="fa fa-calendar"></i> <span>Appointments</span>
					</a></li>
					<li><a href="<c:url value = "/user"/>" class="<c:if test="${fn:contains(pageContext.request.requestURI, 'user')}">active</c:if>"> <i
							class="fa fa-users"></i> <span>Users</span>
					</a></li>
					<li><a href="<c:url value = "/session"/>" class="<c:if test="${fn:contains(pageContext.request.requestURI, 'session')}">active</c:if>"
					
					> <i
							class="fa fa-envelope"></i> <span>Sessions</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Data Tables <small>advanced tables</small>
				</h1>
				<!-- 				<ol class="breadcrumb"> -->
				<!-- 					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
				<!-- 					<li><a href="#">Tables</a></li> -->
				<!-- 					<li class="active">Data tables</li> -->
				<!-- 				</ol> -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">All Appiontment:</h3>
								
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
														<th>Id</th>
														<th>SessionStart Date</th>
														<th>Session Start Time</th>
														<th>Session Duration</th>
														
														<th>Counselor of the session</th>
														
														
													</tr>

												</thead>
												<tbody>
													<c:forEach items="${sessionList}" var="session">
														<tr>
															<td><c:out value="${session.id} " /></td>

															<td><c:out value="${session.startDate}" /></td>

															<td><c:out value="${session.startTime}" /></td>
															<td><c:out value="${session.duration}" /></td>
															
															<td><c:out value="${session.counselor.firstname}" /></td>

															



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