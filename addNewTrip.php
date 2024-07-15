<?php
// Include db connection file
include("dbconn.php");
session_start();

// Check if user is logged in
//if (!isset($_SESSION['userID'])) {
 //   die("You must be logged in to add a trip.");
//}


$tripName = $_POST['tripN'];
$tripDate = $_POST['tripD'];
$tripDestination = $_POST['tripDest'];
$username = $_POST['username'];

// Insert the new trip
$sql2 = "INSERT INTO trips (tripName, tripDate, destination, username)
         VALUES ('$tripName', '$tripDate', '$tripDestination', '$username')";
$result = mysqli_query($dbconn, $sql2);

if ($result) {
    // Get the last inserted tripID
    $tripID = mysqli_insert_id($dbconn);

    // Display a message
    echo "Data has been saved. Trip ID: " . $tripID;
} else {
    // Display an error message if insertion fails
    echo "Error: " . mysqli_error($dbconn);
}

// Close the database connection
mysqli_close($dbconn);
?>
