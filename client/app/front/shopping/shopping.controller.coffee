'use strict'

angular.module 'meanDemoApp'
.controller 'ShoppingCtrl', ($scope, $http, $ionicActionSheet, $timeout) ->
  $scope.products = []

  $http.get('api/products').success (products) ->
    $scope.products = products

  # シェアボタン
  $scope.share = ->
    hideSheet = $ionicActionSheet.show(
      buttons: [
        {
          text: "<i class='ion-social-twitter'>"
        }
        {
          text: "<i class='ion-social-facebook'>"
        }
        {
          text: "<i class='ion-social-googleplus'>"
        }
      ]
      titleText: "Choose social service"
      buttonClicked: (index) ->
        return
    )
    $timeout (->
      hideSheet()
      return
    ), 1500
    return
