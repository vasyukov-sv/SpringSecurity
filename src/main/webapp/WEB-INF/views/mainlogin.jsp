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
        <label>User:</label>
        <input type="text" name="user_Login" title="Enter User">

        <label>Password:</label>
        <input type="password" name="password_Login" title="Enter Password">

    </fieldset>

    <footer>
        <input type="submit" name="submit" value="submit" class="btnLogin">
        <c:if test="${not empty error}">
            <span class="error">${error}</span>
        </c:if>
    </footer>

</form>
</body>
</html>
