<?php
include("dbconn.php");
$tripid=@$_POST['tripID']; //$sid=1; if you want to test
$sql="select * from trips where tripid=$tripid";
$res=mysqli_query($dbconn,$sql) or die(mysqli_error($dbconn));
$r=mysqli_fetch_array($res,MYSQLI_NUM);
$json[]=$r;
echo json_encode($json,JSON_UNESCAPED_UNICODE);
mysqli_free_result($res);
mysqli_close($dbconn);
?>
