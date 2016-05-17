<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 04/29/2016
  Time: 7:38 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/templates/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>
            <p class="lead">Authorized access only!</p>
        </div>

     <c:if test="${pageContext.request.userPrincipal.name!=null}">
        <h4>
            Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
        </h4>
        </c:if>
    <h3>
        <a href="<c:url value="/admin/productInventory"/>">Product Inventory</a>
        </h3>

     <p>Here you can view,check and modify the Products!</p>


<%@include file="/WEB-INF/views/templates/footer.jsp"%>
