<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();




if(isset($_POST['submit']))          
{


$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];
$delivery_name=$_POST['Delivery_name'];
$delivery_id=$_POST['Delivery_id'];
$mobile=$_POST['mobile'];
$address=$_POST['address'];


$sql="INSERT INTO db (DB_Name,Email,Password,Delivery_name,Delivery_id,Mobile,Address)VALUES('$name','$email','$password','$delivery_name','$delivery_id','$mobile','$address')";

$result=mysqli_query($db,$sql);

if($result){
    echo "data insert sussegully";
}






}




?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Add services</title>
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body class="fix-header">
  
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
                        <li> <a href="dashboard.php"><i class="fa fa-tachometer"></i><span>Dashboard</span></a>
                        </li>
                        <li class="nav-label">Log</li>
                        <li> <a href="all_users.php">  <span><i class="fa fa-user f-s-20 "></i></span><span>Users</span></a></li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">Restaurant</span></a>
                            <ul aria-expanded="false" class="collapse">
								<li><a href="all_restaurant.php">All Restaurant</a></li>
								<li><a href="add_category.php">Add Category</a></li>
                                <li><a href="add_restaurant.php">Add Restaurant</a></li>
                                
                            </ul>
                        </li>
                       <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-cutlery" aria-hidden="true"></i><span class="hide-menu">Menu</span></a>
                            <ul aria-expanded="false" class="collapse">
								<li><a href="all_menu.php">All Menues</a></li>
								<li><a href="add_menu.php">Add Menu</a></li>
                              
                                
                            </ul>
                        </li>
                         <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-users" aria-hidden="true"></i><span class="hide-menu">Delivery Boy</span></a>
                            <ul aria-expanded="false" class="collapse">
                            <li><a href="AddDB.php">Add Delivery Boy  </a></li>

								<li><a href="all_db.php">All Delivery Boy</a></li>
								<li><a href="Complited_ord.php">Complited Deliveries </a></li>
                              
                                
                            </ul>
                        </li>

						 <li> <a href="all_orders.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Orders</span></a></li>
                         <li> <a href="payment.php"><i class="fa fa-credit-card" aria-hidden="true"></i><span>PAYMENT</span></a></li>

                    </ul>

                </nav>
            
            </div>
           
        </div>
    
      
        <div class="page-wrapper">
          
            
         
            <div class="container-fluid">
          
                  
									
									<?php  echo $error;
									        echo $success; ?>
									
									
								
								
                                    <div class="col-lg-12">
                        <div class="card card-outline-primary">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Add Delivery Boy </h4>
                            </div>
                            <div class="card-body">
                                <form action='' method='post'  enctype="multipart/form-data">
                                    <div class="form-body">
                                       
                                        <hr>
                                        <div class="row p-t-10">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Delivery Boy Name</label>
                                                    <input type="text" name="name" class="form-control">
                                                   </div>
                                            </div>
                                            
                                  
                                           
											
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Email</label>
                                                    <input type="email" name="email" class="form-control">
                                                   </div>
                                            </div>
                                            </div>

                                            <div class="row p-t-10">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Password</label>
                                                    <input type="text" name="password" class="form-control">
                                                   </div>
                                            </div>
                                            </div>

                                            <!-- <div class="row p-t-10">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Delivery Name</label>
                                                    <input type="text" name="Delivery_name" class="form-control">
                                                   </div>
                                            </div> -->
                                            

                                            <div class="row p-t-10">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Delivery ID</label>
                                                    <input type="text" name="Delivery_id" class="form-control">
                                                </div>
                                            </div>
                                            </div>

                                            
											
											
											
											
											
						                  <div class="row p-t-10">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Mobile</label>
                                                    <input type="text" name="mobile" class="form-control">
                                                   </div>
                                            </div>
                                            
                                            
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Address</label>
                                                    <input type="text" name="address" class="form-control">
                                                   </div>
                                            </div>
                                            </div>
                                      
                                           
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <input type="submit" name="submit" class="btn btn-primary" value="Save"> 
                                        <a href="add_cat.php" class="btn btn-inverse">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
					<footer class="footer"> © 2025 food services system</footer>
                </div>
                
            </div>
          
        </div>
 
    </div>
   
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>

</body>

</html>