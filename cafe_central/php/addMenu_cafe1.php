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



$name=$_POST['item_name'];
$type=$_POST['category'];
$description=$_POST['description'];
$quantity=$_POST['amount'];
$price=$_POST['price'];

if (!file_exists ( "cafe1/$name/"))
{
  mkdir("cafe1/$name/");

}

if(isset($_FILES['img'])){

        $fileName = $_FILES['img']['name'];
        $target = "cafe1/$name/";       
        $fileTarget = $target.$fileName;    
        $tempFileName = $_FILES["img"]["tmp_name"];
        $result = move_uploaded_file($tempFileName,$fileTarget);
        $path=$target.$fileName;
    }
$sold=0;

$stmt = $conn->prepare("INSERT INTO meal (Name,Type,Description,Image,Cost,Available_count,Sold_Count)
 VALUES ( ?,?, ?, ?,?,?,?)");

$stmt->bind_param('ssssiii',$name,$type,$description,$path,$price,$quantity,$sold);


$stmt->execute();

$sql = "SELECT * FROM meal where Name='$name'";


$result = $conn->query($sql);
if ($result->num_rows  == 1){
    header("Location: ../../cafe_1/index_Employee.html");
}

?>