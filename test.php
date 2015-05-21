<?php 
    $db  = mysqli_connect( 'localhost', 'root', '', 'blacksoul'); 
    $sql = 'SELECT * FROM publications'; 
    $result = mysqli_query($db,$sql); 
    $content = "";

        foreach($result as $row){
            $content = $row['author'];
            echo $row[ 'content']; 
        } 

    mysqli_close($db); 
?>




