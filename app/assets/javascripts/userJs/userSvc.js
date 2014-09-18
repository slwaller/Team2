angular.module("cdpApp")
  .factory('userSvc', function ($route, $rootScope, $log, $http) {
    var usersUrl = "/users.json"
    var singleStudentUrl = "/users/#{id}.json"

    var getUsers = function(){
      return $http.get(usersUrl);
    };

    var getUserProfile = function(id){
      return $http.get(usersUrl + "/" + id);
    };

    var createUser = function(user){
      return $http.post(user);
    };



    return{
      getUsers: getUsers,
      getUserProfile: getUserProfile,
      createUser: createUser

    }

  });
