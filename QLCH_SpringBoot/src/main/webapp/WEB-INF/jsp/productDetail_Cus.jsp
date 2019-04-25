<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product Detail</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

    <link href="../../public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/font-awesome.css" rel="stylesheet">
    <link href="../../public/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="new_arrivals_agile_w3ls_info">
    <div class="container" style=background-color:white>
        <div id="horizontalTab">
            <spring:url value="/detail" var="detailURL" />
            <form:form modelAttribute="product_detail" method="post"
                       action="${detailURL }" cssClass="form">
                <div class="form-group">
                    <div class="col-md-6 product-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div>
                                <div class="item-info-product " >
                                    <div class="men-thumb-item">
                                        <img class="product-image" src="${pageContext.request.contextPath}/product/ProductImage?id=${id}"  alt="" class="pro-image-front">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 product-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div>
                                <div class="item-info-product" >
                                    <h4>ID: ${id}</h4>
                                    <h4>Name: ${product_detail.name}</h4>
                                    <h4>Unit: ${product_detail.unit}</h4>
                                    <div class="info-product-price">
                                        <span class="item_price" >Price: ${product_detail.price} vnd </span>
                                    </div>
                                    <td><spring:url value="/product/updateProduct/${id }"
                                                    var="updateURL" /> <a class="btn btn-primary btn-lg active"
                                                                          href="${updateURL }" role="button">Update</a></td>
                                    <td><spring:url value="/product/deleteProduct/${id }"
                                                    var="deleteURL" /> <a class="btn btn-primary btn-lg active"
                                                                          href="${deleteURL }" role="button">Detele</a></td>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>