/**
 * Created by ajeasyvaio on 05/06/2016.
 */


var cartApp = angular.module("cartApp",[]);

cartApp.controller("cartController",function ($scope,$http) {

    $scope.refreshCart = function (cartId) {
        $http.get('/eMusicStore/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
            alert("Product Added successfully to cart");
        });
    };


    $scope.clearCart = function () {
        $http.delete('/eMusicStore/rest/cart/' + $scope.cartId).success($scope.refreshCart($scope.cartId))

            alert("Cart Cleared successfully!!");
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        //$scope.cart = cart;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/eMusicStore/rest/cart/add/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eMusicStore/rest/cart/cartId'));
            alert("Product Added successfully to cart "+ $scope.cart);
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eMusicStore/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eMusicStore/rest/cart/cartId'));
            alert("Product Removed successfully from cart ");
        });
    };
});




