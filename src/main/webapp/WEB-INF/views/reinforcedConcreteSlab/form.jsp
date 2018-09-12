<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 12.08.18
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/resources/js/showInformationOnMouseOver.js" var="js"/>
<c:url value="/resources/css/styleform.css" var="css"/>
<html>
<head>
    <title>Reinforced concrete slab form</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML'
            async></script>
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
                <form:form method="post" modelAttribute="allFactors">

                    <%--fck--%>
                    <div class="tooltip"
                         data-text="
     Charakterystyczna wytrzymałość na ściskanie <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 3.1">
                        <form:label path="fck">f<sub>ck</sub> [MPa]</form:label>
                    </div>
                    <div><form:radiobuttons path="fck" items="${listOfFck}"></form:radiobuttons></div>

                    <%--fyk--%>
                    <div class="tooltip"
                         data-text="
     Charakterystyczna granica plastyczności stali zbrojeniowej <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Załącznik C.1 - Tabela C.1">
                        <form:label path="fyk">f<sub>yk</sub> [MPa]</form:label>
                    </div>
                    <div><form:input path="fyk"></form:input></div>

                    <%--Es--%>
                    <div class="tooltip"
                         data-text="
     Moduł sprężystości stali zbrojeniowej (Moduł Younga) <br>
     Dla stali moduł wynosi: 190 &#8764 210 [GPa]">
                        <form:label path="es">E<sub>s</sub> [GPa]</form:label>
                    </div>
                    <div><form:input path="es"></form:input></div>

                    <%--yc--%>
                    <div class="tooltip"
                         data-text="
     Częściowy współczynnik bezpieczeństwa dla betonu <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 2.1N">
                        <form:label path="yc">y<sub>c</sub></form:label>
                    </div>
                    <div><form:radiobuttons path="yc" items="${listOfYc}"></form:radiobuttons></div>

                    <%--ys--%>
                    <div class="tooltip"
                         data-text="
     Częściowy wspołczynnik bezpieczeństwa dla stali <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 2.1">
                        <form:label path="ys">y<sub>s</sub></form:label>
                    </div>
                    <div><form:radiobuttons path="ys" items="${listOfYs}"></form:radiobuttons></div>

                    <%--Klasa ekspozycji--%>
                    <div class="tooltip"
                         data-text="
     Klasy ekspozycji dobiera się ze względu na warunki środowiskowe <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 4.4N, 4.5N">
                        <form:label path="exposureClass">Klasa ekspozycji</form:label>
                    </div>
                    <div><form:radiobuttons path="exposureClass"
                                            items="${listOfExposureClass}"></form:radiobuttons></div>

                    <%--Klasy konstrukcji --%>
                    <div class="tooltip"
                         data-text="
     Klasa trwalosci konstrukcji dobierana wg przeznaczenia i wg lat na jakie sie je projektuje <br>
     Norma: PN 1990:2004<br>
     Tabela 2.1">
                        <form:label path="structuralClass">Klasa konstrukcji:</form:label>
                    </div>
                    <div><form:radiobuttons path="structuralClass"
                                            items="${listOfStructuralClass}"></form:radiobuttons></div>

                    <%--wymiary--%>
                    <div class="tooltip"
                         data-text="Wymiary składowego pola płyty:">
                        <form:label path="lx">L<sub>x</sub>, L<sub>y</sub> [m]</form:label>
                    </div>
                    <div><form:input path="lx"></form:input></div>
                    <div><form:input path="ly"></form:input></div>

                    <%--szerokość scian wewnętrznych--%>
                    <div class="tooltip"
                         data-text="Szerokość ścian wewnętrznych:">
                        <form:label path="tw">t<sub>w</sub> [m]</form:label>
                    </div>
                    <div><form:input path="tw"></form:input></div>

                    <%--szerokość scian zewnętrzych--%>
                    <div class="tooltip"
                         data-text="Szerokość ścian zewnętrznych:">
                        <form:label path="tz">t<sub>z</sub> [m]</form:label>
                    </div>
                    <div><form:input path="tz"></form:input></div>


                    <div class="tooltip"
                         data-text="Wysokość przekroju (grubość płyty stropowej):">
                        <form:label path="hf"> h<sub>f</sub> [m]</form:label>
                    </div>
                    <div><form:input path="hf"></form:input></div>


                    <div class="tooltip"
                         data-text="
     Średnica prętów górnych: <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Załącznik C.1 - Tabela C.2">
                        <form:label path="fi_g">&#934<sub>g</sub> [mm]</form:label>
                    </div>
                    <div><form:input path="fi_g"></form:input></div>


                    <div class="tooltip"
                         data-text="
     Średnica prętów dolnych:  <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Załącznik C.1 - Tabela C.2">
                        <form:label path="fi_d">&#934<sub>d</sub> [mm]</form:label>
                    </div>
                    <div><form:input path="fi_d"></form:input></div>


                    <div class="tooltip"
                         data-text="ich wartość, kierunek i miejsce przyłożenia do
             konstrukcji nie zmieniają się w czasie jej wznoszenia
              i eksploatacji. Zaliczamy do nich ciężar własny stałych
              elementów konstrukcji budowli, ciężar własny gruntu w stanie rodzimym,
               nasypów i zasypów oraz parcie z niego wynikające. ">
                        <form:label path="gk">Obciążenia stałe g<sub>k</sub>: [kN/m^2]</form:label>
                    </div>
                    <div><form:input path="gk"></form:input></div>


                    <div class="tooltip"
                         data-text="ich kierunek działania, wartość lub położenie
              może ulegać zmianie. Obciążenia zmienne dzieli się na
              technologiczne oraz środowiskowe. ">
                        <form:label path="qk">Obciążenia zmienne q<sub>k</sub>: [kN/m^2]</form:label>
                    </div>
                    <div><form:input path="qk"></form:input></div>

                    <div><input type="submit"></div>

                </form:form>
            </div>
        </div>

        <div id="information">
            <div id="informationHeader">Calculation info</div>
            <div id="informationText"></div>
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
