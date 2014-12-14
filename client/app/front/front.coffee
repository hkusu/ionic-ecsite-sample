'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'front',
    url: '/front'
    templateUrl: 'app/front/menu.html'
    controller: 'FrontCtrl'
