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
    </div>
<<form:form action="${pageContext.request.contextPath}/shoppingCartConfirmation" method="post">
    <div class="text-center" style="padding-bottom: 50px">
        <c:if test="${role!='manager'}">
            <!-- Edit Cart -->
            <td><spring:url value="/shoppingCart"
                            var="editCartURL" /> <a class="btn btn-primary btn-lg"
                                                    href="${editCartURL }" role="button">Edit Cart</a></td>
            <!-- Edit Customer Info -->
            <td><spring:url value="/shoppingCartCustomer"
                            var="editCusURL" /> <a class="btn btn-primary btn-lg"
                                                   href="${editCusURL }" role="button">Edit Customer Info</a></td>
            <!-- Send/Save -->
            <spring:url value="/bill/addBill/" var="addURL" />
            <a class="btn btn-primary btn-lg" href="${addURL }" role="button">Confirm</a>
        </c:if>
        <c:if test="${role=='manager'}">
            <!-- Edit Cart -->
            <td><spring:url value="/shoppingCart"
                            var="editCartURL" /> <a class="btn btn-primary btn-lg"
                                                    href="${editCartURL }" role="button">View Product</a></td>
            <!-- Edit Customer Info -->
        </c:if>
    </div>
</form:form>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>