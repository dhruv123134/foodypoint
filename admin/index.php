<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();
if(isset($_POST['submit']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    if(!empty($_POST["submit"])) 
    {
        $loginquery = "SELECT * FROM admin WHERE username='$username' && password='$password'";
        $result = mysqli_query($db, $loginquery);
        $row = mysqli_fetch_array($result);
    
        if(is_array($row))
        {
            $_SESSION["adm_id"] = $row['adm_id'];
            header("refresh:1;url=dashboard.php");
        } 
        else
        {
            echo "<script>alert('Invalid Username or Password!');</script>"; 
        }
    }
}
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/login.css">
    <style>
        body {
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
        }
        .form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 350px;
        }
        .form img {
            width: 80px;
            margin-bottom: 15px;
        }
        .form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .form input[type="submit"] {
            background: #2c3e50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            transition: 0.3s;
        }
        .form input[type="submit"]:hover {
            background: #4ca1af;
        }
        .info h1 {
            color: white;
            font-size: 24px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="info">
            <h1>Admin Panel</h1>
        </div>
        <div class="form">
            <img src="images/manager.png" alt="Admin Icon" />
            <form class="login-form" action="index.php" method="post">
                <input type="text" placeholder="Username" name="username" required />
                <input type="password" placeholder="Password" name="password" required />
                <input type="submit" name="submit" value="Login" />
            </form>
        </div>
    </div>
</body>
</html>