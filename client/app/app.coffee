'use strict'

angular.module 'meanDemoApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'ionic'
]
.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise '/admin'

  $locationProvider.html5Mode true
