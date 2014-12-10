'use strict'

angular.module 'meanDemoApp'
.controller 'AdminCtrl', ($scope) ->
  $scope.products = [
    {
      name: 'AAA'
      price: 'BBB'
      description: 'CCC'
      image: 'assets/images/yeoman.png'
    }
    {
      name: 'AAA'
      price: 'BBB'
      description: 'CCC'
      image: 'assets/images/yeoman.png'
    }
    {
      name: 'AAA'
      price: 'BBB'
      description: 'CCC'
      image: 'assets/images/yeoman.png'
    }
    {
      name: 'AAA'
      price: 'BBB'
      description: 'CCC'
      image: 'assets/images/yeoman.png'
    }
  ]

  $scope.load = () ->
    console.log 'load data'

  $scope.update = (index) ->
    console.log index
    return


###
angular.module 'meanDemoApp'
.controller 'MainCtrl', ($scope, $http) ->
  $scope.awesomeThings = []

  $http.get('/api/things').success (awesomeThings) ->
    $scope.awesomeThings = awesomeThings

  $scope.addThing = ->
    return if $scope.newThing is ''
    $http.post '/api/things',
      name: $scope.newThing
    $scope.newThing = ''

  $scope.deleteThing = (thing) ->
    $http.delete '/api/things/' + thing._id    ###
