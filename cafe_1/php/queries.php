<?php

require_once ('connection.php');
	

function logAction($email, $action) {
   global $conn;
    $query1 = $conn->prepare("INSERT INTO logaction (user,action) VALUES (?,?)");
   
 
//    Date Conversions have been applied. PHP date converted into MySql data, by replacing / with -.
     $query1->bind_param("ss", $email, $action);

    $query1->execute();

    print $query1->error;

    $query1->close();



    
}

logAction("AS","123");


?>