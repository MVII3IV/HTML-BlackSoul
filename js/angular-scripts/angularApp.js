var app = angular.module("app",[]);

app.controller("mainController",function($scope){
    $scope.test = "heeey";
});


app.directive('headerDirective', function() {
  return {
    restrict: 'E',
    templateUrl: 'bs-header55.html'
  };
});