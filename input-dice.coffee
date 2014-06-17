(() ->
  ngInputDice = angular.module 'ngInputDice', []
  srvc = ngInputDice.service 'diceService', [
    '$http'
    ($http) ->
      serviceInterface = @
      serviceInterface.dice = () ->
        console.log $http
      serviceInterface
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
        controller  : 'testController'
        restrict    : 'E'
        scope       : {
          'control' : '=objectControl'
          'admin'   : '=adminControl'
        }
        link        : linker
  ]
  ngInputDice
)()
