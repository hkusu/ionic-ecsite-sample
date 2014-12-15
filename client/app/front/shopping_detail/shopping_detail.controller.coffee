'use strict'

angular.module 'meanDemoApp'
.controller 'ShoppingDetailCtrl', ($scope, $http, $stateParams) ->
  $scope.product = []

  $http.get('api/products/' + $stateParams.id).success (product) ->
    $scope.product = product
