<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<header class="main-header">
	<!-- Logo -->
	<a class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
		class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
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
						class="hidden-xs">Hi, <sec:authorize access="isAuthenticated()">  
        <strong><sec:authentication property="principal.username"/></strong>
    </sec:authorize></span>
				</a></li>
				<li><a href="<c:url value="/logout" />"><i
						class="fa fa-gears"></i> Logout</a></li>
			</ul>
		</div>
	</nav>
</header>
<%-- <%@ include file="/WEB-INF/views/header.jsp"%> --%>
