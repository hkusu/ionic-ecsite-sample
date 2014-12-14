'use strict'

angular.module 'meanDemoApp'
.controller 'MainCtrl', ($scope, $ionicModal, $ionicActionSheet, $timeout) ->

  $ionicModal.fromTemplateUrl("modal.html",
    scope: $scope
    animation: "slide-in-up"
  ).then (modal) ->
    $scope.modal = modal
    return

  $scope.openModal = ->
    $scope.modal.show()
    return

  $scope.closeModal = ->
    $scope.modal.hide()
    return

  $scope.$on "$destroy", ->
    $scope.modal.remove()
    return

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
      titleText: "choose social service"
      buttonClicked: (index) ->
        return
    )
    $timeout (->
      hideSheet()
      return
    ), 2000
    return
