<?php

ob_start();

?>






<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>All Orders</title>
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    

</head>

<body class="fix-header fix-sidebar">
   
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
  
    <div id="main-wrapper">
   
         <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
            <div class="navbar-header">
                    <a class="navbar-brand" href="dashboard.php">
                        
                        <!-- <span><img src="images/icn.png" alt="homepage" class="dark-logo" /></span> -->
                    </a>
                </div>
                <div class="navbar-collapse">
            
                    <ul class="navbar-nav mr-auto mt-md-0">
              
                        
                     
                       
                    </ul>
       
                    <ul class="navbar-nav my-lg-0">

                        
                    
                        <li class="nav-item dropdown">
                           
                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                  
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/bookingSystem/user-icn.png" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                   <li><a href="logout.php"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
      
        <div class="left-sidebar">
       
            <div class="scroll-sidebar">
             
                <nav class="sidebar-nav">
                   <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a href="dashboard.php"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
                        <li class="nav-label">Log</li>
                        <li> <a href="all_users.php">  <span><i class="fa fa-user f-s-20 "></i></span><span>Users</span></a></li>
                        <li> <a class="has-arrow  " href="newbook.php" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">New Delivery</span></a>
                            
                            </li>
                            <li> <a class="has-arrow  " href="complite_service.php" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">All Completed Delivery</span></a>
                                
                            </li>
                          
                             <li> <a href="payment.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>PAYMENT</span></a></li>
                             
                    </ul>
                </nav>
        
            </div>
     
        </div>
    
        <div class="page-wrapper">
      
            
      
           <div class="container">
<form action="" method="POST">
<div class="row">
    <div class="col-md-6 " style="margin: 100px 400px 0px 100px;">
<select class="form-select" aria-label="Default select example" name="status" style="margin: 100px 400px 0px 100px;">
  <option selected>SELECT THE STATUS OF SERVICES </option>
  <option value="NULL">BOOKED</option>
  <option value="in process">On a Way!</option>
  <option value="closed">COPMLITED</option>
</select>
<button type="submit" name="submit" class="btn btn-primary mt-4 ml-4 " style="margin-left: 200px;">SUBMIT</button>
</div>

</div>

</form>

</div>


<?php

$id=$_GET['user_upd'];

if(isset($_POST['submit'])) {

    $status=$_POST['status'];
$conn=mysqli_connect("localhost","root","","onlinefoodphp");

$sql="UPDATE  users_orders SET status='$status' WHERE o_id='{$id}'  ";

$result=mysqli_query($conn,$sql);


$Delivery_id=$_SESSION['Delivery_id'];
$sql2="SELECT users.*, users_orders.* FROM users INNER JOIN users_orders ON users.u_id=users_orders.u_id WHERE o_id='{$id}'";

$result2=mysqli_query($conn,$sql2);

$row2=mysqli_fetch_assoc($result2);

 $username=$row2['username']; 
 $title=$row2['title'];
 $quanit=$row2['quantity'];
 $price2=$row2['price'];
 $status=$row2['status'];
 $Delivery_id=$row2['Delivery_id'];
 $DB_name=$row2['DB_Name'];
 $address=$row2['address'];

if($status=="closed"){


    $total=$price2*20/100;
$price=$price2-$total;

$pay_satus="PAYED";
$sql3="INSERT INTO com_delivery(username,title,quantity,price,status,address,Delivery_id,DB_Name,Pay_status)VALUES ('$username','$title','$quanit','$price','$status','$address','$Delivery_id','$DB_name','$pay_satus')";

$result3=mysqli_query($conn,$sql3);

if($result3){
    echo '<h1>data inserted sussefully</h1>';
}else{
    echo '<h1>data inserted not  sussefully</h1>';
}


}



$payment="PAY".rand(20000,40000)."END";

$name= $_SESSION["user_name"];

          
$sql2="INSERT INTO payment (payment_id,Cust_name,SP_Name,Order_id,Price,Service_ID,Title,status)VALUES ('$payment','$name','$sp_name','$id','$price2','$service_id','$title','$status')";

$result2=mysqli_query($conn,$sql2);

if($result2){
header("location:newbook.php");
ob_end_flush();

}

}
?>
<br><br><br><br><br>
<br><br><br><br><br><br><br>
		
            <footer class="footer"> © 2023 home services system</footer>
    
        </div>
   
    </div>
    
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    
</body>

</html>













