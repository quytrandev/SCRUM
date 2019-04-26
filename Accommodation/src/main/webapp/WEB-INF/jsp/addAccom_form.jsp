<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="../../public/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800%7CPoppins:300,400,700">
    <link rel="stylesheet" href="../../public/css/bootstrap.css">
    <link rel="stylesheet" href="../../public/css/fonts.css">
    <link rel="stylesheet" href="../../public/css/style.css" id="main-styles-link">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</head>
<body>
<div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
<div class="preloader">
    <div class="preloader-logo"><img src="images/logo-default-151x44.png" alt="" width="151" height="44" srcset="images/logo-default-151x44.png 2x"/>
    </div>
    <div class="preloader-body">
        <div id="loadingProgressG">
            <div class="loadingProgressG" id="loadingProgressG_1"></div>
        </div>
    </div>
</div>
<div class="page">
    <!-- Page Header--><a class="banner banner-top" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" target="_blank"><img src="" alt=""/></a>
    <header class="section novi-background page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
            <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-lg-stick-up="true" data-lg-stick-up-offset="118px" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xl-stick-up="true" data-xl-stick-up-offset="118px" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-xxl-stick-up-offset="118px" data-xxl-stick-up="true">
                <div class="rd-navbar-aside-outer">
                    <div class="rd-navbar-aside">
                        <!-- RD Navbar Panel-->
                        <div class="rd-navbar-panel">
                            <!-- RD Navbar Toggle-->
                            <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap-1"><span></span></button>
                            <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="index.html"><img src="images/logo-default-151x44.png" alt="" width="151" height="44" srcset="images/logo-default-151x44.png 2x"/></a>
                        </div>
                        <div class="rd-navbar-collapse">
                            <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content-1"><span></span></button>
                            <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content-1">
                                <article class="unit align-items-center">

                                    <div class="unit-body">
                                        <ul class="list-0">

                                        </ul>
                                    </div>
                                </article>
                                <article class="unit align-items-center">
                                    <input type="text"/>
                                    <img src="images/find.png">
                                </article>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="rd-navbar-main-outer">
                    <div class="rd-navbar-main">
                        <div class="rd-navbar-nav-wrap" id="rd-navbar-nav-wrap-1">
                            <!-- RD Navbar Nav-->
                            <ul class="rd-navbar-nav">
                                <li class="rd-nav-item active"><a class="rd-nav-link" href="index.html">Trang chủ</a>
                                </li>
                                <li class="rd-nav-item"><a class="rd-nav-link" href="#">Đăng nhập</a>
                                </li>
                                <li class="rd-nav-item"><a class="rd-nav-link" href="#">Đăng ký</a>
                                </li>
                                <li class="rd-nav-item"><a class="rd-nav-link" href="#">Xem thêm</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <spring:url value="/accommodation/saveAccommodation" var="saveURL" />
    <form:form modelAttribute="accommodation_add" method="post"
               action="${saveURL }" cssClass="form">
        <form:hidden path="id" />
        <div class="form-group">
            <label>Address</label>
            <form:input path="address" cssClass="form-control" id="address" />
        </div>
        <div class="form-group">
            <label>Prefer Client</label>
            <form:input path="preferClient" cssClass="form-control" id="preferClient" />
        </div>
        <div class="form-group">
            <label>Size</label>
            <form:input path="size" cssClass="form-control" id="size"  />
        </div>
        <div class="form-group">
            <label>Price</label>
            <form:input path="price" cssClass="form-control" id="price"  />
        </div>
        <div class="form-group">
            <label>Description</label>
            <form:input path="description" cssClass="form-control" id="description"  />
        </div>
        <div class="form-group">
            <label>Title</label>
            <form:input path="title" cssClass="form-control" id="title"  />
        </div>
        <div class="form-group">
            <label>Type</label>
            <form:input path="accommodationType" cssClass="form-control" id="accommodationType"  />
        </div>
        <div class="form-group">
            <label>Owner</label>
            <form:input path="user" cssClass="form-control" id="userid"  />
        </div>
        <div class="form-group">
            <label>Status</label>
            <form:input path="status" cssClass="form-control" id="status"  />
        </div>
        <div class="form-group">
            <label>Image</label>
            <form:input path="image" cssClass="form-control" id="image"  />
        </div>
        <button type="submit" class="btn btn-primary">Them</button>
    </form:form>
    <section class="section novi-background section-md text-center">



    <a class="banner" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" target="_blank">
        <img src="" alt=""/></a>
    <footer class="section novi-background footer-advanced bg-gray-700">
        <div class="footer-advanced-main">
            <div class="container">
                <div class="row row-50">
                    <div class="col-lg-4">
                        <h5 class="font-weight-bold text-uppercase text-white">Về chúng tôi</h5>
                        <p class="footer-advanced-text">Ghi thông tin đơn vị sở hữu website ở đây</p>

                    </div>

                    <div class="col-sm-5 col-md-7 col-lg-4">

                    </div>
                </div>
            </div>
        </div>
        <div class="footer-advanced-aside">
            <div class="container">
                <div class="footer-advanced-layout">
                    <div>

                    </div>
                    <div>
                        <ul class="foter-social-links list-inline list-inline-md">
                            <li><a class="icon novi-icon icon-sm link-default mdi mdi-facebook" href="#"></a></li>
                            <li><a class="icon novi-icon icon-sm link-default mdi mdi-twitter" href="#"></a></li>
                            <li><a class="icon novi-icon icon-sm link-default mdi mdi-instagram" href="#"></a></li>
                            <li><a class="icon novi-icon icon-sm link-default mdi mdi-google" href="#"></a></li>
                            <li><a class="icon novi-icon icon-sm link-default mdi mdi-linkedin" href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <hr/>
        </div>
        <div class="footer-advanced-aside">
            <div class="container">
                <div class="footer-advanced-layout"><a class="brand" href="index.html"><img src="images/logo-light-115x34.png" alt="" width="115" height="34" srcset="images/logo-light-115x34.png 2x"/></a>
                    <!-- Rights-->
                    <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span>. All Rights Reserved. Design by Snow White And 7 Dwarfs</p>
                </div>
            </div>
        </div>
    </footer>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
<script src="../../public/js/core.min.js"></script>
<script src="../../public/js/script.js"></script>
</body>
</html>