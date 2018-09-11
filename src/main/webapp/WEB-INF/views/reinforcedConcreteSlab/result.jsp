<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 20.08.18
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/js/showInformationOnMouseOver.js" var="js"/>
<c:url value="/resources/css/style.css" var="css"/>
<html>
<head>
    <title>Title</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML'
            async></script>
    <script type="text/javascript" src="${js}"></script>
    <link href="${css}" type="text/css" rel="stylesheet">
</head>
<body>

<div id='container'>

    <div id='rectangle'>
        <h1>Żelbetowa płyta stropowa - obliczenia</h1>
    </div>

    <div class="square">
        <h3>Parametry betonu:</h3>


        <div class="tooltip"
             data-text="
     Charakterystyczna wytrzymałość na ściskanie <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 3.1">
            f<sub>ck</sub> = ${result.fck} [MPa]
        </div>

        <div class="tooltip"
             data-text="
     Wytrzymałość na rozciąganie <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 3.1">
            f<sub>ctm</sub> = ${result.fctm} [MPa]
        </div>

        <div class="tooltip"
             data-text="
     Częściowy współczynnik bezpieczeństwa dla betonu <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 2.1N">
            y<sub>c</sub> = ${result.yc}
        </div>

        <div class="tooltip"
             data-text="
     Obliczeniowa wytrzymałość betonu na ściskanie <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     <%--dopisać obliczenia fcd--%>
     Wzór: (3.15)">
            f<sub>cd</sub> = <fmt:formatNumber value="${result.fcd}" maxFractionDigits="3"/> [MPa]
        </div>


        <div class="tooltip"
             data-text="
     Współczynnik efektywnej wysokości strefy ściskanej <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Wzór: (3.19), (3.20)">
            &#955 = ${result.lambda}
        </div>

        <div class="tooltip"
             data-text="
     Współczynnik efektywnej wytrzymałości <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Wzór: (3.21), (3.22)">
            &#951 = ${result.eta}
        </div>

        <div class="tooltip"
             data-text="
     Sieczny moduł sprężystości betonu <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 3.1">
            E<sub>cm</sub> = ${result.ecm} [GPa]
        </div>

        <div class="tooltip"
             data-text="
     Odkształcenie graniczne betonu <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 3.1">
            &#949<sub>cu.3</sub> = ${result.epsilon_cu3} [&#8240]
        </div>

        <div class="tooltip"
             data-text="
     Plastyczna granica odkształcenia <br>">
            <%--dopisać wzór--%>
            &#949<sub>yd</sub> = <fmt:formatNumber value="${result.epsilon_yd}" maxFractionDigits="3"/> [mm]
        </div>

        <div class="tooltip"
             data-text="
     Graniczna efektywna względna wysokość strefy ściskań w betonie <br>">
            &#958<sub>eff.lim</sub> = <fmt:formatNumber value="${result.ksi_eff_lim}" maxFractionDigits="3"/> [MPa]
        </div>

        <h3>Parametry stali zbrojeniowej:</h3>

        <div class="tooltip"
             data-text="
     Charakterystyczna granica plastyczności stali zbrojeniowej <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Załącznik C.1 - Tabela C.1">
            f<sub>yk</sub> = ${result.fyk} [MPa]
        </div>

        <div class="tooltip"
             data-text="
     Częściowy wspołczynnik bezpieczeństwa dla stali <br>
     Norma: PN 1992-1-1:2004+AC:2008 <br>
     Tabela 2.1">
            y<sub>s</sub> = ${result.ys}
        </div>

        <div class="tooltip"
             data-text="
     Obliczeniowa granica plastyczności stali zbrojeniowej <br>
     Norma: PN 1992-1-1:2004+AC:2008 ">
            f<sub>yd</sub> = <fmt:formatNumber value="${result.fyd}" maxFractionDigits="3"/> [MPa]
        </div>

        <div class="tooltip"
             data-text="
     Moduł sprężystości stali zbrojeniowej (Moduł Younga) <br>
     Dla stali moduł wynosi: 190 &#8764 210 [GPa]">
            E<sub>s</sub> = ${result.es} [MPa]
        </div>

        <h3>Dane geometryczne i założenia projektowe:</h3>


        <div>Wymiary składowego pola płyty:</div>
        <div>L<sub>x</sub> = ${result.lx} [m]</div>
        <div>L<sub>y</sub> = ${result.ly} [m]</div>

        <div>Szerokość ścian wewnętrznych:</div>
        <div>t<sub>w</sub> = ${result.tw} [m]</div>

        <div>Szerokość ścian zewnętrznych:</div>
        <div>t<sub>z</sub> = ${result.tz} [m]</div>

        <div>Wysokość przekroju:</div>
        <div>h<sub>f</sub> = ${result.hf} [m]</div>

        <div>Szerokość przekroju:</div>
        <div>b = ${result.b} [m]</div>

        <div>Średnica prętów górnych:</div>
        <div>&#934<sub>g</sub> = ${result.fi_g} [mm]</div>

        <div>Średnica prętów dolnych:</div>
        <div>&#934<sub>d</sub> = ${result.fi_d} [mm]</div>

        <div>Obciążenia stałe:</div>
        <div>g<sub>k</sub> = ${result.gk} [kN/m<sup>2</sup>]</div>

        <div>Obciążenia zmienne:</div>
        <div>q<sub>k</sub> = ${result.qk} [kN/m<sup>2</sup>]</div>

        <h3>Otulenie betonem</h3>

        <div>Klasa ekspozycji:</div>
        <div>${result.exposureClass}</div>

        <div>Klasa konstrukcji:</div>
        <div>${result.structuralClass}</div>

        <div>Minimalne otulenie ze względu na klasę konktrucji i ekspozycji:</div>
        <div>c<sub>min.dur</sub> = ${result.bothClassesValues} [mm]</div>

        <div>Minimalne otulenie ze względu na przyczepność:</div>
        <div>max(&#934<sub>g</sub> , &#934<sub>d</sub>) = max(${result.fi_g},${result.fi_d}) = ${result.c_min_b} [mm]
        </div>

        <div>Dopuszczalna odchyłka otulenia:</div>
        <div>&#916c<sub>dev</sub> = ${result.delta_c_dev} [mm]</div>

        <div>Minimalne otulenie:</div>
        <div>
            c<sub>min</sub> = max(c<sub>min.b</sub> , c<sub>min.dur</sub> , 10) =
            max(${result.c_min_b} , ${result.bothClassesValues} , 10) = ${result.c_min} [mm]
        </div>

        <div>Nominalne otulenie betonem:</div>
        <div>c<sub>nom</sub> = c<sub>min</sub> + &#916c<sub>dev</sub> = ${result.c_min} + ${result.delta_c_dev}
            = ${result.c_nom} [mm]
        </div>
    </div>
</div>


</body>
</html>
