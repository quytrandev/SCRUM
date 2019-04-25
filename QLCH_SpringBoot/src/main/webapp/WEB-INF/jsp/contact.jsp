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
    <link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.0.0/js/jquery.min.js"></script>

    <link href=".././/public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../public/css/font-awesome.css" rel="stylesheet">
    <link href="../../public/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
</head>

<header>
    <jsp:include page="header_Customer.jsp"></jsp:include>
</header>
<body>

<!--/contact-->
<div class="banner_bottom_agile_info">
    <div class="container">
        <div class="contact-grid-agile-w3s">
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w31">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <h4>Address</h4>
                    <p>01 Vo Van Nga St, Thu Duc District <span>Tp HCM, VietNam.</span></p>
                </div>
            </div>
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w32">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <h4>Call Us</h4>
                    <p>+84 34 758 839<span>+84 934 021 059</span></p>
                </div>
            </div>
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w33">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <h4>Email</h4>
                    <p><a href="mailto:16110035@student.hcmute.edu.vn">16110035@student.hcmute.edu.vn</a><span><a href="mailto:16110070@student.hcmute.edu.vn">16110070@student.hcmute.edu.vn</a></span></p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>