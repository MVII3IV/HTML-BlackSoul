<?php 

    //SLIM CONFIGURATION
    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();
    $app = new \Slim\Slim();

    //'localhost', 'theblack_admin', 'Blacksoul2015', 'theblack_blacksoul'
    //'67.225.221.232:3306', 'theblack_admin', 'Blacksoul2015', 'theblack_blacksoul'
    // 'localhost:3306', 'root', '', 'blacksoul' 
    function connectToDataBase()
    {
        return mysqli_connect( 'localhost:3306', 'root', '', 'blacksoul'   ); 
        
    }

    
    

///////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////END POINTS////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

        //GET ALL THE PUBLICATIONS
        $app->get('/publications/all', function () {     

            $db  = connectToDataBase();
            mysqli_set_charset($db, "utf8");
            
            $sql = 'SELECT * FROM publications_english'; 
            $result = mysqli_query($db,$sql); 


            $rows = array(); 
            
                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }

            mysqli_close($db); 

            //Creamos el JSON
            $json_string = json_encode($rows);
            echo $json_string;      
            
        });


        //GET publications by id
        $app->get('/publications/id/:id', function($id) {

                $db  = connectToDataBase();
                mysqli_set_charset($db, "utf8");
            
                $sql = 'SELECT * FROM publications_english WHERE publication_id = ' . $id; 
                $result = mysqli_query($db,$sql); 




            $rows = array();

                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }



                mysqli_close($db); 


             $json_string = json_encode($rows[0]);
             echo $json_string;      
        });


        //GET A AUTHOR BY ID
        $app->get('/author/bypublicationid/:id', function($id) {

                $db  = connectToDataBase();
                mysqli_set_charset($db, "utf8");
            
                $sql = 'select * from authors_english where author_id = (select author_id from publications_english where publication_id = ' . $id .' )'; 
                $result = mysqli_query($db,$sql); 
           
                $rows = array();

                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }
    

                mysqli_close($db); 
            
             $json_string = json_encode($rows[0]);
             echo $json_string;  
        });


        //GET A AUTHOR BY NAME
        $app->get('/author/name/:authorsName', function($authorsName) {

                $db  = connectToDataBase();
                mysqli_set_charset($db, "utf8");
                $sql = 'select * from authors_english where name = \'' . $authorsName .'\';'; 

                $result = mysqli_query($db,$sql); 
           
                $rows = array(); //creamos un array

                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }
    

                mysqli_close($db); 
            
             $json_string = json_encode($rows[0]);
             echo $json_string;  
        });
    






///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////ADD/EDIT/DELETE PUBLICATIONS////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////


        $app->post('/addpublication', function () {     

            
            $uploaddir = 'images/publications/';
            $uploadfile = $uploaddir . basename($_FILES['image']['name']);

            echo '<pre>';
            if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
                echo "El archivo es válido y fue cargado exitosamente.\n";
            } else {
                echo "¡Posible ataque de carga de archivos!\n";
            }

                
            

            $db  = connectToDataBase();
            mysqli_set_charset($db, "utf8");
            
            $sql = 'SELECT author_id FROM authors_english WHERE name = \''. $_POST['author'] .'\' ';

            $result = mysqli_query($db,$sql); 
            $row = mysqli_fetch_array($result);

            $authorID = $row['author_id'];

            echo $uploadfile;

            $sql = 'INSERT INTO publications_english (title, content, author_id, date, preview_image, type) VALUES (\'' 
                . $_POST['title'] .  '\',\'' 
                . $_POST['content'] .  '\',\'' 
                . $authorID .  '\',\'' 
                . date("Y-m-d") .  '\',\'' 
                . $uploadfile .  '\',\'' 
                . $_POST['type'] . '\')';
    
            $result = mysqli_query($db,$sql); 
            
            mysqli_close($db); 
            
            header("Location: ../query_result.html");
            die();
        });


        $app->post('/editpublication', function () {     


            
            $db  = connectToDataBase();
            mysqli_set_charset($db, "utf8");
            
            $sql = 'UPDATE publications_english SET title = @title, content = @content, date = @date, type = @type';
            
            
            $sql = str_replace("@title",  '\'' . $_POST['title'] . '\'' , $sql);
            $sql = str_replace("@content",  '\'' . $_POST['content'] . '\'' , $sql);
            $sql = str_replace("@date",   '\'' . date("Y-m-d") . '\'' , $sql);
            $sql = str_replace("@type",  '\'' . $_POST['type'] . '\'' , $sql);
            

            
            $uploadfile = "";
            
            if($_FILES['image']['name'] != null)
            {
                $uploaddir = 'images/publications/';
                $uploadfile = $uploaddir . basename($_FILES['image']['name']);

                 if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) 
                    echo "El archivo es valido y fue cargado exitosamente.\n";
                 else 
                    echo "¡Posible ataque de carga de archivos!\n";   
                
                $sql = $sql . ', preview_image = \'' . $uploadfile . '\'';
            }
            else
            {
                echo 'no';
            }
            
            
            $sql = $sql . ' WHERE publication_id = @publication_id';
            $sql = str_replace("@publication_id",  $_POST['publication_id'] , $sql);
            
            
            echo $sql;

    
            $result = mysqli_query($db,$sql); 
            
            mysqli_close($db); 
            
            header("Location: ../query_result.html");
            die();
        });


        $app->post('/delpublication', function () {     
        
            $db  = connectToDataBase();
            mysqli_set_charset($db, "utf8");
            
            $sql = 'DELETE FROM publications_englishWHERE publication_id = @publication_id';
            $sql = str_replace("@publication_id",  $_POST['publication_id'] , $sql);   
            
            echo $sql;
    
            $result = mysqli_query($db,$sql); 
            
            mysqli_close($db); 
            
            header("Location: ../query_result.html");
            die();
        });











///////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////TRASLATIONS//////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

        $app->get('/author/id_language/:id/:language', function($id,$language) {

                $db  = connectToDataBase();
                mysqli_set_charset($db, "utf8");
            
                $sql = 'select * from authors_'.$language.' where author_id = (select author_id from publications_english where publication_id = ' . $id .' )'; 
                $result = mysqli_query($db,$sql); 
           
                $rows = array();

                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }
    

                mysqli_close($db); 
            
             $json_string = json_encode($rows[0]);
             echo $json_string;  
        });



        $app->get('/publication/translate/:id/:language', function($id,$language) {

                $db  = connectToDataBase();
                mysqli_set_charset($db, "utf8");
            
                $sql = 'select * from publications_@language where publication_id = @id'; 
                    $sql = str_replace("@language",  $language , $sql);
                    $sql = str_replace("@id",  $id , $sql);
       
                $result = mysqli_query($db,$sql); 
            
            $rows = array();
       
                while($row = mysqli_fetch_array($result)) 
                { 
                    $rows[] = $row;
                }
             
       

                mysqli_close($db); 
            
             $json_string = json_encode($rows[0]);
             echo $json_string;  
        });




        
      
    


    $app->run();
?>