'use strict'

describe 'Controller: FrontCtrl', ->

  # load the controller's module
  beforeEach module 'meanDemoApp'
  FrontCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FrontCtrl = $controller 'FrontCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
