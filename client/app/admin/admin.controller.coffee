'use strict'

angular.module 'meanDemoApp'
.controller 'AdminCtrl', ($scope, $http, $window) ->
  can_access = false
  $scope.products = []

  $http.get('api/products').success (products) ->
    $scope.products = products
    can_access = true

  $scope.load = () ->
    if !can_access
      return
    $http.get('product.json').success (data) ->
      for i in [0..data.length-1]
        $http.post('api/products/',
          name: data[i].name
          price: data[i].price
          description: data[i].description
          image: data[i].image
        )
        $scope.products.push(data[i])
    $window.location.reload()

  $scope.update = (index) ->
    $http.put('api/products/' + $scope.products[index]._id,
      name: $scope.products[index].name
      price: $scope.products[index].price
      description: $scope.products[index].description
    )

  $scope.delete = (index) ->
    $http.delete('api/products/' + $scope.products[index]._id)
    $scope.products.splice(index, 1)
