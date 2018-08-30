<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 12.08.18
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/resources/js/home.js" var="js"/>
<c:url value="/resources/css/style.css" var="css"/>
<html>
<head>
    <title>Construction Calculator</title>
    <script type="text/javascript" src="${js}"></script>
    <link href="${css}" type="text/css" rel="stylesheet">
</head>
<body>
<div id="container">
    <div id="header">
        <div id="logo">
            Construction Calculator
        </div>
        <div id="login">

        </div>
        <div style='clear:both;'></div>
    </div>
    <div id="center">
        <div id="rectangle">
            <div id="projects">

            </div>
            <div id="changes">

            </div>
        </div>

        <div id="informations">

        </div>
        <div style='clear:both;'></div>
    </div>
    <div id="footer">
        <div id="divInFooter">

        </div>
    </div>
</div>

</body>
</html>
