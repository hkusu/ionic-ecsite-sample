'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'front.shopping_detail',
    url: '/shopping_detail/:id'
    views:
      'menuContent':
        templateUrl: 'app/front/shopping_detail/shopping_detail.html'
        controller: 'ShoppingDetailCtrl'
