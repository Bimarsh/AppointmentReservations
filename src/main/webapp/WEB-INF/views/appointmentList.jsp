
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>

<body>
	<!-- Main content -->
	<div class="box-header">
		<h3 class="box-title">All Sessions:</h3>

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
						class="table table-bordered table-hover dataTable" role="grid"
						aria-describedby="example2_info">
						<thead>
							<tr role="row">
								<th>Id</th>
								<th>Start Date</th>
								<th>Start Time</th>
								<th>Duration</th>
								<th>Counselor of the session</th>
								<th>Action</th>
							</tr>

						</thead>
						<tbody>
							<c:forEach items="${appointments}" var="appointment">
								<tr>
									<td><c:out value="${appointment.id} " /></td>


									<td><c:out value="${appointment.session.startDate}" /></td>
									<td><c:out value="${appointment.session.startTime}" /></td>
									<td><c:out value="${appointment.session.duration}" /></td>
									<td><c:out value="${appointment.session.counselor.firstname}" /></td> 

									<td><a
										href="<spring:url value="/appointment/deletAppointment/${appointment.id}" />">
											<button class="btn-small btn-danger" onclick="return confirm('Are you sure you want to cancel this appointment??');">Cancel</button>
									</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>

</html>