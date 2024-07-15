<?php
include("dbconn.php");
$tripID=@$_POST['tripID'];
$tripName=@$_POST['tripName'];
$tripDestination=@$_POST['tripDestination'];
$tripDate=@$_POST['tripDate'];

//$tripID=3;
//$tripName='KakiGajah';
//$tripDestination='Riyal';
//$tripDate='2024-08-29';


$sql="update trips set tripName='$tripName', destination='$tripDestination', tripDate='$tripDate' where tripID='$tripID'";
$res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
if ($res===true) 
	echo "OK_EDIT";
mysqli_close($dbconn);
?>