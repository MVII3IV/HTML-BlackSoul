var app = angular.module("app",['ngCookies']);

//FILTER SECTION

    //this filter capitalizes the first letter of a word
    app.filter('capitalize', function() {
        return function(input, all) {
          return (!!input) ? input.replace(/([^\W_]+[^\s-]*) */g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();}) : '';
        }
      });













    //IN CHARGE OF GET THE PUBLICATION BY ID AND LANGUAGE
    app.controller("publicationController",function($scope,$http,$sce,$cookies){

        var id =  window.location.href.split('?')[1].split('=')[1];
        var currentLanguage = $cookies.get('language');
        
        if(currentLanguage == null){
                $cookies.put('language','english');
                currentLanguage = $cookies.get('language');
            }
        
        $http.get('/api.php/publication/translate/' + id + '/' + currentLanguage ).success(function (data) {
                    $scope.publication = data;
                    $scope.publication.content = $sce.trustAsHtml(data.content);
                });
        
    
       
  
        
         $scope.getAuthorById = function(){
              $http.get(  '/api.php/author/bypublicationid/' + id  + '/' + currentLanguage).success(function(data) {        
                  $scope.author = data;
              });     
         }
         
          
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



    

    app.controller("allNewsController",function($scope,$http,$filter,$cookies,$sce){
        
        //////////////////////////TRASNLATIONS PART///////////////////////////
            $scope.setLanguage = function(language){
                     $cookies.put('language', language);
            };

            $scope.getLanguage = function(){
                    return $cookies.get('language');
            };
        
            $scope.getSettings = function(){
                 $http.get('/settings.json').success(function(settings) {
                     
                     if($scope.getLanguage() === 'english')
                     $scope.languageSettings = settings.english;

                      if($scope.getLanguage() === 'spanish')
                     $scope.languageSettings = settings.spanish;

                      if($scope.getLanguage() === 'portuguese')
                     $scope.languageSettings = settings.portuguese;
                     
                  });
            };
       

            var currentLanguage = $scope.getLanguage();

        
            if(currentLanguage == null){
                $scope.setLanguage('english');
                currentLanguage = $scope.getLanguage();
            }


            
             $scope.getSettings();
        
        

        
            //FUNCTION TO LOAD A TRANSLATED PAGE
            $scope.translateIndex = function (language) {
                
                $cookies.put('language', language);

                 $http.get('/api.php/publications/all/' + language).success(function(data) {
                     $scope.publications = data;
                  });
                
                $scope.getSettings();
            };
            //////////////////////////END OF TRASNLATIONS PART///////////////////////////
        

        

        
        

            //FUNCTION TO LOAD TRANLATED PUBLICATION
            $scope.translatePage = function (id, language) {
                $cookies.put('language', language);

                $http.get('/api.php/publication/translate/' + id + '/' + language).success(function (data) {
                    $scope.publication = data;
                    $scope.publication.content = $sce.trustAsHtml(data.content);
                });

                $http.get('/api.php/author/id_language/' + id + '/' + language).success(function (data) {
                    $scope.author = data;
                });
                
                
                 $scope.getSettings();
                
                $http.get('/api.php/publications/all/' + language).success(function(data) {
             $scope.publications = data;
          });

            };
         //////////////////////////END OF TRASNLATIONS PART///////////////////////////
        
        
        
          $http.get('/api.php/publications/all/' + currentLanguage).success(function(data) {
             $scope.publications = data;
          });
        
          $scope.formateDate = function(date){
              return Date.parse(date);
          };

          $scope.getCurrentPageId = function() {
              return  window.location.href.split('?')[1].split('=')[1];
          }
          
          
  
    });



