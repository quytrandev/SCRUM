<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Article Form</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<header>
    <jsp:include page="header_Customer.jsp"></jsp:include>
</header>
<body>
<div class="container" >
    <h3 class="wthree_text_info" style="padding-top:0px;background-color: #2FDAB8;color: black">Comfirm<span> Information</span></h3>
</div>
<div class="container">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th scope="row">Name</th>
                <td><b>${myCart.customerInfo.name}</b></td>
                <%--<form:input path="${myCart.customerInfo.name}" cssClass="form-control" id="name" />--%>
            </tr>
            <tr>
                <th scope="row">Email</th>
                <td><b>${myCart.customerInfo.email}</b></td>
                <%--<form:input path="${myCart.customerInfo.email}" cssClass="form-control" id="name" />--%>
            </tr>
            <tr>
                <th scope="row">Phone</th>
                <td><b>${myCart.customerInfo.phone}</b></td>
                <%--<form:input path="${myCart.customerInfo.phone}" cssClass="form-control" id="name" />--%>
            </tr>
            <tr>
                <th scope="row">Address</th>
                <td><b>${myCart.customerInfo.address}</b></td>
                <%--<form:input path="${myCart.customerInfo.address}" cssClass="form-control" id="name" />--%>
            </tr>
            <tr>
                <th scope="row">Total Quantity</th>
                <td><b>${myCart.quantityTotal}</b></td>
                <%--<form:input path="${myCart.quantityTotal}" cssClass="form-control" id="name" />--%>
            </tr>
            <tr>
                <th scope="row">Total Amount</th>
                <td><b>$${myCart.amountTotal}</b></td>
                <%--<form:input path="${myCart.amountTotal}" cssClass="form-control" id="name" />--%>
            </tr>
            </tbody>
        </table>
    <spring:url value="/bill/saveBill" var="saveURL" />
    <form:form modelAttribute="addBill" method="post"
               action="${saveURL }" cssClass="form">
        <form:hidden path="id" />
        <div class="form-group">

            <form:hidden path="amount" cssClass="form-control" id="amount" value="${myCart.amountTotal}" />
        </div>
        <div class="form-group">

            <form:hidden path="customer_address" cssClass="form-control" id="customer_address" value="${myCart.customerInfo.address}" />
        </div>
        <div class="form-group">

            <form:hidden path="customer_email" cssClass="form-control" id="customer_email" value="${myCart.customerInfo.email}"  />
        </div>
        <div class="form-group">

            <form:hidden path="customer_name" cssClass="form-control" id="customer_name" value="${myCart.customerInfo.name}"/>
        </div>
        <div class="form-group">

            <form:hidden path="customer_phone" cssClass="form-control" id="customer_phone" value="${myCart.customerInfo.phone}"/>
        </div>
        <div class="form-group">
            <form:hidden path="ORDER_NUM" cssClass="form-control" id="ORDER_NUM" value="1" />
        </div>
        <div class="text-center" style="padding-top: 50px;padding-bottom: 50px">
            <button type="submit" class="btn btn-primary">Click to send your order</button>
        </div>
    </form:form>
</body>
</div>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>