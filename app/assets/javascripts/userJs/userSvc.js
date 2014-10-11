angular.module("cdpApp")
  .factory('userSvc', function ($route, $rootScope, $log, $http) {
    var usersUrl = "/users.json"
    var singleUserUrl = "/users"


    var getUsers = function(){
      return $http.get(usersUrl);
    };

    var getUserProfile = function(id){
      return $http.get(singleUserUrl + "/" + id + ".json");
    };

    var editUserProfile = function(id){
      return $http.put(singleUserUrl + "/" + id + ".json");
    }



    return{
      getUsers: getUsers,
      getUserProfile: getUserProfile,
      editUserProfile: editUserProfile

    }

  });
