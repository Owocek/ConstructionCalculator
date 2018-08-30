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
            <div id="mainText">
                CONSTRUCTION CALCULATOR
            </div>
            <div id="menu">
                <div class="menuButton"></div>
                <div class="menuButton"></div>
                <div class="menuButton"></div>
                <div class="menuButton"></div>
                <div class="menuButton"></div>
            </div>
        </div>
        <div id="login">

        </div>
        <div style='clear:both;'></div>
    </div>
    <div id="center">
        <div id="rectangle">
            <div id="description">
                <br>
                Welcome on my website! <br>
                To do list: <br>
                1. javascript - display info in div 'information' after click on 'projects' div <br>
                2. same thing but clicking on divs 'menu' <br>
                3. newly created div 'information' should have button 'start calculations' <br>
                (only for 'project' divs) <br>
                4. create few divs in footer (linkedin profile etc.) <br>
                5. do front-end to form and result <br>
                6. do the rest of calculations for reinforced concrete slab <br>
                7. create login panel for user <br>
                8. submited calculations should be saved as 'last calculations' on user account <br>
            </div>
            <div id="projects">
                <div class="scrolls">
                    <div class="imageDiv">Concrete slab</div>
                    <div class="imageDiv">Soon :)</div>
                    <div class="imageDiv">Soon :)</div>
                    <div class="imageDiv">Soon :)</div>
                    <div class="imageDiv">Soon :)</div>
                    <div class="imageDiv">Soon :)</div>

                </div>
            </div>
        </div>

        <div id="information">

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
