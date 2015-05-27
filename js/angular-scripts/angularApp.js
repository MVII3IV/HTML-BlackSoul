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

        $http.get(  '/API.php/publications/id/' + id  ).success(function(data) {
            $scope.publication = data;
            $scope.publication.content = $sce.trustAsHtml(data.content);
        });
        
        
         $scope.getAuthorById = function(){
              $http.get(  '/API.php/author/bypublicationid/' + id  ).success(function(data) {        
                  $scope.author = data;
              });     
         }

         
    })
    
    .directive('headerDirective', function() {
      return {
        restrict: 'E',
        templateUrl: 'bs-header55.html'
      };
    });
    
    

    app.controller("allNewsController",function($scope,$http,$filter,$interpolate){

        $scope.myvar = "asdsad";
        $http.get('/API.php/publications/all').success(function(data) {
            $scope.publications = data;
        });
        
        
      $scope.formateDate = function(date){
          return Date.parse(date);
      };
        
      $scope.getCurrentPageId = function()
      {
          return  window.location.href.split('?')[1].split('=')[1];
      }
        
        
    });

