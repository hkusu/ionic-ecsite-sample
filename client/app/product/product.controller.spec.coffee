'use strict'

describe 'Controller: ProductCtrl', ->

  # load the controller's module
  beforeEach module 'meanDemoApp'
  ProductCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProductCtrl = $controller 'ProductCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
