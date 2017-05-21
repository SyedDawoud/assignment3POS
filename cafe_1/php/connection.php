<?php

$server = 'localhost';
$username = 'root';
$password = 'root';
$db = 'cafe_1';


$conn = new mysqli($server, $username, $password, $db);
$conn->set_charset("utf8");

if ($conn->connect_error) {
    die("Connection Error: " . $conn->connect_error);
}
?>