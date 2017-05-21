<?php

$server = 'localhost';
$username = 'root';
$password = 'root';
$db = 'cafe_central';


$connection = new mysqli($server, $username, $password, $db);

if ($connection->connect_error) {
    die("Connection Error: " . $connection->connect_error);
}
?>