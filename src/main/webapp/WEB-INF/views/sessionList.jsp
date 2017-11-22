
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

		<sec:authorize access="hasRole('ROLE_ADMIN')" >
			<a href="<spring:url value="/session/add" />"><button
					class="btn btn-primary pull-right">Add A Session</button></a></sec:authorize>
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
								<th>SessionStart Date</th>
								<th>Session Start Time</th>
								<th>Session Duration</th>
								<th>Seats Reserved</th>
								<th>Counselor of the session</th>
								<sec:authorize access="hasRole('ROLE_ADMIN')" >
								<th>Edit</th>
								<th>Delete</th>
								</sec:authorize>
							</tr>

						</thead>
						<tbody>
							<c:forEach items="${sessionList}" var="session">
								<tr>
									<td><c:out value="${session.id} " /></td>

									<td><c:out value="${session.startDate}" /></td>

									<td><c:out value="${session.startTime}" /></td>
									<td><c:out value="${session.duration}" /></td>
									<td><c:out value="${session.seat}" /></td>
									<td><c:out value="${session.counselor.firstname}" /></td>
									<sec:authorize access="hasRole('ROLE_ADMIN')" >
									<td><a
										href="<spring:url value="/session/updateSession/${session.id}" />">
											<span class="glyphicon glyphicon-pencil"></span>
									</a></td>
									<td><a
										href="<spring:url value="/session/deletSession/${session.id}" />" onclick="return confirm('Are you sure you want to delete this session?');">
											<span class="glyphicon glyphicon-trash"></span>
									</a></td>
									</sec:authorize>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                ...
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>
</html>