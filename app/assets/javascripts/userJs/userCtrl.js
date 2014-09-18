angular.module("cdpApp")
  .controller('userCtrl', function ($route, $rootScope, $routeParams, $scope, $log, $location, userSvc) {

    userSvc.getUsers().success(function(Users){
      $rootScope.Users = Users.users;
      $rootScope.currentUser = Users.user;
      console.log($scope.Users);
    });

    userSvc.getUserProfile($routeParams.id).success(function(User){
      $scope.User = User;
      console.log(User);

    });

    var createUser = function (User){
      userSvc.createUser(User);
    };

    var editUser = function(id){
      userSvc.editUserProfile(id);
    };

  })

  .filter('matchFilter', function() {
    return function (userObj, curUser) {
      var filtered_list = [];
      console.log(userObj);
      console.log(curUser);
      for (var i = 0; i < userObj.length; i++) {
        if (curUser.weakness == userObj[i].strengths) {
          filtered_list.push(userObj[i]);
        }
      }
      return filtered_list;
    }
  });
