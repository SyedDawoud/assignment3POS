<?php
require_once ('../../cafe_1/php/connection.php');


$name=$_POST['Username'];
$id=$_POST['id'];
$pass=$_POST['password'];
$email=$_POST['Email'];



$stmt = $conn->prepare("INSERT INTO customer (Customer_id,Name,Username,Password)
 VALUES ( ?,?, ?, ?)");

$stmt->bind_param('isss',$id,$name,$email,$pass);

$stmt->execute();




$sql = "SELECT * FROM customer where Name='$name'";

$_SESSION['customer']=$id;

$result = $conn->query($sql);
if ($result->num_rows  == 1){
    header("Location: ../index.html");
}
