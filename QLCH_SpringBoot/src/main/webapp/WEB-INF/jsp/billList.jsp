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

    <link href="../public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../public/css/font-awesome.css" rel="stylesheet">
    <link href="../public/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>
<jsp:include page="header.jsp"></jsp:include>
<div class="container" >
    <h3 class="wthree_text_info" style="padding-top:0px;background-color: #2FDAB8;color: black">Bill</h3>
</div>
<c:if test="${role=='manager'}">
    <body>
    <div class="container">
        <%--<div class="text-center">--%>
            <%--<h2 style="font-size: 45px;padding-top: 20px"><b>Bill List</b></h2>--%>
        <%--</div>--%>
        <table class="table table-striped" style="padding-top: 10px;padding-bottom: 20px">
            <thead>
            <th scope="row">#ID</th>
            <th scope="row">Name</th>
            <th scope="row">Address</th>
            <th scope="row">Email</th>
            <th scope="row">Phone</th>
            <th scope="row">Amount</th>
            </thead>
            <tbody>
            <c:forEach items="${billList }" var="bill">
                <tr>
                    <td style="font-weight: bold">${bill.id }</td>
                    <td style="font-weight: bold">${bill.customer_name}</td>
                    <td style="font-weight: bold">${bill.customer_address}</td>
                    <td style="font-weight: bold">${bill.customer_email}</td>
                    <td style="font-weight: bold">${bill.customer_phone }</td>
                    <td class="billAmount" style="color: red;font-weight: bold;font-size: 27px">
                        $${bill.amount }</td>
                    <td><spring:url value="/billDetail/list/${bill.id}"
                                    var="billDetailURL" /> <a class="btn btn-primary"
                                                              href="${billDetailURL }" role="button">View</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
            <%--<spring:url value="/bill/addBill/" var="addURL" />--%>
            <%--<a class="btn btn-primary" href="${addURL }" role="button">Add--%>
            <%--New Bill</a>--%>
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