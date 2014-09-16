angular.module("cdpApp", [
  "ngRoute",
  "userCtrl",
  "userSvc"])
    .config(function($routeProvider){
      $routeProvider
        .when("/user", {
          templateUrl: "../assets/profile.html",
          controller: "userCtrl"
        })
        .when("/match", {
          templateUrl: "../assets/matches.html",
          controller: "userCtrl"
        })
    });

angular.module("userCtrl", []);
angular.module("userSvc", []);
