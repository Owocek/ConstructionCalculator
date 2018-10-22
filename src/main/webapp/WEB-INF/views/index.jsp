<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 22.10.18
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Constuction calculator</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%--CSS--%>
    <link rel="stylesheet" href="<c:url value='/resources/css/font-awesome.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/owlcarousel/owl.carousel.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/owlcarousel/owl.theme.default.min.css'/>">
</head>


<!-- KOLORY DO UŻYCIA: #984B43 #EAC67A -->

<body style="background-image: linear-gradient(rgba(24,18,30,0.8), rgba(24,18,30,0.8)), url(../resources/img/city2.jpg); background-size: 100% ">

<nav id="navigationBar" class="navbar navbar-toggleable-sm navbar-inverse p-4">
    <div class="container">
        <button class="navbar-toggler navbar-toggler-right" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <h3><a href="index.html" class="navbar-brand mr-3">Construction Calculator</a></h3>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item px-2 align-self-center">
                    <a href="index.html" class="nav-link ">Home</a>
                </li>
                <li class="nav-item px-2 align-self-center">
                    <a href="posts.html" class="nav-link">About</a>
                </li>
                <li class="nav-item px-2 align-self-center">
                    <a href="categories.html" class="nav-link active">Categories</a>
                </li>
                <li class="nav-item px-2 align-self-center">
                    <a href="users.html" class="nav-link">Contact</a>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown mr-3 align-self-center">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Welcome Piotr</a>
                    <div class="dropdown-menu">
                        <a href="profile.html" class="dropdown-item">
                            <i class="fa fa-user-circle"></i> Profile
                        </a>
                        <a href="settings.html" class="dropdown-item">
                            <i class="fa fa-gear"></i> Settings
                        </a>
                    </div>
                </li>
                <li class="nav-item align-self-center">
                    <a href="login.html" class="nav-link">
                        <i class="fa fa-user-times"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container text-white">
    <div class="row">
        <div id="recentInfo" class="col-md-7 com-sm-12">
            <div id="recentInfoHeader" class="col-12 p-3">
                <h3 class="display-5">Recent informations</h3>
            </div>
            <div id="recentInfoText" class="col-12 p-3 ">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Consequuntur officia, alias quo iure voluptates ipsam laboriosam
                sapiente nemo debitis mollitia? Quod aut quo nemo,
                ipsa vitae totam architecto fugiat minima voluptate
                ad cumque qui ut tempora fugit dolore odit ab. Nulla,
                voluptate nostrum eveniet minus error asperiores laboriosam
                nam enim aut architecto iusto quisquam natus, eaque inventore
                exercitationem ad dolorem, provident ducimus excepturi doloremque
                reprehenderit quae. Eum necessitatibus minima, tempore
                consequuntur exercitationem expedita ducimus sed laboriosam
                mollitia dolores officia commodi porro aperiam aliquam.
                Ab doloremque dolore quos earum fuga, quia asperiores
                reiciendis ipsum eum tenetur expedita accusamus eaque cumque error.
            </div>
            <div id="carousel" class="col-12 p-3">
                <div id="owl-example" class="owl-carousel">
                    <img class="card-img-top" src="https://picsum.photos/200/150/" alt="Card image cap">
                    <img class="card-img-top" src="https://picsum.photos/200/150/" alt="Card image cap">
                    <img class="card-img-top" src="https://picsum.photos/200/150/" alt="Card image cap">
                    <img class="card-img-top" src="https://picsum.photos/200/150/" alt="Card image cap">
                    <img class="card-img-top" src="https://picsum.photos/200/150/" alt="Card image cap">
                </div>
            </div>
        </div>
        <div id="projectInfo" class="col-md-5 d-md-block d-none">
            <div id="projectInfoHeader" class="col-md-12 d-md-block d-none p-3">
                <h3 class="display-5">Project informations</h3>
            </div>
            <div id="projectInfoText" class="col-md-12 d-md-block d-none p-3">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Consequuntur officia, alias quo iure voluptates ipsam laboriosam
                sapiente nemo debitis mollitia? Quod aut quo nemo,
                ipsa vitae totam architecto fugiat minima voluptate
                ad cumque qui ut tempora fugit dolore odit ab. Nulla,
            </div>
            <div id="projectInfoButton" class="col-md-12 d-md-block d-none text-right align-text-bottom">
                <button class="">Start Caclulations!</button>
            </div>
        </div>
    </div>
</div>


<footer id="mainFooter" class="text-center p-4">
    <div>
        <div class="row">
            <div class="col">
                <p>Copyright 2018 &copy; 2018 Construction Calculator</p>
            </div>
        </div>
    </div>
</footer>


<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/js/tether.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/resources/owlcarousel/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/resources/js/main.js'/>"></script>

</body>
</html>
