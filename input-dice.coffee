(() ->
  ngInputDice = angular.module 'ngInputDice', []
  srvc = ngInputDice.service 'diceService', [
    '$http'
    ($http) ->
      serviceInterface = @
      console.log serviceInterface
      serviceInterface
  ]
  ctrl = ngInputDice.controller 'testController', [
    '$scope'
    'diceService'
    ($scope, diceService) ->
      console.log $scope
      console.log diceService
  ]
  # @usage
  #     <input-dice></input-dice>
  drtv = ngInputDice.directive 'inputDice', [
    () ->
      linker = ($scope, $element, $attrs) ->
        console.log $scope
        console.log $element
        console.log $attrs
      directiveInterface =
        controller: 'testController'
        restrict: 'E'
        scope: false
        link: linker
  ]
  ngInputDice
)()
