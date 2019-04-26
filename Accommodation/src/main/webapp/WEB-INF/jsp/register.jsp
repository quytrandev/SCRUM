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
    <style>
        .valid {
            color: green;
        }

        .valid:before {
            position: relative;
            left: -35px;
            content: "✔";
        }

        /* Add a red text color and an "x" when the requirements are wrong */
        .invalid {
            color: red;
        }

        .invalid:before {
            position: relative;
            left: -35px;
            content: "✖";
        }
    </style>
    <script>
        function check_pass() {
            if (document.getElementById('password').value !== document.getElementById('confirmpass').value) {
                alert("Nhap lai mat khau khong trung khop")
            }
        }
    </script>
</head>
<body>
<spring:url value="/user/saveUser" var="saveURL" />
<form:form modelAttribute="user_add" method="post"
           action="${saveURL }" cssClass="form">
    <%--<form:hidden path="id" />--%>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-t-85 p-b-20">
            <form class="login100-form validate-form">
					<span class="login100-form-title p-b-70">
						ĐĂNG KÍ
					</span>
                <span class="login100-form-avatar">
						<img src="../../public/images/login1.jpg" alt="AVATAR">
					</span>

                <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter username">
                    <input class="input100" type="text" name="userName" id="userName">
                    <span class="focus-input100" data-placeholder="Tài khoản"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                    <input class="input100" type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    <span class="focus-input100" data-placeholder="Mật khẩu"></span>

                </div>
                <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                    <input class="input100" type="password" name="confirmpass" id="confirmpass" onchange="check_pass()" >
                    <span class="focus-input100" data-placeholder="Nhập lại mật khẩu"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                    <input class="input100" type="text" name="email" id="email" >
                    <span class="focus-input100" data-placeholder="Nhập email"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                    <input class="input100" type="text" name="contact" id="contact" >
                    <span class="focus-input100" data-placeholder="Nhập số điện thoại"></span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        ĐĂNG KÍ
                    </button>
                </div>
                <%--<script>
                    var myInput = document.getElementById("psw");
                    var letter = document.getElementById("letter");
                    var capital = document.getElementById("capital");
                    var number = document.getElementById("number");
                    var length = document.getElementById("length");

                    var confirm = document.getElementById("confirmpass");


                    confirm.onblur = function(){
                    }


                    // When the user clicks on the password field, show the message box
                    myInput.onfocus = function() {
                        document.getElementById("message").style.display = "block";
                    }

                    // When the user clicks outside of the password field, hide the message box
                    myInput.onblur = function() {
                        document.getElementById("message").style.display = "none";
                    }

                    // When the user starts to type something inside the password field
                    myInput.onkeyup = function() {
                        // Validate lowercase letters
                        var lowerCaseLetters = /[a-z]/g;
                        if(myInput.value.match(lowerCaseLetters)) {
                            letter.classList.remove("invalid");
                            letter.classList.add("valid");
                        } else {
                            letter.classList.remove("valid");
                            letter.classList.add("invalid");
                        }

                        // Validate capital letters
                        var upperCaseLetters = /[A-Z]/g;
                        if(myInput.value.match(upperCaseLetters)) {
                            capital.classList.remove("invalid");
                            capital.classList.add("valid");
                        } else {
                            capital.classList.remove("valid");
                            capital.classList.add("invalid");
                        }

                        // Validate numbers
                        var numbers = /[0-9]/g;
                        if(myInput.value.match(numbers)) {
                            number.classList.remove("invalid");
                            number.classList.add("valid");
                        } else {
                            number.classList.remove("valid");
                            number.classList.add("invalid");
                        }

                        // Validate length
                        if(myInput.value.length >= 8) {
                            length.classList.remove("invalid");
                            length.classList.add("valid");
                        } else {
                            length.classList.remove("valid");
                            length.classList.add("invalid");
                        }
                    }
                </script>--%>
                <ul class="login-more p-t-190">
                    <li class="m-b-8">
							<span class="txt1">
								Quay lại
							</span>

                        <a href="login.jsp" class="txt2">
                            trang đăng nhập
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


<%--<spring:url value="/user/saveUser" var="saveURL" />
<form:form modelAttribute="user_add" method="post"
           action="${saveURL }" cssClass="form">

    <form:hidden path="id" />
    <div class="form-group">
        <label>Tài kho?n</label>
        <form:input path="userName" cssClass="form-control" id="userName" />
    </div>
    <div class="form-group">
        <label>M?t kh?u</label>
        <form:input path="password" cssClass="form-control" id="password" />
    </div>
    <div class="form-group">
        <label>Email</label>
        <form:input path="email" cssClass="form-control" id="email"  />
    </div>
    <div class="form-group">
        <label>S? ?i?n tho?i</label>
        <form:input path="contact" cssClass="form-control" id="contact"  />
    </div>
    <button type="submit" class="btn btn-primary">Sign up</button>
</form:form>--%>
</form:form>
</body>
</html>