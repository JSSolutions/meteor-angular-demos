app = angular.module 'MeteorAngularDemos', ['angular-meteor']

app.controller 'DemoPageController', ['$scope', ($scope) ->

]

app.directive 'phoneNumbersInput', -> {
restrict: 'E',
templateUrl: 'client/phone-numbers-input.ng.html'
}