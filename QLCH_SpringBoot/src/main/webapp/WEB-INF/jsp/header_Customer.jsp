<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<head>
    <title>Elite Shoppy an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--//tags -->
    <link href="../../public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/font-awesome.css" rel="stylesheet">
    <link href="../../public/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='../../public/fonts/fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="header" id="home">
    <div class="container">
        <ul>
            <c:if test="${role=='manager'}">
                <li> <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Hi! ${username} </a></li>
            </c:if>
            <c:if test="${role!='manager'}">
                <li> <a href="/login" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Sign In </a></li>
            </c:if>
            <li><i class="fa fa-phone" aria-hidden="true"></i> Call : 0934021059</li>
            <li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:vanduyit027@gmail.com">vanduyit027@gmail.com</a></li>
            <c:if test="${role=='manager'}">
                <li> <a href="/logout" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Log Out </a></li>
            </c:if>
            <c:if test="${role!='manager'}">
                <li> <a href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Address: 01, Vo Van Ngan St </a></li>
            </c:if>

        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <div class="col-md-4 header-middle" >
            <form action="#" method="post">
                <div class="clearfix"></div>
            </form>
        </div>
        <!-- header-bot -->
        <div class="col-md-4 logo_agile">
            <h1><a href="/"><span>DH</span> Shoppy <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
        </div>
        <!-- header-bot -->

        <div class="clearfix"></div>
    </div>
</div>
<div id="horizontalTab" style="background-color: black">
    <ul class="resp-tabs-list" >
        <div class="container">
            <li style="background-color: black;height: 50px"><a href="/" style="color: white" >Home</a></li>
            <li style="background-color: black;height: 50px"><a href="/product/list" style="color: white">Product</a></li>
            <li style="background-color: black;height: 50px"><a href="/contact" style="color: white">Contact</a></li>
            <li style="background-color: gray;height: 50px"><a href="/shoppingCart" style="color: white">Shopping Cart</a></li>
        </div>
        <%--<div class="lvd">--%>
            <%--<div class="container" style="height: 200px">--%>
                <%--<img class="text-center" src="../../public/images/inner1.jpg" style="width:100%;height: 200px">--%>
            <%--</div>--%>
        <%--</div>--%>
    </ul>
</div>
<div class="page-head_agile_info_w3l" style="padding-top: 100px">
    <div class="container">
        <h3 style="padding-left: 20px">DH<span>Shoppy </span></h3>
        <!--/w3_short-->
        <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">

            </div>
        </div>
        <!--//w3_short-->
    </div>
</div>

