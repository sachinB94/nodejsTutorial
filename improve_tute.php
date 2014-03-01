<?php 
include("head_section_start.php");
include("header.php");
?>

<div id="improveTuteBlock">
	<form method="post" id="improveTuteForm" action="improve_tute_to_db.php?tuteId=<?php echo $_GET['tuteId'];?>"> 
		<label for="problem">Why you want to improve it?</label><br /> <input type="text" name="problem" id="problem"><br />
		<span id="problemError" class="hideIt">This can't be empty</span><br />
		<label for="description">Your take on it...</label><br /><textarea name="description" id="description"></textarea><br />
		<span id="descriptionError" class="hideIt">This can't be empty</span><br />
		<input type="submit" value="Improve it!">
	</form>
</div>


<?php
include("constants_nodejs_tutorial.php");

$query = "SELECT * FROM `".TABLE_NODEJS."` WHERE id=".$_GET['tuteId'].";";
$result = mysqli_query($connection,$query);

if($result == false) {
	echo "Query could not be executed";
}

$tute = mysqli_fetch_assoc($result);

?>

<?php $file = $_SERVER['DOCUMENT_ROOT'] . "/nodejs_tutorial/files"; ?>

	<?php $fopen = fopen($file ."/". $tute['description'] ,"r") or exit($file ."/". $tute['description'] . "\""); ?>

	<div id="tuteDisplayBlock">
		<span class="head"><u><?php echo $tute["head"]; ?></u></span><br />
		<p class="description"><?php echo fread($fopen,filesize($file ."/". $tute['description'])); ?></p>
	</div>

	<?php fclose($fopen); ?>
	

<?php
include("head_section_close.php");
?>