<?php 

    //SLIM CONFIGURATION
    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();
    $app = new \Slim\Slim();


    //END POINTS
        //GET ALL THE PUBLICATIONS
        $app->get('/publications/all', function () {     

            $db  = mysqli_connect( '67.225.221.232:3306', 'theblack_admin', 'Blacksoul2015', 'theblack_blacksoul'); 
            $sql = 'SELECT * FROM publications'; 
            $result = mysqli_query($db,$sql); 


            $clientes = array(); //creamos un array

                while($row = mysqli_fetch_array($result)) 
                { 
                    $id=$row['id'];
                    $title=$row['title'];
                    $content=$row['content'];
                    $author=$row['author'];
                    $type=$row['type'];
                    $date=$row['date'];
                    $preview_image=$row['preview_image'];


                    $clientes[] = array('id'=> $id, 'title'=> $title, 'content'=> $content, 'author'=> $author,
                                        'type'=> $type, 'date'=>$date, 'preview_image'=>$preview_image);

                }

            mysqli_close($db); 

            //Creamos el JSON
            $json_string = json_encode($clientes);
            echo $json_string;      
        });






        //GET A PUBLICATION BY ID
        $app->get('/publications/id/:id', function($id) {

                $db  = mysqli_connect( '67.225.221.232:3306', 'theblack_admin', 'Blacksoul2015', 'theblack_blacksoul'); 
                $sql = 'SELECT * FROM publications where id = ' . $id; 
                $result = mysqli_query($db,$sql); 

                    foreach($result as $row){
                        echo json_encode($row);
                        //echo $row[ 'content']; 
                    } 

                mysqli_close($db); 
        });
    

    $app->run();
?>