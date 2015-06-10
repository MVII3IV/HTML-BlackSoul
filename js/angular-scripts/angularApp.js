var app = angular.module("app",['ngCookies']);

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
        
        $http.get(  '/api.php/publications/id/' + id  ).success(function(data) {
            $scope.publication = data;
            $scope.publication.content = $sce.trustAsHtml(data.content);
        });
        
        
         $scope.getAuthorById = function(){
              $http.get(  '/api.php/author/bypublicationid/' + id  ).success(function(data) {        
                  $scope.author = data;
              });     
         }
         
         
          $scope.translatePage = function(id, language){
            
           
                $http.get(  '/api.php/publication/translate/' + id + '/' + language  ).success(function(data) {
                    $scope.publication = data;
                    $scope.publication.content = $sce.trustAsHtml(data.content);
                });
              
               $http.get(  '/api.php/author/id_language/' + id  + '/' + language ).success(function(data) {        
                  $scope.author = data;
              });    
              
          };
        

         
    })
    
    .directive('headerDirective', function() {
      return {
        restrict: 'E',
        templateUrl: 'bs-header55.html'
      };
    });


    
    //PUBLICATION CONTROLLER
    app.controller("publicationWriterController",function($scope,$http,$sce){
      
        
        
        $scope.getSafe = function(){
            return $sce.trustAsHtml($scope.content);
        };

        
        $scope.getAuthorByName = function(authorName){
              $http.get(  '/api.php/author/name/' + authorName  ).success(function(data) {        
                  $scope.authorData = data;
              });
        };
        
        
        $http.get(  '/api.php/publications/all' ).success(function(data) {        
            $scope.publications = data;
        });
       
        
        $scope.editPublicationHasChange = function(publication){
            $scope.title =  publication.title; 
            $scope.getAuthorById( publication.author_id );
            $scope.image =  publication.image;
            $scope.type =  publication.type;
            $scope.content =  publication.content;
            $scope.image = publication.preview_image;
            $scope.publication_id = publication.publication_id;
        };
        
        
        $scope.getAuthorById = function(id){
              $http.get(  '/api.php/author/bypublicationid/' + id  ).success(function(data) {        
                  $scope.authorData = data;
              });     
         };

    });





    app.controller("allNewsController",function($scope,$http,$filter,$cookies){

        var currentLanguage = $cookies.get('language');
        
        
        if(currentLanguage == null){
            var a = $scope.getLan();
        }

         
        $scope.getLan = function(){
            alert('asdsad');
        };
        
          
        $scope.setLanguage = function(){
             $cookies.put('language', 'asdsad');
        };
        
        $scope.getLanguage = function(){
            return $cookies.get('language');
        };
        
        $scope.printLanguage = function(){
            alert($scope.getLanguage());
        };
        
        
        
        
        
         //first of all check the language then go for the settings
         $http.get('/settings.json').success(function(settings) {
             if($scope.getLanguage() === 'english')
             $scope.languageSettings = settings.english;
             
              if($scope.getLanguage() === 'spanish')
             $scope.languageSettings = settings.spanish;
             
              if($scope.getLanguage() === 'portuguese')
             $scope.languageSettings = settings.portuguese;
          });
        
        
        
        
        
        
        
        
          $http.get('/api.php/publications/all').success(function(data) {
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



