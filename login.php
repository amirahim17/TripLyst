<?php
// Include db connection file
include("dbconn.php");



// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve username and password from POST data
    $username = $_POST['username'];
    $password = $_POST['pw'];
    
    // Prepare the SQL statement
    $stmt = $dbconn->prepare("SELECT username, Password FROM Users WHERE username = ?");
    $stmt->bind_param("s", $username);
    
    // Execute the query
    if ($stmt->execute()) {
        // Bind the results
        $stmt->store_result();
        
        // Check if a row is returned
        if ($stmt->num_rows > 0) {
            // Bind the result variables
            $stmt->bind_result($userID, $hashed_password);
            $stmt->fetch();
            
            // Verify the password
            if (password_verify($password, $hashed_password)) {
                // Start session and set userID
                
                // Return success message (you can customize this message as needed)
                echo json_encode(array('status' => 'success', 'message' => 'Login successful', 'username' => $userID));
            } else {
                // Return error message for incorrect password
                echo json_encode(array('status' => 'error', 'message' => 'Invalid username or password'));
            }
        } else {
            // Return error message for username not found
            echo json_encode(array('status' => 'error', 'message' => 'Invalid username or password'));
        }
    } else {
        // Return error message for SQL execution error
        echo json_encode(array('status' => 'error', 'message' => 'Error executing SQL query'));
    }
    
    // Close the statement
    $stmt->close();
} else {
    // Return error message if request method is not POST
    echo json_encode(array('status' => 'error', 'message' => 'Invalid request method'));
}
?>
