<%-- 
    Document   : login
    Created on : Nov 27, 2020, 8:55:18 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Login"> 
    <form class="form-signin" method="POST" action="j_security_check"> 
        <h1 class="h3 mb-3 font-weight-normal">Sign in</h1> 
        <label for="username" class="sr-only">Username</label> 
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus>
        <label for="password" class="sr-only">Password</label> 
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button> 
    </form>
</t:pageTemplate>
