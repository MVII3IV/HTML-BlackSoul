var app = angular.module("app",[]);


app.controller("publicationController",function($scope,$http,$sce,$location){

    var id =  window.location.href.split('?')[1].split('=')[1];
    
    $http.get(  '/db_access/publications.php?id=' + id  ).success(function(data) {
        $scope.publication = data;
        $scope.publication.content = $sce.trustAsHtml(data.content);
    });

})

.directive('headerDirective', function() {
  return {
    restrict: 'E',
    templateUrl: 'bs-header55.html'
  };
});

