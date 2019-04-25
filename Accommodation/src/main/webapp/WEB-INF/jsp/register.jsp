<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
</head>
<spring:url value="/user/saveUser" var="saveURL" />
<form:form modelAttribute="user_add" method="post"
           action="${saveURL }" cssClass="form">
    <form:hidden path="id" />
    <div class="form-group">
        <label>Tài kho?n</label>
        <form:input path="userName" cssClass="form-control" id="userName" />
    </div>
    <div class="form-group">
        <label>M?t kh?u</label>
        <form:input path="password" cssClass="form-control" id="password" />
    </div>
    <div class="form-group">
        <label>Email</label>
        <form:input path="email" cssClass="form-control" id="email"  />
    </div>
    <div class="form-group">
        <label>S? ?i?n tho?i</label>
        <form:input path="contact" cssClass="form-control" id="contact"  />
    </div>
    <button type="submit" class="btn btn-primary">Sign up</button>
</form:form>
</html>




















