# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./controllers/global
#= require_tree ./controllers/main
#= require_tree ./directives/global
#= require_tree ./directives/main
#= require_tree ./services/global
#= require_tree ./services/main
#= require_tree ./filters/global
#= require_tree ./filters/main


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
