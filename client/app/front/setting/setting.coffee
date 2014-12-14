'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'front.setting',
    url: '/setting'
    views:
      'menuContent':
        templateUrl: 'app/front/setting/setting.html'
        controller: 'SettingCtrl'
