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
    <title>Login page</title>
</head>
<body>
<c:if test="${not empty error}">
    ${error}
</c:if>
<form name="form_Login" action="<c:url value="/login"/>" method="post">
    <table>
        <tr>
            <td>User:</td>
            <td><input type="text" name="user_Login" value="" title="Enter User"></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="password_Login" value="" title="Enter Password"></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
