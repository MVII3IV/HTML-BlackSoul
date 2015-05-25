var app = angular.module("app",[]);



//FILTER SECTION

    //this filter capitalizes the first letter of a word
    app.filter('capitalize', function() {
        return function(input, all) {
          return (!!input) ? input.replace(/([^\W_]+[^\s-]*) */g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();}) : '';
        }
      });





//CONTROLLERS
    app.controller("publicationController",function($scope,$http,$sce){

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
    
    
    app.controller("allNewsController",function($scope,$http,$filter,$interpolate){

        $http.get('/db_access/all_publications.php').success(function(data) {
            $scope.publications = data;
        });
        
        
      $scope.formateDate = function(date){
          return Date.parse(date);
      };
        
        
    });

