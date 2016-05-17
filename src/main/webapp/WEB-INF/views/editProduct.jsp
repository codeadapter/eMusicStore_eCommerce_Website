<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 05/01/2016
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/views/templates/header.jsp"%>

<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <c:if test="${pageContext.request.userPrincipal.name!=null}">
                <h4 style="text-align: right">
                    Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
                </h4>
            </c:if>
            <h1>Edit Product</h1>
            <p class="lead">Change the below information to edit the product!</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
            
            
         <form:hidden path="productId" value="${product.productId}"/>
            
            <div class="form-group">
                <label for="name">Product Name</label><form:errors path="productName" cssStyle="color: #ff0000;"/>
                <form:input path="productName" id="name" value="${product.productName}" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton
                        path="productCategory" id="category" value="Instrument"/>Instrument</label>
                <label class="checkbox-inline"><form:radiobutton
                        path="productCategory" id="category" value="Record"/>Record</label>
                <label class="checkbox-inline"><form:radiobutton
                        path="productCategory" id="category" value="Accessory"/>Accessory</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-Control"  value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #ff0000;"/>
                <form:input path="productPrice" id="price" class="form-Control"  value="${product.productPrice}"/>
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="New" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Old" />Old</label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitinstock">Units in Stock</label><form:errors path="unitInStock" cssStyle="color: #ff0000;"/>
                <form:input path="unitInStock" id="unitinstock" class="form-Control"  value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control"  value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input  id="productImage" path="productImage" type="file"   class="form:input-large" />
            </div>


            <br><br>


            <input type="submit" value="Submit" class="btn btn-default"/>
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default" >Cancel</a>


        </form:form>

    </div><!-- Row-->
</div><!-- container-->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>

