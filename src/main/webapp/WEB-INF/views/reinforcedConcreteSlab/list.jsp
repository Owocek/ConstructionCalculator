<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dominik
  Date: 07.08.18
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Lista books</title>
</head>
<body>
<ul>
    <c:forEach var="v" items="${table21}" >
        <li>
            ${v.ys} ${v.yc}
        </li>

    </c:forEach>

</ul>

</body>
</html>
