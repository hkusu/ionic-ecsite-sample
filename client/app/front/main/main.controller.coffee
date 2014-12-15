'use strict'

angular.module 'meanDemoApp'
.controller 'MainCtrl', ($scope, $ionicModal, $ionicPopup, $ionicPopover, $ionicActionSheet, $timeout) ->

  # モーダル
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

  # ポップアップ
  $scope.showPopup = ->
    popup = $ionicPopup.alert(
      template: "<i class='ion-android-sad'></i> Sorry.<br><br>This content is being prepared."
    )
    popup.then (res) ->
      return
    return

  # ポップオーバー(吹き出し)
  $ionicPopover.fromTemplateUrl("popover.html",
    scope: $scope
  ).then (popover) ->
    $scope.popover = popover
    return
  $scope.openPopover = ($event) ->
    $scope.popover.show $event
    return
  $scope.closePopover = ->
    $scope.popover.hide()
    return
  $scope.$on "$destroy", ->
    $scope.popover.remove()
    return

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
