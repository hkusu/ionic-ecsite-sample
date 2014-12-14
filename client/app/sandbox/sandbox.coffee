'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'sandbox',
    url: '/sandbox'
    templateUrl: 'app/sandbox/sandbox.html'
    controller: 'SandboxCtrl'
