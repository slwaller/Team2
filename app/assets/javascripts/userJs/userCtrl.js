angular.module("cdpApp")
  .controller('userCtrl', function ($route, $rootScope, $scope, $log, userSvc) {
    userSvc.getStudents().success(function(students){
      $scope.students = students;

    });

    userSvc.getStudentProfile().success(function(student){
      $scope.student = student;
      console.log(student);

    });

  });
