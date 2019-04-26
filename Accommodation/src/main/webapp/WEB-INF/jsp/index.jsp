<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
          content="width=device-width height=device-height initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="../../public/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css"
          href="//fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800%7CPoppins:300,400,700">
    <link rel="stylesheet" href="../../public/css/bootstrap.css">
    <link rel="stylesheet" href="../../public/css/fonts.css">
    <link rel="stylesheet" href="../../public/css/style.css" id="main-styles-link">
    <style>.ie-panel {
        display: none;
        background: #212121;
        padding: 10px 0;
        box-shadow: 3px 3px 5px 0 rgba(0, 0, 0, .3);
        clear: both;
        text-align: center;
        position: relative;
        z-index: 1;
    }

    html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {
        display: block;
    }</style>
</head>
<body>
<div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img
        src="../../public/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820"
        alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
</div>
<div class="preloader">
    <div class="preloader-logo"><img src="../../public/images/logo-default-151x44.png" alt="" width="151" height="44"
                                     srcset="../../public/images/logo-default-151x44.png 2x"/>
    </div>
    <div class="preloader-body">
        <div id="loadingProgressG">
            <div class="loadingProgressG" id="loadingProgressG_1"></div>
        </div>
    </div>
</div>
<div class="page">
    <!-- Page Header--><a class="banner banner-top"
                          href="https://www.templatemonster.com/intense-multipurpose-html-template.html"
                          target="_blank"><img src="" alt=""/></a>
    <header class="section novi-background page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
            <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                 data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed"
                 data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-lg-stick-up="true"
                 data-lg-stick-up-offset="118px" data-xl-layout="rd-navbar-static"
                 data-xl-device-layout="rd-navbar-static" data-xl-stick-up="true" data-xl-stick-up-offset="118px"
                 data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static"
                 data-xxl-stick-up-offset="118px" data-xxl-stick-up="true">
                <div class="rd-navbar-aside-outer">
                    <div class="rd-navbar-aside">
                        <!-- RD Navbar Panel-->
                        <div class="rd-navbar-panel">
                            <!-- RD Navbar Toggle-->
                            <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap-1"><span></span>
                            </button>
                            <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="index.html"><img
                                src="../../public/images/logo-default-151x44.png" alt="" width="151" height="44"
                                srcset="../../public/images/logo-default-151x44.png 2x"/></a>
                        </div>
                        <div class="rd-navbar-collapse">
                            <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1"
                                    data-rd-navbar-toggle="#rd-navbar-collapse-content-1"><span></span></button>
                            <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content-1">
                                <article class="unit align-items-center">

                                    <div class="unit-body">
                                        <ul class="list-0">

                                        </ul>
                                    </div>
                                </article>
                                <article class="unit align-items-center">
                                    <input type="text"/>
                                    <img src="../../public/images/find.png">
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
    <section class="section swiper-container swiper-slider swiper-slider-minimal" data-loop="true"
             data-slide-effect="fade" data-autoplay="4759" data-simulate-touch="true">
        <div class="swiper-wrapper">
            <div class="swiper-slide swiper-slide_video" data-slide-bg="../../public/images/nhatro.jpg">
                <div class="container">
                    <div class="jumbotron-classic-content">
                        <div class="wow-outer">

                        </div>

                    </div>
                </div>
            </div>
            <div class="swiper-slide" data-slide-bg="../../public/images/nhatro.jpg">
                <div class="container">
                    <div class="jumbotron-classic-content">
                        <div class="wow-outer">

                        </div>

                    </div>
                </div>
            </div>
            <div class="swiper-slide" data-slide-bg="../../public/images/nhatro.jpg">
                <div class="container">
                    <div class="jumbotron-classic-content">
                        <div class="wow-outer">

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination-outer container">
            <div class="swiper-pagination swiper-pagination-modern swiper-pagination-marked"
                 data-index-bullet="true"></div>
        </div>
    </section>
    <section class="section novi-background section-md text-center">
        <div class="container">
            <h3 class="text-uppercase font-weight-bold wow-outer"><span class="wow slideInDown">Thông Tin Phòng</span>
            </h3>
            <div class="row row-lg-50 row-35 offset-top-2">
                <c:forEach items="${listRoom}" var="room">
                    <div class="col-md-6 wow-outer">
                        <!-- Post Modern-->

                        <article class="post-modern wow slideInLeft">
                            <spring:url value="/detail/${room.id }" var="detailURL"/>
                            <a class="post-modern-media" href="${detailURL}">
                                <img src="../../public/images/${room.image}" alt="" width="571" height="353"/></a>
                            <h4 class="post-modern-title"><a class="post-modern-title" href="#">${room.address}</a></h4>
                            <ul class="post-modern-meta">
                                <li><a class="button-winona" href="#">${room.price} VNĐ</a></li>
                                <li>${room.user.userName}</li>
                                <li>200m vuông</li>
                                <li>Số Điện Thoại: ${room.user.contact}</li>
                            </ul>
                            <p>${room.title}</p>

                        </article>
                    </div>
                </c:forEach>
                <div class="col-md-12 wow-outer"><a class="button button-primary button-winona button-md" href="#">Xem
                    Thêm</a></div>
            </div>
        </div>
    </section>


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
                <div class="footer-advanced-layout"><a class="brand" href="index.html"><img
                        src="../../public/images/logo-light-115x34.png" alt="" width="115" height="34"
                        srcset="images/logo-light-115x34.png 2x"/></a>
                    <!-- Rights-->
                    <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span>. All Rights
                        Reserved. Design by Snow White And 7 Dwarfs</p>
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