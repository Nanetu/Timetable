<?php 
$dsn = "mysql:host=localhost; dbname=time table database.sql";
$username = "host";
//$password = "imagine$7";

try {
    $db = new PDO($dsn, $username);
} catch (PDOException $e){
    $error= "Database Error: ";
    $error .= $e->getMessage();
    include('view/error.php');
    exit();
}
?>