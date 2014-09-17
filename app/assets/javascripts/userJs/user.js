
angular.module("cdpApp", [
  "ngRoute",
  "userCtrl",
  "userSvc"])
    .config(function($routeProvider){
      $routeProvider
      .when("/", {
        templateUrl: "../assets/main.html",
        controller: "userCtrl"
      })
        .when("/user", {
          templateUrl: "../assets/profile.html",
          controller: "userCtrl"
        })
        .when("/match", {
          templateUrl: "../assets/matches.html",
          controller: "userCtrl"
        })
        .when("/student/:id", {
          templateUrl: "../assets/viewProfile.html",
          controller: "userCtrl"
        })
    });


angular.module("userCtrl", []);
angular.module("userSvc", []);
