'use strict'

angular.module 'meanDemoApp'
.controller 'ShoppingCtrl', ($scope, $http) ->
  $scope.products = []

  $http.get('api/products').success (products) ->
    $scope.products = products
