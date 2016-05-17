<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/templates/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>
             <p class="lead">Check out Brand New Awesome Products Available now at the Free$oul Muzik Store!</p>
        </div>

        <table class="table table-striped table-hover">

                <thead>
                    <tr class="bg-success">
                        <th>Photo Thumb </th>
                        <th>Product Name </th>
                        <th>Category </th>
                        <%--<th>Description </th>--%>
                        <th>Price </th>
                        <%--<th>Condition </th>--%>
                        <th>Status </th>
                        <%--<th>Unit in Stock </th>--%>
                        <%--<th>Manufacturer </th>--%>
                        <th>More Info.</th>
                    </tr>
                </thead>
                <c:forEach  items="${products}" var="product">
                        <tr>
                            <td><img src="<c:url value="/resources/images/${product.productId}.png"/>"
                                     alt="image" style="width:100%"/></td>
                            <td>${product.productName}</td>
                            <td>${product.productCategory}</td>
                            <%--<td>${product.productDescription}</td>--%>
                            <td>${product.productPrice} USD</td>
                            <%--<td>${product.productCondition}</td>--%>
                            <td>${product.productStatus}</td>
                            <%--<td>${product.unitInStock}</td>--%>
                            <%--<td>${product.productManufacturer}</td>--%>
                            <td><a href="<spring:url value="/productList/viewProduct/${product.productId}"/>"
                                   data-toggle="tooltip" title="Click to get Product Details">
                                <span class="glyphicon glyphicon-info-sign"/></a></td>
                        </tr>
                </c:forEach>
         </table>



        <%@include file="/WEB-INF/views/templates/footer.jsp"%>




































<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products list</title>
</head>
<body>

    <table>

        <thead>
        <tr>
            <th>productName </th>
            <th>productCategory </th>
            <th>productDescription </th>
            <th>productPrice </th>
            <th>productCondition </th>
            <th>productStatus </th>
            <th>unitInStock </th>
            <th>productManufacturer </th>
        </tr>
        </thead>

        <tr>

            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productDescription}</td>
            <td>${product.productPrice}</td>
            <td>${product.productCondition}</td>
            <td>${product.productStatus}</td>
            <td>${product.unitInStock}</td>
            <td>${product.productManufacturer}</td>
        </tr>

    </table>



</body>
</html>
--%>
