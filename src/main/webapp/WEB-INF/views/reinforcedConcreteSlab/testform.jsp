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
<form:form method="post" modelAttribute="table2_1">
    <%--OTRZYMUJE CAŁY OBIEKT, NIE WIEM JAK OTRZYMAĆ KONKRETNĄ WARTOŚĆ--%>
    <%--<form:select path="yc" items="${table2_1}"></form:select>--%>

    <form:label path="yc">Częściowy współczynnik bezpieczeństwa dla betonu:</form:label>
    <form:radiobuttons path="yc" items="${listOfYc}"></form:radiobuttons>

    <form:label path="yc">Częściowy współczynnik bezpieczeństwa dla stali:</form:label>
    <form:radiobuttons path="ys" items="${listOfYs}"></form:radiobuttons>

</form:form>
<form:form method="post" modelAttribute="table3_1">

    <%--<form:label path="fck">Charakterystyczna wytrzymałość betonu na ściskanie</form:label>--%>
    <%--<form:radiobuttons path="fck" items="${listOfFck}"></form:radiobuttons>--%>

    <%--<form:label path="fckCube">Charakterystyczna wytrzymałość betonu na ściskanie:</form:label>--%>
    <%--<form:radiobuttons path="fckCube" items="${listOfFckCube}"></form:radiobuttons>--%>

</form:form>
</body>
</html>
