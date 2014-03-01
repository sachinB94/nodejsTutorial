<?php

include("constants_nodejs_tutorial.php");

$query = "INSERT INTO `".TABLE_IMPROVE_TUTE."` (`tute_id`,`problem`,`description`) ";
$query .= "VALUES (".$_GET["tuteId"].",'".$_POST["problem"]."','".$_POST["description"]."');";

$result = mysqli_query($connection,$query);

if($result == false) {
	echo "Unable to improve tute";
}
else {
	echo "<h3>Improvement Noted.</h3> It will be reviewed by the developer and inserted soon in our database.";
}

echo "<br /><br /><a href='index_nodejs.php'>Click here </a> to go back.";


?>