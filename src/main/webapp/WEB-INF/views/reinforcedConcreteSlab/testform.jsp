<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 12.08.18
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Reinforced concrete slab form</title>
</head>
<body>
<form:form method="post" modelAttribute="table21">

    <form:label path="yc"> </form:label>
    <form:select path="yc" items="${table2_1}"></form:select>

</form:form>
</body>
</html>