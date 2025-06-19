  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <!-- <script>
// Create a Razorpay payment object
var options = {
    // key: 'rzp_test_BzcIY602hBYoE5',
    key: 'rzp_test_Emj50LFjr5Vxga',
    amount: <?php echo $item_total * 100; ?>, // amount in paisa
    currency: 'INR',
    name: 'Your Company Name',
    description: 'Payment for Order',
    handler: function(response) {
        // Handle payment success
        alert('Payment successful!');
        // Redirect to a thank you page or handle success as per your requirement
        // window.location.href = 'thankyou.php?order=done';
    }
};