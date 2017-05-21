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



// $num=$query->num_rows;
$num=0;
$result=$query->get_result();

while($row=$result->fetch_assoc()){
	$_SESSION['customer']=$row['Customer_id'];
$num++;
}






//  Checking Whether Employee Or Not

$query=$conn->prepare("SELECT Name,Emp_id from employees where username=? AND Password=?");

$query->bind_param("ss",$email,$password);

$query->execute();


$result=$query->get_result();


$num2=0;
while($row=$result->fetch_assoc()){
	
$_SESSION['employee']=$row['Emp_id'];
$num2++;
}




if($num==1){
	//global $email;
	//logAction($email,"SUCCESSFUL_LOGIN");
	header("Location: ../index.html");
}
else if($num2==1){
header("Location: ../index_Employee.html");
}

else {
	//logAction($email,"UNSUCCESSFUL_LOGIN");
	 header("Location: ../login.html");
}


?>