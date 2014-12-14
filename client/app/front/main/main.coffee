'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'front.main',
    url: '/main'
    views:
      'menuContent':
        templateUrl: 'app/front/main/main.html'
        controller: 'MainCtrl'
