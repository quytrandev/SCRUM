<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
    <title>Footer</title>
</head>
<body>
<div class="footer" style="height: 590px;">
    <div class="footer_agile_inner_info_w3l">
        <div class="col-md-3 footer-left">
            <h2><a href="#"><span>DH</span> Shoppy </a></h2>
            <p>Welcome to our store!
                <br>We are one of the most brands all around the world!

            </p>
            <%--<ul class="social-nav model-3d-0 footer-social w3_agile_social two">--%>
                <%--<li><a href="#" class="facebook">--%>
                    <%--<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>--%>
                    <%--<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>--%>
                <%--<li><a href="#" class="twitter">--%>
                    <%--<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>--%>
                    <%--<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>--%>
                <%--<li><a href="#" class="instagram">--%>
                    <%--<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>--%>
                    <%--<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>--%>
                <%--<li><a href="#" class="pinterest">--%>
                    <%--<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>--%>
                    <%--<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>--%>
            <%--</ul>--%>
        </div>
        <div class="col-md-9 footer-right">
            <div class="sign-grds">
                <div class="col-md-4 sign-gd">
                    <h4>Our <span>Information</span> </h4>
                </div>
                <div class="col-md-5 sign-gd-two">
                    <h4>Store <span>Information</span></h4>
                    <div class="w3-address">
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Phone Number</h6>
                                <p>+1 234 567 8901</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Email Address</h6>
                                <p>Email :<a href="mailto:example@email.com"> 16110070@student.hcmute.edu.com</a></p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="w3-address-grid">
                            <div class="w3-address-left">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="w3-address-right">
                                <h6>Location</h6>
                                <p>
                                    01 Vo Van Ngan, Thu Duc District, HCMC.
                                </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 sign-gd flickr-post">
                    <h4>Flickr <span>Posts</span></h4>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="agile_newsletter_footer">
            <div class="col-sm-6 newsleft">
                <h3>SIGN UP FOR NEWSLETTER !</h3>
            </div>
            <div class="col-sm-6 newsright">
                <form action="#" method="post">
                    <input type="email" placeholder="Enter your email..." name="email" required="">
                    <input type="submit" value="Submit">
                </form>
            </div>

            <div class="clearfix"></div>
        </div>
        <p class="copy-right">&copy 2018 DH shoppy. All rights reserved | Design by Duy $ Hien</p>
    </div>
</div>
</body>
</html>