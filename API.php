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

        return mysqli_connect( '67.225.221.232:3306', 'theblack_admin', 'Blacksoul2015', 'theblack_blacksoul'  ); 

    }


    

    //END POINTS
        //GET ALL THE PUBLICATIONS
        $app->get('/publications/all', function () {     

            $db  = connectToDataBase();
            $sql = 'SELECT * FROM publications'; 
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
            $sql = 'SELECT author_id FROM authors WHERE name = \''. $_POST['author'] .'\' ';

            $result = mysqli_query($db,$sql); 
            $row = mysqli_fetch_array($result);

            $authorID = $row['author_id'];

            echo $uploadfile;

            $sql = 'INSERT INTO publications (title, content, author_id, date, preview_image, type) VALUES (\'' 
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
            
            $sql = 'UPDATE publications SET title = @title, content = @content, date = @date, type = @type';
            
            
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
            
            $sql = 'DELETE FROM publications WHERE publication_id = @publication_id';
            $sql = str_replace("@publication_id",  $_POST['publication_id'] , $sql);   
            
            echo $sql;
    
            $result = mysqli_query($db,$sql); 
            
            mysqli_close($db); 
            
            header("Location: ../query_result.html");
            die();
        });













        $app->get('/publications/id/:id', function($id) {

                $db  = connectToDataBase();
                $sql = 'SELECT * FROM publications WHERE publication_id = ' . $id; 
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
                $sql = 'select * from authors where author_id = (select author_id from publications where publication_id = ' . $id .' )'; 
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
        $app->get('/author/name/:authorsName', function($authorsName) {

                $db  = connectToDataBase();
                $sql = 'select * from authors where name = \'' . $authorsName .'\';'; 

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
    


      
    


    $app->run();
?>