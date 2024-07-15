<?php
/* include db connection file */
include("dbconn.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['pw'];
    $confirmpassword = $_POST['cpw'];
    
    if ($password == $confirmpassword) {
        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        
        // Prepare the SQL statement
        $stmt = $dbconn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);
        
        if ($stmt->execute()) {
            echo "Register successful.";
        } else {
            echo "Error: " . $stmt->error;
        }
        
        // Close the statement
        $stmt->close();
    } else {
        echo "Passwords do not match. 
	Register unsuccessful.";
    }
}
?>
