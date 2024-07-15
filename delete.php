<?php
include("dbconn.php");
$tripID=@$_POST['tripID']; //$sid=1;
$sql="delete from trips where tripID=$tripID";
$res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
if ($res==1) echo "OK_DEL";
mysqli_close($dbconn);
?>