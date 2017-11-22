
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
<title>person</title>
</head>

<body>
	<div class="box-header">
		<h3 class="box-title">All persons:</h3>

		<sec:authorize url="/addperson">

			<a href="<spring:url value="/persons/add" />"><button
					class="btn btn-primary pull-right">Add A Person</button></a>
		</sec:authorize>
	</div>
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
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Userame</th>
								<th>Role</th>
							</tr>

						</thead>
						<tbody>
							<c:forEach items="${personsList}" var="person">
								<tr>
									<td><c:out value="${person.id} " /></td>

									<td><c:out value="${person.firstname}" /></td>

									<td><c:out value="${person.lastname}" /></td>
									<td><c:out value="${person.email}" /></td>
									<td><c:out value="${person.user.username}" /></td>
									<td><c:forEach items="${person.user.userRoles }"
											var="role">
											<c:out value="${role }, " />
										</c:forEach></td>

									<td><a href="<spring:url value="/persons/update/${person.id}" />">
											<span class="glyphicon glyphicon-pencil"></span>
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