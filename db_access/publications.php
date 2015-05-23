<?php 
    $db  = mysqli_connect( 'localhost:3306', 'root', '', 'blacksoul'); 
    $sql = 'SELECT * FROM publications where id = ' . $_GET['id']; 
    $result = mysqli_query($db,$sql); 
    $content = "";


        foreach($result as $row){
            echo json_encode($row);
            //echo $row[ 'content']; 
        } 

    mysqli_close($db); 
?>
