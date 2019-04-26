<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Register</title>
</head>
<form:form name='f' action="loginUser" method='POST'>
	<div class="wrap-input100 validate-input" data-validate = "Enter username">
		<input class="input100" type="text" name="userName" placeholder="User name">
		<span class="focus-input100" data-placeholder="&#xe82a;"></span>
	</div>

	<div class="wrap-input100 validate-input" data-validate="Enter password">
		<input class="input100" type="password" name="password" placeholder="Password">
		<span class="focus-input100" data-placeholder="&#xe80f;"></span>
	</div>

	<div class="container-login100-form-btn m-t-32">
		<input name="submit" type="submit" value="submit" class="login100-form-btn"/>
	</div>
</form:form>
</html>




















