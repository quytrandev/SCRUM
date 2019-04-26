<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="ISO-8859-1"%>--%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="../../public/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../public/css/util.css">
	<link rel="stylesheet" type="text/css" href="../../public/css/main.css">
	<!--===============================================================================================-->
</head>
<form:form name='f' action="loginUser" method='POST'>
<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100 p-t-85 p-b-20">
			<form class="login100-form validate-form">
					<span class="login100-form-title p-b-70">
						ĐĂNG NHẬP
					</span>
				<span class="login100-form-avatar">
						<img src="../../public/images/login1.jpg" alt="AVATAR">
					</span>

				<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Nhập tài khoản">
					<input class="input100" type="text" name="userName">
					<span class="focus-input100" data-placeholder="Tài khoản"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-50" data-validate="Nhập mật khẩu">
					<input class="input100" type="password" name="password">
					<span class="focus-input100" data-placeholder="Mật khẩu"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" value="submit" name="submit">
						Đăng nhập
					</button>
				</div>

				<ul class="login-more p-t-190">
					<li>
							<span class="txt1">
								Bạn chưa có tài khoản?
							</span>

						<a href="register.html" class="txt2">
							Đăng kí
						</a>
					</li>
				</ul>
			</form>
		</div>
	</div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="../../public/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../public/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="../../public/vendor/bootstrap/js/popper.js"></script>
<script src="../../public/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../public/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="../../public/vendor/daterangepicker/moment.min.js"></script>
<script src="../../public/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="../../public/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="../../public/js/main.js"></script>
<%--</form:form>--%>
<%--</body>--%>
<%--<form:form name='f' action="loginUser" method='POST'>
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
	</div>--%>
</form:form>
</html>




















