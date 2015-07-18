app = angular.module 'MeteorAngularDemos', ['angular-meteor']

app.controller 'DemoPageController', ['$scope', ($scope) ->

]

app.directive 'phoneNumbersInput', -> {
restrict: 'E',
templateUrl: 'client/phone-numbers-input.ng.html'
}


app.directive 'phoneNumber', -> {
restrict: 'A'
require: 'ngModel'
link: (scope, element, attrs, ctrl) ->
  console.log 'directive'
  scope.$watch attrs.ngModel, () ->
    phonePattern = /^\+(\d){12}$/
    isNumberValid = ctrl.$viewValue && phonePattern.test ctrl.$viewValue
    ctrl.$setValidity 'phoneNumber', isNumberValid
}