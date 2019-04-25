<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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

<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container">
    <div class="new_arrivals_agile_w3ls_info">
        <div class="container">
            <div id="horizontalTab">
                <div class="resp-tabs-container">
                    <!--/tab_one-->
                    <div class="tab1">
                        <div style="padding-left: 980px ;padding-top: 50px">
                            <td ><spring:url value="/customer/addCustomer/" var="addURL"/> <a class="btn btn-success" href="${addURL}" role="button">Add New Customer</a></td>
                        </div>
                        <c:forEach items="${customerList}" var="customer" >
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div>
                                        <div class="item-info-product" >
                                            <div class="men-thumb-item">
                                                <img src="../public/images/fb.jpg" alt="" class="pro-image-front">
                                                <img src="../public/images/fb.jpg" alt="" class="pro-image-back">
                                            </div>
                                            <div class="info-product-price">
                                                <h4>ID : ${customer.id}</h4>
                                                <h4>Name : ${customer.name}</h4>
                                                <h4>Address : ${customer.address}</h4>
                                                <h4>Phone : ${customer.phone}</h4>
                                            </div>
                                            <td><spring:url value="/customer/updateCustomer/${customer.id}"
                                                            var="updateURL" /> <a class="btn btn-primary btn-lg active"
                                                                                  href="${updateURL }" role="button">Update</a></td>
                                            <td><spring:url value="/customer/deleteCustomer/${customer.id}"
                                                            var="deleteURL" /> <a class="btn btn-primary btn-lg active"
                                                                                  href="${deleteURL }" role="button">Detele</a></td>
                                        </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<jsp:include page="footer.jsp"></jsp:include>


</html>