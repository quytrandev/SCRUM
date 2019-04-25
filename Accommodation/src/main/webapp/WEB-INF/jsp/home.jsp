<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nguyên Liệu List</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
      rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body>
<h2 style="font-family: Cambria;color: Navy;font-size:60px;text-align: center;font-style: inherit">Danh Sách Phòng</h2>
<c:forEach items="${listUser}" var="user">
    User id: ${user.id}
    <br/>
    UserName : ${user.userName}
</c:forEach>
</body>
<br>
</html>