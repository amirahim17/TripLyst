
<?php
// Database connection parameters
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "tripLyst";

// Create connection
$dbconn = new mysqli($host, $user, $pass, $dbname);

// Check connection
if ($dbconn->connect_error) {
    die("Connection failed: " . $dbconn->connect_error);
}
?>
