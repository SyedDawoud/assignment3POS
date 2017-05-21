<?php
session_start();
include_once ('connection.php');
include_once ('queries.php');
	
$email=$_POST['Username'];
$password=$_POST['password'];
global $conn;


$query=$conn->prepare("SELECT Name,Customer_id from customer where Username=? AND Password=?");

$query->bind_param("ss",$email,$password);

$query->execute();

$num=$query->num_rows;

$result=$query->get_result();


$row=$result->fetch_assoc();

$_SESSION['customer']=$row['Customer_id'];

if($num==0){
	//global $email;
	//logAction($email,"SUCCESSFUL_LOGIN");
	header("Location: ../index.html");
}
else {
	//logAction($email,"UNSUCCESSFUL_LOGIN");
	 header("Location: ../login.html");
}


?>