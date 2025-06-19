<?php
// Include your database connection
include("connection/connect.php");

// Check if session is started
session_start();

// Check if the user is logged in
if(empty($_SESSION["user_id"])) {
    echo json_encode(array("success" => false, "error" => "User not logged in"));
    exit;
}

// Check if cart items exist in the session
if(!isset($_SESSION["cart_item"]) || empty($_SESSION["cart_item"])) {
    echo json_encode(array("success" => false, "error" => "Cart is empty"));
    exit;
}

// Initialize total amount
$item_total = 0;

// Calculate total amount of the order
foreach ($_SESSION["cart_item"] as $item) {
    $item_total += ($item["price"] * $item["quantity"]);
}

// Insert order into database
foreach ($_SESSION["cart_item"] as $item) {
    $SQL = "INSERT INTO users_orders(u_id, title, quantity, price) 
            VALUES ('".$_SESSION["user_id"]."', '".$item["title"]."', '".$item["quantity"]."', '".$item["price"]."')";
    mysqli_query($db, $SQL);
}

// Clear cart items from session
unset($_SESSION["cart_item"]);

// Send success response
echo json_encode(array("success" => true));
?>
