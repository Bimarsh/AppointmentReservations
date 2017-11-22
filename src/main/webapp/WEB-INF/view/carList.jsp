<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cars currently in the shop</title>
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
						<li><a href="logout"
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
					
					<li><a href="<c:url value = "/cars"/>"> <i class="fa fa-calendar"></i>
							<span>Car</span>
					</a></li>
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
								<h3 class="box-title">Cars currently in the shop:</h3>

								<sec:authorize url="/addCar">

									<a href="addCar"><button class="btn btn-primary pull-right">Add
											A car</button></a>
								</sec:authorize>
								<!--               <button class="btn btn-primary pull-right btn-sm"  type="button">Cancel</button> -->
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
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Browser: activate to sort column ascending">Make</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Platform(s): activate to sort column ascending">Model</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Engine version: activate to sort column ascending">Year</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="CSS grade: activate to sort column ascending">Color</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="CSS grade: activate to sort column ascending">Action</th>
													</tr>

												</thead>
												<tbody>
													
													<c:forEach var="car" items="${cars}">
														<tr role="row" class="even">
														<td>${car.make}</td>
														<td>${car.model}</td>
														<td>${car.year}</td>
														<td>${car.color}</td>

														<td><sec:authorize access="hasRole('ROLE_ADMIN')">

																<a href="cars/${car.id}"><button type="button"
																		class="btn btn-primary">Edit</button></a>
															</sec:authorize> <sec:authorize access="hasRole('ROLE_ADMIN')">
																<a href="cars/${car.id}"><button type="button"
																		class="btn btn-danger">Delete</button></a>
															</sec:authorize></td>

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