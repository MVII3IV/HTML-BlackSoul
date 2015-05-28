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
        return mysqli_connect( 'localhost:3306', 'root', '', 'blacksoul' ); 
    }



    //END POINTS
        //GET ALL THE PUBLICATIONS
        $app->get('/publications/all', function () {     

            $db  = connectToDataBase();
            $sql = 'SELECT * FROM publications'; 
            $result = mysqli_query($db,$sql); 


            $clientes = array(); //creamos un array

                while($row = mysqli_fetch_array($result)) 
                { 
                    $publication_id=$row['publication_id'];
                    $title=$row['title'];
                    $content=$row['content'];
                    $author_id=$row['author_id'];
                    $type=$row['type'];
                    $date=$row['date'];
                    $preview_image=$row['preview_image'];
                    $review=$row['review'];


                    $clientes[] = array('publication_id'=> $publication_id, 
                                        'title'=> $title, 
                                        'content'=> $content, 
                                        'author_id'=> $author_id,
                                        'type'=> $type, 
                                        'date'=>$date, 
                                        'preview_image'=>$preview_image,
                                        'review'=>$review
                                       );

                }

            mysqli_close($db); 

            //Creamos el JSON
            $json_string = json_encode($clientes);
            echo $json_string;      
        });






       $app->get('/publications/id/:id', function($id) {

                $db  = connectToDataBase();
                $sql = 'SELECT * FROM publications WHERE publication_id = ' . $id; 
                $result = mysqli_query($db,$sql); 
                    
    
    
                
            $clientes = array(); //creamos un array

                while($row = mysqli_fetch_array($result)) 
                { 
                    $publication_id=$row['publication_id'];
                    $title=$row['title'];
                    $content=$row['content'];
                    $author_id=$row['author_id'];
                    $type=$row['type'];
                    $date=$row['date'];
                    $preview_image=$row['preview_image'];
                    $review=$row['review'];


                    $clientes[] = array('publication_id'=> $publication_id, 
                                        'title'=> $title, 
                                        'content'=> $content, 
                                        'author_id'=> $author_id,
                                        'type'=> $type, 
                                        'date'=>$date, 
                                        'preview_image'=>$preview_image,
                                        'review'=>$review
                                       );

                }
    
    

                mysqli_close($db); 
    

            $json_string = json_encode($clientes[0]);
            echo $json_string;      
        });



        //GET A AUTHOR BY ID
        $app->get('/author/bypublicationid/:id', function($id) {

                $db  = connectToDataBase();
                $sql = 'select * from authors where author_id = (select author_id from publications where publication_id = ' . $id .' )'; 
                $result = mysqli_query($db,$sql); 
           
                $clientes = array(); //creamos un array

                while($row = mysqli_fetch_array($result)) 
                { 
                    $author_id=$row['author_id'];
                    $name=$row['name'];
                    $description=$row['description'];
                    $display_picture=$row['display_picture'];

                    $clientes[] = array('author_id'=> $author_id, 
                                        'name'=> $name, 
                                        'description'=> $description, 
                                        'display_picture'=> $display_picture
                                       );

                }
    

                mysqli_close($db); 
            
             $json_string = json_encode($clientes[0]);
             echo $json_string;  
        });
    


    $app->run();
?>