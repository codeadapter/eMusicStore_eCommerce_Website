<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/views/templates/header.jsp"%>

<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <c:if test="${pageContext.request.userPrincipal.name!=null}">
        <h4 style="text-align: right">
            Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
        </h4>
        </c:if>
         <a href="<c:url value="/admin/productInventory"/>" class="btn btn-primary btn-lg"
            data-toggle="tooltip" title="Go Back to Product Inventory Page">Back to Product Inventory</a>

        <div class="page-header">

            <h1>Product Details</h1>
            <p class="lead">Get to know your Product in detail!</p>
        </div>

        <div class="container">
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


                </div>
            </div><!-- Row-->
        </div><!-- container-->

        <%@include file="/WEB-INF/views/templates/footer.jsp"%>


