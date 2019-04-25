<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>VietNam+</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

    <link href="../public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../public/css/font-awesome.css" rel="stylesheet">
    <link href="../public/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>

<header>
    <jsp:include page="header_Customer.jsp"></jsp:include>
</header>
<body>
<div class="container" >
    <h3 class="wthree_text_info" style="padding-top: 0px;background-color: #2FDAB8;color: black">Customer<span> Info</span></h3>
</div>

<form:form action="/shoppingCartCustomer" modelAttribute="customerForm" method="post">
<div class="new_arrivals_agile_w3ls_info" style="padding-top:0px">
    <div class="container">
        <div class="form-group">
            <label>Name</label>
            <input name="name" type="text" class="form-control" id="name" required/>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input name="address" type="text" class="form-control" id="address" required/>
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input name="phone" type="number" class="form-control" id="phone"  required/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input name="Email" type="text" class="form-control" id="email"  required/>
        </div>
        <div class="text-center">
            <input class="btn btn-primary btn-lg" type="submit" value="Save"/>
        </div>
    </div>
</div>
</form:form>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>