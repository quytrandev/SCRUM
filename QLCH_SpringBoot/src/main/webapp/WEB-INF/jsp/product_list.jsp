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

<header>
    <jsp:include page="header_Customer.jsp"></jsp:include>
</header>
<body>
<div class="container">
    <ul class="resp-tabs-list" style="padding-top: 0px">
        <div>
            <li style="background-color: #2FDAB8;padding-top: -50px"><a href="/product/man" style="color: black" >MEN'S</a></li>
            <li style="background-color: #2FDAB8"><a href="/product/woman" style="color: black">WOMEN'S</a></li>
            <li style="background-color: #2FDAB8"><a href="/product/bag" style="color: black">BAGS</a></li>
            <li style="background-color: #2FDAB8"><a href="/product/footwear" style="color: black">FOOTWEAR</a></li>
        </div>
    </ul>
</div>
    <div class="new_arrivals_agile_w3ls_info" style="padding-top: 0px" >
        <div class="container" style="padding-top: 20px;background-color: white">
            <div id="horizontalTab">
                <div class="resp-tabs-container" >
                    <!--/tab_one-->
                    <div class="tab1">
                        <c:forEach items="${productsList}" var="product" >
                            <div class="col-md-4 product-men">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div>
                                        <div class="item-info-product" >
                                            <div class="men-thumb-item">
                                                <%--<td><spring:url value="/product/detail/${product.id}"--%>
                                                                <%--var="detailURL" /> <a class="btn btn-primary btn-lg"--%>
                                                                                      <%--href="${detailURL}" role="button">Detail</a></td>--%>
                                                <a href="../product/detail/${product.id}">
                                                    <img class="product-image"  src="${pageContext.request.contextPath}../product/ProductImage?id=${product.id}"  alt="" class="pro-image-front"/></a>
                                            </div>
                                            <h4><a>${product.name}</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price" style="color: red;font-weight: bold"><b>$${product.price}</b></span>
                                            </div>
                                            <%--<td><spring:url value="${pageContext.request.contextPath}../addCart?id=${product.id}"--%>
                                                            <%--var="cartURL" /> <a class="btn btn-primary btn-lg"--%>
                                                                                <%--href="${cartURL}" role="button">Add to cart</a></td>--%>
                                            <td><spring:url value="${pageContext.request.contextPath}/product/detail/${product.id}"
                                                            var="cartURL" /> <a class="btn btn-primary btn-lg"
                                                                                href="${cartURL}" role="button">Detail</a></td>
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
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>