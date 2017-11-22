<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title><tiles:insertAttribute name="title" /></title>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/adminlte.min.js" />"></script>
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
<script type="text/javascript">
	$(document).ready(function() {
		var url = window.location.pathname;
		if (url.indexOf("session") !== -1) {
			$("#session_menu").addClass('active');
		}

		if (url.indexOf("person") !== -1) {
			$("#user_menu").addClass('active');
		}

		if (url.indexOf("appointment") !== -1) {
			$("#appointment_menu").addClass('active');
		}
	});
</script>
</head>

<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">

		<tiles:insertAttribute name="header" />

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

					<li id="appointment_menu"><a
						href="<c:url value = "/appointments"/>"> <i
							class="fa fa-calendar"></i> <span>Appointments</span>
					</a></li>
					<sec:authorize access="hasRole('ROLE_ADMIN')" >
					<li id="user_menu"><a href="<c:url value = "/persons"/>"> <i
							class="fa fa-users"></i> <span>Users</span>
					</a></li>
					</sec:authorize>
					<li id="session_menu"><a href="<c:url value = "/session"/>">
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
						<div class="box">
							<tiles:insertAttribute name="content" />
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<tiles:insertAttribute name="footer" />
</body>

</html>
