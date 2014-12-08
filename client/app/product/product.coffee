'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'product',
    url: '/product'
    templateUrl: 'app/product/product.html'
    controller: 'ProductCtrl'
