'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'front.shopping',
    url: '/shopping'
    views:
      'menuContent':
        templateUrl: 'app/front/shopping/shopping.html'
        controller: 'ShoppingCtrl'
