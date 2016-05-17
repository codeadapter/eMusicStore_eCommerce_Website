<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 05/05/2016
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>CART</h1>
                    <p>Products you have selected </p>
                    <p>Cart Id id: ${cartId}</p>
                    <%--<p>Cart is ${cart}</p>--%>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartController" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left"
                   ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"/>Clear Cart</a>
            </div>
            <p>Cart from Angular {{cart}}</p>
            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat="item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.product.quantity}}</td>
                    <td>{{item.product.totalPrice}}</td>
                <%--<tr>--%>
                    <%--<td>${cart.getCartItem  .cartItem.get(product).product.productName}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.productPrice}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.quantity}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.totalPrice}</td>--%>
                    <td><a href="#" class="label label-danger"
                           ng-click="removeFromCart(item.product.productId)">
                        <%--<span class="glyphicon glyphicon-trash"/>--%>Remove</a></td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{cart.grandTotal}}</th>
                </tr>
            </table>

            <a href="<spring:url value="/productList"/>" class="btn btn-default">Continue Shopping</a>
            </div><%--controller--%>
        </section>
    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/> "></script>
<%@include file="/WEB-INF/views/templates/footer.jsp"%>