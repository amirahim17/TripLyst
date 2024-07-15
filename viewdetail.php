<?php
/* include db connection file*/
include("dbconn.php");
/* capture student number */
$tid = $_POST['s_number='];
//$tid = 1120;
/* execute SQL statement */
$sql= "SELECT * FROM trips 
WHERE tripid= $tid";

$query = mysqli_query($dbconn, $sql) or die ("Error: " . mysqli_error());

while( $rowr= mysqli_fetch_row($query))
{
	$csvOutput[] = $rowr;
	
}

echo json_encode($csvOutput,JSON_UNESCAPED_UNICODE);
exit;
?>
