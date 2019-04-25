<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="header" id="home">
    <div class="container">
        <ul>
            <c:if test="${role==null}">
                <li> <a href="/login" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Log in </a></li>
            </c:if>
            <c:if test="${role!=null}">
                <li> <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Hi! <%=session.getAttribute("username")%> </a></li>
            </c:if>
            <li><i class="fa fa-phone" aria-hidden="true"></i> Call : 0934021059</li>
            <li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">vanduyit027@gmail.com</a></li>
            <c:if test="${role==null}">
                <li> <a href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> LogOut </a></li>
            </c:if>
            <c:if test="${role!=null}">
                <li> <a href="/logout" data-toggle="modal" data-target="#myModal2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> LogOut </a></li>
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
            <h1><a href="/"><span>DH</span>uy Shoppy <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
        </div>
        <!-- header-bot -->

        <div class="clearfix"></div>
    </div>
</div>
    <div id="horizontalTab" style="background-color: black">
        <ul class="resp-tabs-list">
            <div CLASS="container">
                <li style="background-color: black;height: 50px"><a href="/" style="color: white" >Home</a></li>
                <li style="background-color: black;height: 50px"><a href="/product/list" style="color: white">Product</a></li>
                <li style="background-color: black;height: 50px"><a href="/contact" style="color: white">Contact</a></li>
                <li style="background-color: gray;height: 50px"><a href="/bill/list" style="color: white">Order</a></li>
            </div>
            <div class="">
                <div class="container" style="height: 200px">
                    <img class="text-center" src="../../public/images/inner1.jpg" style="width:100%;height: 200px">
                </div>
            </div>
        </ul>
    </div>


