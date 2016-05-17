<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 04/29/2016
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/templates/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">

            <c:if test="${pageContext.request.userPrincipal.name!=null}">
                <h4 style="text-align: right">
                    Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
                </h4>
            </c:if>


            <h1>Product Inventory</h1>
            <p class="lead">Welcome to the Product Inventory of Free$oul Muzik Store!</p>
            <%--<c:if test="${msg}!=null}">--%>
            <p style="color:red">${msg}</p>
            <%--</c:if>--%>

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
                <th>Info.</th>
                <th>Edit</th>
                <th>Delete</th>
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
                    <td>
                        <a href="<spring:url value="/admin/productInventory/viewProductInventory/${product.productId}"/>"
                           data-toggle="tooltip" title="Click to get Product Details">
                        <span class="glyphicon glyphicon-info-sign"/></a>
                    </td>
                    <td>
                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>"
                           data-toggle="tooltip" title="Click to Edit Product from Inventory">
                            <span class="glyphicon glyphicon-edit"/></a>
                    </td>
                    <td>
                    <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>"
                       data-toggle="tooltip" title="Click to Remove Product from Inventory">
                        <span class="glyphicon glyphicon-trash"/></a>
                    </td>
                </tr>
            </c:forEach>
        </table>


        <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary"
           data-toggle="tooltip" title="Click to Add Product to Inventory">Add Product</a>

        <%@include file="/WEB-INF/views/templates/footer.jsp"%>

