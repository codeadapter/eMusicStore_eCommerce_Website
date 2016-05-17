<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 04/24/2016
  Time: 1:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<head>
    <title>Home Page</title>
</head>
<body>
<h1>Welcome to our Music Shop</h1>
</body>--%>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Free$oul Muzik Store</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Table CSS -->
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>


</head>
    <!-- NAVBAR
    ================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">🎸 Free$oul Muzik Store 🎷</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li <%--class="active"--%>><a href="<c:url value="/"/>"><%--🏠--%>💒 Home</a></li>
                        <li><a href="<c:url value="/productList"/>">📻 Products</a></li>
                        <li><a href="#contact">☎ Contact</a></li>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li><a href="#">Action</a></li>--%>
                                <%--<li><a href="#">Another action</a></li>--%>
                                <%--<li><a href="#">Something else here</a></li>--%>
                                <%--<li role="separator" class="divider"></li>--%>
                                <%--<li class="dropdown-header">Nav header</li>--%>
                                <%--<li><a href="#">Separated link</a></li>--%>
                                <%--<li><a href="#">One more separated link</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li><a href="<c:url value="/admin"/>">Admin <span class="glyphicon glyphicon-lock"/></a></li>

                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

