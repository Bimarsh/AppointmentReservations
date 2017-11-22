
<%@page import="java.util.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
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
<title>Session</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<section>
		<div class="jumbotron">
			<div class="container">
				<!-- <h1>Valued Members</h1> -->
				<h3>Add Person</h3>
			</div>
		</div>
	</section>
<c:choose>
 <c:when test="${mode!='EDIT_SESSION'}">
 <form:form method="post" commandName="session">
 <table align="center"  cellpadding="5"  >
     <tr>
      </tr>
         
        <tr>
			<td><form:label  path="startDate" >Start Date
				:</form:label> 
				</td>
		<td><form:input placeholder="yyyy-mm-dd" path="startDate" id="datepicker" />
	<samp  class="glyphicon glyphicon-calendar"></samp>
		
		</td>
		
                      
                   
			<td><form:errors path="startDate" cssStyle="color:red;"/></td>
		</tr>
		  <tr>
			<td><form:label  path="startTime">Start Time
				:</form:label> 
				</td>
		<td><form:input placeholder="startTime" path="startTime"  id="datepickerTime" /></td>
			<td><form:errors path="startTime" cssStyle="color:red;"/></td>
		</tr>  
		
		<tr>
			<td><form:label  path="duration">Duration
				:</form:label> 
				</td>
		<td><form:input placeholder="duration" path="duration"  /></td>
			<td><form:errors path="duration" cssStyle="color:red;"/></td>
		</tr>
		
		<tr>
			<td><form:label  path="seat">Seats
				:</form:label> 
				</td>
		<td><form:input placeholder="seat" path="seat"  /></td>
			<td><form:errors path="seat" cssStyle="color:red;"/></td>
		</tr>
		
		
    
    
    <tr>
			<td><form:label path="counselor.firstname">Counselor:</form:label></td>
			<td><form:select path="counselor.firstname"  >
				<form:option value="" label="--select  Counselor--" />
				<form:options items="${coun}"  />
				
			</form:select></td>
			<td>
			<form:errors path="counselor.firstname" cssStyle="color:red;"/>
			      </td> 
			      </tr>
       <tr>
		  <td></td>
			 <td colspan="2" align="center" >
				 <form:button class="btn btn-primary"   name="add">Add</form:button>
			 </td>
			
		</tr>
 </table>
 
 </form:form>
 	</c:when>
	<c:otherwise>
 
 <c:url value="/admin/person" var="updateUrl"/>
 <form:form action="${updateUrl}"  method="post"  commandName="person">
		<table align="center"  cellpadding="5"  >
		<tr>
			
		<td><form:hidden path="id" value="${person.id}" /></td>
			
		</tr>
         
        <tr>
			<td><form:label  path="firstname">FirstName
				:</form:label> 
				</td>
		<td><form:input placeholder="FirstName" path="firstname" id="datepicker" value="${person.firstname}"  />
		 
		
		</td>
			<td><form:errors path="firstname" cssStyle="color:red;"/></td>
		</tr>
		
		  <tr>
			<td><form:label  path="lastname">Last Name
				:</form:label> 
				</td>
		<td><form:input placeholder="lastname" path="lastname" value="${person.lastname}" /></td>
			<td><form:errors path="lastname" cssStyle="color:red;"/></td>
		</tr>  
		
		
		
		<tr>
			<td><form:label  path="email">Email
				:</form:label> 
				</td>
		<td><form:input placeholder="Email" path="email" value="${person.email}" /></td>
			<td><form:errors path="email" cssStyle="color:red;"/></td>
		</tr>
		
		
    
    
    <tr>
			<td><form:label path="counselor.firstname">Counselor:</form:label></td>
			<td><form:select path="counselor.firstname" value="${person.user.userRoles}" >
				<form:option value="" label="--select  Counselor--" />
				<form:options items="${coun}"  />
				
			</form:select></td>
			<td>
			<form:errors path="counselor.firstname" cssStyle="color:red;"/>
			      </td> 
			      </tr>
       <tr>
		  <td></td>
			 <td colspan="2" align="center" >
				 <form:button class="btn btn-primary"   name="add">Add</form:button>
			 </td>
			
		</tr>
		</table>
		</form:form>
</c:otherwise>
 </c:choose>
 
 
<!--  -->
    
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script src="js/bootstrap-datetimepicker.min.js"></script>
      
      <!-- Javascript -->
      <script>
      $(function() {
          $( "#datepicker" ).datepicker({dateFormat: 'yy/mm/dd'});
         
       });
    </script>
    

</body>
</html>