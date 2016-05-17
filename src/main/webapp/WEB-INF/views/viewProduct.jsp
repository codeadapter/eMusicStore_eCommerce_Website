<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/templates/header.jsp"%>

<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
         <a href="<c:url value="/productList"/>" class="btn btn-primary btn-lg"
            data-toggle="tooltip" title="Go Back to Product List Page">Back to Product List</a>

        <div class="page-header">
            <h1>Product Details</h1>
            <p class="lead">Get to know your Product in detail!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5" >
                    <%--<img src="#" alt="product image" style="height: 70%; width: 300px "/>--%>
                        <img src="<c:url value="/resources/images/${product.productId}.png"/>"
                             alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5" >
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><h4><strong>Price</strong> : ${product.productPrice} USD</h4></p>
                    <p><strong>Category</strong> : ${product.productCategory}</p>
                    <p><strong>Manufacturer</strong> : ${product.productManufacturer}</p>
                    <p><strong>Condition</strong> : ${product.productCondition}</p>
                    <p><strong>Units in Stock</strong> : ${product.unitInStock}</p>
                    <br>



                    <p ng-controller="cartController">
                    <a href="#" class="btn btn-warning btn-large"
                       ng-click="addToCart('${product.productId}')">
                    <%--<span class="glyphicon glyphicon-shopping-cart"/>--%>Order Now</a>

                    <a href="<spring:url value="/cart" />"
                       class="btn btn-default"><%--<span class="glyphicon glyphicon-tent"/>--%>View cart</a>
                    </p>
                </div>
            </div><!-- Row-->
        </div><!-- container-->

        <script src="<c:url value="/resources/js/controller.js"/> "></script>
        <%@include file="/WEB-INF/views/templates/footer.jsp"%>


