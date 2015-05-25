<?php 
    $db  = mysqli_connect( 'localhost:3306', 'root', '', 'blacksoul'); 
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
    
 
    $clientes[] = array('id'=> $id, 'title'=> $title, 'content'=> $content, 'author'=> $author,
                        'type'=> $type, 'date'=>$date);
 
}
        mysqli_close($db); 

//Creamos el JSON
$json_string = json_encode($clientes);
echo $json_string;




/*
        foreach($result as $row){
            echo json_encode($row);
            //echo $row[ 'content']; 
        } 
*/

?>



