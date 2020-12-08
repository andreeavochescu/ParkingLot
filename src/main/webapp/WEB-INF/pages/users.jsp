<%-- 
    Document   : user
    Created on : Nov 18, 2020, 11:04:22 AM
    Author     : Lenovo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>
    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddUser" role="button">Add User</a>
    </c:if>
    <c:forEach var="user" items="${users}" varStatus="status">
    <div class="row">
        <div class="col-md-4">
            ${user.username}
        </div>
        <div class="col-md-4">
            ${user.email}
        </div>
        <div class="col-md-4">
            ${user.position}
        </div>
    </div>
    </c:forEach>
</t:pageTemplate>

