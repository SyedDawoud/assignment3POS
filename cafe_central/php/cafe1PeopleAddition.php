<?php
require_once ('../../cafe_1/php/connection.php');


$name=$_POST['name'];
$user=$_POST['email'];
$pass=$_POST['password'];
$id=$_POST['id'];
$type=$_POST['type'];


$stmt = $conn->prepare("INSERT INTO employees (Emp_id,Name,username,Job_Description,Password)
 VALUES ( ?,?, ?, ?,?)");

$stmt->bind_param('issss',$id,$name,$user,$type,$pass);


$stmt->execute();


if($type=="Manager"){
	global $conn;
$stmt = $conn->prepare("INSERT INTO manager (Emp_id,Manager_id,Manager_Title)
 VALUES ( ?,?, ?)");

$stmt->bind_param('iis',$id,$id,$name);


$stmt->execute();


$sql = "SELECT * FROM manager where Manager_id='$id'";


$result = $conn->query($sql);
if ($result->num_rows  == 1){
    header("Location: ../index.html");
}


}

$sql = "SELECT * FROM employees where Name='$name'";


$result = $conn->query($sql);
if ($result->num_rows  == 1){
    header("Location: ../index.php");
}




?>