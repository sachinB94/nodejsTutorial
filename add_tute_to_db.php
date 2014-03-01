<?php

include("constants_nodejs_tutorial.php");

$query = "INSERT INTO `".TABLE_USER_TUTE."` (`email`,`head`,`description`) ";
$query .= "VALUES ('".$_POST["email"]."','".$_POST["head"]."','".$_POST["description"]."');";

$result = mysqli_query($connection,$query);

if($result == false) {
	echo "Unable to add tute";
}
else {
	echo "<h3>Tute submitted.</h3> It will be reviewed by the developer and inserted soon in our database.";
}
echo "<br /><br /><a href='index_nodejs.php'>Click here </a> to go back.";

?>