<?php
session_start();
require_once ('../../cafe_1/php/connection.php');

$interest="";
foreach ($_POST['item'] as $current) {
	$interest.=$current.",";

}
$arry=array();

$j=0;
$record="";
for($i=0; $i<count($_POST['item2']); $i++) {
	if($_POST['item2'][$i]==0)
		continue;
  //echo $_POST['item'][$j].'-'. $_POST['item2'][$i];

  $arry[$_POST['item'][$j]]=$_POST['item2'][$i];
  $record.=$_POST['item'][$j].":".$_POST['item2'][$i].',';
   $j++;
}

$total=0;
var_dump($arry);
foreach ($arry as $key => $value) {
	

	$sql="select * from meal where Name='$key'";
	$result = $conn->query($sql);
	$row=mysqli_fetch_array($result);
	$total += ($row['Cost'] * $value);

	$remaining=$row['Available_count'] - $value;
	$used= $row['Sold_Count'] + $value;

	$sql="update meal set Available_count='$remaining',Sold_Count='$used' where Name='$key'";
	$result = $conn->query($sql);



}

$id=$_SESSION['customer'];
$stmt = $conn->prepare("INSERT INTO customer_bill (id,products,payment)
 VALUES ( ?,?, ?)");

echo $id;
$stmt->bind_param('isi',$id,$record,$total);


$stmt->execute();

$sql = "SELECT * FROM customer_bill where payment='$total' and id='$id'";


$result = $conn->query($sql);
if ($result->num_rows  == 1){
    header("Location: ../../cafe_1/index.html");
}





?>