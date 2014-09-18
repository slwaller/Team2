# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


cdpApp = angular.module("cdpApp", ['ngRoute',"userCtrl",
"userSvc"])

cdpApp.config(['$routeProvider', ($routeProvider) ->
  # Route for /students
  $routeProvider.when('/student/new', { templateUrl: '../assets/profileForm.html', controller: 'userCtrl'})
  $routeProvider.when('/student/:studentId', { templateUrl: '../assets/profileForm.html', controller: 'userCtrl'})
  $routeProvider.when('/student/:studentId/edit', { templateUrl: '../assets/profileForm.html', controller: 'userCtrl'})
  $routeProvider.when('/student/:studentId/delete', { controller: 'userCtrl'})

  # Default route when there is nothing
  $routeProvider.otherwise({ templateUrl: '../assets/main.html', controller: 'IndexCtrl'})

])
