angular.module("cdpApp")
  .factory('userSvc', function ($route, $rootScope, $log, $http) {
    var studentsUrl = "/students.json"
    var singleStudentUrl = "/students/:id.json"

    var getStudents = function(){
      return $http.get(studentsUrl)
    }

    return{
      getStudents: getStudents

    }

  });
