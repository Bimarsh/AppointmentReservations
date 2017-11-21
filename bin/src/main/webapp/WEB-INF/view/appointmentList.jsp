
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>appointment</title>
</head>
<body>
	<h1>appointment</h1>
	<table>
		<c:forEach var="appointment" items="${appointments}">
			<tr>
				<td>${appointment.session}</td>
                    <td>${appointment.person}</td>
                    
				<td><a href="appointments/${appointment.id}">edit</a></td>
			</tr>
		</c:forEach>
	</table>

	<a href="addAppointment.jsp"> Add a appointment</a>
</body>
</html>
