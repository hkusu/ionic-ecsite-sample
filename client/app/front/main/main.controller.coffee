'use strict'

angular.module 'meanDemoApp'
.controller 'MainCtrl', ($scope, $ionicModal) ->

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
