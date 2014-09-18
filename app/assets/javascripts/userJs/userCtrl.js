angular.module("cdpApp")
  .controller('userCtrl', function ($route, $rootScope, $routeParams, $scope, $log, userSvc) {
    userSvc.getUsers().success(function(Users){
      $scope.Users = Users;

    });

    userSvc.getUserProfile($routeParams.idx).success(function(User){
      $scope.User = User;
      console.log(User);

    });

    var createUser = function (User){

      userSvc.createUser(User);
    };


  });
