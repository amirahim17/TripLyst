<?php
include("dbconn.php");

$username = $_POST['username'];

// Use prepared statements to prevent SQL injection
$stmt = $dbconn->prepare("SELECT * FROM trips WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

$json = array();
while ($row = $result->fetch_assoc()) {
    $json[] = $row;
}
echo json_encode($json, JSON_UNESCAPED_UNICODE);

$stmt->close();
mysqli_close($dbconn);
?>
