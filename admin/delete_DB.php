<?php

ob_start();
$id= $_GET['user_del'];

$conn=mysqli_connect("localhost","root","","onlinefoodphp")or die("database is not coonnected");

$sql="DELETE FROM db WHERE Delivery_id='{$id}'";

$result=mysqli_query($conn,$sql);

if($result){
    header("location:all_db.php");
}

ob_end_flush();
?>