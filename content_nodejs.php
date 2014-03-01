<?php
include("constants_nodejs_tutorial.php");

$query = "SELECT * FROM `".TABLE_NODEJS."` ;";
$result = mysqli_query($connection,$query);

if($result == false) {
	echo "Query could not be executed";
}
while($tute = mysqli_fetch_assoc($result)) {
	?>
	<div class="tute">
		<span class="head"><u><?php echo $tute["head"]; ?></u></span><br />
		<p class="description"><?php echo $tute["description"]; ?></p>

		<a href="improve_tute.php?tuteId=<?php echo $tute['id']; ?>" class="improveTuteButton">Improve this tute</a>
	</div>
	<?php
}



mysqli_close($connection);

?>