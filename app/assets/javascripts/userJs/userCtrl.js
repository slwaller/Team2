angular.module("cdpApp")
  .controller('userCtrl', function ($route, $rootScope, $routeParams, $scope, $log, $location, userSvc) {

    userSvc.getUsers().success(function(Users){
      $scope.Users = Users.users;
      $scope.currentUser = Users.user;
      console.log($scope.Users);
    });

    userSvc.getUserProfile($routeParams.id).success(function(User){
      $scope.User = User;
      console.log(User);

    });

    // $scope.show = function(id){
    //   userSvc.getUserProfile(id).success(function(User){
    //     $scope.User = User;
    //     $location.path("/user/id");
    // }
    var createUser = function (User){
      userSvc.createUser(User);
    };

    var editUser = function(id){
      userSvc.editUserProfile(id);
    }

  });
