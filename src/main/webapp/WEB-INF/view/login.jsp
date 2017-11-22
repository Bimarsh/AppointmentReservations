<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page For Security</title>
<style>
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}

</style>

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script type="text/javascript"
	src="<c:url value="/resources/js/icheck.min.js" />"></script>
	<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link href="<c:url value="/resources/AdminLTE.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/blue.css" />" rel="stylesheet" type="text/css" />
<!-- <link href="resources/bootstrap.min.css" rel="stylesheet" -->
<!-- 	type="text/css" /> -->
<link href="<c:url value="/resources/ionicons.min.css" />" rel="stylesheet" type="text/css" />

<link href="<c:url value="/resources/font-awesome.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/dataTables.bootstrap.min.css" />" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/_all-skins.css" />" rel="stylesheet" type="text/css" />
</head>

<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>TM</b> Checking Registration</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
	<c:if test="${not empty error}">
  <div class="errorblock">
   Your login attempt was not successful, try again.<br /> Caused :
   ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
  </div>
 </c:if>
    <form name="f" action="<c:url value="login" />" method="post">
    	
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Username" name="username">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
<!--           <div class="checkbox icheck"> -->
<!--             <label> -->
<!--               <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> Remember Me -->
<!--             </label> -->
<!--           </div> -->
        <!-- /.col -->
        <div class="col-xs-6 center-block text-center">
          <button type="submit" class="btn btn-primary btn-small btn-flat">Sign In</button>
          <button type="submit" class="btn btn-warning btn-small btn-flat">Reset</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <a href="register.html" class="text-center">Register a new membership</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>


<div id="lbdictex_find_popup" class="lbexpopup hidden" style="position: absolute; top: 0px; left: 0px;"><div class="lbexpopup_top"><h2 class="fl popup_title">&nbsp;</h2><ul><li><a class="close_main popup_close" href="#">&nbsp;</a></li></ul><div class="clr"></div></div><div class="popup_details"></div><div class="popup_powered">abc</div></div><div id="lbdictex_ask_mark" class="hidden" style="position: absolute; top: 0px; left: 0px;"><a class="lbdictex_ask_select" href="#">&nbsp;</a></div></body>
</html>
