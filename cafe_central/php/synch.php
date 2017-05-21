<?php


$cafe1db=mysql_connect('localhost', 'root', 'root'); 

mysql_select_db('cafe_1',$cafe1db); 

$cafecentraldb=mysql_connect('localhost', 'root', 'root'); 	

mysql_select_db('cafe_central',$cafecentraldb); 

$table='meal';

$tableinfo = mysql_fetch_array(mysql_query("SHOW CREATE TABLE $table  ",$cafe1db)); 

mysql_query(" $tableinfo[1] ",$cafecentraldb); 

$result = mysql_query("SELECT * FROM $table  ",$cafe1db); 	

while ($row = mysql_fetch_array($result, MYSQL_ASSOC) ) {		
       mysql_query("INSERT INTO $table (".implode(", ",array_keys($row)).") VALUES ('".implode("', '",array_values($row))."')",$cafecentraldb); // 
}
 mysql_close($cafe1db); 
 mysql_close($cafecentraldb);

 header("Location: ../index.php");

 ?>