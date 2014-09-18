angular.module("cdpApp")
  .controller('userCtrl', function ($route, $rootScope, $routeParams, $scope, $log, userSvc) {
    userSvc.getStudents().success(function(students){
      $scope.students = students;

    });

    userSvc.getStudentProfile($routeParams.idx).success(function(student){
      $scope.student = student;
      console.log(student);

    });

  });
