<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a Car</title>
        <link href="resources/style.css" rel="stylesheet" type="text/css" />
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
						<li><a href="j_spring_security_logout"
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
						<input type="text" pa class="form-control"
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
							class="fa fa-envelope"></i> <span>Other</span> 
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Create Car
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
				<div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Create a car</h3>
            </div>
            <!-- form start -->
             <form:form commandName="car" action="addCar" method="post">
<%--             <form role="form"> --%>
              <div class="box-body">
                <div class="form-group">
                  <label for="make">Make:</label>
                  <form:input type="text" path="make" class="form-control" id="exampleInputEmail1" placeholder="Make"/>
                  <form:errors path="make" cssClass="error"/>
                </div>
                <div class="form-group">
                  <label for="model">Model</label>
                  <form:input type="text" path="model" class="form-control" id="exampleInputPassword1" placeholder="model"/>
                  <form:errors path="make" cssClass="error"/>
                </div>
                <div class="form-group">
                  <label for="year">Year</label>
                  <form:input type="text" path="year" class="form-control" id="exampleInputPassword1" placeholder="year"/>
                  <form:errors path="year" cssClass="error"/>
                </div>
                <div class="form-group">
                  <label for="color">Color: </label>
                  <form:input type="text" path="color" class="form-control" id="exampleInputPassword1" placeholder="Color"/>
                  <form:errors path="color" cssClass="error"/>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form:form>
          </div>


        </div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>