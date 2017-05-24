<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 23.05.2017
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet"/>
    <title>Login page</title>
</head>
<body>
<form name="form_Login" action="<c:url value="/login"/>" method="post" class="box login">
    <fieldset class="boxBody">
        <label>Username:
            <input type='text' name='user_login' value=''>
        </label>
        <label>Password:
            <input type='password' name='password_login'/>
        </label>
        <c:if test="${not empty error}">
            <div class="error" style="text-align:right;">${error}</div>
        </c:if>
    </fieldset>

    <footer>
        <input name="remember-me" type="checkbox" class="checkAdmin" id="remember_me"/>
        <label for="remember_me">Remember me</label>
        <input type="submit" class="btnLogin" value="Submit">
    </footer>

</form>
</body>
</html>
