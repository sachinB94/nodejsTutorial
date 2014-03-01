<?php

include("constants_nodejs_tutorial.php");

$query = "INSERT INTO `".TABLE_USER_TUTE."` (`email`,`head`) ";
$query .= "VALUES ('".$_POST["email"]."','".$_POST["head"]."');";

$result = mysqli_query($connection,$query);
$lastId = mysqli_insert_id($connection);

if($result == false) {
	echo "Unable to add tute";
}
else {
	echo "<h3>Tute submitted.</h3> It will be reviewed by the developer and inserted soon in our database.";
	$queryUpdate = "UPDATE `".TABLE_USER_TUTE."` SET `description`='tute_add_".$lastId.".txt' WHERE `id`=".$lastId.";";
	$resultUpdate = mysqli_query($connection,$queryUpdate);
	if ($resultUpdate == false) {
		echo "Unable to add tute";
	}
	else {
		$file = $_SERVER['DOCUMENT_ROOT'] . "/nodejs_tutorial/files";
		$fopen = fopen($file ."/tute_improve_". $lastId . ".txt" ,"w") or exit("Unable to insert data");

		fwrite($fopen,$_POST['description']) or exit("Unable to add tute");

		fclose($fopen);
	}
	
}
echo "<br /><br /><a href='index_nodejs.php'>Click here </a> to go back.";

?>