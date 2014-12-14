'use strict'

angular.module 'meanDemoApp'
.config ($stateProvider) ->
  $stateProvider.state 'tutorial', # ナビに属させないので front.tutorial とはしない
    url: '/front/tutorial'
    templateUrl: 'app/front/tutorial/tutorial.html'
    controller: 'TutorialCtrl'
