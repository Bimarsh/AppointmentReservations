
<%@page import="java.util.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<title>Session</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<section>
		<div class="jumbotron">
			<div class="container">
				<h3>Session List</h3>
			</div>
		</div>
	</section>






		<c:choose>
			<c:when test="${sessionList.size()!=0}" >
				<table class="table table-striped">
				
					<tr>
						
					   <th>Id</th>
					   <th>SessionStart Date</th>
					  <th>Session Start Time</th>
					  <th>Session Duration</th>
					   <th>Number of Seats</th>
					   <th>Location of Session</th>
					  <th>Counselor of the session</th>
					  
						<th>Edit</th>
						<th>Delet</th>
					</tr>
					<c:forEach items="${sessionList}" var="session">
						<tr>
						   <td><c:out value="${session.id} "/></td>
						  
							
							
							<td><fmt:formatDate pattern="yyyy/mm/dd" value="${session.startDate}"/></td>
							<td><fmt:formatDate pattern="HH:mm:ss" value="${session.startTime}"/></td>
							<td><c:out value="${session.duration}" /></td>
							<td><c:out value="${session.seat}" /></td>
							<td><c:out value="${session.location}" /></td>
							<td><c:out value="${session.counselor.firstname}" /></td>
							
							<td><a
								href="<spring:url value="/session/updateSession/${session.id}" />">
									<span class="glyphicon glyphicon-pencil"></span>
							</a></td>
							<td><a
								href="<spring:url value="/session/deletSession/${session.id}" />">
									<span class="glyphicon glyphicon-trash"></span>
							</a></td>
						
							

						</tr>
					</c:forEach>


				</table>
			</c:when>
			<c:otherwise>
          <form:errors cssStyle="background:white;color:red;"><b> No session is Created:</b></form:errors>
			</c:otherwise>

		</c:choose>



<a href="<spring:url value="/session/addsession" />"
			class="btn btn-primary"> <span class=""></span> Add Session
		</a>
</body>
</html>