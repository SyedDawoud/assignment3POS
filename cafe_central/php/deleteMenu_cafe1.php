<?php

require_once('../../cafe_1/php/connection.php');
$item = $_POST['item'];

$sql = "DELETE from meal where Name='$item'";

if ($conn->query($sql) === TRUE) {
    header("Location: ../deleteItem.php");
	exit;
} else {
    echo "Error updating record: " . $conn->error;
}




?>