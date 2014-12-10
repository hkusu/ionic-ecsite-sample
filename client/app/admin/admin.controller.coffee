'use strict'

angular.module 'meanDemoApp'
.controller 'AdminCtrl', ($scope, $http) ->
  $scope.products = []

  $http.get('api/products').success (products) ->
    $scope.products = products

  $scope.load = () ->
    $http.post('/api/products').success () ->
      $http.get('api/products').success (products) ->
        $scope.products = products

  $scope.update = (index) ->
    $http.put('api/products/' + $scope.products[index]._id,
      name: $scope.products[index].name
      price: $scope.products[index].price
      description: $scope.products[index].description
    )

  $scope.delete = (index) ->
    $http.delete('api/products/' + $scope.products[index]._id)
    $scope.products.splice(index, 1)
