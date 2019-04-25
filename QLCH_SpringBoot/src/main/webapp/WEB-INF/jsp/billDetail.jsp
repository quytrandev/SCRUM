<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>VietNam+</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
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
<div class="container" >
    <h3 class="wthree_text_info" style="padding-top:0px;background-color: #2FDAB8;color: black">Bill<span> Detail</span></h3>
</div>
<c:if test="${role=='manager'}">
    <body>
    <div class="new_arrivals_agile_w3ls_info" style="padding-top: 0px" >
        <div class="container">
            <div id="horizontalTab">
                <div class="resp-tabs-container" >
                    <!--/tab_one-->
                    <div class="tab1">
                        <table class="table table-striped">
                            <thead>
                            <th scope="row">Product</th>
                            <th scope="row">Quantity</th>
                            <th scope="row">Price</th>
                            <th scope="row">Amount</th>
                            </thead>
                            <tbody>
                            <c:forEach items="${billDetails}" var="bill">
                                <c:if test="${bill.bill.id==id_bill}">
                                    <tr>
                                            <%--<td style="font-weight: bold">${bill.bill.id }</td>--%>
                                        <td style="font-weight: bold">${bill.product.name }</td>
                                        <td style="font-weight: bold">${bill.quanity}</td>
                                        <td style="font-weight: bold">${bill.price}</td>
                                        <td style="font-weight: bold">$${bill.amount}</td>
                                        <td><a style="font-weight: bold"
                                               href="${pageContext.request.contextPath}/product/detail/${bill.product.id}">
                                            View Product</a></td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</c:if>
<c:if test="${role!='manager'}">
    <div class="text-center" style="padding-top: 50px;padding-bottom: 50px">
        <a class="btn btn-primary"
           href="/login" role="button"> Login to Access </a>
    </div>
</c:if>
<jsp:include page="footer.jsp"></jsp:include>
</html>