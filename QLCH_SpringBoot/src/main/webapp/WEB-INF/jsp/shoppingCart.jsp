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
    <h3 class="wthree_text_info" style="background-color: #2FDAB8;padding-top: 0px;color: black">Shopping<span>Cart</span></h3>
</div>

<form:form action="${pageContext.request.contextPath}/shoppingCart" modelAttribute="cartForm" method="post">
<div class="new_arrivals_agile_w3ls_info" style="padding-top:0px">
    <div class="container">
        <div id="horizontalTab">
            <div class="resp-tabs-container" >
                <!--/tab_one-->
                <div class="tab1">
                    <c:forEach items="${cartForm.cartLines}" var="product" varStatus="varStatus">
                        <div class="item-info-product " >
                                <div class="form-group">
                                    <div class="col-md-4 product-men">
                                        <div class="men-pro-item simpleCart_shelfItem">
                                            <div>
                                                <div class="item-info-product " >
                                                    <div class="men-thumb-item">
                                                        <img class="product-image" src="${pageContext.request.contextPath}../product/ProductImage?id=${product.productInfo.id}"  alt="" class="pro-image-front">
                                                    </div>
                                                    <form:hidden path="cartLines[${varStatus.index}].productInfo.id" />
                                                    <div class="spcart" style="font-weight: bold">
                                                        <%--<div class="info-product-price" >--%>
                                                            <%--<h4><a>Name Product: ${product.productInfo.name}</a></h4>--%>
                                                        <%--</div>--%>
                                                        <div class="info-product-price">
                                                            <h4 style="font-weight: bold">Product:<span class="item_price" style="font-weight: bold">
                                                                ${product.productInfo.name}</span></h4>
                                                        </div>
                                                            <div class="info-product-price">
                                                                <h4 style="font-weight: bold">Product:<span class="item_price" style="font-weight: bold;color: red">
                                                                $${product.productInfo.price}</span></h4>
                                                            </div>
                                                        <div class="info-product-price">
                                                            <div class="form-group">
                                                                <form:input path="cartLines[${varStatus.index}].quantity"
                                                                            type="number"  min="1" max="5"/>
                                                            </div>
                                                        </div>
                                                        <div class="info-product-price"style="padding-top: 20px">
                                                            <h4 style="font-weight: bold">
                                                                Amount:<a class="amount" style="color: red;font-size: 30px;">
                                                                $${product.amount}</a></h4>
                                                        </div>
                                                        <td><spring:url value="${pageContext.request.contextPath}../shoppingCartRemoveProduct?id=${product.productInfo.id}"
                                                                        var="deleteURL" /> <a class="btn btn-danger"
                                                                                              href="${deleteURL }" role="button">Detele</a></td>
                                                    </div>
                                                </div>
                                            </div>
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
<div class="container" style="padding-bottom: 100px">
    <div class="text-center">
        <c:if test="${role!='manager'}">
            <input class="btn btn-primary btn-lg" type="submit" value="Update Quantity"/>
            <td><spring:url value="/shoppingCartCustomer"
                            var="updateURL" /> <a class="btn btn-primary btn-lg"
                                                  href="${updateURL }" role="button">Enter Customer Info</a></td>
            <td><spring:url value="/product/list"
                            var="updateURL" /> <a class="btn btn-primary btn-lg"
                                                  href="${updateURL }" role="button">View Product</a></td>
        </c:if>
        <c:if test="${role=='manager'}">
            <td><spring:url value="/shoppingCartConfirmation"
                            var="updateURL" /> <a class="btn btn-primary btn-lg"
                                                  href="${updateURL }" role="button">Customer Info</a></td>
        </c:if>
    </div>
</div>
</form:form>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>